FROM ubuntu:12.04

# Install dependencies.
RUN apt-get update
RUN apt-get -y install build-essential git maven autoconf libtool
RUN apt-get -y install icedtea-7-plugin openjdk-7-jdk python-dev python-boto libcurl4-nss-dev libsasl2-dev libapr1-dev libsvn-dev libevent-dev
RUN update-java-alternatives -s java-1.7.0-openjdk-amd64

# Add an unpriviliged user.
RUN adduser --disabled-password --gecos '' mesos

# Install dependencies.
RUN apt-get install -y python-software-properties
RUN add-apt-repository -y ppa:ubuntu-toolchain-r/test
RUN apt-get update
RUN apt-get -y install gcc-4.8 g++-4.8

# Set environment variables.
ENV CC gcc-4.8
ENV CXX g++-4.8

ENV GTEST_FILTER -CpuIsolatorTest/1.*:RevocableCpuIsolatorTest.*:LimitedCpuIsolatorTest.*:MemIsolatorTest/0.*:MemIsolatorTest/1.*:CgroupsAnyHierarchyTest.*:CgroupsAnyHierarchyWithCpuMemoryTest.*:CgroupsAnyHierarchyWithCpuAcctMemoryTest.*:CgroupsAnyHierarchyWithFreezerTest.*:CgroupsAnyHierarchyMemoryPressureTest.*:SlaveRecoveryTest/0.*:MesosContainerizerSlaveRecoveryTest.*:MemIsolatorTest/2.*:NamespacesPidIsolatorTest.*:UserCgroupIsolatorTest/0.*:UserCgroupIsolatorTest/1.*:ContainerizerTest.ROOT_CGROUPS_BalloonFramework:CgroupsNoHierarchyTest.ROOT_CGROUPS_NOHIERARCHY_MountUnmountHierarchy:LinuxFilesystemIsolatorTest.*:ProvisionerAppcTest.ROOT_Provision:BindBackendTest.ROOT_BindBackend:FsTest.FileSystemTableRead:FsTest.ROOT_SharedMount:FsTest.ROOT_SlaveMount:MesosContainerizerLaunchTest.ROOT_ChangeRootfs:MemoryPressureMesosTest.CGROUPS_ROOT_Statistics:MemoryPressureMesosTest.CGROUPS_ROOT_SlaveRecovery:NsTest.ROOT_setns:NsTest.ROOT_getns:NsTest.ROOT_destroy:SchedTest.ROOT_PolicySelf:SchedTest.ROOT_PolicyChild