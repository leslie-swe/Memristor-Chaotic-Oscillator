function dZdt = memsistor(t,Z)
%condiciones iniciales
x=Z(1);y=Z(2);z=Z(3); w=Z(4);

%parametros del sistema de ecuaciones
a=5;b=1;
c=50;d=0.0001;
%valores para W(w)
dZdt = zeros(4,1);
alfa=1; beta=0.02;
%Vector con el sistema de ecuaciones de rossler
dZdt(1) = a*(y-(alfa+beta*w^2)*x);
dZdt(2) = x*z;
dZdt(3) = c-b*y^4;
dZdt(4) = d*x;
%A=[a*(y-(alfa+beta*w^2)*x), x*z, c-b*y^4,d*x];

