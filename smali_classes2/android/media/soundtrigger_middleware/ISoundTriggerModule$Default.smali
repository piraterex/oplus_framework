.class public Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Default;
.super Ljava/lang/Object;
.source "ISoundTriggerModule.java"

# interfaces
.implements Landroid/media/soundtrigger_middleware/ISoundTriggerModule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist detach()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    return-void
.end method

.method public blacklist forceRecognitionEvent(I)V
    .locals 0
    .param p1, "modelHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    return-void
.end method

.method public blacklist getModelParameter(II)I
    .locals 1
    .param p1, "modelHandle"    # I
    .param p2, "modelParam"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist loadModel(Landroid/media/soundtrigger/SoundModel;)I
    .locals 1
    .param p1, "model"    # Landroid/media/soundtrigger/SoundModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist loadPhraseModel(Landroid/media/soundtrigger/PhraseSoundModel;)I
    .locals 1
    .param p1, "model"    # Landroid/media/soundtrigger/PhraseSoundModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist queryModelParameterSupport(II)Landroid/media/soundtrigger/ModelParameterRange;
    .locals 1
    .param p1, "modelHandle"    # I
    .param p2, "modelParam"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setModelParameter(III)V
    .locals 0
    .param p1, "modelHandle"    # I
    .param p2, "modelParam"    # I
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    return-void
.end method

.method public blacklist startRecognition(ILandroid/media/soundtrigger/RecognitionConfig;)V
    .locals 0
    .param p1, "modelHandle"    # I
    .param p2, "config"    # Landroid/media/soundtrigger/RecognitionConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    return-void
.end method

.method public blacklist stopRecognition(I)V
    .locals 0
    .param p1, "modelHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    return-void
.end method

.method public blacklist unloadModel(I)V
    .locals 0
    .param p1, "modelHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method
