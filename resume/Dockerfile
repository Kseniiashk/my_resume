FROM fedora:32

RUN dnf update -y && \
    dnf install -y \
        texlive-collection-latexrecommended \
        texlive-collection-fontsrecommended \
        texlive-collection-pictures \
        texlive-collection-science \
        texlive-collection-langcyrillic \
        texlive-collection-latexextra \
        texlive-collection-fontsextra \
        texlive-wallpaper \
        texlive-geometry \
        texlive-fontawesome5 \
        texlive-hyperref \
        texlive-hyphenat \
        texlive-graphics \
        texlive-tools \
        make && \
    dnf clean all

WORKDIR /app
COPY . .
RUN chmod 755 build.sh
CMD ["./build.sh"]
