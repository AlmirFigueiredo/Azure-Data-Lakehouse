# Azure Data Lakehouse - IoT Synthetic Data Pipeline

Projeto completo de **Data Lakehouse** com Microsoft Azure, implementando um pipeline de dados desde a ingestão até a disponibilização dos dados.

## 📋 Visão Geral

Este projeto demonstra a implementação de uma arquitetura de dados moderna utilizando Azure, seguindo o padrão **Medallion Architecture** (Bronze → Silver → Gold) para dados estruturados em três camadas:

- **Bronze**: Dados brutos ingeridos
- **Silver**: Dados transformados e limpos
- **Gold**: Dados agregados e prontos para análise

---

## 📁 Estrutura do Projeto

```
Azure-Data-Lakehouse/
├── 📄 README.md                    # Este arquivo (visão geral)
├── 📄 .gitignore                   # Configuração do Git
│
├── 📁 notebooks/                   # 🔥 Notebooks PySpark
│   ├── Generate_Data.ipynb         # Geração de dados sintéticos IoT (Bronze)
│   ├── Transform_Silver.ipynb      # Transformação Bronze → Silver
│   └── Transform_Gold.ipynb        # Transformação Silver → Gold
│
├── 📁 infrastructure/              # 🏗️ Infrastructure as Code - Terraform
│   └── src/
│       ├── main.tf                 # Configuração principal (provider + requisitos)
│       ├── variables.tf            # Variáveis de entrada customizáveis
│       ├── outputs.tf              # Outputs da infraestrutura
│       ├── resource_group.tf       # Azure Resource Group
│       ├── data_lake.tf            # Azure Data Lake Storage Gen2
│       ├── synapse_workspace.tf    # Azure Synapse Analytics
│       └── data_factory.tf         # Azure Data Factory
│
├── 📁 charts/                      # 📊 Gráficos do Trabalho
│   ├── delay_bronze_chart.png      # Latência da camada Bronze
│   ├── delay_silver_chart.png      # Latência da transformação Silver
│   ├── delay_ingestion_chart.png   # Latência geral de ingestão
│   └── processing_silver_chart.png # Performance do processamento Silver
│
└── 📁 docs/                        # 📚 Documentação Completa do Trabalho
    └── TCC.pdf                    # Documento completo que engloba todos os aspectos deste trabalho, incluindo o detalhamento de cada etapa
```
```


