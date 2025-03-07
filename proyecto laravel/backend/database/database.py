from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker, declarative_base

# Configuración para conectar a MySQL en XAMPP
DATABASE_URL = "mysql+pymysql://root:@localhost:3306/laravelproject"

# Configuración del motor de base de datos
engine = create_engine(
    DATABASE_URL,
    pool_recycle=3600,  # Reciclar conexiones después de 1 hora
    pool_pre_ping=True  # Verificar conexiones antes de usarlas
)

# Crear una sesión de base de datos
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

# Base para modelos
Base = declarative_base()

# Función para obtener la sesión de la base de datos
def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()

# Verificar conexión a la base de datos
if __name__ == "__main__":
    try:
        with engine.connect() as connection:
            print("✅ Conexión a la base de datos establecida correctamente.")
    except Exception as e:
        print("❌ Error al conectar a la base de datos:", e)
