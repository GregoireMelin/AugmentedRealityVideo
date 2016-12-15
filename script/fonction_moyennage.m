function [ moy ] = fonction_moyennage( img )
R=img(:,:,1); %on d�termine la composante R de notre r�gion
G=img(:,:,2); %on d�termine la composante G de notre r�gion
B=img(:,:,3); %on d�termine la composante B de notre r�gion

moyR=mean(R(:)); %Moyenne de la composante R de notre r�gion
moyG=mean(G(:)); %Moyenne de la composante G de notre r�gion
moyB=mean(B(:)); %Moyenne de la composante B de notre r�gion
moy=[moyR,moyG,moyB]; %On stoque les moyennes dans un vecteur moyenne commun

end

