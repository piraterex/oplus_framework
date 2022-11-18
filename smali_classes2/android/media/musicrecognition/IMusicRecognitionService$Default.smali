.class public Landroid/media/musicrecognition/IMusicRecognitionService$Default;
.super Ljava/lang/Object;
.source "IMusicRecognitionService.java"

# interfaces
.implements Landroid/media/musicrecognition/IMusicRecognitionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/musicrecognition/IMusicRecognitionService;
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

.method public blacklist getAttributionTag(Landroid/media/musicrecognition/IMusicRecognitionAttributionTagCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/media/musicrecognition/IMusicRecognitionAttributionTagCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist onAudioStreamStarted(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/media/musicrecognition/IMusicRecognitionServiceCallback;)V
    .locals 0
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "audioFormat"    # Landroid/media/AudioFormat;
    .param p3, "callback"    # Landroid/media/musicrecognition/IMusicRecognitionServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method
