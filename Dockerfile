FROM alpine
LABEL maintainer="bugre! Based on https://github.com/chriswayg solution."
ENV TERM=xterm
WORKDIR /media/root

# most utilities are from the latest stable alpine release
# added some utilities that are only available in edge, community or testing
RUN cat /etc/os-release && \
    echo "@edge http://nl.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories && \
    echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    echo "@community http://nl.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
    apk --no-cache add --update \
        atop \
        bash \
        bash-completion \
        bridge-utils \
        ca-certificates \
        coreutils \
        curl \
        bind-tools \
        dstat@testing \
        file \
        gettext \
        git \
        grep \
        hdparm \
        htop \
        hping3 \
        iftop \
        iperf \
        iproute2 \
        logrotate \
        ltrace \
        mtr \
        nano \
        nc \
        ncdu \
        ncurses \
        ncurses-terminfo \
        net-tools \
        nmap \
        pciutils \
        psmisc \
        pv \
        python3 \
        screen \
        shadow \
        speedtest-cli \
        strace \
        sysstat \
        ss \
        tar \
        tcpdump \
        tree \
        xz \
        zip

VOLUME ["/media/root"]

CMD ["bash"]
