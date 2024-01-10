select carga, count(nome) from cursos /*nesse caso, o count vai servir para contar o total de cada grupo*/
group by carga; /*vai agrupar por carga, permitindo contar o total em cada grupo*/

select carga, count(nome) from cursos
group by carga
having count(nome) > 3; /*vai agregar dentro do agrupamento. Só pode agregar pelo grupo que foi agrupado*/
/* o HAVING para o GROUP BY é semelhante com o WHERE para o SELECT*/

select ano, count(*) from cursos
where totaulas > 30
group by ano
having ano > 2013
order by count(*);

/*é possível juntar um select no outro*/
select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos);
