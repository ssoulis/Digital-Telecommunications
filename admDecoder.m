function [Sout]=admDecoder(Step,cn)

result(1)=0;

for i=1:length(cn)
   if(cn(i)==1)
      result(i+1)=result(i)+Step(i);
  elseif (cn(i)==-1)
      result(i+1)=result(i)-Step(i);
   end
end


dec_signal=result(2:length(cn)+1);

Sout=lpf(100,.1,dec_signal); 
end
