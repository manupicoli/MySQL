/*primeiro*/
select nome from gafanhotos where sexo = 'F';

/*segundo*/
select * from gafanhotos where nascimento between '2000-01-01' and '2015-12-31';

/*terceiro*/
select nome from gafanhotos where profissao = 'Programador' and sexo = 'M';

/*quarto*/
select * from gafanhotos where nacionalidade = 'Brasil' and sexo = 'F' and nome like 'J&';

/*quinto*/
select nome, nacionalidade from gafanhotos
where sexo = 'M' and nome like '%silva%' and nacionalidaade != 'Brasil' and peso < '100';

/*sexto*/
select max(altura) from gafanhotos where sexo = 'M';

/*setimo*/
select avg(peso) from gafanhotos;

/*oitavo*/
select min(peso) from gafanhotos where sexo = 'F' and nacionalidade != 'Brasil' and nascimento between '1990-01-01' and '2000-12-31';

/*nono*/
select count(nome) from gafanhotos where sexo = 'F' and altura > '1.90';