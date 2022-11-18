.class public final Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;
.super Ljava/lang/Object;
.source "IPerformance.java"

# interfaces
.implements Lvendor/oplus/hardware/performance/V1_0/IPerformance;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/oplus/hardware/performance/V1_0/IPerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IHwBinder;


# direct methods
.method public constructor blacklist <init>(Landroid/os/IHwBinder;)V
    .locals 1
    .param p1, "remote"    # Landroid/os/IHwBinder;

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IHwBinder;

    iput-object v0, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 507
    return-void
.end method


# virtual methods
.method public blacklist addAcmDirName(Ljava/lang/String;J)I
    .locals 5
    .param p1, "dirname"    # Ljava/lang/String;
    .param p2, "flag"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1857
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1858
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1859
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1860
    invoke-virtual {v0, p2, p3}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 1862
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1864
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x45

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1865
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1866
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1868
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1869
    .local v2, "_hidl_out_result":I
    nop

    .line 1871
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1869
    return v2

    .line 1871
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1872
    throw v2
.end method

.method public blacklist addAcmNomediaDirName(Ljava/lang/String;)I
    .locals 5
    .param p1, "dirname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1918
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1919
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1920
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1922
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1924
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x48

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1925
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1926
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1928
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1929
    .local v2, "_hidl_out_result":I
    nop

    .line 1931
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1929
    return v2

    .line 1931
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1932
    throw v2
.end method

.method public blacklist addAcmPkgName(Ljava/lang/String;J)I
    .locals 5
    .param p1, "pkgname"    # Ljava/lang/String;
    .param p2, "flag"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1796
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1797
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1798
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1799
    invoke-virtual {v0, p2, p3}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 1801
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1803
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x42

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1804
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1805
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1807
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1808
    .local v2, "_hidl_out_result":I
    nop

    .line 1810
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1808
    return v2

    .line 1810
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1811
    throw v2
.end method

.method public blacklist addTaskTrackPid(IIZ)I
    .locals 5
    .param p1, "group"    # I
    .param p2, "pid"    # I
    .param p3, "clear"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2677
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2678
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2679
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2680
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2681
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2683
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2685
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x70

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2686
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2687
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2689
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2690
    .local v2, "_hidl_out_result":I
    nop

    .line 2692
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2690
    return v2

    .line 2692
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2693
    throw v2
.end method

.method public whitelist asBinder()Landroid/os/IHwBinder;
    .locals 1

    .line 511
    iget-object v0, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object v0
.end method

.method public blacklist clearTaskTrackGroup(I)V
    .locals 5
    .param p1, "group"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2716
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2717
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2718
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2720
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2722
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x72

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2723
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2725
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2726
    nop

    .line 2727
    return-void

    .line 2725
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2726
    throw v2
.end method

.method public blacklist debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "fd"    # Landroid/os/NativeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3479
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3480
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3481
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeNativeHandle(Landroid/os/NativeHandle;)V

    .line 3482
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 3484
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3486
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf444247

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3487
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3488
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3490
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3491
    nop

    .line 3492
    return-void

    .line 3490
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3491
    throw v2
.end method

.method public blacklist delAcmDirName(Ljava/lang/String;)I
    .locals 5
    .param p1, "dirname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1878
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1879
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1880
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1882
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1884
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x46

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1885
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1886
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1888
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1889
    .local v2, "_hidl_out_result":I
    nop

    .line 1891
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1889
    return v2

    .line 1891
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1892
    throw v2
.end method

.method public blacklist delAcmNomediaDirName(Ljava/lang/String;)I
    .locals 5
    .param p1, "dirname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1938
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1939
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1940
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1942
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1944
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x49

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1945
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1946
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1948
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1949
    .local v2, "_hidl_out_result":I
    nop

    .line 1951
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1949
    return v2

    .line 1951
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1952
    throw v2
.end method

.method public blacklist delAcmPkgName(Ljava/lang/String;)I
    .locals 5
    .param p1, "pkgname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1817
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1818
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1819
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1821
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1823
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x43

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1824
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1825
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1827
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1828
    .local v2, "_hidl_out_result":I
    nop

    .line 1830
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1828
    return v2

    .line 1830
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1831
    throw v2
.end method

.method public blacklist disableDamonReclaim()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2945
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2946
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2948
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2950
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2951
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2952
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2954
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2955
    .local v2, "_hidl_out_result":I
    nop

    .line 2957
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2955
    return v2

    .line 2957
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2958
    throw v2
.end method

.method public blacklist disableKmallocDebug()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 633
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 634
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 636
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 638
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 639
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 640
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 642
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    .local v2, "_hidl_out_result":I
    nop

    .line 645
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 643
    return v2

    .line 645
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 646
    throw v2
.end method

.method public blacklist disableMultiThreadOptimize()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 557
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 558
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 560
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 562
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 563
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 564
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 566
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    .local v2, "_hidl_out_result":I
    nop

    .line 569
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 567
    return v2

    .line 569
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 570
    throw v2
.end method

.method public blacklist disableProcessReclaim()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 709
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 710
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 712
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 714
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 715
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 716
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 718
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 719
    .local v2, "_hidl_out_result":I
    nop

    .line 721
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 719
    return v2

    .line 721
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 722
    throw v2
.end method

.method public blacklist disableTaskCpustats()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 595
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 596
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 598
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 600
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 601
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 602
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 604
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    .local v2, "_hidl_out_result":I
    nop

    .line 607
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 605
    return v2

    .line 607
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 608
    throw v2
.end method

.method public blacklist disableTaskPlacementDecision()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1658
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1659
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1661
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1663
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1664
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1665
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1667
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1668
    .local v2, "_hidl_out_result":I
    nop

    .line 1670
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1668
    return v2

    .line 1670
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1671
    throw v2
.end method

.method public blacklist disableVmallocDebug()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 671
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 672
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 674
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 676
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 677
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 678
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 680
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    .local v2, "_hidl_out_result":I
    nop

    .line 683
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 681
    return v2

    .line 683
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 684
    throw v2
.end method

.method public blacklist enableDamonReclaim()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2926
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2927
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2929
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2931
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2932
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2933
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2935
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2936
    .local v2, "_hidl_out_result":I
    nop

    .line 2938
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2936
    return v2

    .line 2938
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2939
    throw v2
.end method

