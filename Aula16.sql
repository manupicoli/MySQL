 use cadastro;

create table gafanhoto_assiste_curso ( /*tabela para mediar o relacionamento muitos para muitos*/
	id int not null auto_increment, /*chave primaria da tabela*/
	data date,
    idgafanhoto int, /*as duas chaves estrangeiras*/
    idcurso int,
    primary key (id),
    foreign key (idgafanhoto) references gafanhotos(id),
	foreign key (idcurso) references cursos(idcurso)
) default charset = utf8mb4;

insert into gafanhoto_assiste_curso values
(default, '2014-03-01', '1', '2'); /*o default indica que o id vai ser gerado automaticamente, que a data é 2014-03-01', 
o gafanhoto é o que tem id = 1 e o curso que ele está assistindo tem id = 2*/

select * from gafanhoto_assiste_curso;