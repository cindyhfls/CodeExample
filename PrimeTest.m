% Trial Division to find prime numbers

% N is my number-to-test

N = 541;
dispN = N;

f = [];

if mod(N,2)==0
    f = [f,2];
    N = N./2;
end
i = 3;
while N>1 && i<=N
    if mod(N,i) == 0
        f = [f,i];
        N = N/i;
    end
    i = i+2;
end


if min(f) == dispN
    fprintf('\n %i is a prime number.\n',dispN);
else
    fprintf('\n %i is a not prime number with %i factors\n',dispN,length(f));
    disp(f)
end
    