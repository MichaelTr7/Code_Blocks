
%Input headers/table labels%
Headers = {'Input 1','Input 2','Input 3'};

MATLAB_Blue = [0, 0.4470, 0.7410];

% Creating uifigure%
UIFigure = uifigure;
UIFigure.Position = [100 100 640 480];
UIFigure.Name = 'UI Figure';

% % Create ManualProjectAllocationPanel
Main_Panel = uipanel(UIFigure);
Main_Panel.ForegroundColor = MATLAB_Blue;
Main_Panel.BorderType = 'none';
Main_Panel.TitlePosition = 'centertop';
Main_Panel.Title = 'User Set Table Size in MATLAB App-Designer';
Main_Panel.FontName = 'Arimo';
Main_Panel.FontWeight = 'bold';
Main_Panel.FontSize = 12;
Main_Panel.Position = [23 178 579 231];

%Grabbing the length of the input%
Table_Dimensions = length(Headers);
Array = zeros(Table_Dimensions,Table_Dimensions);

%*************************************************************************%
%Change Table Values Here
%*************************************************************************%

%Example%
Array(1,1) = 20;

%*************************************************************************%

%Converting the array to a table that can displayed%
Table = array2table(Array);
Table.Properties.VariableNames = Headers;

%Creating a uitable to be plotted in the main uifigure%
UI_Table = uitable(UIFigure,'Data',Table);
Table_Height = 200; 
Table_Width = 300;
UI_Table.Position = [165 180 Table_Width Table_Height];


