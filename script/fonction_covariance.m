function [ MatCov ] = fonction_covariance(img,moy)
R=img(:,:,1); %on d�termine la composante R de notre r�gion
G=img(:,:,2); %on d�termine la composante G de notre r�gion
B=img(:,:,3); %on d�termine la composante B de notre r�gion
%DEFINITION DE LA MATRICE DE COVARIANCE
C11=(R-moy(1)).*(R-moy(1));
CRR=mean(C11(:));
C12=(R-moy(1)).*(G-moy(2));
CRG=mean(C12(:));
C13=(R-moy(1)).*(B-moy(3));
CRB=mean(C13(:));
CGR=CRG;
C22=(G-moy(2)).*(G-moy(2));
CGG=mean(C22(:));
C23=(G-moy(2)).*(B-moy(3));
CGB=mean(C23(:));
CBR=CRB;
CBG=CGB;
C33=(B-moy(3)).*(B-moy(3));
CBB=mean(C33(:));

MatCov=[CRR CRG CRB; CGR CGG CGB; CBR CBG CBB];

end

