function [input_train,input_test] = Data_Generate(Net_Struct)
DATA = rand(150,Net_Struct(1));%生成150个样本数据0~1之间

input = DATA;%取特征值
%由于自编码器的目标输出等于输入，样本数据中就没有输出

[~,n] = sort(rand(1,150));%将数据随机排序
input_train=input(n(1:100),:);
%取前100个作为训练样本
input_test=input(n(101:150),:);
%取后50个作为测试样本