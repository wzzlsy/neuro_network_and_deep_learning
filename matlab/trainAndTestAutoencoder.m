data=load('mnist.mat');
train_samples=data.train_samples;
train_labels=data.train_labels;
test_samples=data.test_samples;
test_labels=data.test_labels;
loop=500;
net=trainStackAutoencoder(train_samples,train_labels,loop);
error=testStackAutoencoder(net,test_samples,test_labels);
fprintf('���Դ�����Ϊ%g%%\n',error*100);