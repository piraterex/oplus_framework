.class public Landroid/media/IMuteAwaitConnectionCallback$Default;
.super Ljava/lang/Object;
.source "IMuteAwaitConnectionCallback.java"

# interfaces
.implements Landroid/media/IMuteAwaitConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMuteAwaitConnectionCallback;
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

.method public blacklist dispatchOnMutedUntilConnection(Landroid/media/AudioDeviceAttributes;[I)V
    .locals 0
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "mutedUsages"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public blacklist dispatchOnUnmutedEvent(ILandroid/media/AudioDeviceAttributes;[I)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p3, "mutedUsages"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method
