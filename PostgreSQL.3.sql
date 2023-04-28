create table usuario(
  nome VARCHAR (50) NOT NULL,
  email VARCHAR (60) NOT NULL,
  CPF_PK INT (11) NOT NULL,
  endereco VARCHAR (100) NOT NULL,
  ID_onibus_FK VARCHAR (5) not NULL,
  primary key (CPF_PK)
  FOREIGN KEY (ID_onibus_FK) REFERENCES onibus (ID_onibus_PK)
  )
  
  CREATE TABLE onibus(
    linha INT (5) NOT NULL,
    horario TIME NOT NULL,
    tarifa VARCHAR (5) NOT NULL,
    empresa VARCHAR (16) NOT NULL,
    ID_onibus_PK VARCHAR (5) NOT NULL,
    PRIMARY KEY (ID_onibus_PK)
    )
    
    CREATE TABLE empresa(
      ID_onibus_FK VARCHAR (5) NOT NULL,
      nome VARCHAR (16) NOT NULL,
      cartao INT (12) NOT NULL,
      CNPJ_PK INT (14) NOT NULL,
      FOREIGN KEY (ID_onibus_FK) REFERENCES onibus (ID_onibus_FK)
      )
      CREATE TABLE funcionario(
        nome_empresa VARCHAR (16) NOT NULL,
        CPF_PK INT (11) NOT NULL,
        nome VARCHAR (50) NOT NULL,
        pis INT (11) NOT NULL,
        ID_onibus_FK VARCHAR (5) NOT NULL,
        PRIMARY KEY (CPF_PK)
        FOREIGN KEY (ID_onibus_FK) REFERENCES onibus (ID_onibus_FK)
       )
    