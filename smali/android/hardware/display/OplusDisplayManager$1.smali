.class Landroid/hardware/display/OplusDisplayManager$1;
.super Landroid/util/Singleton;
.source "OplusDisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/OplusDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Landroid/hardware/display/IOplusDisplayManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist create()Landroid/hardware/display/IOplusDisplayManager;
    .locals 4

    .line 43
    :try_start_0
    const-string v0, "display"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 44
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v1

    .line 45
    .local v1, "dm":Landroid/hardware/display/IDisplayManager;
    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    move-result-object v2

    .line 46
    .local v2, "extbinder":Landroid/os/IBinder;
    invoke-static {v2}, Landroid/hardware/display/IOplusDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IOplusDisplayManager;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 47
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "dm":Landroid/hardware/display/IDisplayManager;
    .end local v2    # "extbinder":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create OplusDisplayManagerServiceEnhance singleton failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusDisplayManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic blacklist create()Ljava/lang/Object;
    .locals 1

    .line 39
    invoke-virtual {p0}, Landroid/hardware/display/OplusDisplayManager$1;->create()Landroid/hardware/display/IOplusDisplayManager;

    move-result-object v0

    return-object v0
.end method
