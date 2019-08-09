cla                                            % clear the current axes
load wind u v w x y z                          % load data 

[m,n,p] = size(u);
[Cx, Cy, Cz] = meshgrid(1:4:m,1:4:n,1:4:p);    % calculate the location of the cones

h = coneplot(u,v,w,Cx,Cy,Cz,y,4);              % draw the cone plot
set(h,'EdgeColor', 'none')

axis tight equal
view(37,32)
box on
colormap(hsv)
light