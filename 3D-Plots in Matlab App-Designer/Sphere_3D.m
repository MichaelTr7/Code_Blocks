
app = uifigure();

Field_Height = 20;
Field_Width = 80;

%Creating input text field for x1%
x1 = uieditfield(app,'numeric');
x1.Position = [10 100 Field_Width Field_Height];
x1_Label = uilabel(app);
x1_Label.Text = 'x1';
x1_Label.Position = [100 100 Field_Width Field_Height];

%Creating input text field for y1%
y1 = uieditfield(app,'numeric');
y1.Position = [10 70 Field_Width Field_Height];
y1_Label = uilabel(app);
y1_Label.Text = 'y1';
y1_Label.Position = [100 70 Field_Width Field_Height];

%Creating input text field for z1%
z1 = uieditfield(app,'numeric');
z1.Position = [10 40 Field_Width Field_Height];
z1_Label = uilabel(app);
z1_Label.Text = 'z1';
z1_Label.Position = [100 40 Field_Width Field_Height];

%Creating input text field for the radius%
Radius = uieditfield(app,'numeric');
Radius.Position = [10 10 Field_Width Field_Height];
Radius_Label = uilabel(app);
Radius_Label.Text = 'Radius';
Radius_Label.Position = [100 10 Field_Width Field_Height];

%Creating 3D axes%
Axes_3D = uiaxes(app);
Axes_3D.Position = [150 20 400 400];
plot3(Axes_3D,0,0,0,'Color','b');
Axes_3D.XGrid = 'on';
Axes_3D.YGrid = 'on';
Axes_3D.ZGrid = 'on';
Axes_3D.XLabel.String = "x axis";
Axes_3D.YLabel.String = "y axis";
Axes_3D.ZLabel.String = "z axis";

%Setting callback functions for each output%
x1.ValueChangedFcn = @(x1,event) Plot_Sphere(x1,y1,z1,Radius,Axes_3D);
y1.ValueChangedFcn = @(y1,event) Plot_Sphere(x1,y1,z1,Radius,Axes_3D);
z1.ValueChangedFcn = @(z1,event) Plot_Sphere(x1,y1,z1,Radius,Axes_3D);
Radius.ValueChangedFcn = @(Radius,event) Plot_Sphere(x1,y1,z1,Radius,Axes_3D);

%Function that gets called when any input field is changed%
function [] = Plot_Sphere(X_Field,Y_Field,Z_Field,Radius_Field,Axes_3D)

%Grab the positions.offsets from each field%
X_Position = X_Field.Value;
Y_Position = Y_Field.Value;
Z_Position = Z_Field.Value;
Radius = Radius_Field.Value;

%Creating a matrix of points for the sphere%
[X_Base,Y_Base,Z_Base] = sphere;

%Multiplying the points depending on a given radius%
X = X_Base * Radius;
Y = Y_Base * Radius;
Z = Z_Base * Radius;

%Creating a matrix of points for the circle%
Number_Of_Data_Points = 200;
theta = linspace(0,2*pi,Number_Of_Data_Points);
X_Circle = Radius*cos(theta);
Y_Circle = Radius*sin(theta);
Z_Circle = zeros(1,Number_Of_Data_Points);

%Plotting the circle%
plot3(Axes_3D,X_Circle+X_Position,Y_Circle+Y_Position,Z_Circle+Z_Position);

%Switch this line to get sphere%
% plot3(Axes_3D,X+X_Position,Y+Y_Position,Z+Z_Position,'Color','b');

end
