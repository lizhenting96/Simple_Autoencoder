function [Trained_w] = Autoencode(Net_Struct,Study_Rate,Training_Time)
%������������ݼ���ѧϰ�ʡ�ѧϰ����

[Training_Data,~] = Data_Generate(Net_Struct);
fprintf('Data Processing Finished.\n');
%����ȱ�������������������������
%��������Ԥ������һ����������ѵ����100�������Լ�50��

Trained_w = Training(Training_Data,Net_Struct,Study_Rate,Training_Time);
fprintf('Data Training Finished.\n')
%��������ѵ�����õ�ѵ�����w


