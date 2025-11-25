#创建视频
from kan import *
import torch

import os
import numpy as np
import moviepy.video.io.ImageSequenceClip # moviepy == 1.0.3


device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
print(device)

# create a KAN: 2D inputs, 1D output, and 5 hidden neurons. cubic spline (k=3), 5 grid intervals (grid=5).
model = KAN(width=[4,2,1,1], grid=3, k=3, seed=1, device=device)
f = lambda x: torch.exp((torch.sin(torch.pi*(x[:,[0]]**2+x[:,[1]]**2))+torch.sin(torch.pi*(x[:,[2]]**2+x[:,[3]]**2)))/2)
dataset = create_dataset(f, n_var=4, train_num=3000, device=device)

image_folder = 'video_img'

# train the model
#model.train(dataset, opt="LBFGS", steps=20, lamb=1e-3, lamb_entropy=2.);
# λ(整体惩罚力度)：0.001 λ_ent(熵正则化)：2. beta(控制激活函数的透明度)
model.fit(dataset, opt="LBFGS", steps=5, lamb=0.001, lamb_entropy=2., save_fig=True, beta=10,
            in_vars=[r'$x_1$', r'$x_2$', r'$x_3$', r'$x_4$'],
            out_vars=[r'${\rm exp}({\rm sin}(x_1^2+x_2^2)+{\rm sin}(x_3^2+x_4^2))$'],
            img_folder=image_folder);

#video创建
video_name='video'
fps=5

fps = fps
files = os.listdir(image_folder)
train_index = []
for file in files:
    if file[0].isdigit() and file.endswith('.jpg'):
        train_index.append(int(file[:-4]))

train_index = np.sort(train_index)

image_files = [image_folder+'/'+str(train_index[index])+'.jpg' for index in train_index]

clip = moviepy.video.io.ImageSequenceClip.ImageSequenceClip(image_files, fps=fps)
clip.write_videofile(video_name+'.mp4')