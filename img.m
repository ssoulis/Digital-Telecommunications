
load cameraman.mat
figure(1)
imshow(uint8(i));
title('Input main script')

img_signal_1d=i(:);
img_signal_1d=(img_signal_1d-128)/128;

for i=1:2
    [xq,centers,D]=lloyd_max(img_signal_1d,2*i,-1,1);
    
    figure(i*2)
    p=128*xq+128;
    y=reshape(p,256,256);
    imshow(uint8(y));
    title(strcat(num2str(2^i))
    
    SQNR=zeros(length(D),1);
    for k=1:length(D)
        SQNR(k)=10*log10(mean(img_signal_1d.^2)/D(k));  end
    
    kmax=[1:1:length(D)];
    figure(i*2+1)
    plot(kmax,SQNR); xlabel('kmax'); ylabel('SQNR');
    title(strcat(num2str(2*i)))
    legend(strcat(num2str(2*i)));   
    tmp=tabulate(xq); 
    prob=tmp(:,3);
    prob=prob./100;
    entropy(i)= -sum(prob.*log2(prob))  end