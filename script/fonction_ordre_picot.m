function [ MatBaryOrdonnes ] = fonction_ordre_picot(MatBary)



%Création des 3 vecteurs à partir du point 1 fixé
bary1final=[MatBary(1,4);MatBary(2,4)];
V12=[MatBary(1,2)-MatBary(1,4);MatBary(2,2)-MatBary(2,4)];
V13=[MatBary(1,1)-MatBary(1,4);MatBary(2,1)-MatBary(2,4)];
V14=[MatBary(1,3)-MatBary(1,4);MatBary(2,3)-MatBary(2,4)];

%Calculs des produits vectoriels
VectProduit=[V12(1)*V13(2)-V12(2)*V13(1) V12(1)*V14(2)-V12(2)*V14(1) V13(1)*V14(2)-V13(2)*V14(1)];

if (VectProduit(1)>0)
    if (VectProduit(2)>0)
        if (VectProduit(3)>0)
            bary2final=[MatBary(1,2);MatBary(2,2)];
            bary3final=[MatBary(1,1);MatBary(2,1)];
            bary4final=[MatBary(1,3);MatBary(2,3)];
        else
            bary2final=[MatBary(1,2);MatBary(2,2)];
            bary3final=[MatBary(1,3);MatBary(2,3)];
            bary4final=[MatBary(1,1);MatBary(2,1)];
        end
    else 
            bary2final=[MatBary(1,3);MatBary(2,3)];
            bary3final=[MatBary(1,2);MatBary(2,2)];
            bary4final=[MatBary(1,1);MatBary(2,1)];
    end
else
    if (VectProduit(2)>0)
            bary2final=[MatBary(1,1);MatBary(2,1)];
            bary3final=[MatBary(1,2);MatBary(2,2)];
            bary4final=[MatBary(1,3);MatBary(2,3)];
    else 
        if (VectProduit(3)>0)
            bary2final=[MatBary(1,1);MatBary(2,1)];
            bary3final=[MatBary(1,3);MatBary(2,3)];
            bary4final=[MatBary(1,2);MatBary(2,2)];
        else 
            bary2final=[MatBary(1,3);MatBary(2,3)];
            bary3final=[MatBary(1,1);MatBary(2,1)];
            bary4final=[MatBary(1,2);MatBary(2,2)];
        end
    end
end






MatBaryOrdonnes=[bary1final bary2final bary3final bary4final];
end

