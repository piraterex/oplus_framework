.class public Landroid/media/IAudioDeviceVolumeDispatcher$Default;
.super Ljava/lang/Object;
.source "IAudioDeviceVolumeDispatcher.java"

# interfaces
.implements Landroid/media/IAudioDeviceVolumeDispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioDeviceVolumeDispatcher;
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
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist dispatchDeviceVolumeAdjusted(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;II)V
    .locals 0
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "vol"    # Landroid/media/VolumeInfo;
    .param p3, "direction"    # I
    .param p4, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist dispatchDeviceVolumeChanged(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;)V
    .locals 0
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "vol"    # Landroid/media/VolumeInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method
