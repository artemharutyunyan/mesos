
FROM mesosbuild/jenkins:centos-7.1-gcc-4.8
WORKDIR mesos
COPY . /mesos/
CMD bash -c -l './bootstrap && ./configure --enable-ssl --enable-libevent --disable-java --disable-python --enable-debug && DISTCHECK_CONFIGURE_FLAGS="--enable-ssl --enable-libevent --disable-java --disable-python --enable-debug" GLOG_v=1 MESOS_VERBOSE=1 make -j8 distcheck'
