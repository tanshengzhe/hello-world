function [ dist,l ] = floyd( a,sb,db ) %aΪ�ڽӾ���sbΪ�����ţ�dbΪ�ص���š��������dist��·��l
n=size(a,1);
path=zeros(n);
for k=1:n
    for i=1:n
        for j=1:n
            if a(i,j)>a(i,k)+a(k,j)
                a(i,j)=a(i,k)+a(k,j);
                path(i,j)=k;
            end
        end
    end
end
    dist=a(sb,db);
    p=path(sb,db);
    l=0;
    while p~=0
        l=[l,p];
        p=path(sb,p);
    end
    if l==0
        l="null";
    else
        l(1)=[];
    end
    
%   ����floyd�㷨�����̾���




