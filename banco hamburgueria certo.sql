create database bdhambnmeat;
show databases;
use bdhambnmeat;

create table tbtipo_Produto(
pk_cod_tipo_prod int(7) not null auto_increment primary key,
nome_tipo varchar(40) not null
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


create table tbProduto(
pk_cod_prod int(7) not null auto_increment primary key,
fk_cod_tipo_prod int(7) not null,
desc_prod varchar(200) not null,
valor_prod int(7) not null,
 constraint fkcodtipoprod FOREIGN KEY (fk_cod_tipo_prod) REFERENCES tbtipo_Produto(pk_cod_tipo_prod)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


create table tbCliente(
pk_cod_clie int(7) not null auto_increment primary key,
tel_clie int(15) not null,
email_clie varchar(50) not null,
nome_clie varchar(60) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


create table tbPedido(
pk_cod_ped int(7) not null auto_increment primary key,
fk_cod_clie int(7) not null,
quant_ped int(3) not null,
val_unit_ped decimal(7) not null,
val_tot_ped decimal(7) not null,
constraint fkcodclie foreign key (fk_cod_clie) references tbCliente (pk_cod_clie)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


create table prod_ped(
pk_cod_prod_ped int(7) auto_increment primary key,
fk_cod_prod int(7) not null,
fk_cod_ped int(7) not null,
constraint fkcodprod foreign key (fk_cod_prod) references tbProduto(pk_cod_prod),
constraint fkcodped foreign key (fk_cod_ped) references tbPedido(pk_cod_ped)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
show tables;
