%Main file for testing "Import_Frames" function%

File_Name = "Block_Test_Video.mov";
[Video_Structure,Frame_Data] = Import_Frames(File_Name);


montage(Frame_Data,'ThumbnailSize',[100, Inf]);
title('Image Database Collection');

implay(Video_Structure);




