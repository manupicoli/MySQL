select * from gafanhotos
order by ano, nome; /*vai ordenar por ordem da primeira coluna, podendo ordenar secundariamente pela segunda */

select nome, ano, carga from cursos; /*para filtrar as colunas que ele vai mostrar*/

select * from cursos 
where ano = '2016'
order by nome; /*para filtrar por linhas*/

select * from cursos
where totaulas between '20' and '30' /*ferramenta para buscar informações que estão entre duas condições, uma faixa de valores*/
order by nome;

select nome, descricao, ano from cursos
where ano in ('2014', '2016') /*ferramenta para buscar informações que têm valor específico*/
order by ano;

select * from cursos
where carga > 35 and totaulas < 30; /* and = as duas condições tem que ser verdade
diferente do OR, onde apenas uma das condições precisa ser verdade*/