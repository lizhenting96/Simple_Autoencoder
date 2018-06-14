function w = Training(Training_Data,Net_Struct,Study_Rate,Training_Time)
w = Create_w(Net_Struct);
%������ʼ��w��theta

[Training_Sample_Num,~] = size(Training_Data);%��������

Training_Features = Training_Data;%���ڲ�֪�������������ж�����������
Training_Labels = Training_Features';
%��ȡѵ�����ݵ�����ֵ���󣬽�������ת�ã�ʹ֮������������

Squre_Error_Each_Time = zeros(1,Training_Time);
%Ϊ�˼�¼ÿһ��ѵ��100��������ľ�����Ԥ����ռ�
for i = 1:Training_Time
%��ʼѵ����ֱ������ѵ������
Squre_Error = 0;
%��ÿһ��ѵ������¼��һ��ѵ����ÿһ���������յľ������
    for k = 1:Training_Sample_Num
        [Final_Output,All_Layer] = Sample_FP(Training_Features(k,:),w);
        delta = Training_Labels(:,k) - Final_Output;
        Squre_Error = Squre_Error + delta.^2/2;%�������¼���������
        New_w = Sample_BP_test(Net_Struct,w,All_Layer,delta,Study_Rate);
        w = New_w;
    end
Squre_Error_Each_Time(i) = sum(Squre_Error/Training_Sample_Num);%��¼��һ��ѵ����ƽ���������     
end
x = 1:Training_Time;
y = Squre_Error_Each_Time;
figure;
plot(x,y);%�����ѵ������Ϊ�����꣬�������Ϊ�������ͼ��
fprintf('Squre_Error--Training_Time Figure is plotted');