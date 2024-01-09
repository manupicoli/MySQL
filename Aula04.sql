create database cadastro
default character set utf8mb4
default collate utf8mb4_general_ci;

create table pessoas(
id int NOT NULL AUTO_INCREMENT, /*o auto_increment vai definir o número automaticamente */
nome varchar(30) NOT NULL,
nascimento date,
sexo enum('M', 'F'), /*so vai aceitar M ou F*/
peso decimal(5,2), /*5 é o total de casas e o 2 são os numeros após da vírgula */
altura decimal(3,2),
nacionalidade varchar(20) DEFAULT 'Brasil'
primary key(id) /*definindo o id como chave priméria (que não se repete, cada pessoa tem o seu) */
) default charset utf8mb4;

