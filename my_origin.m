
load mri
%D = squeeze(D);
img1=imread("./origin_done/p1.jpg");
img2=imread("./origin_done/p2.jpg");
img3=imread("./origin_done/p3.jpg");
img4=imread("./origin_done/p4.jpg");
img5=imread("./origin_done/p5.jpg");
img6=imread("./origin_done/p6.jpg");
img7=imread("./origin_done/p7.jpg");
img8=imread("./origin_done/p8.jpg");
img9=imread("./origin_done/p9.jpg");
img10=imread("./origin_done/p10.jpg");
img11=imread("./origin_done/p11.jpg");
img12=imread("./origin_done/p12.jpg");
img13=imread("./origin_done/p13.jpg");
img14=imread("./origin_done/p14.jpg");
img15=imread("./origin_done/p15.jpg");
img16=imread("./origin_done/p16.jpg");
img17=imread("./origin_done/p17.jpg");
img18=imread("./origin_done/p18.jpg");
img19=imread("./origin_done/p19.jpg");
img20=imread("./origin_done/p20.jpg");

D=cat(3,img1,img2,img3,img4,img5,img6,img7,img8,img9,img10,img11,img12,...
img13,img14,img15,img16,img17,img18,img19,img20)
[x y z D]=reducevolume(D,[5,5,5])
D=smooth3(D)

fv=isosurface(x,y,z,D,100)

p=patch(fv,'FaceColor','yellow', 'EdgeColor','none')

colormap(gray)

view(3)
lighting gouraud
axis equal
daspect([1,1,.4])
