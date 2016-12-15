function [ Mahalanobis] = fonction_mahalanobis(img,moy,MatCov)
h=size(img,1);
w=size(img,2);
nbpixels=h*w;
MatCovInv=(MatCov^(-1));
imgdouble=double(img);
imgReshaped=reshape(imgdouble,[],3,1)-repmat(moy,nbpixels,1);
imgMaha=sum((MatCovInv*imgReshaped').*imgReshaped',1);
Mahalanobis=reshape(imgMaha,h,w);
end



