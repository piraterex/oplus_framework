.class public interface abstract Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;
.super Ljava/lang/Object;
.source "IBinderStats.java"

# interfaces
.implements Landroid/internal/hidl/base/V1_0/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats$Stub;,
        Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats$Proxy;,
        Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats$getBufferFdCallback;
    }
.end annotation


# static fields
.field public static final blacklist kInterfaceName:Ljava/lang/String; = "vendor.oplus.hardware.binderstats@1.0::IBinderStats"


# direct methods
.method public static blacklist asInterface(Landroid/os/IHwBinder;)Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;
    .locals 7
    .param p0, "binder"    # Landroid/os/IHwBinder;

    .line 13
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 14
    return-object v0

    .line 17
    :cond_0
    nop

    .line 18
    const-string v1, "vendor.oplus.hardware.binderstats@1.0::IBinderStats"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    .line 20
    .local v2, "iface":Landroid/os/IHwInterface;
    if-eqz v2, :cond_1

    instance-of v3, v2, Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;

    if-eqz v3, :cond_1

    .line 21
    move-object v0, v2

    check-cast v0, Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;

    return-object v0

    .line 24
    :cond_1
    new-instance v3, Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats$Proxy;

    invoke-direct {v3, p0}, Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 27
    .local v3, "proxy":Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;
    :try_start_0
    invoke-interface {v3}, Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 28
    .local v5, "descriptor":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_2

    .line 29
    return-object v3

    .line 31
    .end local v5    # "descriptor":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 33
    :cond_3
    goto :goto_1

    .line 32
    :catch_0
    move-exception v1

    .line 35
    :goto_1
    return-object v0
.end method

.method public static blacklist castFrom(Landroid/os/IHwInterface;)Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;
    .locals 1
    .param p0, "iface"    # Landroid/os/IHwInterface;

    .line 42
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;->asInterface(Landroid/os/IHwBinder;)Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static blacklist getService()Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 84
    const-string v0, "default"

    invoke-static {v0}, Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;->getService(Ljava/lang/String;)Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getService(Ljava/lang/String;)Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 74
    const-string v0, "vendor.oplus.hardware.binderstats@1.0::IBinderStats"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;->asInterface(Landroid/os/IHwBinder;)Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getService(Ljava/lang/String;Z)Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    const-string v0, "vendor.oplus.hardware.binderstats@1.0::IBinderStats"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;->asInterface(Landroid/os/IHwBinder;)Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getService(Z)Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;
    .locals 1
    .param p0, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    const-string v0, "default"

    invoke-static {v0, p0}, Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;->getService(Ljava/lang/String;Z)Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract whitelist asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract blacklist debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
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
.end method

.method public abstract blacklist enable(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getBufferFd(Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats$getBufferFdCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getHashChain()Ljava/util/ArrayList;
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
.end method

.method public abstract blacklist getVersionCode()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist interfaceChain()Ljava/util/ArrayList;
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
.end method

.method public abstract blacklist interfaceDescriptor()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist notifySyspropsChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist ping()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setHALInstrumentation()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
