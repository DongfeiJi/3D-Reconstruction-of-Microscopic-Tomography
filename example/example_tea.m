[verts, faces, cindex] = teapotGeometry;

figure
p = patch('Faces',faces,'Vertices',verts,'FaceVertexCData',cindex,'FaceColor','interp')

view(-151,30)     % change the orientation
axis equal off    % make the axes equal and invisible

%p.FaceAlpha = 0.3;   % make the object semi-transparent透明显示

%p.FaceColor = 'none';    % turn off the colors框线显示

%更改对象颜色
p.FaceAlpha = 1;           % remove the transparency
p.FaceColor = 'interp';    % set the face colors to be interpolated
p.LineStyle = 'none';      % remove the lines
colormap(copper)           % change the colormap

%添加光照
l = light('Position',[-0.4 0.2 0.9],'Style','infinite')

%属性
lighting gouraud

%属性
material shiny