# 🚀 Proyecto Integrador

## Despliegue Automatizado y Monitoreo de Ghost CMS con Docker

## 📌 Descripción del Proyecto

Este proyecto integrador presenta la implementación de una **infraestructura automatizada** para el despliegue del **CMS Ghost**, acompañada de un **sistema de monitoreo en tiempo real**, utilizando tecnologías de contenedores y orquestación.

El objetivo principal es demostrar el uso de **Docker y Docker Compose** para garantizar entornos reproducibles, escalables y fáciles de administrar, incorporando además herramientas de monitoreo como **Prometheus y Grafana**.

El proyecto está orientado a contextos académicos y profesionales, evidenciando buenas prácticas de **DevOps**, automatización y observabilidad.

---

## 🎯 Objetivos

### Objetivo General

Implementar un entorno automatizado para el despliegue y monitoreo del CMS Ghost mediante contenedores Docker.

### Objetivos Específicos

* Automatizar el inicio y detención de servicios mediante scripts.
* Implementar monitoreo de contenedores y servicios.
* Visualizar métricas en tiempo real mediante dashboards.
* Garantizar portabilidad y consistencia del entorno.

---

## 🧱 Arquitectura del Sistema

El sistema está compuesto por los siguientes servicios:

* **Ghost CMS** – Plataforma de publicación de contenidos.
* **MySQL** – Base de datos para Ghost.
* **phpMyAdmin** – Administración de la base de datos.
* **Prometheus** – Recolección de métricas.
* **Grafana** – Visualización de métricas.
* **Docker Compose** – Orquestación de servicios.

La comunicación entre los servicios se realiza mediante una red Docker interna, garantizando aislamiento y seguridad.

---

## 🛠️ Tecnologías Utilizadas

* Docker
* Docker Compose
* Ghost CMS
* MySQL
* phpMyAdmin
* Prometheus
* Grafana
* PowerShell
* Git & GitHub

---

## 📁 Estructura del Proyecto

```
Proyecto-Integrador/
│
├── proyecto-ghost/
│   ├── automation/        # Scripts de despliegue y destrucción
│   ├── compose/           # Configuración de servicios Docker
│   ├── monitoring/        # Configuración de Prometheus
│   ├── docs/              # Documentación y evidencias gráficas
│   ├── docker-compose.yml # Orquestación de servicios
│   ├── start-ghost.bat    # Inicio automatizado
│   └── stop-ghost.bat     # Detención automatizada
│
└── .gitignore
```

---

## ▶️ Video Demostrativo

Debido a las restricciones de tamaño de GitHub, el video demostrativo del proyecto se encuentra alojado en Google Drive:

🔗 **Ver video del proyecto:**
[https://drive.google.com/file/d/1kqV60Y4plVaHTCP_qMl5tWBVCB27JamY/view](https://drive.google.com/file/d/1kqV60Y4plVaHTCP_qMl5tWBVCB27JamY/view)

En el video se evidencia:

* Despliegue de los servicios
* Funcionamiento de Ghost CMS
* Monitoreo con Prometheus y Grafana
* Automatización mediante scripts

---

## ⚙️ Instrucciones de Ejecución

### Requisitos Previos

* Docker y Docker Compose instalados
* Sistema operativo Windows

### Pasos

1. Clonar el repositorio:

   ```bash
   git clone https://github.com/JonathanFrancoS/Proyecto-Integrador.git
   ```

2. Acceder al proyecto:

   ```bash
   cd Proyecto-Integrador/proyecto-ghost
   ```

3. Ejecutar el despliegue:

   ```bash
   start-ghost.bat
   ```

4. Acceder a los servicios:

   * Ghost CMS: `http://localhost:2368`
   * Grafana: `http://localhost:3000`
   * Prometheus: `http://localhost:9090`
   * phpMyAdmin: `http://localhost:8080`

---

## 📊 Resultados Obtenidos

* Servicios desplegados correctamente mediante contenedores.
* Monitoreo funcional en tiempo real.
* Automatización exitosa del ciclo de vida de la infraestructura.
* Entorno reproducible y portable.

---

## 👤 Autor

**Jonathan Franco**
Ingeniero de Software y Sistemas
Proyecto Integrador – 2025

---

## 📄 Licencia

Este proyecto se desarrolla con fines académicos y educativos.
