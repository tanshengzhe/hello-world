function [ path ] = prim( a ) %�����ڽӾ���
k=size(a,1);
s=2:k;
p=[1];
path=[];
while s
l=a(p,s);
temp=min(l(:));
[x,y]=find(a(p,s)==temp,1);%���Ƿ���a(p,s)�¾����λ��
x=p(x);y=s(y);             %������Ҫ��һ�����õ�ԭ����λ��
n=[x;y];
path=[path,n];
p=[p,y];
s(s==y)=[];
end
%   Detailed explanation goes here


end

