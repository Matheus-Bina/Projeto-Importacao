create table cambio(
	id_cambio bigint unsigned not null auto_increment,
    
    id_moeda_base bigint unsigned not null,
    id_moeda_base_da_conversao bigint unsigned not null,
    
    taxa decimal(20,10) not null,
    data_cotacao datetime not null,
    
    tipo_taxa enum ('mid','bid','ask','oficial','comercial') NOT NULL,
    fonte VARCHAR(80) NOT NULL,
    
    created_at timestamp not null default current_timestamp,
	update_at timestamp not null default current_timestamp on update current_timestamp,
    
primary key(id_cambio),
    
key ix_moeda_cotada_por_data (id_moeda_base, id_moeda_base_da_conversao, data_cotacao),
    
constraint fk_moeda_base_moeda
	foreign key (id_moeda_base)references coin (id_moeda),
constraint fk_moeda_base_da_conversao_moeda 
	foreign key (id_moeda_base_da_conversao) references coin (id_moeda),
        
constraint ck_taxa_positiva check (taxa > 0), --/ valor da conversão /-- 
constraint ck_moedas_diferentes check (id_moeda_base <> id_moeda_base_da_conversao) --/moeda base e moeda da conversão não pode ser a mesma/--

)
 engine=InnoDB default charset=utf8mb4;