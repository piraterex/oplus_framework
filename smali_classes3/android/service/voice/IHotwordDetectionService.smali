.class public interface abstract Landroid/service/voice/IHotwordDetectionService;
.super Ljava/lang/Object;
.source "IHotwordDetectionService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/IHotwordDetectionService$Stub;,
        Landroid/service/voice/IHotwordDetectionService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.voice.IHotwordDetectionService"


# virtual methods
.method public abstract blacklist detectFromDspSource(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/media/AudioFormat;JLandroid/service/voice/IDspHotwordDetectionCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist detectFromMicrophoneSource(Landroid/os/ParcelFileDescriptor;ILandroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IDspHotwordDetectionCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist ping(Landroid/os/IRemoteCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist stopDetection()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist updateAudioFlinger(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist updateContentCaptureManager(Landroid/view/contentcapture/IContentCaptureManager;Landroid/content/ContentCaptureOptions;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
