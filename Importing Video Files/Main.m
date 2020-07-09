%Main file for testing "Import_Frames" function%

File_Name = "Animated_Blocks_Test.avi";
[Video_Structure,Frame_Data] = Import_Frames(File_Name);

%Creating a montage of all video frames%
montage(Frame_Data,'ThumbnailSize',[100, Inf]);
title('Image Database Collection');

%Playing the frames stored in the structure%
implay(Video_Structure);
