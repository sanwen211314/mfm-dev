%computes and plots ergodic density 
load rochet.mat;
xx=linspace(domain_x(1)+0.000000001, domain_x(2));
g_int = sum(2.*mucheb./sigmacheb.^2); %integral 2*mu/sigma
scale = 1./(sum(g_int./sigmacheb(xx(1:end-1)).^2)*(xx(2)-xx(1)));

ergodic_d = g_int./sigmacheb.^2.*scale;
figure;
plot(xx(2:end-1),ergodic_d (xx(2:end-1)),'linewidth', 2 );
xlabel('X');title( 'ergodic density');