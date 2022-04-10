b = [0.0032844 0.023] ;
a = [0.084 1 0 0];
[A,B,C,D]=tf2ss(b,a)
ob=obsv(A,C)
Ct=ctrb(A,B)
a1=rank(ob)
b1=rank(Ct) 

BF_poles =[-6.49987 -0.06321+0.197775j -0.06321-0.197775j] 
K= place(A,B,BF_poles) 

N=-1*inv(C*inv(A-B*K)*B)
