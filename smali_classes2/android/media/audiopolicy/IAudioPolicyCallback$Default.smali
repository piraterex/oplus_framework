.class public Landroid/media/audiopolicy/IAudioPolicyCallback$Default;
.super Ljava/lang/Object;
.source "IAudioPolicyCallback.java"

# interfaces
.implements Landroid/media/audiopolicy/IAudioPolicyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/IAudioPolicyCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist notifyAudioFocusAbandon(Landroid/media/AudioFocusInfo;)V
    .locals 0
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist notifyAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V
    .locals 0
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "requestResult"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    return-void
.end method

.method public blacklist notifyAudioFocusLoss(Landroid/media/AudioFocusInfo;Z)V
    .locals 0
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "wasNotified"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public blacklist notifyAudioFocusRequest(Landroid/media/AudioFocusInfo;I)V
    .locals 0
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "requestResult"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist notifyMixStateUpdate(Ljava/lang/String;I)V
    .locals 0
    .param p1, "regId"    # Ljava/lang/String;
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist notifyUnregistration()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist notifyVolumeAdjust(I)V
    .locals 0
    .param p1, "adjustment"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method
