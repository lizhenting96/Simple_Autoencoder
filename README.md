# Simple_Autoencoder
Autoencoder, Error Back Propagation Algorithm

The autoencoder is an attempt to approximate an identity function so that the output is equal to the input. By limiting the number of hidden layer neurons, the automatic coding neural network is forced to learn the compressed representation of input data.

PS: In this programming, Sigmoid function (f = 1/(1+exp(-z))) is used as the activation function. And the cost function is the squared error function (E = (t-y)^2/2)

7 functions are included:
Iris_BP: The main function, The input is DATA(including features and classifications), Net_Struct(e.g. [4,6,3] means 4 units in the input layer, 6 units in the hidden layer and 3 units in the output layer), Study_Rate and Traning_Time(e.g. 500 means train 500 times).
Training: Use training data to train the parameters and print Square_Error-Training_Time figure.
Data_Generate: Generate Data randomly.
Create_w: Generating parameters of the net randomly.
Sample_FP: Calculating the output for the first time when bias and weights are random.
Sample_BP: BP algorithm.
sigmoid: Activation function
