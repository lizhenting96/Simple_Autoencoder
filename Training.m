function w = Training(Training_Data,Net_Struct,Study_Rate,Training_Time)
w = Create_w(Net_Struct);
%建立初始的w和theta

[Training_Sample_Num,~] = size(Training_Data);%样本总数

Training_Features = Training_Data;%由于不知道输出，因此所有都是特征数据
Training_Labels = Training_Features';
%提取训练数据的特征值矩阵，将分类结果转置，使之与神经网络契合

Squre_Error_Each_Time = zeros(1,Training_Time);
%为了记录每一次训练100个样本后的均方误差，预分配空间
for i = 1:Training_Time
%开始训练，直到到达训练次数
Squre_Error = 0;
%对每一次训练，记录这一次训练中每一个样本最终的均方误差
    for k = 1:Training_Sample_Num
        [Final_Output,All_Layer] = Sample_FP(Training_Features(k,:),w);
        delta = Training_Labels(:,k) - Final_Output;
        Squre_Error = Squre_Error + delta.^2/2;%该样本下计算均方误差
        New_w = Sample_BP_test(Net_Struct,w,All_Layer,delta,Study_Rate);
        w = New_w;
    end
Squre_Error_Each_Time(i) = sum(Squre_Error/Training_Sample_Num);%记录这一次训练的平均均方误差     
end
x = 1:Training_Time;
y = Squre_Error_Each_Time;
figure;
plot(x,y);%输出以训练次数为横坐标，均方误差为纵坐标的图像
fprintf('Squre_Error--Training_Time Figure is plotted');