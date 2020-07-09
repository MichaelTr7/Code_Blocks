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
