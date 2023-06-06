function [Step,cn]=admEncoder(x,StepSize)

Step(1)=StepSize;


if(x(1)>=0) 
    result(1)=1;
    accum(2)=result(1)*Step(1);
else
    result(1)=-1;
    accum(2)=result(1)*Step(1); end


for i=2:length(x)
    if(x(i)>=accum(i))
        result(i)=1;
        if result(i)==result(i-1)
            Step(i)=1.5*Step(i-1);
        else
            Step(i)=(1.5^-1)*Step(i-1); end
        accum(i+1)=accum(i)+result(i)*Step(i);
    else
        result(i)=-1;
        if result(i)==result(i-1)
            Step(i)=1.5*Step(i-1);
        else
            Step(i)=(1.5^-1)*Step(i-1);  end
        accum(i+1)=accum(i)+result(i)*Step(i);   end
end

cn=result;
