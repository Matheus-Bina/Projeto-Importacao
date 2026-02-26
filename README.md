Sistema de Simulação de Importação – MySQL

Visão Geral

Este projeto contém a modelagem relacional de um banco de dados voltado para simulação de importações internacionais. A estrutura foi desenvolvida com foco em escalabilidade, integridade de dados e suporte a conversões monetárias globais, permitindo expansão futura para cálculo de impostos e custos logísticos.

O banco foi planejado para suportar:

● Estrutura geográfica global (continentes e países)
● Cadastro e relacionamento de moedas
● Histórico de taxas de câmbio
● Conversão entre quaisquer moedas do mundo
● Base para simulação econômica internacional

🏗️ Estrutura do Banco

🌎 Continentes

● Armazena os continentes do mundo para organização hierárquica dos países.

🏳️ Países

● Contém os países com seus respectivos códigos ISO, vinculados a um continente.

💱 Moedas

Tabela responsável pelo cadastro das moedas globais, incluindo:

● Código ISO (ISO 4217)
● Código ISO numérico
● Nome e símbolo
● Casas decimais e subunidade
● Status de ativação

🔁 Moeda_Pais

● Relacionamento muitos-para-muitos entre países e moedas, permitindo:
● Vários países utilizarem a mesma moeda
● Histórico de uso de moeda por país
● Identificação de moeda principal

📊 Câmbio

● Armazena as taxas de conversão entre moedas, incluindo:
● Moeda base
● Moeda cotada
● Taxa de conversão
● Tipo de taxa (mid, bid, ask, oficial, comercial)
● Fonte da cotação

🔒 Integridade e Boas Práticas

O modelo inclui:

● Chaves primárias e estrangeiras
● Restrições de validação (CHECK)
● Índices para otimização de consultas
● Controle de integridade referencial
● Padronização por códigos ISO
A modelagem foi construída seguindo princípios de normalização e organização relacional, garantindo consistência e flexibilidade.

🎯 Objetivo

● Criar uma base sólida e escalável para suportar simulações de importações internacionais, permitindo no futuro integrar:
● Regras tributárias
● Cálculo de fretes
● Acordos comerciais
● Simulações financeiras entre continentes

Data da cotação

Essa estrutura permite manter histórico completo e realizar conversões entre quaisquer moedas registradas.
