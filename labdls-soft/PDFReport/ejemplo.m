function ejemplo

ancho=21.6;alto=27.9;
fig = figure('Name','Anotaciones','Numbertitle','off',...
    'visible','off','menubar','none',...
    'units','centimeter','position',[0 0 ancho alto],...
    'PaperUnits','centimeters','PaperSize',[ancho alto],...
    'PaperPosition',[0 0 ancho alto]);

fig2 = figure('Name','Anotaciones','Numbertitle','off',...
    'visible','off','menubar','none',...
    'units','centimeter','position',[0 0 ancho alto],...
    'PaperUnits','centimeters','PaperSize',[ancho alto],...
    'PaperPosition',[0 0 ancho alto]);

ax1=axes('Parent',fig2,'Visible','off','units','centimeter','position',[ancho-17 alto-2 5 2]);
set(fig2,'Currentaxes',ax1);
ezsurf('sin(x)+cos(y)');

%% Anotaciones
annotation(fig,'textbox','units','centimeter',...
    'fontsize',10,'Linestyle','none',...
    'string','ABC','position',[0.5 alto-3 7 1]);
annotation(fig,'textbox','units','centimeter',...
    'fontsize',10,'Linestyle','none',...
    'string','DEF','position',[0.5 alto-5 7 1]);


%% to PDF
print({fig,fig2},'-dpdf','ejemplo.pdf');

open('ejemplo.pdf');

end