function [ moy ] = fonction_moyennage( img )
R=img(:,:,1); %on détermine la composante R de notre région
G=img(:,:,2); %on détermine la composante G de notre région
B=img(:,:,3); %on détermine la composante B de notre région

moyR=mean(R(:)); %Moyenne de la composante R de notre région
moyG=mean(G(:)); %Moyenne de la composante G de notre région
moyB=mean(B(:)); %Moyenne de la composante B de notre région
moy=[moyR,moyG,moyB]; %On stoque les moyennes dans un vecteur moyenne commun

end

