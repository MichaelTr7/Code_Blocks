%Input: File_Name = "Block_Test_Video.mov";%

function [Video_Structure,Frame_Data] = Import_Frames(File_Name)

%Grabbing file properties%
Video_Properties = VideoReader(File_Name);
Video_Height = Video_Properties.Height;
Video_Width = Video_Properties.Width;
Number_Of_Frames = Video_Properties.NumFrames;

%Creating an empty 3-dimensional matrix%
Colour_Channel_Matrix = zeros(Video_Height,Video_Width,3,'uint8');

%Creating an empty structure to store video frames%
Video_Structure = struct('cdata',Colour_Channel_Matrix,'colormap',[]);

%Looping through video and storing in structure%
Frame_Index = 1;
while(hasFrame(Video_Properties))
    
    
Video_Structure(Frame_Index).cdata = readFrame(Video_Properties);
Frame_Index = Frame_Index + 1;    
    
end

%Restructuring Frames%
Frame_Data = {Video_Structure.cdata};



