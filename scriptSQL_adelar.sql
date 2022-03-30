-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE user (
CPF VARCHAR(11) PRIMARY KEY,
senha VARCHAR(15) not null,
login VARCHAR(80) not null unique,
dtnsc date not null,
nome VARCHAR(200) not null,
email VARCHAR(200) not null
);

CREATE TABLE conta_ban (
saldo decimal(10,2) not null,
agencia VARCHAR(80) not null,
numero int auto_increment PRIMARY KEY,
codtipo int not null
);

CREATE TABLE tipo_conta (
codtipo int auto_increment PRIMARY KEY,
desctipo VARCHAR(200) not null
);

CREATE TABLE user_conta (
numero int not null,
CPF VARCHAR(11) not null,
atv int not null,
dtf timestamp not null,
dta timestamp,
FOREIGN KEY(numero) REFERENCES conta_ban (numero),
FOREIGN KEY(CPF) REFERENCES user (CPF)
);

ALTER TABLE conta_ban ADD FOREIGN KEY(codtipo) REFERENCES tipo_conta (codtipo);
