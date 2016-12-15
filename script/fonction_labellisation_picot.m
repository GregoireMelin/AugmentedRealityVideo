function [ MatBary ] = fonction_labellisation_picot( ImgSeuillee )
%imerode
ImgSL=logical(ImgSeuillee);
[L,num]=bwlabel(ImgSL);

%labellisation des 4 picots et calcul des barycentres

MatBary=[2 double(num)];
for i=1:num
    [r, c] = find(L==i);
    MatBary(1,i) = (mean(r));
    MatBary(2,i)=(mean(c));
end
end

