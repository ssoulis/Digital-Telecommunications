function [SQNR,Sout]=adm(x,M)

Sin=interp(x,M); 
samples=length(Sin); 
ss=1/(5*M); 

[ssa,enc_signal]=adm_encoder(Sin,ss);

Sout=adm_decoder(ssa,enc_signal);

err_signal=Sin'-Sout;

Pq=sum(err_signal(1:samples).^2)/samples;
Px=sum(Sin(1:samples).^2)/samples;
SQNR=10*log10(Px/Pq);