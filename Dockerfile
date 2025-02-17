# Use an official LaTeX image with TeX Live
FROM texlive/texlive:latest
LABEL authors="alex"

# Set working directory inside the container
WORKDIR /template

# Copy the Overleaf template files into the container
COPY . /template

# Install necessary LaTeX packages (modify as needed)
RUN apt-get update && apt-get install -y \
    latexmk \
    texlive-full \
    && rm -rf /var/lib/apt/lists/*

# Compile the LaTeX document when the container runs
CMD ["latexmk", "-pdf", "-interaction=nonstopmode", "main.tex"]
