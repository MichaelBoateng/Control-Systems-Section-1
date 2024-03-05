% %For 3 variable state space T.F 2 S.S
% num=[1 7 2];
% den=[1 9 26 24];
% [A,B,C,D]=tf2ss...
% (num, den);
% P=[0 0 1;0 1 0;1 0 0];
% A=inv(P)*A*P
% B=inv(P)*B
% C=C*P



%For 2 variable state space T.F 2 S.S
% num=[0 2 1];
% den=[1 7 9] ;
% [A,B,C,D]=tf2ss...
% (num, den);
% P=[0 1;1 0];
% A=inv(P)*A*P
% B=inv(P)*B
% C=C*P

%Find TF with variables in statespace
% syms s C1 C2 L
% A = [ (1/C1) (1/C1) (-1/C1); -(1/L) 0 0; (1/C2) 0 -(1/C2)];
% B = [0;1;0];
% C = [0 0 1];
% D = [0];
% x0 = 0;

% Phi=inv(s*eye(3)-A);
% H=C*Phi*B+D
% 
% %Display
% pretty((H));
% 
% %Finding s T.F
% A=[(-2/3) (-1/3) (1/3);(-1/3) (-2/3) (2/3); (-1/3) (-2/3) (-1/3)];
% B=[(2/3) (1/3) (1/3)]';
% C=[0 0 1];
% D=0;
% T=ss(A,B,C,D);
% T=tf(T)

%%
% % State space from TF extended version
% syms s I1 I2 I3 V
% 
% %Q2
% A = [(1+s) -s 0;...
%      -s (1+2*s) -s;...
% 0 -s ((s^2+s+1)/(s))]
% B = [V;0;0];
% X = inv(A)*B
% 
% i3=([0 0 1]*X)*(1/(V*s))
% %For three variable state space T.F 2 S.S
% num=[2 0 0];
% den=[3 5 4 1] ;
% [A,B,C,D]=tf2ss...
% (num, den);
% P=[0 0 1;0 1 0;1 0 0];
% A=inv(P)*A*P
% B=inv(P)*B
% C=C*P

%%
%TF with no num dynamics
%Tr Ts wn damping ratio %OS
% numg=100;
% deng=[1 15 100];
% omegan=sqrt(deng(3)...
% /deng(1))
%damping factor: zeta      omegan:wn

% zeta=(deng(2)/deng(1))...
% /(2*omegan)
% Ts=4/(zeta*omegan)
% Tp=pi/(omegan*sqrt...
% (1-zeta^2))
% pos=100*exp(-zeta*...
% pi/sqrt(1-zeta^2))
% Tr=(1.768*zeta^3 -...
% 0.417*zeta^2+1.039*...
% zeta+1)/omegan

%%

%Effect of higher order poles 
% syms s
% C1=185.71*(s+7)/...
% (s*(s+6.5)*...
% (s+10)*(s+20));
% C2=197.14*(s+7)/...
% (s*(s+6.9)*...
% (s+10)*(s+20));
% c1=ilaplace(C1);
% 'c1'
% c1=vpa(c1,3)
% c2=ilaplace(C2);
% 'c2'
% c2=vpa(c2,3)

% Check the co-efficient with the exponent that is closest to the zero of the equation ...in this
% case s=-7, if the co-eff is ""FAR AWAY"" from the other residues, then
% the eqn can be approximated!

%%
%SIMULINK
clear all
num = [1 2 0];
den = [2 1 2 7];
K = [20.6 375.1 3567];
[A,B,C,D] =tf2ss(num,den);











%%