import numpy as np 
 
# a = np.array([1])  
# print (a.ndim)             # a 有一个维度
# b = np.array([[1],[3]])  
# print (b.ndim)             # b 有两个维度
# c = np.array([
#     [ [1, 2, 3, 4],
#       [5, 6, 7, 8],
#       [9,10,11,12] ],      #第一层
    
#     [ [13,14,15,16],
#       [17,18,19,20],
#       [21,22,23,24] ]      #第二层
# ])
# print (c.ndim)             # c 有三个维度

# d = np.array([[[1,2,3],[4,5,6]],[[1,2,3],[4,5,6]]])  
# print (d.shape)            # d 有三个维度

# y = np.arange(1,8,2,dtype =  float)
# print (y)  

x = np.array([[  0,  1,  2],[  3,  4,  5],[  6,  7,  8],[  9,  10,  11]])  
print ('我们的数组是：' )
print (x)
print ('\n')
rows = np.array([[0,0],[3,3]]) #取(0,0)、(3,3)位置
cols = np.array([[0,2],[0,2]]) #取(0,2)、(3,3)位置
y = x[rows,cols]  
print  ('这个数组的四个角元素是：')
print (y)
