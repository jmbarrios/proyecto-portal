# Proyecto Portal

Este repositorio tiene como objetivo revisar los datos del 
[Proyecto Portal](https://www.biorxiv.org/content/10.1101/332783v3). Esto como ejemplo de uso de bases de datos
relacionales en el contexto de organización de experimentos ecológicos. 

Como sistema gestor de base de datos (SGBD) se usa [**SQLite**](https://sqlite.org/). **SQLite** es un motor de 
base de datos ligero, rápido y autónomo. A diferencia de otros SGBD, no requiere un servidor para funcionar.


## Organización del repositorio

```
proyecto-portal/
├── ⚙️ .devcontainer/        # 🐳 configuración de contenedor
├── 📊 00-data/              # datos crudos, intermedios y procesados
│   ├── portal-data.db       # ✅ base de datos SQLite de datos del Proyecto Portal
│   └── raw/                 # 🗄️ datos originales (inmutables)
├── 📜 01-scripts/           # 🏃 scripts ejecutables
├── 📚 02-docs/              # 📖 documentación
└── 📄 03-reports/           # 📊 informes y figuras
    ├── data_quality/        # ✅ informes de calidad de datos
    └── figures/             # 🖼️ gráficos generados
```

## Datos originales

Los datos originales fueron descargados desde: https://zenodo.org/records/19668585
