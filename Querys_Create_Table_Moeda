create table coin (
	id_moeda bigint unsigned not null auto_increment,
	stats_coin boolean not null default true,
	simbol_coin varchar(10) not null,
	nm_coin varchar(100)not null,
	casas_decimais tinyint unsigned not null default 2,
	sub_unidade_name varchar(50) null,
	sub_unidade_per_unit smallint unsigned null default 100,
	cd_iso char(3) not null,
	cd_iso_number char(3) null,
	created_at timestamp not null default current_timestamp,
	update_at timestamp not null default current_timestamp on update current_timestamp,

primary key (id_moeda),
unique key uq_cd_iso (cd_iso),
unique key uq_cd_iso_number (cd_iso_number) 
) 	
Engine=InnoDB default charset=utf8mb4 ;