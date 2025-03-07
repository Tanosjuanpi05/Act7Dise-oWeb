from fastapi import FastAPI, Depends, HTTPException
from sqlalchemy.orm import Session
from app import models, schemas
from database.database import get_db, engine

# Crear las tablas en la base de datos
models.Base.metadata.create_all(bind=engine)

app = FastAPI()

# Rutas
@app.get("/")
def read_root():
    return {"message": "Hola Mundo"}