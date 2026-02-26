create table continentes (	
	id_continentes INT PRIMARY KEY,
	nm_continentes text(150) not null,
	sigla text(3)not null,
	md_principal varchar(5) not null,
	tmp_md_env INT(3) not null,
	comp_alfan text(20) not null,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
	ON UPDATE CURRENT_TIMESTAMP
);

insert into continentes (
	id_continentes, 
    nm_continentes, 
    sigla,
    riscos_logisticos)
value(1, "Africa", "AF", "alto"),
	 (2, "America do Norte", "NA", "baixo"),
     (3, "America do Sul", "SA", "medio"),
     (4, "Asia", "AS", "medio/alto"),
     (5, "Europa", "EU", "Baixo"),
     (6, "Oceania", "OC", "medio");
	 

create table paises (
	id_pais INT PRIMARY KEY NOT NULL auto_increment,
	nm_pais varchar(100),
    sigla varchar(3),
    cd_iso2 CHAR(2) NOT NULL,
    cd_iso3 CHAR(3) NOT NULL,
    id_continentes int NOT NULL,
    id_moeda bigint unsigned  NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP on UPDATE CURRENT_TIMESTAMP,
    
    constraint fk_paises_continentes_continentes
		foreign key (id_continentes) references continentes_mundiais (id_continentes),
	constraint fk_paises_moeda_moeda
		foreign key (id_moeda) references coin (id_moeda)
);
