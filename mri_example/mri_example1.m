
load mri
D = squeeze(D);


figure
colormap(map)
image_num = 8;
image(D(:,:,image_num))
axis image

x = xlim;
y = ylim;

%��ʾ��ά�ȸ���
%Ϊ�����ϸ�ڵĿɼ��ԣ��˵ȸ���ͼʹ�� jet ��ɫͼ��brighten �����ɽ�����ɫֵ�����ȡ�
cm = brighten(jet(length(map)),-.5);
figure
colormap(cm)
contourslice(D,[],[],image_num)
axis ij
xlim(x)
ylim(y)
daspect([1,1,1])

%��ʾ��ά�Ǹ���
figure
colormap(cm)
contourslice(D,[],[],[1,12,19,27],8);
view(3);
axis tight

%���ȣ�ʹ�� smooth3 �����ݽ���ƽ������Ȼ��ʹ�� isosurface �����ֵ���ݡ�
%ʹ�� patch ����Щ������ʾ��ͼ���У��Ե�ֵ��ʹ��ԭʼ�Ҷ���ɫͼ����
%isonormals ����ʹ�ô�ƽ�����ݻ�õĶ��㷨������Ⱦ��ֵ�棬�Ӷ���ߵ�ֵ�����������ֵ��ʹ��һ����ɫ����ʾ���ֵ��
figure
colormap(map)
Ds = smooth3(D);
hiso = patch(isosurface(Ds,5),...
   'FaceColor',[1,.75,.65],...
   'EdgeColor','none');
   isonormals(Ds,hiso)%ƽ������
   
%ʹ�� isocaps ������һ����Ƭ�����ݣ��ò�Ƭ���ֵ������ͬ�ĵ�ֵ (5) ��ʾ��ʹ��δƽ����������� (D) ��ʾ�ڲ�ϸ�ڡ�
%�����Խ��˿������е�������ͷ���и�ͼ��λ�ýϵ͵ĵ�ֵ����������ͼ�в��ɼ���   
hcap = patch(isocaps(D,5),...
   'FaceColor','interp',...
   'EdgeColor','none');%������ƽ��

%������ͼ�������ݺ��
view(35,30) 
axis tight 
daspect([1,1,.4])

%��ӹ��ղ�������ά�����ݵ��ݶ����¼������淨�ߣ��Ӷ�������ƽ���Ĺ��գ�camlight��lighting��isonormals���������ֵ���� AmbientStrength ���ԣ�����ǿ��ɫ���ȶ���Ӱ���ֵ�档���õ�ֵ��� SpecularColorReflectance��
%ʹ���淴������ɫ���ӽ���ֵ�����ɫ��Ȼ������ SpecularExponent �Լ�С���淴�����Ĵ�С��
%����ֵ�����ֵ�����ϣ��Կ��ӷ�ʽ���� MRI ���ݡ�
lightangle(45,30);
lighting gouraud
hcap.AmbientStrength = 0.6;
hiso.SpecularColorReflectance = 0;
hiso.SpecularExponent = 50;%������Ϊ�˸����廯