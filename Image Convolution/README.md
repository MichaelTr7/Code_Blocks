# Image Convolution/Spatial Filtering Tutorial


## Function call
```Matlab
function [Magnitude,X_Component,Y_Component] = Image_Convolution(Image,Kernel_Operator,Normalization_Flag)
```
|Inputs and Examples|Outputs and Examples|
|--|--|
|<b>• Image:</b> Input Image (JPEG, PNG, etc) <br> <b>• Kernel Operator:</b> (Sobel, Laplacian, etc) <br/><b>• Normalization Flag:</b> Used as an option to normalize image |<br><b>• Magnitude:</b> Image after applying spatial filtering in both directions <br/> <b>• X_Component:</b> Image after applying spatial filtering in the x-direction <br/> <b>• Y_Component:</b> Image after applying spatial filtering in the y-direction|

Example Inputs

<img src="README Images/Input_Image.png" width = "200">
