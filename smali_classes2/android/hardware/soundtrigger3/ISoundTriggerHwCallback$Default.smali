.class public Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Default;
.super Ljava/lang/Object;
.source "ISoundTriggerHwCallback.java"

# interfaces
.implements Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 33
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .locals 1

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist modelUnloaded(I)V
    .locals 0
    .param p1, "model"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist phraseRecognitionCallback(ILandroid/media/soundtrigger/PhraseRecognitionEvent;)V
    .locals 0
    .param p1, "model"    # I
    .param p2, "event"    # Landroid/media/soundtrigger/PhraseRecognitionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist recognitionCallback(ILandroid/media/soundtrigger/RecognitionEvent;)V
    .locals 0
    .param p1, "model"    # I
    .param p2, "event"    # Landroid/media/soundtrigger/RecognitionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method
