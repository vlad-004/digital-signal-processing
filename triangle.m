function triangle
t=0:0.01:10;
d=0:10/5:10;
s=pulstran(t,d,'tripuls',1,-1);
subplot(2,1,2), plot(t,s);
