FROM fedora:31

RUN dnf upgrade -y --releasever=32 && \
    dnf update -y && \
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
        && dnf clean all

RUN wget -q https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Arial.zip && \
    unzip -q Arial.zip -d /usr/share/fonts/ && \
    fc-cache -fv && \
    rm Arial.zip

WORKDIR /app
COPY . .
RUN chmod 755 build.sh
CMD ["./build.sh"]
