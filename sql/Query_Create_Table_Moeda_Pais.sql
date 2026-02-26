create table moeda_pais (
id_moeda_pais bigint unsigned not null auto_increment,
id_pais int not null,
id_moeda bigint unsigned not null,
main_coin boolean not null default false,
type_use enum('Oficial', 'Adotada', 'Paralela', 'Temporaria') NOT NULL,
data_inicio date not null,
data_fim date not null,
created_at timestamp not null default current_timestamp,
update_at timestamp not null default current_timestamp on update current_timestamp,

primary key(id_moeda_pais),

key ix_moeda_pais_pais_ind (id_pais),
key ix_moeda_pais_moeda_ind (id_moeda),
key ix_moeda_pais_periodo_ind (id_pais, data_inicio, data_fim),

constraint fk_moeda_pais_pais
	foreign key (id_pais) references paises(id_pais),
constraint fk_moeda_pais_moeda
	foreign key (id_moeda) references coin(id_moeda),
constraint ck_moeda_pais_periodo
check ( 
	data_inicio is null
    or data_fim is null
    or data_inicio <= data_fim)

)
engine=InnoDB, default charset=utf8mb4;