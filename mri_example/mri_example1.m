
load mri
D = squeeze(D);


figure
colormap(map)
image_num = 8;
image(D(:,:,image_num))
axis image

x = xlim;
y = ylim;

%显示二维等高线
%为了提高细节的可见性，此等高线图使用 jet 颜色图。brighten 函数可降低颜色值的亮度。
cm = brighten(jet(length(map)),-.5);
figure
colormap(cm)
contourslice(D,[],[],image_num)
axis ij
xlim(x)
ylim(y)
daspect([1,1,1])

%显示三维登高线
figure
colormap(cm)
contourslice(D,[],[],[1,12,19,27],8);
view(3);
axis tight

%首先，使用 smooth3 对数据进行平滑处理，然后使用 isosurface 计算等值数据。
%使用 patch 将这些数据显示在图窗中（对等值顶使用原始灰度颜色图）。
%isonormals 函数使用从平滑数据获得的顶点法线来渲染等值面，从而提高等值面的质量。等值面使用一种颜色来表示其等值。
figure
colormap(map)
Ds = smooth3(D);
hiso = patch(isosurface(Ds,5),...
   'FaceColor',[1,.75,.65],...
   'EdgeColor','none');
   isonormals(Ds,hiso)%平滑过的
   
%使用 isocaps 计算另一个补片的数据，该补片与等值面以相同的等值 (5) 显示。使用未平滑处理的数据 (D) 显示内部细节。
%您可以将此看作是切掉顶部的头部切割图。位置较低的等值顶在最终视图中不可见。   
hcap = patch(isocaps(D,5),...
   'FaceColor','interp',...
   'EdgeColor','none');%不采用平滑

%定义视图并设置纵横比
view(35,30) 
axis tight 
daspect([1,1,.4])

%添加光照并根据三维体数据的梯度重新计算曲面法线，从而产生更平滑的光照（camlight、lighting、isonormals）。增大等值顶的 AmbientStrength 属性，以增强颜色亮度而不影响等值面。设置等值面的 SpecularColorReflectance，
%使镜面反射光的颜色更接近等值面的颜色，然后设置 SpecularExponent 以减小镜面反射区的大小。
%将等值顶与等值面相结合，以可视方式呈现 MRI 数据。
lightangle(45,30);
lighting gouraud
hcap.AmbientStrength = 0.6;
hiso.SpecularColorReflectance = 0;
hiso.SpecularExponent = 50;%光照是为了更立体化