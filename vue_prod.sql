use gestioncommerciale ;

create or replace view prod as
(
select 
num_prod id_prod, 
nom_produit, 
prix_unit, 
qte_stock,
entrepot,
case 
   when qte_stock > 1000 then 'stock_full'     
   when qte_stock < 50 then 'stock_faible'
   else 'moyen'
   end as 'visu_stock'
 from produit 
 union
 select 
id_produit id_prod,
nom_produit,
prix_unit,
qte_stock,
entrepot,
case 
   when qte_stock > 1000 then 'stock_full'     
   when qte_stock < 50 then 'stock_faible'
   else 'moyen'
   end as 'visu_stock'
from vendu );



