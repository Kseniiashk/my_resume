FROM fedora:31

# Обновление до Fedora 32
RUN sed -i 's/releasever=.*/releasever=32/' /etc/dnf/dnf.conf
RUN dnf upgrade -y && dnf update -y

# Установка пакетов
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
    texlive-luatex \
    texlive-ctablestack \
    texlive-luatexbase \  
    texlive-texlive.infra \
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
    dejavu-sans-fonts \ 
    google-noto-sans-fonts \
    && dnf clean all

RUN dnf install -y liberation-fonts

RUN fc-cache -fv

WORKDIR /app
COPY build.sh choose_system.py /app/
COPY resume.tex /app/  # Изменено: копируем напрямую в /app
COPY altacv.cls /app/
RUN chmod 755 build.sh
CMD ["./build.sh"]
