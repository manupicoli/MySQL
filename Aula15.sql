use cadastro;

alter table gafanhotos add column cursopreferido int;

alter table gafanhotos 
add foreign key(cursopreferido) /*relacionamos a tabela nova com o id do curso da tabela de cursos, para saber qual o curso preferido de cada pessoa da tabela*/
references cursos(idcurso);

update gafanhotos set cursopreferido = '6' where id = '1'; /*estamos dizendo que o aluno com id = 1 prefere o curso de id = 6*/

/*para conseguir mostrar dados de duas tabelas diferentes, usamos o JOIN*/
select gafanhotos.nome, cursos.nome, cursos.ano /*dessa forma, mostramos o nome de uma tabela e o nome e o ano de outra*/
from gafanhotos join cursos
on cursos.idcurso = gafanhotos.cursopreferido; /*o ON vai definir quais são as relações: nesse caso, cada gafanhoto se liga ao curso através das chaves estrangeira e primária*/

select g.nome, c.nome, c.ano
from gafanhotos as g left outer join cursos as c /*também é possível abreviar o nome das tabelas desa maneira */
on c.idcurso = g.cursopreferido; /*o left outer join vai dar preferência para a tabela da esquerda, ou seja,
 até mesmo os gafanhotos que não estão relacionados com a tabela cursos irão aparecer no resultado
 mesma lógica para o right outer join*/