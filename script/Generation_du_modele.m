clear all
close all

%Sélection d'un picot
vid=VideoReader('vid_in.mp4');
img1=read(vid,1);
picot=double(img1(292:303,376:384,:));

%Calcul de la moyenne
Moyenne=fonction_moyennage(picot);

%Calcul covariance
MatCov=fonction_covariance(picot,Moyenne);

%Distances de Mahalanobis pour la première image
Mahalanobis=fonction_mahalanobis(img1,Moyenne,MatCov);

%Seuillage de la première image
Seuil=50;

%Même démarche que pour la détection des picots mais cette fois avec les
%doigts
imgdoigts=read(vid,38);
doigts=double(imgdoigts(108:127,276:292,:));
Moydoigts=fonction_moyennage(doigts);
MatCovDoigts=fonction_covariance(doigts,Moydoigts);
Mahalanobisdoigts=fonction_mahalanobis(imgdoigts,Moydoigts,MatCovDoigts);
% figure,imshow(Mahalanobisdoigts,hot);
Seuildoigts=30;
% imgsdoigts=fonction_seuillage(imgdoigts,Mahalanobisdoigts,Seuildoigts);
% figure,imshow(imgsdoigts);

%Sauvegarde du modèle 
save('modele.mat','Seuil','MatCov','Mahalanobis','Moyenne','Seuildoigts','MatCovDoigts','Mahalanobisdoigts','Moydoigts');



