function [Msub]=ptrace(M,d,N,n)
idd=speye(d,d);
idA=idd;
idB=idd;
for i=1:n-1
    idA=kron(idA,idd);
end
for i=1:N-n-1
    idB=kron(idB,idd);
end
Msub=zeros(d^n,d^n);
for k=1:d^(N-n)
    Msub=Msub+kron(idA,idB(k,:))*M*kron(idA,idB(:,k));
end
end