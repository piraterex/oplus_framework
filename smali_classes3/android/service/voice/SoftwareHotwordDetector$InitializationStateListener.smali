.class Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;
.super Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;
.source "SoftwareHotwordDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/SoftwareHotwordDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitializationStateListener"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/service/voice/HotwordDetector$Callback;

.field private final blacklist mHandler:Landroid/os/Handler;


# direct methods
.method constructor blacklist <init>(Landroid/os/Handler;Landroid/service/voice/HotwordDetector$Callback;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "callback"    # Landroid/service/voice/HotwordDetector$Callback;

    .line 185
    invoke-direct {p0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;-><init>()V

    .line 186
    iput-object p1, p0, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->mHandler:Landroid/os/Handler;

    .line 187
    iput-object p2, p0, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    .line 188
    return-void
.end method


# virtual methods
.method public blacklist onError(I)V
    .locals 0
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 219
    return-void
.end method

.method public blacklist onGenericSoundTriggerDetected(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    .locals 0
    .param p1, "recognitionEvent"    # Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    return-void
.end method

.method public blacklist onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/HotwordDetectedResult;)V
    .locals 0
    .param p1, "recognitionEvent"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    .param p2, "result"    # Landroid/service/voice/HotwordDetectedResult;

    .line 197
    return-void
.end method

.method public blacklist onProcessRestarted()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 246
    invoke-static {}, Landroid/service/voice/SoftwareHotwordDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onProcessRestarted()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 250
    return-void
.end method

.method public blacklist onRecognitionPaused()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    return-void
.end method

.method public blacklist onRecognitionResumed()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 233
    return-void
.end method

.method public blacklist onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    .locals 0
    .param p1, "result"    # Landroid/service/voice/HotwordRejectedResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    return-void
.end method

.method public blacklist onStatusReported(I)V
    .locals 4
    .param p1, "status"    # I

    .line 237
    invoke-static {}, Landroid/service/voice/SoftwareHotwordDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStatusReported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    .line 241
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 238
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 242
    return-void
.end method
