FROM centos:7

# Install dependencies.
RUN yum groupinstall -y 'Development Tools'
RUN yum install -y epel-release
RUN yum install -y git maven
RUN yum install -y java-1.7.0-openjdk-devel python-devel zlib-devel libcurl-devel openssl-devel cyrus-sasl-devel cyrus-sasl-md5 apr-devel subversion-devel apr-utils-devel libevent-devel

# Set environment variables.
ENV CC gcc
ENV CXX g++

ENV GTEST_FILTER -CpuIsolatorTest/1.*:RevocableCpuIsolatorTest.*:LimitedCpuIsolatorTest.*:MemIsolatorTest/0.*:MemIsolatorTest/1.*:CgroupsAnyHierarchyTest.*:CgroupsAnyHierarchyWithCpuMemoryTest.*:CgroupsAnyHierarchyWithCpuAcctMemoryTest.*:CgroupsAnyHierarchyWithFreezerTest.*:CgroupsAnyHierarchyMemoryPressureTest.*:SlaveRecoveryTest/0.*:MesosContainerizerSlaveRecoveryTest.*:MemIsolatorTest/2.*:NamespacesPidIsolatorTest.*:UserCgroupIsolatorTest/0.*:UserCgroupIsolatorTest/1.*:ContainerizerTest.ROOT_CGROUPS_BalloonFramework:CgroupsNoHierarchyTest.ROOT_CGROUPS_NOHIERARCHY_MountUnmountHierarchy:LinuxFilesystemIsolatorTest.*:ProvisionerAppcTest.ROOT_Provision:BindBackendTest.ROOT_BindBackend:FsTest.FileSystemTableRead:FsTest.ROOT_SharedMount:FsTest.ROOT_SlaveMount:MesosContainerizerLaunchTest.ROOT_ChangeRootfs:MemoryPressureMesosTest.CGROUPS_ROOT_Statistics:MemoryPressureMesosTest.CGROUPS_ROOT_SlaveRecovery:NsTest.ROOT_setns:NsTest.ROOT_getns:NsTest.ROOT_destroy:SchedTest.ROOT_PolicySelf:SchedTest.ROOT_PolicyChild
