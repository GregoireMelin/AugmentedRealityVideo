function [ImgS]=fonction_seuillage(imgI,mahalanobis,Seuil)
ImgS=ones(size(imgI,1),size(imgI,2));
for k=1:size(imgI,1)
    for i=1:size(imgI,2)
        if (mahalanobis(k,i)>Seuil)  
            ImgS(k,i)=0;
        end 
    end
end
