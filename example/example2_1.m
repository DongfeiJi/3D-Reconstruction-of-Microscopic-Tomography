cla

[m,n,p] = size(u);
[Sx, Sy, Sz] = meshgrid(1,1:5:n,1:5:p);    % calculate the starting points of the streamlines

h = streamtube(u,v,w,Sx,Sy,Sz);            % draw the streamtubes and return an array of surfaces
set(h, 'FaceColor', 'cyan')                % use 'set' to change properties for an array of objects
set(h, 'EdgeColor', 'none')

axis tight equal
view(37,32)
box on
light