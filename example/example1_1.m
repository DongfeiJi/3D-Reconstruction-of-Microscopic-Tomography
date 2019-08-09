[X,Y,Z] = meshgrid(-2:2);
V = X.*exp(-X.^2-Y.^2-Z.^2);
xslice = 0.8;   
yslice = [];
zslice = [];
slice(X,Y,Z,V,xslice,yslice,zslice,'nearest')