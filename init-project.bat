@echo off
SETLOCAL

echo Creando estructura de carpetas...
if not exist "src\main\java\com\demo" mkdir "src\main\java\com\demo"
if not exist "src\test\java\com\demo" mkdir "src\test\java\com\demo"

echo Generando App.java...
:: Usamos un metodo linea por linea para evitar errores con los corchetes
echo package com.demo; > src\main\java\com\demo\App.java
echo. >> src\main\java\com\demo\App.java
echo public class App { >> src\main\java\com\demo\App.java
echo     public static void main(String[] args) { >> src\main\java\com\demo\App.java
echo         System.out.println("Hola Mundo - Pipeline Lab 2026"); >> src\main\java\com\demo\App.java
echo         System.out.println("Analizando calidad de codigo..."); >> src\main\java\com\demo\App.java
echo     } >> src\main\java\com\demo\App.java
echo. >> src\main\java\com\demo\App.java
echo     public void metodoInutil() { >> src\main\java\com\demo\App.java
echo         String mensaje = "Este mensaje no se usa";  >> src\main\java\com\demo\App.java
echo     } >> src\main\java\com\demo\App.java
echo } >> src\main\java\com\demo\App.java

echo Generando pom.xml...
echo ^<project xmlns="http://maven.apache.org/POM/4.0.0" > pom.xml
echo          xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" >> pom.xml
echo          xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd"^> >> pom.xml
echo     ^<modelVersion^>4.0.0^</modelVersion^> >> pom.xml
echo     ^<groupId^>com.demo^</groupId^> >> pom.xml
echo     ^<artifactId^>lab-java-pipeline^</artifactId^> >> pom.xml
echo     ^<packaging^>jar^</packaging^> >> pom.xml
echo     ^<version^>1.0-SNAPSHOT^</version^> >> pom.xml
echo     ^<name^>lab-java-pipeline^</name^> >> pom.xml
echo. >> pom.xml
echo     ^<properties^> >> pom.xml
echo         ^<maven.compiler.source^>17^</maven.compiler.source^> >> pom.xml
echo         ^<maven.compiler.target^>17^</maven.compiler.target^> >> pom.xml
echo         ^<project.build.sourceEncoding^>UTF-8^</project.build.sourceEncoding^> >> pom.xml
echo     ^</properties^> >> pom.xml
echo. >> pom.xml
echo     ^<build^> >> pom.xml
echo         ^<plugins^> >> pom.xml
echo             ^<plugin^> >> pom.xml
echo                 ^<groupId^>org.sonarsource.scanner.maven^</groupId^> >> pom.xml
echo                 ^<artifactId^>sonar-maven-plugin^</artifactId^> >> pom.xml
echo                 ^<version^>3.10.0.2594^</version^> >> pom.xml
echo             ^</plugin^> >> pom.xml
echo         ^</plugins^> >> pom.xml
echo     ^</build^> >> pom.xml
echo ^</project^> >> pom.xml

echo.
echo [OK] Proyecto Java creado sin errores.
pause