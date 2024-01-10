use cadastro;

alter table pessoas
add column profissao varchar(10); /*comando para alterar a tabela e adicionar coluna */

alter table pessoas
drop column profissao; /*comando para alterar a tabela e remover coluna */

alter table pessoas
add column profissao varchar(10) after nome; /*comando para adicionar coluna depois da coluna desejada*/

alter table pessoas
add column codigo int first; /*comando para adicionar coluna por primeiro */

alter table pessoas
modify profissao varchar(20); /*pode modificar o tipo primitivo e as constraint*/

alter table pessoas
change profissao prof varchar(20); /*para renomear a coluna tem que colocar o nome velho e o nome novo*/

alter table pessoas
rename to gafanhotos; /*para modificar o nome da tabela inteira*/