.method public blacklist enableKmallocDebug()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 614
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 615
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 617
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 619
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 620
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 621
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 623
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    .local v2, "_hidl_out_result":I
    nop

    .line 626
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 624
    return v2

    .line 626
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 627
    throw v2
.end method

.method public blacklist enableMultiThreadOptimize()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 538
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 539
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 541
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 543
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 544
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 545
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 547
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    .local v2, "_hidl_out_result":I
    nop

    .line 550
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 548
    return v2

    .line 550
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 551
    throw v2
.end method

.method public blacklist enableProcessReclaim()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 690
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 691
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 693
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 695
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 696
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 697
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 699
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 700
    .local v2, "_hidl_out_result":I
    nop

    .line 702
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 700
    return v2

    .line 702
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 703
    throw v2
.end method

.method public blacklist enableTaskCpustats()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 576
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 577
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 579
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 581
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 582
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 583
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 585
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    .local v2, "_hidl_out_result":I
    nop

    .line 588
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 586
    return v2

    .line 588
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 589
    throw v2
.end method

.method public blacklist enableTaskPlacementDecision()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1639
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1640
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1642
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1644
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1645
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1646
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1648
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1649
    .local v2, "_hidl_out_result":I
    nop

    .line 1651
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1649
    return v2

    .line 1651
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1652
    throw v2
.end method

.method public blacklist enableVmallocDebug()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 652
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 653
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 655
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 657
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 658
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 659
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 661
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 662
    .local v2, "_hidl_out_result":I
    nop

    .line 664
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 662
    return v2

    .line 664
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 665
    throw v2
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 526
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist existMemMonitor()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 785
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 786
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 788
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 790
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 791
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 792
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 794
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 795
    .local v2, "_hidl_out_result":I
    nop

    .line 797
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 795
    return v2

    .line 797
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 798
    throw v2
.end method

.method public blacklist getAcmDirFlag(Ljava/lang/String;)J
    .locals 5
    .param p1, "dirname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1898
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1899
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1900
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1902
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1904
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1905
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1906
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1908
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1909
    .local v2, "_hidl_out_result":J
    nop

    .line 1911
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1909
    return-wide v2

    .line 1911
    .end local v2    # "_hidl_out_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1912
    throw v2
.end method

.method public blacklist getAcmOpstat()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1777
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1778
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1780
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1782
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x41

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1783
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1784
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1786
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1787
    .local v2, "_hidl_out_result":I
    nop

    .line 1789
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1787
    return v2

    .line 1789
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1790
    throw v2
.end method

.method public blacklist getAcmPkgFlag(Ljava/lang/String;)J
    .locals 5
    .param p1, "pkgname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1837
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1838
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1839
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1841
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1843
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x44

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1844
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1845
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1847
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1848
    .local v2, "_hidl_out_result":J
    nop

    .line 1850
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1848
    return-wide v2

    .line 1850
    .end local v2    # "_hidl_out_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1851
    throw v2
.end method

.method public blacklist getDdrResidency()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3126
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3127
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3129
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3131
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x88

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3132
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3133
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3135
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3136
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 3138
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3136
    return-object v2

    .line 3138
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3139
    throw v2
.end method

.method public blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3591
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3592
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3594
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3596
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf524546

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3597
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3598
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3600
    new-instance v2, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v2}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 3601
    .local v2, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v2, v1}, Landroid/internal/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3602
    nop

    .line 3604
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3602
    return-object v2

    .line 3604
    .end local v2    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3605
    throw v2
.end method

.method public blacklist getDevinfoUfsInfo()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3088
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3089
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3091
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3093
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x86

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3094
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3095
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3097
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3098
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 3100
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3098
    return-object v2

    .line 3100
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3101
    throw v2
.end method

.method public blacklist getDevinfoUfsVersionInfo()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3107
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3108
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3110
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3112
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x87

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3113
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3114
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3116
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3117
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 3119
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3117
    return-object v2

    .line 3119
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3120
    throw v2
.end method

