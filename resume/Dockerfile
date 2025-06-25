FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y \
        texlive-full \
        texlive-latex-extra \
        texlive-fonts-extra \
        texlive-lang-cyrillic \
        texlive-xetex \
        texlive-luatex \
        fonts-dejavu

WORKDIR /app
COPY . .

CMD ["bash", "-c", "cd CV && lualatex -interaction=nonstopmode resume.tex"]
