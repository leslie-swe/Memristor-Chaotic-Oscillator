
clear all
clc
load zz1.dat
load tplot.dat
 
 for j=1:1:500
  
  w0=j*0.02;
  j
  w_2(j)=w0;
  
  vx=zz1(:,j);%vx toma los valores de las soluciones en el eje x

 %Local maxima for vx
 % subplot(3,1,1)

	%vx = vx(1:max(size(vx)));
    vx = vx(1:end);
	lmx = locmax(vx);%Evaluate vx and return the indices of the local maxima.
	vx = vx(lmx);%vx contains only the maximum values
    t_lmx=tplot(lmx);%That value in 'y' is assigned to the time.

    %Plot bifurcation diagram v vs. t
    figure(1)
    subplot(2,1,1)
 	plot(vx,'.')
 	title(num2str(j));
 	xlabel('n');ylabel('vx');
 	pause(0.1)
 	hold off  
    subplot(2,1,2)
 	plot(tplot',zz1(:,j),'b-')
    hold on;
    plot(t_lmx,vx,'r*')
 	title(num2str(j));
 	xlabel('n');ylabel('vx');
 	pause(0.1)
 	hold off    
   for jv = 0:1:31%Iterate over the last 31 maxima.
 	bifx(j,jv+1) = vx(max(size(vx))-jv);
   end

end   

   save bifx.dat bifx -ascii;
  
    
figure(2)
 
plot(w_2, bifx, 'b.', 'MarkerSize', 2)
xlabel('w_2 initial condition')
ylabel('local maximumX')
title('Biburcation diagram')
grid
set(gcf, 'color', 'none'); % Pone el fondo de la ventana transparente
set(gca, 'color', 'none'); % Pone el fondo del área de la gráfica transparente
saveas(gcf, 'Memristor Bifurcation diagram.png');


