.class public Landroid/media/tv/ITvInputServiceCallback$Default;
.super Ljava/lang/Object;
.source "ITvInputServiceCallback.java"

# interfaces
.implements Landroid/media/tv/ITvInputServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addHardwareInput(ILandroid/media/tv/TvInputInfo;)V
    .locals 0
    .param p1, "deviceId"    # I
    .param p2, "inputInfo"    # Landroid/media/tv/TvInputInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public blacklist addHdmiInput(ILandroid/media/tv/TvInputInfo;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "inputInfo"    # Landroid/media/tv/TvInputInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist removeHardwareInput(Ljava/lang/String;)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method
