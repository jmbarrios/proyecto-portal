import pandas as pd
from sqlalchemy import TextClause, create_engine


class Database:
    """Administrador de bases de datos SQLite"""
    
    def __init__(self, db_path: str) -> None:
        """Connecta a la base de datos
        
        Args:
            db_path: Ruta al archivo de la base de datos SQLite
        """
        self.engine = create_engine(f"sqlite:///{db_path}")
    
    def query(self, sql: str |TextClause, params: dict | None = None) -> pd.DataFrame:
        """Ejecuta consultas SELECT
        
        Args:
            sql: Consulta de SQL para los datos de la base de datos

        Returns:
            Dataframe con el resultados de la consulta. 
        
        Examples:
            db.query("SELECT * FROM users")
            db.query("SELECT * FROM users WHERE age > ?", (18,))
        """
        if params:
            df = pd.read_sql_query(sql, self.engine, params=params)
        else:
            df = pd.read_sql_query(sql, self.engine)
        
        return df