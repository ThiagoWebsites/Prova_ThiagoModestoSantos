CREATE DATABASE prova_Thiago;
use prova_Thiago;

CREATE TABLE Funcionarios (
ID_Funcionario int primary key not null,
Nome_Funcionario varchar(50) not null,
Cargo varchar(30) not null,
Salario decimal not null
);

CREATE TABLE Funcionarios_Projeto(
ID_projeto int primary key not null,
ID_Funcionario int not null,
Data_Inicio date,
Data_fim date
);

Insert into Funcionarios ( ID_Funcionario, Nome_Funcionario, Cargo, Salario)
VALUES ( 1, "João Silva", "Desenvolvedor", 5500.00),
( 2, "Maria Oliveira", "Analista de Sistemas", 6000.00),
( 3, "Carlos Pereira", "Gerente de Projetos", 7500.00),
( 4, "Ana Costa", "Designer", 4800.00),
( 5, "Lucas Almeida", "Consultor de TI", 6700.00);

Insert into Funcionarios_Projeto ( ID_projeto, ID_Funcionario, Data_Inicio, Data_fim)
VALUES ( 1, 1, "2024-01-10", "2024-06-30"),
( 2, 2, "2024-02-01", "2024-07-31"),
( 3, 3, "2024-03-15", "2024-9-15"),
( 4, 4, "2024-04-20", "2024-10-20"),
( 5, 5, "2024-05-01", "2024-11-30");

-- Folha 03 -- 
-- Questão 1 --
SELECT
Funcionarios.Nome_Funcionario,
Funcionarios_Projeto.Data_Inicio,
Funcionarios_Projeto.Data_fim
From Funcionarios
inner join Funcionarios_Projeto
ON Funcionarios_Projeto.ID_Funcionario = Funcionarios.ID_Funcionario;

-- Questão 2 --
SELECT
Funcionarios.Nome_Funcionario,
Funcionarios.Cargo,
Funcionarios_Projetos.Data_fim
from Funcionarios
inner join Funcionarios_Projetos
on Funcionarios_Projeto.ID_Funcionario = Funcionarios.ID_Funcionario;