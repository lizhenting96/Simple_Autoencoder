function w = Create_w(Net_Structure)
%创建权值矩阵,输出为一cell，每一个元素都是一个矩阵，第i个元素表示第i层到第i+1层的权重连接
%输入为一向量[3 5 5 1]表示各层的神经元个数分别为输入层3，第一隐藏层5，第二隐藏层5，输出层1
w = cell(2,1);%自编码器权重只有两层

w{1} = rand(Net_Structure(2),Net_Structure(1))*2 - 1;%随机初始化权值
w{2} = w{1}';%自编码器的两层权重矩阵互为转置