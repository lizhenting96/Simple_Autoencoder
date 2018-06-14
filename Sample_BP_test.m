function New_w = Sample_BP_test(Net_Struct,w,All_Layers,delta,step)
output = All_Layers;
I = Net_Struct(1);%输入层、输出层单元数
H = Net_Struct(2);%隐藏层单元数
inputo = w{2}*output{2};%输出层的接收值
inputh = w{1}*output{1};%隐藏层的接收值
inputi = output{1};
dw1 = zeros(H,I);%构建偏导数的矩阵
dw2 = zeros(H,I);%由于权重矩阵存在转置关系，因此偏导是两部分的和

for h = 1:H
    for i = 1:I
        for o = 1:I
            dw1(h,i) = dw1(h,i) + delta(o)*sigmoid(inputo(o))*(1-sigmoid(inputo(o)))*w{2}(o,h)*sigmoid(inputh(h))*(1-sigmoid(inputh(h)))*inputi(i);
            %第一部分偏导数
        end
        dw2(h,i) = dw2(h,i) + delta(i)*sigmoid(inputo(i))*(1-sigmoid(inputo(i)))*output{2}(h);
        %第二部分偏导数
        dw = dw1+dw2;
        %求和
    end
end

New_w{1} = w{1} + step*dw;%更新w
New_w{2} = w{1}';%保持转置关系
end