use cadastro;

/*junções para conseguir visualizar dados das três tabelas*/
select * from gafanhotos g
join gafanhoto_assiste_curso a
on g.id = a.idgafanhoto; /*nesse caso, mostra todos os dados da tabela g e da tabela a, de acordo com os gafanhotos cadastrados na tabela a (1, 3, 22, 1)*/

select g.id, g.nome, a.idgafanhoto from gafanhotos g
join gafanhoto_assiste_curso a
on g.id = a.idgafanhoto; 

select g.nome, c.nome from gafanhotos g /*puxando dados de uma terceira tabela, nesse caso, o nome do curso da tabela cursos*/
join gafanhoto_assiste_curso a
on g.id = a.idgafanhoto
join cursos c /*para isso, fazemos outro JOIN*/
on a.idcurso = c.idcurso
order by g.nome;
