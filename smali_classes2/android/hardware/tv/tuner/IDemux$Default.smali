.class public Landroid/hardware/tv/tuner/IDemux$Default;
.super Ljava/lang/Object;
.source "IDemux.java"

# interfaces
.implements Landroid/hardware/tv/tuner/IDemux;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/IDemux;
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

    .line 61
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

    .line 40
    return-void
.end method

.method public blacklist connectCiCam(I)V
    .locals 0
    .param p1, "ciCamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public blacklist disconnectCiCam()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public blacklist getAvSyncHwId(Landroid/hardware/tv/tuner/IFilter;)I
    .locals 1
    .param p1, "filter"    # Landroid/hardware/tv/tuner/IFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAvSyncTime(I)J
    .locals 2
    .param p1, "avSyncHwId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 57
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .locals 1

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist openDvr(BILandroid/hardware/tv/tuner/IDvrCallback;)Landroid/hardware/tv/tuner/IDvr;
    .locals 1
    .param p1, "type"    # B
    .param p2, "bufferSize"    # I
    .param p3, "cb"    # Landroid/hardware/tv/tuner/IDvrCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist openFilter(Landroid/hardware/tv/tuner/DemuxFilterType;ILandroid/hardware/tv/tuner/IFilterCallback;)Landroid/hardware/tv/tuner/IFilter;
    .locals 1
    .param p1, "type"    # Landroid/hardware/tv/tuner/DemuxFilterType;
    .param p2, "bufferSize"    # I
    .param p3, "cb"    # Landroid/hardware/tv/tuner/IFilterCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist openTimeFilter()Landroid/hardware/tv/tuner/ITimeFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setFrontendDataSource(I)V
    .locals 0
    .param p1, "frontendId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method
