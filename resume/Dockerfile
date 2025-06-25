FROM fedora:31

RUN sed -i 's/releasever=.*/releasever=32/' /etc/dnf/dnf.conf
RUN dnf upgrade -y && dnf update -y

COPY build.sh choose_system.py /app/
COPY CV/resume.tex /app/resume.tex
COPY altacv.cls /app/

RUN dnf install -y \
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
    make \
    git \
    wget \
    unzip \
    python3 \
    texlive-lm \
    texlive-psnfss \
    texlive-helvetic \
    texlive-carlito \
    texlive-fira \
    liberation-fonts \
    google-noto-sans-fonts \
    dejavu-sans-fonts \
    && dnf clean all

RUN fc-cache -fv

WORKDIR /app

RUN chmod 755 build.sh
CMD ["./build.sh"]
