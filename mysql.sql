use cadastro;

describe gafanhotos;
alter table gafanhotos add column cursopreferido int;

alter table gafanhotos
add foreign key (cursopreferido)
references cursos(idcurso);

select * from gafanhotos;
select * from cursos;

update gafanhotos set cursopreferido = '6' where id = '1';

select gafanhotos.nome, cursos.nome, cursos.ano
from gafanhotos join cursos
on cursos.idcurso=gafanhotos.cursopreferido;