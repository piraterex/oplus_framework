.class public Landroid/media/musicrecognition/IMusicRecognitionManagerCallback$Default;
.super Ljava/lang/Object;
.source "IMusicRecognitionManagerCallback.java"

# interfaces
.implements Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;
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

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onAudioStreamClosed()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist onRecognitionFailed(I)V
    .locals 0
    .param p1, "failureCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist onRecognitionSucceeded(Landroid/media/MediaMetadata;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "result"    # Landroid/media/MediaMetadata;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method
