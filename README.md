# 3D-Reconstruction-of-Microscopic-Tomography
3D Reconstruction of Microscopic Tomography Based on Matlab.  
This repo is for 3D reconstruction of microscopic tomographic images.   

     
Firstly：  
./example contains some basic knowledge of three-dimensional reconstruction commonly used.  
Secondaly：  
./mri_example includes examples of 3D reconstruction of human brain tomographic images scanned by CT equipment.  

### Quick Demo
U can simple run all the .m files in ./example or ./mri_example based on Matlab.   

### Data
The original data exists in ./origin.   
This is a part of an animal's neuron.   
Scanning the position from top to bottom with an electron microscope.   
20 tomographic images were obtained, with a scanning interval of 3.  
      
I preprocessed the origin data and put it in ./origin_done.

### How to test?  
simple run my_origin.m  


PS:  
canny.m is a demo to preprocess the data.  
to_gray.m is to turn the RGB image into gray.  
