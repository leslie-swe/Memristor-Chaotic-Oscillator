clear all
clc
%tiempo con el paso
a=0;b=2000; M=100000; 
%empleamos rsk4 archivo funtion para resolver el sistema de ecuaciones 

for j=1:1:500
w0=j*0.02;
Za=[1,1,1,w0];
[T,Z]=rks4( 'memsistor',a,b,Za,M);

z = Z(:,3); % extract the w variable solution
z_sol(:, j) = Z(:, 3);
 
end
save zz1.dat z_sol -ascii  
save tplot.dat T -ascii  
 
%series temporales
figure(1)
subplot(3,1,1)
plot(T,Z(:,1))
xlabel('t')
ylabel('x')
title("series temporales");
grid

subplot(3,1,2)
plot(T,Z(:,2))
xlabel('tiempo')
ylabel('Y')
grid

subplot(3,1,3)
plot(T,Z(:,3))
xlabel('tiempo')
ylabel('W')
grid
pause(0.5)

%variables y su cambio con respecto del tiempo
figure(2)
subplot(3,1,1)
plot(Z(:,1),Z(:,2))
xlabel('x')
ylabel('y')
title(num2str(b));
grid

subplot(3,1,2)
plot(Z(:,2),Z(:,3))
xlabel('y')
ylabel('w')
grid

subplot(3,1,3)
plot(Z(:,1),Z(:,3))
xlabel('x')
ylabel('w')
grid
pause(0.5)



%grafica 3D para el atractor de rossler
figure(3)
plot3(Z(:,1),Z(:,2),Z(:,3))
xlabel('x')
ylabel('y')
zlabel('z')
title(num2str(b));
pause(0.5)
grid

figure(4)
plot(Z(:,1),Z(:,2))
xlabel('x')
ylabel('y')
title(num2str(b));
set(gcf, 'color', 'none'); % Pone el fondo de la ventana transparente
set(gca, 'color', 'none'); % Pone el fondo del área de la gráfica transparente
saveas(gcf, 'Memsistor x_y.png');
grid

figure(5)
plot(Z(:,2),Z(:,3))
xlabel('y')
ylabel('w')
grid
set(gcf, 'color', 'none'); % Pone el fondo de la ventana transparente
set(gca, 'color', 'none'); % Pone el fondo del área de la gráfica transparente
saveas(gcf, 'Memsistor y_w.png');

figure(6)
plot(Z(:,1),Z(:,3))
xlabel('x')
ylabel('w')
grid
set(gcf, 'color', 'none'); % Pone el fondo de la ventana transparente
set(gca, 'color', 'none'); % Pone el fondo del área de la gráfica transparente
saveas(gcf, 'Memsistor x_w.png');
pause(0.5)

 