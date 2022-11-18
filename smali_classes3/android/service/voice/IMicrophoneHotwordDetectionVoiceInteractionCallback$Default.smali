.class public Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback$Default;
.super Ljava/lang/Object;
.source "IMicrophoneHotwordDetectionVoiceInteractionCallback.java"

# interfaces
.implements Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;
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

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onDetected(Landroid/service/voice/HotwordDetectedResult;Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "hotwordDetectedResult"    # Landroid/service/voice/HotwordDetectedResult;
    .param p2, "audioFormat"    # Landroid/media/AudioFormat;
    .param p3, "audioStream"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist onError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    .locals 0
    .param p1, "hotwordRejectedResult"    # Landroid/service/voice/HotwordRejectedResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method
