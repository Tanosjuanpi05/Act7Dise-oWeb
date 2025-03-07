from pydantic import BaseModel
from typing import Optional, List

class CourseBase(BaseModel):
    CourseKey: str
    NombreCurso: str
    Descripcion: Optional[str]
    RoboticsKitRequerido: Optional[str]

class CourseCreate(CourseBase):
    pass

class Course(CourseBase):
    class Config:
        from_attributes = True

class UserBase(BaseModel):
    Nombre: str
    Apellido: str
    CorreoElectronico: str
    TipoUsuario: str

class UserCreate(UserBase):
    Contrasenha: str

class User(UserBase):
    ID: int

    class Config:
        from_attributes = True

class AdminBase(BaseModel):
    Nombre: str
    Apellido: str
    CorreoElectronico: str

class AdminCreate(AdminBase):
    Contrasenha: str

class Admin(AdminBase):
    AdminID: int

    class Config:
        from_attributes = True

class InstructorBase(BaseModel):
    Nombre: str
    Apellido: str
    CorreoElectronico: str
    CourseKey: str

class InstructorCreate(InstructorBase):
    pass

class Instructor(InstructorBase):
    InstructorID: int

    class Config:
        from_attributes = True

class RoboticsKitBase(BaseModel):
    NombreDelKit: str
    Descripcion: Optional[str]
    CantidadDisponible: int

class RoboticsKitCreate(RoboticsKitBase):
    pass

class RoboticsKit(RoboticsKitBase):
    KitID: int

    class Config:
        from_attributes = True