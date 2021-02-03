FROM centos
RUN sed -i '/tsflags=nodocs/d' /etc/yum.conf
RUN yum -y update
RUN yum -y --setopt=group_package_types=mandatory,default,optional \
	groupinstall "Development Tools"
RUN yum -y install glibc-devel.i686 libgcc.i686
RUN yum -y install man man-pages
RUN yum -y install nc
RUN yum -y install vim-common
RUN yum -y install socat
RUN yum -y install lsof
RUN yum -y install net-tools
CMD ["bash", "-l"]
