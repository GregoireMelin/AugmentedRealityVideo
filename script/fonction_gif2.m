function [ goku1] = fonction_gif2( num , goku , map)
if num==0
goku1=ind2rgb8(goku(:,:,1),map);
elseif num==1
goku1=ind2rgb8(goku(:,:,2),map); 
elseif num==2
goku1=ind2rgb8(goku(:,:,3),map);
elseif num==3
goku1=ind2rgb8(goku(:,:,4),map); 
elseif num==4
goku1=ind2rgb8(goku(:,:,5),map);
elseif num==5
goku1=ind2rgb8(goku(:,:,6),map); 
elseif num==6
goku1=ind2rgb8(goku(:,:,7),map); 
elseif num==7
goku1=ind2rgb8(goku(:,:,8),map);
elseif num==8
goku1=ind2rgb8(goku(:,:,9),map);
end
end