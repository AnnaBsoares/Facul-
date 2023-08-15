08/08/2023

---Aula 1 - Introdução SQL

----DDL - Estrutura

-----Criando tabelas

sintaxe:

-atenção isso não se faz

create table table_name
(name_column1, name_column2, ....., name_columnN)

isso se faz

create table table_name
(name_column1 datatype(size) [constraint_name constraint_type],
name_column2 datatype(size) [constraint_name constraint_type],
.....,
name_columnN datatype(size) [constraint_name constraint_type])

Uso do ; é opcional, só é necessário a ser executada mais de uma
instrução

Exemplificando:

criando nosssa 1a tabela

create table tds_sb
(codigo number(4), nome varchar(30), dt_nasc date,
uf char(2))

ver a estrutura de uma tabela via comando
sintaxe: desc table_name
desc tds_sb

Tipos de dados
A - varchar(n) - alfanumerico variavel
C - char(n)    - alfanumerico fixo
N - number(x)  - inteiro
  - number(x,y) - real
D - date        - date

pesquisando o padrão da data
select sysdate from dual
dual = tabela dinâmica, temporária

Regras ou constraints

Pk - primary key - chave primária
Fk - foreign key - chave estrangeira
Nn - not null    - obrigatório
Uk - unique      - valor único
Ck - check       - validação de acordo com uma lista

create table tds_sb1
(codigo number(4)primary key,
nome varchar(30) not null, dt_nasc date,
uf char(2))

desc tds_sb1

dicionário de dados - proprietário = Oracle
tabelas de usuário  - nós

desc user_constraints

select constraint_name, constraint_type
from user_constraints
where table_name = 'TDS_SB1'

apagando uma tabela
sintaxe: drop table table_name
drop table tds_sb1
desc tds_sb1

create table tds_sb1
(codigo number(4) constraint tds_cd_pk primary key,
nome varchar(30) constraint tdds_nome_nn not null, 
dt_nasc date,
uf char(2))

select constraint_name, constraint_type
from user_constraints
where table_name = 'TDS_SB1'

create table tds_sb2
(codigo number(4),
nome varchar(30) constraint tds_nome_nn not null, 
dt_nasc date,
uf char(2),
constraint tds2_cd_pk primary key(codigo))

Exercício, criar as tabelas:

Table_name: Tipo_prod
Column_name DataType(Size) Constraint
cd_tipo     N - 2           PK
ds_tipo     A - 20          NN - U
dt_cad      D               NN

Table_name: Produto
Column_name DataType(Size) Constraint
cd_pro     N - 2           PK
ds_pro     A - 20          NN - U
preco      N - 8,2
un_med     A - 3           NN
qtd_pro    N - 10,2
dt_val     D               NN

Aula 2 - 15/08/2023

Breve revisão create table
Relacionamento 1-n e 1-1
Alteração de estrutura - alter table

drop table tipo_prod cascade constraints;
drop table produto cascade constraints;
create table tipo_prod (
cd_tipo number(2)   constraint tp_cd_pk primary key,
ds_tipo varchar(40) constraint tp_ds_nn not null
                    constraint tp_ds_uk unique,
dt_cad date         constraint tp_dtval_nn not null
);
desc produto
create table produto (
cd_pro number(4) constraint pr_cd_pk primary key,
ds_pro varchar(50) constraint pr_dspro_nn not null
                   constraint pr_dspro_uk unique,
preco number(12,2),
un_med char(2) constraint pr_unmed_nn not null,
qtd_pro number(12,2),
dt_val date,
--criando a chave estrangeira - foreign key - fk
fk_tipo_prod_cd_tipo number(2)
constraint fk_tipo references tipo_prod);

select constraint_name, constraint_type
from user_constraints
where table_name = 'PRODUTO'

Exercício:

Criar a tabela pessoa.

drop table pessoa cascade constraints;
create table pessoa (
cpf_pess char(11) primary key,
nome_pess varchar(30) not null,
fk_pessoa_cpf_pess char(11) unique references pessoa);

select constraint_name, constraint_type
from user_constraints
where table_name = 'PESSOA'

DDL - Alterando estrutura

Sintaxe: alter table table_name.....
         opções:
         add [column] - nova coluna
         add constraint - nova regra
         modify - altera tipo e/ou tamanho
         drop column - apaga a coluna
         drop constraint - apaga a regra
         
Exemplo:
Tabela: teste
coluna: nome - numérico - 4

DROP TABLE TESTE CASCADE CONSTRAINTS;
CREATE TABLE TESTE (NOME NUMBER(4));
desc teste;


adicionando uma nova coluna na tabela teste
codigo numérico 4 posições
alter table teste add codigo number(4);
desc teste;
adicionando a pk na coluna codigo
alter table teste add constraint fiap primary key (codigo);
sem nome na constraint
--não funciona pois a pk já foi criada antes
alter table teste add primary key (codigo);


modificando o tipo de dados da coluna nome para alfanumérico
alter table teste modify nome varchar(4);


modificando o tamanho da coluna nome para 40
alter table teste modify nome varchar(40);
desc teste


modificando o tipo de dados e o tamnho da coluna
nome para numérico 4
alter table teste modify nome number(4);


apagar a pk da coluna codigo
alter table teste drop constraint fiap;


apagar a coluna codigo
alter table teste drop column codigo;