.method public blacklist getExt4FragScore(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "devpath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1448
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1449
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1450
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1452
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1454
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1455
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1456
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1458
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1459
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 1461
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1459
    return-object v2

    .line 1461
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1462
    throw v2
.end method

.method public blacklist getExt4FreefragInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "devpath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1428
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1429
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1430
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1432
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1434
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1435
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1436
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1438
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1439
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 1441
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1439
    return-object v2

    .line 1441
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1442
    throw v2
.end method

.method public blacklist getF2fsMovedBlks()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1468
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1469
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1471
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1473
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1474
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1475
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1477
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1478
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 1480
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1478
    return-object v2

    .line 1480
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1481
    throw v2
.end method

.method public blacklist getHIAllocWait()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1329
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1330
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1332
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1334
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1335
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1336
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1338
    new-instance v2, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;

    invoke-direct {v2}, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;-><init>()V

    .line 1339
    .local v2, "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    invoke-virtual {v2, v1}, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1340
    nop

    .line 1342
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1340
    return-object v2

    .line 1342
    .end local v2    # "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1343
    throw v2
.end method

.method public blacklist getHICpuInfo()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1409
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1410
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1412
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1414
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1415
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1416
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1418
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1419
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 1421
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1419
    return-object v2

    .line 1421
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1422
    throw v2
.end method

.method public blacklist getHICpuLoading()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1170
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1171
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1173
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1175
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1176
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1177
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1179
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1180
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 1182
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1180
    return-object v2

    .line 1182
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1183
    throw v2
.end method

.method public blacklist getHIDState()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1349
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1350
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1352
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1354
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1355
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1356
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1358
    new-instance v2, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;

    invoke-direct {v2}, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;-><init>()V

    .line 1359
    .local v2, "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    invoke-virtual {v2, v1}, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1360
    nop

    .line 1362
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1360
    return-object v2

    .line 1362
    .end local v2    # "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1363
    throw v2
.end method

.method public blacklist getHIEmcdrvIowait()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1189
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1190
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1192
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1194
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1195
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1196
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1198
    new-instance v2, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;

    invoke-direct {v2}, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;-><init>()V

    .line 1199
    .local v2, "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    invoke-virtual {v2, v1}, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1200
    nop

    .line 1202
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1200
    return-object v2

    .line 1202
    .end local v2    # "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1203
    throw v2
.end method

.method public blacklist getHIFsyncWait()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1249
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1250
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1252
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1254
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1255
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1256
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1258
    new-instance v2, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;

    invoke-direct {v2}, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;-><init>()V

    .line 1259
    .local v2, "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    invoke-virtual {v2, v1}, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1260
    nop

    .line 1262
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1260
    return-object v2

    .line 1262
    .end local v2    # "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1263
    throw v2
.end method

.method public blacklist getHIIonWait()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1309
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1310
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1312
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1314
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1315
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1316
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1318
    new-instance v2, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;

    invoke-direct {v2}, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;-><init>()V

    .line 1319
    .local v2, "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    invoke-virtual {v2, v1}, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1320
    nop

    .line 1322
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1320
    return-object v2

    .line 1322
    .end local v2    # "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1323
    throw v2
.end method

.method public blacklist getHIIowait()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1269
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1270
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1272
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1274
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1275
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1276
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1278
    new-instance v2, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;

    invoke-direct {v2}, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;-><init>()V

    .line 1279
    .local v2, "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    invoke-virtual {v2, v1}, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1280
    nop

    .line 1282
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1280
    return-object v2

    .line 1282
    .end local v2    # "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1283
    throw v2
.end method

.method public blacklist getHIIowaitHung()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1209
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1210
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1212
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1214
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1215
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1216
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1218
    new-instance v2, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;

    invoke-direct {v2}, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;-><init>()V

    .line 1219
    .local v2, "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    invoke-virtual {v2, v1}, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1220
    nop

    .line 1222
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1220
    return-object v2

    .line 1222
    .end local v2    # "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1223
    throw v2
.end method

.method public blacklist getHIKswapdLoading()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1369
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1370
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1372
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1374
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1375
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1376
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1378
    new-instance v2, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;

    invoke-direct {v2}, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;-><init>()V

    .line 1379
    .local v2, "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    invoke-virtual {v2, v1}, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1380
    nop

    .line 1382
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1380
    return-object v2

    .line 1382
    .end local v2    # "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1383
    throw v2
.end method

.method public blacklist getHISchedLatency()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1229
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1230
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1232
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1234
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1235
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1236
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1238
    new-instance v2, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;

    invoke-direct {v2}, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;-><init>()V

    .line 1239
    .local v2, "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    invoke-virtual {v2, v1}, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1240
    nop

    .line 1242
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1240
    return-object v2

    .line 1242
    .end local v2    # "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1243
    throw v2
.end method

.method public blacklist getHIScmCall()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1389
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1390
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1392
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1394
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1395
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1396
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1398
    new-instance v2, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;

    invoke-direct {v2}, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;-><init>()V

    .line 1399
    .local v2, "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    invoke-virtual {v2, v1}, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1400
    nop

    .line 1402
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1400
    return-object v2

    .line 1402
    .end local v2    # "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1403
    throw v2
.end method

.method public blacklist getHIUfsFeature()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1289
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1290
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1292
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1294
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1295
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1296
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1298
    new-instance v2, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;

    invoke-direct {v2}, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;-><init>()V

    .line 1299
    .local v2, "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    invoke-virtual {v2, v1}, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1300
    nop

    .line 1302
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1300
    return-object v2

    .line 1302
    .end local v2    # "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1303
    throw v2
.end method

.method public blacklist getHashChain()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3516
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3517
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3519
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3521
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf485348

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3522
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3523
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3525
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v2

    .line 3527
    .local v10, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const-wide/16 v2, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    move-object v11, v2

    .line 3529
    .local v11, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v11, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    move v12, v2

    .line 3530
    .local v12, "_hidl_vec_size":I
    mul-int/lit8 v2, v12, 0x20

    int-to-long v3, v2

    .line 3531
    invoke-virtual {v11}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    .line 3530
    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 3534
    .local v2, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 3535
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v12, :cond_0

    .line 3536
    const/16 v4, 0x20

    new-array v5, v4, [B

    .line 3538
    .local v5, "_hidl_vec_element":[B
    mul-int/lit8 v6, v3, 0x20

    int-to-long v6, v6

    .line 3539
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v2, v6, v7, v5, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 3540
    nop

    .line 3542
    .end local v6    # "_hidl_array_offset_1":J
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3535
    nop

    .end local v5    # "_hidl_vec_element":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3546
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_index_0":I
    .end local v11    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v12    # "_hidl_vec_size":I
    :cond_0
    nop

    .line 3548
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3546
    return-object v10

    .line 3548
    .end local v10    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3549
    throw v2
.end method

.method public blacklist getKernelVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1677
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1678
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1680
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1682
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1683
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1684
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1686
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1687
    .local v2, "_hidl_out_result":I
    nop

    .line 1689
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1687
    return v2

    .line 1689
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1690
    throw v2
.end method

.method public blacklist getKmallocDebug()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 728
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 729
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 731
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 733
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 734
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 735
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 737
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 738
    .local v2, "_hidl_out_info":Ljava/lang/String;
    nop

    .line 740
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 738
    return-object v2

    .line 740
    .end local v2    # "_hidl_out_info":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 741
    throw v2
.end method

.method public blacklist getKmallocOrigin()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 747
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 748
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 750
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 752
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 753
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 754
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 756
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 757
    .local v2, "_hidl_out_info":Ljava/lang/String;
    nop

    .line 759
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 757
    return-object v2

    .line 759
    .end local v2    # "_hidl_out_info":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 760
    throw v2
.end method

.method public blacklist getKmallocUsed()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 766
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 767
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 769
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 771
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 772
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 773
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 775
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 776
    .local v2, "_hidl_out_info":Ljava/lang/String;
    nop

    .line 778
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 776
    return-object v2

    .line 778
    .end local v2    # "_hidl_out_info":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 779
    throw v2
.end method

.method public blacklist getMemMonitor()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1696
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1697
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1699
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1701
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1702
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1703
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1705
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1706
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 1708
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1706
    return-object v2

    .line 1708
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1709
    throw v2
.end method

.method public blacklist getOswapVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2327
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2328
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2330
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2332
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2333
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2334
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2336
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2337
    .local v2, "_hidl_out_result":I
    nop

    .line 2339
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2337
    return v2

    .line 2339
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2340
    throw v2
.end method

.method public blacklist getUfsSignalRecordUpload()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3188
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3189
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3191
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3193
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3194
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3195
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3197
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3198
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 3200
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3198
    return-object v2

    .line 3200
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3201
    throw v2
.end method

.method public blacklist getUfsplusHpbStatus()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3069
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3070
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3072
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3074
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x85

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3075
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3076
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3078
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3079
    .local v2, "_hidl_out_status":I
    nop

    .line 3081
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3079
    return v2

    .line 3081
    .end local v2    # "_hidl_out_status":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3082
    throw v2
.end method

.method public blacklist getUfsplusTwStatus()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3050
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3051
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3053
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3055
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x84

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3056
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3057
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3059
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3060
    .local v2, "_hidl_out_status":I
    nop

    .line 3062
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3060
    return v2

    .line 3062
    .end local v2    # "_hidl_out_status":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3063
    throw v2
.end method

.method public blacklist getVmallocDebug()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1055
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1056
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1058
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1060
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1061
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1062
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1064
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1065
    .local v2, "_hidl_out_info":Ljava/lang/String;
    nop

    .line 1067
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1065
    return-object v2

    .line 1067
    .end local v2    # "_hidl_out_info":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1068
    throw v2
.end method

.method public blacklist getVmallocHashCal()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1093
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1094
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1096
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1098
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1099
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1100
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1102
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1103
    .local v2, "_hidl_out_info":Ljava/lang/String;
    nop

    .line 1105
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1103
    return-object v2

    .line 1105
    .end local v2    # "_hidl_out_info":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1106
    throw v2
.end method

.method public blacklist getVmallocUsed()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1074
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1075
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1077
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1079
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1080
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1081
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1083
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1084
    .local v2, "_hidl_out_info":Ljava/lang/String;
    nop

    .line 1086
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1084
    return-object v2

    .line 1086
    .end local v2    # "_hidl_out_info":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1087
    throw v2
.end method

.method public blacklist getallocwait()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 919
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 920
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 922
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 924
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 925
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 926
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 928
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 929
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 931
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 929
    return-object v2

    .line 931
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 932
    throw v2
.end method

.method public blacklist getdstate()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 938
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 939
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 941
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 943
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 944
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 945
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 947
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 948
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 950
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 948
    return-object v2

    .line 950
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 951
    throw v2
.end method

.method public blacklist getfsyncwait()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 881
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 882
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 884
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 886
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 887
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 888
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 890
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 891
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 893
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 891
    return-object v2

    .line 893
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 894
    throw v2
.end method

.method public blacklist getionwait()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 900
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 901
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 903
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 905
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 906
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 907
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 909
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 910
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 912
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 910
    return-object v2

    .line 912
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 913
    throw v2
.end method

.method public blacklist getiowait()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 862
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 863
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 865
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 867
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 868
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 869
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 871
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 872
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 874
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 872
    return-object v2

    .line 874
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 875
    throw v2
.end method

.method public blacklist getschedlatency()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 843
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 844
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 846
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 848
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 849
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 850
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 852
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 853
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 855
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 853
    return-object v2

    .line 855
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 856
    throw v2
.end method

.method public final whitelist test-api hashCode()I
    .locals 1

    .line 531
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist hybridswap_memcg_para_read(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "action"    # I
    .param p2, "cgroup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2409
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2410
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2411
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2412
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2414
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2416
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x62

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2417
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2418
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2420
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2421
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 2423
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2421
    return-object v2

    .line 2423
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2424
    throw v2
.end method

.method public blacklist hybridswap_memcg_para_write(ILjava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "action"    # I
    .param p2, "cgroup"    # Ljava/lang/String;
    .param p3, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2387
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2388
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2389
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2390
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2391
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2393
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2395
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x61

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2396
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2397
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2399
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2400
    .local v2, "_hidl_out_result":I
    nop

    .line 2402
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2400
    return v2

    .line 2402
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2403
    throw v2
.end method

.method public blacklist hybridswap_zram_para_read(I)Ljava/lang/String;
    .locals 5
    .param p1, "action"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2367
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2368
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2369
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2371
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2373
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x60

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2374
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2375
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2377
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2378
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 2380
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2378
    return-object v2

    .line 2380
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2381
    throw v2
.end method

.method public blacklist hybridswap_zram_para_write(ILjava/lang/String;)I
    .locals 5
    .param p1, "action"    # I
    .param p2, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2346
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2347
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2348
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2349
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2351
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2353
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2354
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2355
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2357
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2358
    .local v2, "_hidl_out_result":I
    nop

    .line 2360
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2358
    return v2

    .line 2360
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2361
    throw v2
.end method

.method public blacklist interfaceChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3460
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3461
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3463
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3465
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf43484e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3466
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3467
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3469
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3470
    .local v2, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    nop

    .line 3472
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3470
    return-object v2

    .line 3472
    .end local v2    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3473
    throw v2
.end method

.method public blacklist interfaceDescriptor()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3497
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3498
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3500
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3502
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf445343

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3503
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3504
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3506
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3507
    .local v2, "_hidl_out_descriptor":Ljava/lang/String;
    nop

    .line 3509
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3507
    return-object v2

    .line 3509
    .end local v2    # "_hidl_out_descriptor":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3510
    throw v2
.end method

.method public blacklist isJankTaskTrackEnable()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2637
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2638
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2640
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2642
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2643
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2644
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2646
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2647
    .local v2, "_hidl_out_result":Z
    nop

    .line 2649
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2647
    return v2

    .line 2649
    .end local v2    # "_hidl_out_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2650
    throw v2
.end method

.method public blacklist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3570
    iget-object v0, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v0

    return v0
.end method

.method public blacklist notifySyspropsChanged()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3611
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3612
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3614
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3616
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3617
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3619
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3620
    nop

    .line 3621
    return-void

    .line 3619
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3620
    throw v2
.end method

.method public blacklist perProcessMemReadahead(III)I
    .locals 5
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1577
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1578
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1579
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1580
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1581
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1583
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1585
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x37

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1586
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1587
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1589
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1590
    .local v2, "_hidl_out_result":I
    nop

    .line 1592
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1590
    return v2

    .line 1592
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1593
    throw v2
.end method

.method public blacklist perProcessMemReclaim(III)I
    .locals 5
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1555
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1556
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1557
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1558
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1559
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1561
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1563
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x36

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1564
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1565
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1567
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1568
    .local v2, "_hidl_out_result":I
    nop

    .line 1570
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1568
    return v2

    .line 1570
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1571
    throw v2
.end method

.method public blacklist ping()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3575
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3576
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3578
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3580
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3581
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3582
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3584
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3585
    nop

    .line 3586
    return-void

    .line 3584
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3585
    throw v2
.end method

.method public blacklist readCallStack()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2907
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2908
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2910
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2912
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2913
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2914
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2916
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2917
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 2919
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2917
    return-object v2

    .line 2919
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2920
    throw v2
.end method

.method public blacklist readClmEnable()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2732
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2733
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2735
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2737
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x73

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2738
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2739
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2741
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2742
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 2744
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2742
    return-object v2

    .line 2744
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2745
    throw v2
.end method

.method public blacklist readClmHighLoadAll()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2802
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2803
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2805
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2807
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x77

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2808
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2809
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2811
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2812
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 2814
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2812
    return-object v2

    .line 2814
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2815
    throw v2
.end method

.method public blacklist readClmHighLoadGrp()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2837
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2838
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2840
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2842
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x79

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2843
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2844
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2846
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2847
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 2849
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2847
    return-object v2

    .line 2849
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2850
    throw v2
.end method

.method public blacklist readClmLowLoadGrp()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2872
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2873
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2875
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2877
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2878
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2879
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2881
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2882
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 2884
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2882
    return-object v2

    .line 2884
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2885
    throw v2
.end method

.method public blacklist readCpuTaskstats()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1112
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1113
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1115
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1117
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1118
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1119
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1121
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1122
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 1124
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1122
    return-object v2

    .line 1124
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1125
    throw v2
.end method

.method public blacklist readDBacktrace()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3309
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3310
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3312
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3314
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x91

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3315
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3316
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3318
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3319
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 3321
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3319
    return-object v2

    .line 3321
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3322
    throw v2
.end method

.method public blacklist readDConvert()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2430
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2431
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2433
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2435
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x63

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2436
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2437
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2439
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2440
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 2442
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2440
    return-object v2

    .line 2442
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2443
    throw v2
.end method

.method public blacklist readFgFreqsThreshold()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2767
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2768
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2770
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2772
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x75

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2773
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2774
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2776
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2777
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 2779
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2777
    return-object v2

    .line 2779
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2780
    throw v2
.end method

.method public blacklist readIOBacktrace()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3328
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3329
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3331
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3333
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x92

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3334
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3335
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3337
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3338
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 3340
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3338
    return-object v2

    .line 3340
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3341
    throw v2
.end method

.method public blacklist readIomonitorInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "procname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1150
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1151
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1152
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1154
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1156
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1157
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1158
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1160
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1161
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 1163
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1161
    return-object v2

    .line 1163
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1164
    throw v2
.end method

.method public blacklist readJankCpuIndicator()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2544
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2545
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2547
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2549
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x69

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2550
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2551
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2553
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2554
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 2556
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2554
    return-object v2

    .line 2556
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2557
    throw v2
.end method

.method public blacklist readJankCpuInfo()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2449
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2450
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2452
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2454
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2455
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2456
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2458
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2459
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 2461
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2459
    return-object v2

    .line 2461
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2462
    throw v2
.end method

.method public blacklist readJankCpuInfoSig()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2468
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2469
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2471
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2473
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x65

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2474
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2475
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2477
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2478
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 2480
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2478
    return-object v2

    .line 2480
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2481
    throw v2
.end method

.method public blacklist readJankCpuLoad()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2487
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2488
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2490
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2492
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x66

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2493
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2494
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2496
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2497
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 2499
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2497
    return-object v2

    .line 2499
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2500
    throw v2
.end method

.method public blacklist readJankCpuLoad32()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2506
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2507
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2509
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2511
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x67

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2512
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2513
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2515
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2516
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 2518
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2516
    return-object v2

    .line 2518
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2519
    throw v2
.end method

.method public blacklist readJankCpuLoad32Scale()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2525
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2526
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2528
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2530
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x68

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2531
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2532
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2534
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2535
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 2537
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2535
    return-object v2

    .line 2537
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2538
    throw v2
.end method

.method public blacklist readJankTaskTrack()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2583
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2584
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2586
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2588
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2589
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2590
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2592
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2593
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 2595
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2593
    return-object v2

    .line 2595
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2596
    throw v2
.end method

.method public blacklist readJankTaskTrackByPid(I)Ljava/lang/String;
    .locals 5
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2563
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2564
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2565
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2567
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2569
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2570
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2571
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2573
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2574
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 2576
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2574
    return-object v2

    .line 2576
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2577
    throw v2
.end method

.method public blacklist readJankVersion()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2618
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2619
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2621
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2623
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2624
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2625
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2627
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2628
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 2630
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2628
    return-object v2

    .line 2630
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2631
    throw v2
.end method

.method public blacklist readKmallocDebugCreate()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1036
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1037
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1039
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1041
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1042
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1043
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1045
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1046
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 1048
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1046
    return-object v2

    .line 1048
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1049
    throw v2
.end method

.method public blacklist readLimitTable()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3347
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3348
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3350
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3352
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x93

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3353
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3354
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3356
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3357
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 3359
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3357
    return-object v2

    .line 3359
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3360
    throw v2
.end method

.method public blacklist readMemleakDetectThread()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 824
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 825
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 827
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 829
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 830
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 831
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 833
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 836
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 834
    return-object v2

    .line 836
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 837
    throw v2
.end method

.method public blacklist readMemoryByPids(Ljava/util/ArrayList;I)Lvendor/oplus/hardware/performance/V1_0/ProcMemStatRet;
    .locals 5
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Lvendor/oplus/hardware/performance/V1_0/ProcMemStatRet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3207
    .local p1, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3208
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3209
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 3210
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3212
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3214
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3215
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3216
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3218
    new-instance v2, Lvendor/oplus/hardware/performance/V1_0/ProcMemStatRet;

    invoke-direct {v2}, Lvendor/oplus/hardware/performance/V1_0/ProcMemStatRet;-><init>()V

    .line 3219
    .local v2, "_hidl_out_pms":Lvendor/oplus/hardware/performance/V1_0/ProcMemStatRet;
    invoke-virtual {v2, v1}, Lvendor/oplus/hardware/performance/V1_0/ProcMemStatRet;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3220
    nop

    .line 3222
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3220
    return-object v2

    .line 3222
    .end local v2    # "_hidl_out_pms":Lvendor/oplus/hardware/performance/V1_0/ProcMemStatRet;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3223
    throw v2
.end method

.method public blacklist readMemoryByUids(Ljava/util/ArrayList;I)Lvendor/oplus/hardware/performance/V1_0/ProcMemStatRet;
    .locals 5
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Lvendor/oplus/hardware/performance/V1_0/ProcMemStatRet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3229
    .local p1, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3230
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3231
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 3232
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3234
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3236
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3237
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3238
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3240
    new-instance v2, Lvendor/oplus/hardware/performance/V1_0/ProcMemStatRet;

    invoke-direct {v2}, Lvendor/oplus/hardware/performance/V1_0/ProcMemStatRet;-><init>()V

    .line 3241
    .local v2, "_hidl_out_pms":Lvendor/oplus/hardware/performance/V1_0/ProcMemStatRet;
    invoke-virtual {v2, v1}, Lvendor/oplus/hardware/performance/V1_0/ProcMemStatRet;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3242
    nop

    .line 3244
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3242
    return-object v2

    .line 3244
    .end local v2    # "_hidl_out_pms":Lvendor/oplus/hardware/performance/V1_0/ProcMemStatRet;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3245
    throw v2
.end method

.method public blacklist readNandswapProc(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "inProc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1978
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1979
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1980
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1982
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1984
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1985
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1986
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1988
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1989
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 1991
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1989
    return-object v2

    .line 1991
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1992
    throw v2
.end method

.method public blacklist readNormalizeRealTime()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2250
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2251
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2253
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2255
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2256
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2257
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2259
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2260
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 2262
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2260
    return-object v2

    .line 2262
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2263
    throw v2
.end method

.method public blacklist readNormalizeRunningTime()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2288
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2289
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2291
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2293
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2294
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2295
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2297
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2298
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 2300
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2298
    return-object v2

    .line 2300
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2301
    throw v2
.end method

.method public blacklist readOplusReserve3(II)Ljava/lang/String;
    .locals 5
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3145
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3146
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3147
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3148
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3150
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3152
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x89

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3153
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3154
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3156
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3157
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 3159
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3157
    return-object v2

    .line 3159
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3160
    throw v2
.end method

.method public blacklist readOsvelteVersion()Lvendor/oplus/hardware/performance/V1_0/OsvelteVersionRet;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3251
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3252
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3254
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3256
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3257
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3258
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3260
    new-instance v2, Lvendor/oplus/hardware/performance/V1_0/OsvelteVersionRet;

    invoke-direct {v2}, Lvendor/oplus/hardware/performance/V1_0/OsvelteVersionRet;-><init>()V

    .line 3261
    .local v2, "_hidl_out_ret":Lvendor/oplus/hardware/performance/V1_0/OsvelteVersionRet;
    invoke-virtual {v2, v1}, Lvendor/oplus/hardware/performance/V1_0/OsvelteVersionRet;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3262
    nop

    .line 3264
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3262
    return-object v2

    .line 3264
    .end local v2    # "_hidl_out_ret":Lvendor/oplus/hardware/performance/V1_0/OsvelteVersionRet;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3265
    throw v2
.end method

.method public blacklist readPidsSet()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2141
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2142
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2144
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2146
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x54

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2147
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2148
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2150
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2151
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 2153
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2151
    return-object v2

    .line 2153
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2154
    throw v2
.end method

.method public blacklist readRealTime()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2231
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2232
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2234
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2236
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x59

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2237
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2238
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2240
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2241
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 2243
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2241
    return-object v2

    .line 2243
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2244
    throw v2
.end method

.method public blacklist readRunningTime()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2269
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2270
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2272
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2274
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2275
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2276
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2278
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2279
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 2281
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2279
    return-object v2

    .line 2281
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2282
    throw v2
.end method

.method public blacklist readSchedInfoThreshold()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2160
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2161
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2163
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2165
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x55

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2166
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2167
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2169
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2170
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 2172
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2170
    return-object v2

    .line 2172
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2173
    throw v2
.end method

.method public blacklist readSgeFreqInfo()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2055
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2056
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2058
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2060
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2061
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2062
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2064
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2065
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 2067
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2065
    return-object v2

    .line 2067
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2068
    throw v2
.end method

.method public blacklist readSgeInfo()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1131
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1132
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1134
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1136
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1137
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1138
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1140
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1141
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 1143
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1141
    return-object v2

    .line 1143
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1144
    throw v2
.end method

.method public blacklist readStorageFeature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "addr"    # Ljava/lang/String;
    .param p3, "isMulti"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3414
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3415
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3416
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3417
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3418
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3420
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3422
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x97

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3423
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3424
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3426
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3427
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 3429
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3427
    return-object v2

    .line 3429
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3430
    throw v2
.end method

.method public blacklist readTargetProcess(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "buffer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2307
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2308
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2309
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2311
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2313
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2314
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2315
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2317
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2318
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 2320
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2318
    return-object v2

    .line 2320
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2321
    throw v2
.end method

.method public blacklist readTaskCpustatsEnable()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2036
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2037
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2039
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2041
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2042
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2043
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2045
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2046
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 2048
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2046
    return-object v2

    .line 2048
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2049
    throw v2
.end method

.method public blacklist readTaskSchedInfo()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2122
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2123
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2125
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2127
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x53

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2128
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2129
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2131
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2132
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 2134
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2132
    return-object v2

    .line 2134
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2135
    throw v2
.end method

.method public blacklist readTidsSet()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3271
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3272
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3274
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3276
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3277
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3278
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3280
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3281
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 3283
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3281
    return-object v2

    .line 3283
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3284
    throw v2
.end method

.method public blacklist readUxTaskTrack(II)Ljava/lang/String;
    .locals 5
    .param p1, "uPid"    # I
    .param p2, "rPid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2656
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2657
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2658
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2659
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2661
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2663
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2664
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2665
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2667
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2668
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 2670
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2668
    return-object v2

    .line 2670
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2671
    throw v2
.end method

.method public blacklist readVaFeature()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 977
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 978
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 980
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 982
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 983
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 984
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 986
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 987
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 989
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 987
    return-object v2

    .line 989
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 990
    throw v2
.end method

.method public blacklist readVersion()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3290
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3291
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3293
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3295
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x90

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3296
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3297
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3299
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3300
    .local v2, "_hidl_out_result":Ljava/lang/String;
    nop

    .line 3302
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3300
    return-object v2

    .line 3302
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3303
    throw v2
.end method

.method public blacklist removeTaskTrackPid(II)V
    .locals 5
    .param p1, "group"    # I
    .param p2, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2699
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2700
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2701
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2702
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2704
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2706
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x71

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2707
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2709
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2710
    nop

    .line 2711
    return-void

    .line 2709
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2710
    throw v2
.end method

.method public blacklist searchAcmNomediaDirName(Ljava/lang/String;)I
    .locals 5
    .param p1, "dirname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1958
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1959
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1960
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1962
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1964
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1965
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1966
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1968
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1969
    .local v2, "_hidl_out_result":I
    nop

    .line 1971
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1969
    return v2

    .line 1971
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1972
    throw v2
.end method

.method public blacklist setAcmOpstat(I)I
    .locals 5
    .param p1, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1757
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1758
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1759
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1761
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1763
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1764
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1765
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1767
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1768
    .local v2, "_hidl_out_result":I
    nop

    .line 1770
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1768
    return v2

    .line 1770
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1771
    throw v2
.end method

.method public blacklist setDamonReclaimColdTime(I)I
    .locals 5
    .param p1, "cold_time"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2987
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2988
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2989
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2991
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2993
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x81

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2994
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2995
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2997
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2998
    .local v2, "_hidl_out_result":I
    nop

    .line 3000
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2998
    return v2

    .line 3000
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3001
    throw v2
.end method

.method public blacklist setDamonReclaimMonitoring(II)I
    .locals 5
    .param p1, "sample"    # I
    .param p2, "aggr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3029
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3030
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3031
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3032
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3034
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3036
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x83

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3037
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3038
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3040
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3041
    .local v2, "_hidl_out_result":I
    nop

    .line 3043
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3041
    return v2

    .line 3043
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3044
    throw v2
.end method

.method public blacklist setDamonReclaimQuota(III)I
    .locals 5
    .param p1, "quota_ms"    # I
    .param p2, "quota_sz"    # I
    .param p3, "reset_interval"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3007
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3008
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3009
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3010
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3011
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3013
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3015
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x82

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3016
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3017
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3019
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3020
    .local v2, "_hidl_out_result":I
    nop

    .line 3022
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3020
    return v2

    .line 3022
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3023
    throw v2
.end method

.method public blacklist setDamonReclaimWmarks(IIII)I
    .locals 5
    .param p1, "metric"    # I
    .param p2, "high"    # I
    .param p3, "mid"    # I
    .param p4, "low"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2964
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2965
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2966
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2967
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2968
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2969
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2971
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2973
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2974
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2975
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2977
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2978
    .local v2, "_hidl_out_result":I
    nop

    .line 2980
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2978
    return v2

    .line 2980
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2981
    throw v2
.end method

.method public blacklist setFgUids(Ljava/lang/String;)V
    .locals 5
    .param p1, "fg_uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1519
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1520
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1521
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1523
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1525
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x34

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1526
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1528
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1529
    nop

    .line 1530
    return-void

    .line 1528
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1529
    throw v2
.end method

.method public blacklist setFrameRate(Ljava/lang/String;)V
    .locals 5
    .param p1, "frame_rate"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1503
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1504
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1505
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1507
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1509
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x33

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1510
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1512
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1513
    nop

    .line 1514
    return-void

    .line 1512
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1513
    throw v2
.end method

.method public blacklist setHALInstrumentation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3555
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3556
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3558
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3560
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3561
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3563
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3564
    nop

    .line 3565
    return-void

    .line 3563
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3564
    throw v2
.end method

.method public blacklist setImFlag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "pid"    # Ljava/lang/String;
    .param p2, "im_flag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2019
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2020
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2021
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2022
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2024
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2026
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2027
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2029
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2030
    nop

    .line 2031
    return-void

    .line 2029
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2030
    throw v2
.end method

.method public blacklist setProcessReclaim(Ljava/lang/String;)I
    .locals 5
    .param p1, "info"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1535
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1536
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1537
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1539
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1541
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x35

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1542
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1543
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1545
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1546
    .local v2, "_hidl_out_result":I
    nop

    .line 1548
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1546
    return v2

    .line 1548
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1549
    throw v2
.end method

.method public blacklist setSchedAssistImptTask(Ljava/lang/String;)V
    .locals 5
    .param p1, "impt_info"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2090
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2091
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2092
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2094
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2096
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x51

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2097
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2099
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2100
    nop

    .line 2101
    return-void

    .line 2099
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2100
    throw v2
.end method

.method public blacklist setSchedAssistScene(Ljava/lang/String;)V
    .locals 5
    .param p1, "scene_id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1487
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1488
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1489
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1491
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1493
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x32

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1494
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1496
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1497
    nop

    .line 1498
    return-void

    .line 1496
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1497
    throw v2
.end method

.method public blacklist setSlideboost(Ljava/lang/String;)V
    .locals 5
    .param p1, "boost"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2074
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2075
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2076
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2078
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2080
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x50

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2081
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2083
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2084
    nop

    .line 2085
    return-void

    .line 2083
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2084
    throw v2
.end method

.method public blacklist setTpdID(Ljava/lang/String;)I
    .locals 5
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1619
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1620
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1621
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1623
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1625
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x39

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1626
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1627
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1629
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1630
    .local v2, "_hidl_out_result":I
    nop

    .line 1632
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1630
    return v2

    .line 1632
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1633
    throw v2
.end method

.method public blacklist setTpdSerialParams(Ljava/lang/String;)I
    .locals 5
    .param p1, "params"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1599
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1600
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1601
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1603
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1605
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x38

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1606
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1607
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1609
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1610
    .local v2, "_hidl_out_result":I
    nop

    .line 1612
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1610
    return v2

    .line 1612
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1613
    throw v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 517
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@Proxy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 518
    :catch_0
    move-exception v0

    .line 521
    const-string v0, "[class or subclass of vendor.oplus.hardware.performance@1.0::IPerformance]@Proxy"

    return-object v0
.end method

.method public blacklist unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3626
    iget-object v0, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result v0

    return v0
.end method

.method public blacklist writeClmEnable(Ljava/lang/String;)V
    .locals 5
    .param p1, "buffer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2751
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2752
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2753
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2755
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2757
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x74

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2758
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2760
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2761
    nop

    .line 2762
    return-void

    .line 2760
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2761
    throw v2
.end method

.method public blacklist writeClmHighLoadAll(Ljava/lang/String;)V
    .locals 5
    .param p1, "buffer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2821
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2822
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2823
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2825
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2827
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x78

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2828
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2830
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2831
    nop

    .line 2832
    return-void

    .line 2830
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2831
    throw v2
.end method

.method public blacklist writeClmHighLoadGrp(Ljava/lang/String;)V
    .locals 5
    .param p1, "buffer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2856
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2857
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2858
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2860
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2862
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2863
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2865
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2866
    nop

    .line 2867
    return-void

    .line 2865
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2866
    throw v2
.end method

.method public blacklist writeClmLowLoadGrp(Ljava/lang/String;)V
    .locals 5
    .param p1, "buffer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2891
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2892
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2893
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2895
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2897
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2898
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2900
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2901
    nop

    .line 2902
    return-void

    .line 2900
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2901
    throw v2
.end method

.method public blacklist writeDBacktrace(Ljava/lang/String;)V
    .locals 5
    .param p1, "buffer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3382
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3383
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3384
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3386
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3388
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x95

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3389
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3391
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3392
    nop

    .line 3393
    return-void

    .line 3391
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3392
    throw v2
.end method

.method public blacklist writeFgFreqsThreshold(Ljava/lang/String;)V
    .locals 5
    .param p1, "buffer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2786
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2787
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2788
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2790
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2792
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x76

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2793
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2795
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2796
    nop

    .line 2797
    return-void

    .line 2795
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2796
    throw v2
.end method

.method public blacklist writeIOBacktrace(Ljava/lang/String;)V
    .locals 5
    .param p1, "buffer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3398
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3399
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3400
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3402
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3404
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x96

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3405
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3407
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3408
    nop

    .line 3409
    return-void

    .line 3407
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3408
    throw v2
.end method

.method public blacklist writeJankTaskTrackEnable(Z)V
    .locals 5
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2602
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2603
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2604
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2606
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2608
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2609
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2611
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2612
    nop

    .line 2613
    return-void

    .line 2611
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2612
    throw v2
.end method

.method public blacklist writeKmallocDebugCreate(I)I
    .locals 5
    .param p1, "kcreate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 996
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 997
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 998
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1000
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1002
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1003
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1004
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1006
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1007
    .local v2, "_hidl_out_result":I
    nop

    .line 1009
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1007
    return v2

    .line 1009
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1010
    throw v2
.end method

.method public blacklist writeKmallocDebugCreateWithType(Ljava/lang/String;)I
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1016
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1017
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1018
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1020
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1022
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1023
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1024
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1026
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1027
    .local v2, "_hidl_out_result":I
    nop

    .line 1029
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1027
    return v2

    .line 1029
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1030
    throw v2
.end method

.method public blacklist writeMemMonitor(Ljava/lang/String;)I
    .locals 5
    .param p1, "buffer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1715
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1716
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1717
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1719
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1721
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1722
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1723
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1725
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1726
    .local v2, "_hidl_out_result":I
    nop

    .line 1728
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1726
    return v2

    .line 1728
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1729
    throw v2
.end method

.method public blacklist writeMemleakDetectThread(I)I
    .locals 5
    .param p1, "memdect"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 804
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 805
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 806
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 808
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 810
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 811
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 812
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 814
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 815
    .local v2, "_hidl_out_result":I
    nop

    .line 817
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 815
    return v2

    .line 817
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 818
    throw v2
.end method

.method public blacklist writeMonitorStatus(Ljava/lang/String;)I
    .locals 5
    .param p1, "buffer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2211
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2212
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2213
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2215
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2217
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x58

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2218
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2219
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2221
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2222
    .local v2, "_hidl_out_result":I
    nop

    .line 2224
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2222
    return v2

    .line 2224
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2225
    throw v2
.end method

.method public blacklist writeNandswapProc(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "inProc"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1998
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1999
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2000
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2001
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2003
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2005
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2006
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2007
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2009
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2010
    .local v2, "_hidl_out_result":I
    nop

    .line 2012
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2010
    return v2

    .line 2012
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2013
    throw v2
.end method

.method public blacklist writeOplusReserve3(IILjava/lang/String;)I
    .locals 5
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "info"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3166
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3167
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3168
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3169
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3170
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3172
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3174
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3175
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3176
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3178
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3179
    .local v2, "_hidl_out_status":I
    nop

    .line 3181
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3179
    return v2

    .line 3181
    .end local v2    # "_hidl_out_status":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3182
    throw v2
.end method

.method public blacklist writePidsSet(Ljava/lang/String;)V
    .locals 5
    .param p1, "buffer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2179
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2180
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2181
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2183
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2185
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x56

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2186
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2188
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2189
    nop

    .line 2190
    return-void

    .line 2188
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2189
    throw v2
.end method

.method public blacklist writeSchedInfoThreshold(Ljava/lang/String;)V
    .locals 5
    .param p1, "buffer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2195
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2196
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2197
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2199
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2201
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x57

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2202
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2204
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2205
    nop

    .line 2206
    return-void

    .line 2204
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2205
    throw v2
.end method

.method public blacklist writeStorageFeature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "addr"    # Ljava/lang/String;
    .param p3, "isMulti"    # Ljava/lang/String;
    .param p4, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3436
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3437
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3438
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3439
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3440
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3441
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3443
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3445
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x98

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3446
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3447
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3449
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3450
    .local v2, "_hidl_out_result":I
    nop

    .line 3452
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3450
    return v2

    .line 3452
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3453
    throw v2
.end method

.method public blacklist writeTaskSchedInfo(Ljava/lang/String;)V
    .locals 5
    .param p1, "buffer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2106
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2107
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2108
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2110
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2112
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x52

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2113
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2115
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2116
    nop

    .line 2117
    return-void

    .line 2115
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2116
    throw v2
.end method

.method public blacklist writeTidsSet(Ljava/lang/String;)V
    .locals 5
    .param p1, "buffer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3366
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3367
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3368
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3370
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3372
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x94

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3373
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3375
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3376
    nop

    .line 3377
    return-void

    .line 3375
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3376
    throw v2
.end method

.method public blacklist writeUxState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "ux_state"    # Ljava/lang/String;
    .param p2, "pid"    # Ljava/lang/String;
    .param p3, "tid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1735
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1736
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1737
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1738
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1739
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1741
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1743
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1744
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1745
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1747
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1748
    .local v2, "_hidl_out_result":I
    nop

    .line 1750
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1748
    return v2

    .line 1750
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1751
    throw v2
.end method

.method public blacklist writeVaFeature(I)I
    .locals 5
    .param p1, "vafeature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 957
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 958
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 959
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 961
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 963
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 964
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 965
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 967
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 968
    .local v2, "_hidl_out_result":I
    nop

    .line 970
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 968
    return v2

    .line 970
    .end local v2    # "_hidl_out_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 971
    throw v2
.end method
