select * from cursos
where nom like 'P%'; /*com esse comando, o resultado vai retornar todos os nomes que começam com P
possui algumas variações
%p - p no final
%p% - p em qualquer lugar
ph&p_ - o underline exige que tenha um único caracter no final
etc*/

select distinct carga from cursos; /*cria uma LISTA que mostra os dados da coluna APENAS UMA VEZ*/

select count(nome) from cursos; /* para contar quantos ocorrências tem dentro da coluna selecionada*/

select count(*) from cursos where carga > 40; /*vai contar quantos cursos possuem carga maior do que 40*/

select max(carga) from cursos; /*mostra qual a maior carga*/

select max(totaulas) from cursos where ano = '2016'; /*selecionar qual o máximo de total de aulas no ano de 2016*/

select min(totaulas) from cursos; /*tambem e possivel selecionar o minimo*/

select sum(totaulas) from cursos; /*faz a soma de todos os valores dentro da coluna*/

select avg(totaulas) from cursos; /*faz a média de todos valores da coluna*/