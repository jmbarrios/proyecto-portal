from pathlib import Path

from sqlalchemy import TextClause, text

SQL_DIR = Path("sql")

def load_sql(query_path: str) -> TextClause:
    """Lee un .sql y regresa el texto."""
    full_path = SQL_DIR / f"{query_path}.sql"
    if not full_path.exists():
        raise FileNotFoundError(f"SQL no encontrado: {full_path}")
    return text(full_path.read_text())