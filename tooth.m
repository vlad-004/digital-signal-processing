function tooth
    T = 5; % period
    tau = 1; % impulse length (must be less then T)
    n = 3; % number of impulse in the signal
    c = 100;
    t = -T*n:(1/c):T*n; % time vector
    A = 7; % signal amplitude
    N = 100; % number of adds
%     k = 1:n; % vector of impulses numbers
    s  = A + zeros(1, 2*T*n*c+1); 
    for k = -n:n
        s = s + A * ((-t) / T - (k + 1)) .* (heaviside((-t) - k * T) - heaviside((-t) - (k + 1) * T));
    end 
  
    sF = A / 2 + zeros(1, 2*T*n*c+1); % ��������� ��������
    for k = 1:N
        sF = sF + (A / (pi * k)) * cos(2 * pi * k * ((-t) / T) + pi / 2);
    end
    
    sx = std(s-sF)
    
subplot(2,1,1), plot(t,[s;sF]); 
%2 ������  (������������ �� ���� ��� ������ � 219)    
t=0:0.01:5*pi;
y=sawtooth(t,1);
subplot(2,1,2), plot(t,y);
                                                                                                                                     