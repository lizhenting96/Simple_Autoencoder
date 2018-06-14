function New_w = Sample_BP_test(Net_Struct,w,All_Layers,delta,step)
output = All_Layers;
I = Net_Struct(1);%����㡢����㵥Ԫ��
H = Net_Struct(2);%���ز㵥Ԫ��
inputo = w{2}*output{2};%�����Ľ���ֵ
inputh = w{1}*output{1};%���ز�Ľ���ֵ
inputi = output{1};
dw1 = zeros(H,I);%����ƫ�����ľ���
dw2 = zeros(H,I);%����Ȩ�ؾ������ת�ù�ϵ�����ƫ���������ֵĺ�

for h = 1:H
    for i = 1:I
        for o = 1:I
            dw1(h,i) = dw1(h,i) + delta(o)*sigmoid(inputo(o))*(1-sigmoid(inputo(o)))*w{2}(o,h)*sigmoid(inputh(h))*(1-sigmoid(inputh(h)))*inputi(i);
            %��һ����ƫ����
        end
        dw2(h,i) = dw2(h,i) + delta(i)*sigmoid(inputo(i))*(1-sigmoid(inputo(i)))*output{2}(h);
        %�ڶ�����ƫ����
        dw = dw1+dw2;
        %���
    end
end

New_w{1} = w{1} + step*dw;%����w
New_w{2} = w{1}';%����ת�ù�ϵ
end