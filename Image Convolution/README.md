# Image Convolution/Spatial Filtering Tutorial


## Function call
```Matlab
function [Magnitude,X_Component,Y_Component] = Image_Convolution(Image,Kernel_Operator,Normalization_Flag)
```
|Inputs|Outputs|
|--|--|
|<b>• Image:</b> Input Image (JPEG, PNG, etc) <br> <b>• Kernel Operator:</b> (Sobel, Laplacian, etc) <br/><b>• Normalization Flag:</b> Used as an option to normalize image |<br><b>• Magnitude:</b> Image after applying spatial filtering in both directions <br/> <b>• X_Component:</b> Image after applying spatial filtering in the x-direction <br/> <b>• Y_Component:</b> Image after applying spatial filtering in the y-direction|

## Example Convolution Pipeline






## Converting the Horizontal Gradient to a Vertical Gradient
```Matlab
%Buffering the image%
Kernel_X = Kernel_Operator; %Horizontal derivative: captures vertical lines%
Kernel_Y = flip(transpose(Kernel_X)); %Vertical derivative: captures horizontal lines%
Kernel_Width =  length(Kernel_Operator);

%Preparing kernels by flipping (not necessary changes bias slighty)%
Vertical_Mirror = 2;
Horizontal_Mirror = 1;
Kernel_X = flip(Kernel_X,Vertical_Mirror);
Kernel_Y = flip(Kernel_Y,Horizontal_Mirror);
```

## Zero-Padding Image Border/Boundary
```Matlab
%Buffering the image boundary/border%
Kernel_Radius = Kernel_Width/2;
Padding_Factor = floor(Kernel_Radius);

Padded_Image = Image;

%Padding the top and bottom of the image%
Top_Padding = zeros(Padding_Factor,Image_Width);
Bottom_Padding = zeros(Padding_Factor,Image_Width); 


Padded_Image = vertcat(Top_Padding,Padded_Image);
Padded_Image = vertcat(Padded_Image,Bottom_Padding);


%Padding the left and right of the image%
Left_Padding = zeros(Image_Height+2*Padding_Factor,Padding_Factor);
Right_Padding = zeros(Image_Height+2*Padding_Factor,Padding_Factor);

Padded_Image = horzcat(Left_Padding,Padded_Image);
Padded_Image = horzcat(Padded_Image,Right_Padding);
```
