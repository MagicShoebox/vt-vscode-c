ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

FROM centos
ARG USERNAME
ARG USER_UID
ARG USER_GID
RUN groupadd --gid ${USER_GID} ${USERNAME} && \
    useradd --uid ${USER_UID} --gid ${USER_GID} -m ${USERNAME} && \
    sed -i '/tsflags=nodocs/d' /etc/yum.conf && \
	yum -y update && \
	yum -y --setopt=group_package_types=mandatory,default,optional groupinstall "Development Tools" && \
	yum -y install glibc-devel.i686 libgcc.i686 libubsan readline-devel && \
    yum -y --enablerepo=powertools install flex-devel && \
	yum -y install man man-pages nc vim-common socat lsof net-tools python3 && \
    yum clean all && \
    rm -rf /var/cache/yum
CMD ["bash", "-l"]
