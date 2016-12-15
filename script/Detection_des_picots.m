clear all
close all

load('modele.mat');
video_origine=VideoReader('vid_in.mp4');
img=read(video_origine,1);
imgS=fonction_seuillage(img,Mahalanobis,Seuil);

MatBary=fonction_labellisation_picot(imgS);
MatBaryOrdonnee=fonction_ordre_picot(MatBary);

echelle=1;
mask = zeros(size(img,1),size(img,2));
[goku,map]=imread('goku.gif','frames','all');
goku1=ind2rgb8(goku(:,:,1),map);
num=1;
imgE=fonction_incrustation(goku1,img,MatBaryOrdonnee(2,:),MatBaryOrdonnee(1,:),echelle,mask);
%figure,imshow(imgE);

video_finale=VideoWriter('video_finale.avi', 'Motion JPEG AVI');
video_finale.FrameRate=25;
open(video_finale);
writeVideo(video_finale,imgE);
for k=2:248
    img=read(video_origine,k);
    mahalanobis=fonction_mahalanobis(img,Moyenne,MatCov);
    imgS=fonction_seuillage(img,mahalanobis,Seuil);
    MatBary=fonction_labellisation_picot(imgS);
    MatBaryPrecedent=MatBaryOrdonnee;
    MatBaryOrdonnee=fonction_tracking(MatBary,MatBaryPrecedent);
    
    if (k>=38)   
    imgdoigts=read(video_origine,k);    
    Mahalanobisdoigts=fonction_mahalanobis(imgdoigts,Moydoigts,MatCovDoigts);
    imgsdoigts=fonction_seuillage(imgdoigts,Mahalanobisdoigts,Seuildoigts);
    mask=imgsdoigts;
    end
    
    if (k<50)
    if num<=5
        num=num+1;
    else
        num=0;
    end
    [goku,map]=imread('goku.gif','frames','all'); 
    goku1=fonction_gif0(num,goku,map);
    imgE=fonction_incrustation(goku1,img,MatBaryOrdonnee(2,:),MatBaryOrdonnee(1,:),echelle,mask);
    
    
    elseif (k<100)
    if num<=10
        num=num+1;
    else
        num=0;
    end
    [goku,map]=imread('gokussj1.gif','frames','all'); 
    goku1=fonction_gif1(num,goku,map);
    imgE=fonction_incrustation(goku1,img,MatBaryOrdonnee(2,:),MatBaryOrdonnee(1,:),echelle,mask);
    
    
    elseif (k<145)
    if num<=7
        num=num+1;
    else
        num=0;
    end
    [goku,map]=imread('gokussj3.gif','frames','all');  
    goku1=fonction_gif2(num,goku,map);
    imgE=fonction_incrustation(goku1,img,MatBaryOrdonnee(2,:),MatBaryOrdonnee(1,:),echelle,mask);
    
    
    elseif (k<=200)
    if num<=8
        num=num+1;
    else
        num=0;
    end
    [goku,map]=imread('gokugod1.gif','frames','all'); 
    goku1=fonction_gif3(num,goku,map);
    imgE=fonction_incrustation(goku1,img,MatBaryOrdonnee(2,:),MatBaryOrdonnee(1,:),echelle,mask);
    
    
    else
    if num<=10
        num=num+1;
    else
        num=0;
    end
    [goku,map]=imread('gokugodssj.gif','frames','all');  
    goku1=fonction_gif1(num,goku,map);
    imgE=fonction_incrustation(goku1,img,MatBaryOrdonnee(2,:),MatBaryOrdonnee(1,:),echelle,mask);
    end
    
    writeVideo(video_finale,imgE);
end
close(video_finale);

