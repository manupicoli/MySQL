create table if not exists cursos( /*criando mais uma tabela */
nome varchar(30) not null unique, /*unique = nao vai ter 2 cursos com o mesmo nome */
descricao text,
carga int unsigned, /*enconomiza um byte por carga registrada */
totaulas int unsigned,
ano year default '2016'
) default charset = utf8mb4;

alter table cursos
add column idcurso int first;

alter table cursos
add primary key(idcurso); /*adicionando o idcurso como chave primária */

/* drop pode ser usado para apagar a tabela inteira
tb tem as variações
drop table, drop column */