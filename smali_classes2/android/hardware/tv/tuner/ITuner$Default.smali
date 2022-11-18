.class public Landroid/hardware/tv/tuner/ITuner$Default;
.super Ljava/lang/Object;
.source "ITuner.java"

# interfaces
.implements Landroid/hardware/tv/tuner/ITuner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/ITuner;
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

    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDemuxCaps()Landroid/hardware/tv/tuner/DemuxCapabilities;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFrontendIds()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFrontendInfo(I)Landroid/hardware/tv/tuner/FrontendInfo;
    .locals 1
    .param p1, "frontendId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 71
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .locals 1

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getLnbIds()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMaxNumberOfFrontends(I)I
    .locals 1
    .param p1, "frontendType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist openDemux([I)Landroid/hardware/tv/tuner/IDemux;
    .locals 1
    .param p1, "demuxId"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist openDescrambler()Landroid/hardware/tv/tuner/IDescrambler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist openFrontendById(I)Landroid/hardware/tv/tuner/IFrontend;
    .locals 1
    .param p1, "frontendId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist openLnbById(I)Landroid/hardware/tv/tuner/ILnb;
    .locals 1
    .param p1, "lnbId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist openLnbByName(Ljava/lang/String;[I)Landroid/hardware/tv/tuner/ILnb;
    .locals 1
    .param p1, "lnbName"    # Ljava/lang/String;
    .param p2, "lnbId"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setLna(Z)V
    .locals 0
    .param p1, "bEnable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    return-void
.end method

.method public blacklist setMaxNumberOfFrontends(II)V
    .locals 0
    .param p1, "frontendType"    # I
    .param p2, "maxNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    return-void
.end method
