use cadastro; 

insert into pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade) /* não precisa adicionar o id porque ele é auto_increment */
values
('Godofredo', '1984-01-02', 'M', '78.5', '1.83', 'Brasil');

insert into pessoas values
(DEFAULT,'Maria', '1999-12-30', 'F', '55.20', '1.65', 'Portugal'); /* pode definir como default para preencher automaticamente */