--MOSTAR A LISTA DE CD 
SELECT
    *
    FROM cd;
----msotatr a tablema de musicas 
SELECT   *
FROM musica;
 
 SELECT titulo,datacompra
 
 FROM CD;
 ---mostar adata de comparas cd 
 SELECT  datacompra
 FROM cd;
 --Mostrar dadta compra sem repiti os os registos 
  SELECT  DISTINCT 
  datacompra 
 FROM cd;
 --mostar o codigo e o interprete
 SELECT DISTINCT
 codcd,musica.interprete
 FROM musica;
 
--- alterar ome da coluna 
--UPDATE musica 
--Set CODCD=Codigo
  --WHERE musica!=NULL;

 -- SELECT DISTINCT
  
 --codcd,musica.interprete
 --FROM musica;
 SELECT 
 titulo,valorpago,(valorpago*0.23)/1.23
 FROM cd;
 
 --MOSTRAR TODAS MUSICA DO CD COM O CODICO 2 
 SELECT
  *
 FROM musica
 where codcd=2 and duracao>5;
  --MOSTRAR TODAS MUSICA DO CD COM O CODICO 2 con duracao de 5 seguundos  
 SELECT
  *
 FROM musica
 where codcd=2 and duracao>5;
  --MOSTRAR TODAS MUSICA DO CD COM O CODICO 2 con duracao  entre 4 e 6 seguundos  
 SELECT
  *
 FROM musica
 where codcd=2 and duracao>4 and duracao<6  ;
 
  --MOSTRAR TODAS MUSICA DO CD COM O CODICO 2 
 SELECT
  *
 FROM musica
 where codcd=2 and duracao<4 or  duracao>6;
 
  --MOSTRAR TODOS DADOS DE MUSICA COM NUMERO 1,5,6 
 SELECT
  *
 FROM musica
 where nrmusica=1 or nrmusica=3 or nrmusica=5 or nrmusica=6;
 
  --MOSTRAR TODOS DADOS DE MUSICA COM NUMERO  diferente de 1,3,4,5,6,
 SELECT
  *
 FROM musica
 where  nrmusica!=5 and  nrmusica!=6 and  nrmusica!=1 and nrmusica!=3 ;
 --8) Mostrar todos os dados das músicas cujo intérprete é uma orquestra;
  SELECT
  *
 FROM musica
 where  interprete='orquestra';
 