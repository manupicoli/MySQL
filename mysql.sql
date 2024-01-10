use cadastro;

describe gafanhotos;
alter table gafanhotos add column cursopreferido int;

alter table gafanhotos
add foreign key (cursopreferido)
references cursos(idcurso);

select nome, peso from gafanhotos where peso >= 50;
select * from cursos;

update gafanhotos set cursopreferido = '6' where id = '1';

select gafanhotos.nome, cursos.nome, cursos.ano
from gafanhotos join cursos
on cursos.idcurso=gafanhotos.cursopreferido;

select * from gafanhotos;