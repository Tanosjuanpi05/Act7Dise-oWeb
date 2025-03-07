from sqlalchemy import Column, Integer, String, ForeignKey
from sqlalchemy.orm import relationship
from database.database import Base

class Course(Base):
    __tablename__ = "courses"
    CourseKey = Column(String(50), primary_key=True, index=True)
    NombreCurso = Column(String(100), nullable=False)
    Descripcion = Column(String(500), nullable=True)
    RoboticsKitRequerido = Column(Integer, ForeignKey("robotics_kits.KitID"))
    robotics_kit = relationship("RoboticsKit", back_populates="courses")

    instructors = relationship("Instructor", back_populates="course")

class User(Base):
    __tablename__ = "users"
    ID = Column(Integer, primary_key=True, index=True)
    Nombre = Column(String(100), nullable=False)
    Apellido = Column(String(100), nullable=False)
    CorreoElectronico = Column(String(150), unique=True, nullable=False)
    Contrasenha = Column(String(255), nullable=False)
    TipoUsuario = Column(String(50), nullable=False)

class Admin(Base):
    __tablename__ = "admins"
    AdminID = Column(Integer, primary_key=True, index=True)
    Nombre = Column(String(100), nullable=False)
    Apellido = Column(String(100), nullable=False)
    CorreoElectronico = Column(String(150), unique=True, nullable=False)
    Contrasenha = Column(String(255), nullable=False)

class Instructor(Base):
    __tablename__ = "instructors"
    InstructorID = Column(Integer, primary_key=True, index=True)
    Nombre = Column(String(100), nullable=False)
    Apellido = Column(String(100), nullable=False)
    CorreoElectronico = Column(String(150), unique=True, nullable=False)
    CourseKey = Column(String(50), ForeignKey("courses.CourseKey"))

    course = relationship("Course", back_populates="instructors")

class RoboticsKit(Base):
    __tablename__ = "robotics_kits"
    KitID = Column(Integer, primary_key=True, index=True)
    NombreDelKit = Column(String(100), nullable=False)
    Descripcion = Column(String(500), nullable=True)
    CantidadDisponible = Column(Integer, nullable=False)
    courses = relationship("Course", back_populates="robotics_kit")