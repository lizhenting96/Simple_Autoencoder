function [Trained_w] = Autoencode(Net_Struct,Study_Rate,Training_Time)
%输入整体的数据集、学习率、学习次数

[Training_Data,~] = Data_Generate(Net_Struct);
fprintf('Data Processing Finished.\n');
%由于缺少样本，先随机生成样本数据
%进行数据预处理，归一化，并划分训练集100个，测试集50个

Trained_w = Training(Training_Data,Net_Struct,Study_Rate,Training_Time);
fprintf('Data Training Finished.\n')
%进行数据训练，得到训练后的w


