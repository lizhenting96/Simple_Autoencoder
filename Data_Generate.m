function [input_train,input_test] = Data_Generate(Net_Struct)
DATA = rand(150,Net_Struct(1));%����150����������0~1֮��

input = DATA;%ȡ����ֵ
%�����Ա�������Ŀ������������룬���������о�û�����

[~,n] = sort(rand(1,150));%�������������
input_train=input(n(1:100),:);
%ȡǰ100����Ϊѵ������
input_test=input(n(101:150),:);
%ȡ��50����Ϊ��������