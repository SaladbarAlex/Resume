## 📄 Alex Salazar's Resume
A simple **single-page, one-column resume** featuring the following sections:
- **Education**
- **Experience**
- **Projects**

### 🛠 Build & Compile with Docker
To compile the LaTeX resume using Docker:

```sh
docker build -t latex .
docker run --rm -v "$(pwd)":/data latex pdflatex alex_s_resume.tex
