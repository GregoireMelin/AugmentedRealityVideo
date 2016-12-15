function [ MatBaryOrdonnes ] = fonction_tracking( MatBary,MatBaryOrdonnes )
%Tracking des picots sur les autres images
MatriceTracking=zeros(4,size(MatBary,2));
MatriceTracking(1,:)=sqrt((MatBary(1,:)-MatBaryOrdonnes(1,1)).^2+(MatBary(2,:)-MatBaryOrdonnes(2,1)).^2);
MatriceTracking(2,:)=sqrt((MatBary(1,:)-MatBaryOrdonnes(1,2)).^2+(MatBary(2,:)-MatBaryOrdonnes(2,2)).^2);
MatriceTracking(3,:)=sqrt((MatBary(1,:)-MatBaryOrdonnes(1,3)).^2+(MatBary(2,:)-MatBaryOrdonnes(2,3)).^2);
MatriceTracking(4,:)=sqrt((MatBary(1,:)-MatBaryOrdonnes(1,4)).^2+(MatBary(2,:)-MatBaryOrdonnes(2,4)).^2);
[Pmin,loc]=min(MatriceTracking,[],2);
MatBaryOrdonnes=[MatBary(:,loc(1)) MatBary(:,loc(2)) MatBary(:,loc(3)) MatBary(:,loc(4))];
end

