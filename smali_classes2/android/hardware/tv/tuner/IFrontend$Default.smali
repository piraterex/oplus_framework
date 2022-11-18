.class public Landroid/hardware/tv/tuner/IFrontend$Default;
.super Ljava/lang/Object;
.source "IFrontend.java"

# interfaces
.implements Landroid/hardware/tv/tuner/IFrontend;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/IFrontend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist getFrontendStatusReadiness([I)[I
    .locals 1
    .param p1, "statusTypes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getHardwareInfo()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 68
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .locals 1

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getStatus([I)[Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 1
    .param p1, "statusTypes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist linkCiCam(I)I
    .locals 1
    .param p1, "ciCamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeOutputPid(I)V
    .locals 0
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    return-void
.end method

.method public blacklist scan(Landroid/hardware/tv/tuner/FrontendSettings;I)V
    .locals 0
    .param p1, "settings"    # Landroid/hardware/tv/tuner/FrontendSettings;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist setCallback(Landroid/hardware/tv/tuner/IFrontendCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/hardware/tv/tuner/IFrontendCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist setLnb(I)V
    .locals 0
    .param p1, "lnbId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public blacklist stopScan()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public blacklist stopTune()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist tune(Landroid/hardware/tv/tuner/FrontendSettings;)V
    .locals 0
    .param p1, "settings"    # Landroid/hardware/tv/tuner/FrontendSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist unlinkCiCam(I)V
    .locals 0
    .param p1, "ciCamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method
