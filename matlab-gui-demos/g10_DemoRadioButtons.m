function g10_DemoRadioButtons
f = figure('MenuBar','none',...
    'NumberTitle','off',...
    'Name','Demo Radio Button',...
    'Position',[0 0 300 200]);
centerfig(f);

hBG = uibuttongroup('Position',[0.1 0.1 0.8 0.8],...
    'SelectionChangeFcn',@radiobt_callback);
uicontrol(hBG,'style','radio',...
    'String','Arial',...
    'Units','Normalized',...
    'Position',[0.1 0.1 0.9 0.2]);
uicontrol(hBG,'style','radio',...
    'String','Times New Roman',...
    'Units','Normalized',...
    'Position',[0.1 0.3 0.9 0.2]);
uicontrol(hBG,'style','radio',...
    'String','DejaVu Sans',...
    'Units','Normalized',...
    'Position',[0.1 0.5 0.9 0.2]);
uicontrol(hBG,'style','radio',...
    'String','Courier New',...
    'Units','Normalized',...
    'Position',[0.1 0.7 0.9 0.2]);

    function radiobt_callback(~,event)
        tipo_fuente = get(event.NewValue,'String');
        set(findobj('style','radio'),'FontName',tipo_fuente);
    end

end