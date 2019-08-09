cla

[m,n,p] = size(u);
[Sx, Sy, Sz] = meshgrid(1,1:5:n,1:5:p);    % calculate the starting points of the streamlines

streamline(u,v,w,Sx,Sy,Sz)                 % draw the streamlines

axis tight equal
view(37,32)
box on