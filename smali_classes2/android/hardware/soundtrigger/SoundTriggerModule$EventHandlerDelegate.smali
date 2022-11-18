.class Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;
.super Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;
.source "SoundTriggerModule.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTriggerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandlerDelegate"
.end annotation


# instance fields
.field private final blacklist mHandler:Landroid/os/Handler;

.field final synthetic blacklist this$0:Landroid/hardware/soundtrigger/SoundTriggerModule;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/soundtrigger/SoundTriggerModule;Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Looper;)V
    .locals 1
    .param p2, "listener"    # Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 355
    iput-object p1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;->this$0:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-direct {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;-><init>()V

    .line 359
    new-instance v0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate$1;

    invoke-direct {v0, p0, p3, p1, p2}, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate$1;-><init>(Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;Landroid/os/Looper;Landroid/hardware/soundtrigger/SoundTriggerModule;Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;)V

    iput-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;->mHandler:Landroid/os/Handler;

    .line 382
    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist binderDied()V
    .locals 2

    monitor-enter p0

    .line 422
    :try_start_0
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 423
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    monitor-exit p0

    return-void

    .line 421
    .end local v0    # "m":Landroid/os/Message;
    .end local p0    # "this":Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist onModelUnloaded(I)V
    .locals 3
    .param p1, "modelHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 404
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 405
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 406
    return-void
.end method

.method public declared-synchronized blacklist onModuleDied()V
    .locals 2

    monitor-enter p0

    .line 416
    :try_start_0
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 417
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    monitor-exit p0

    return-void

    .line 415
    .end local v0    # "m":Landroid/os/Message;
    .end local p0    # "this":Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist onPhraseRecognition(ILandroid/media/soundtrigger/PhraseRecognitionEvent;I)V
    .locals 3
    .param p1, "handle"    # I
    .param p2, "event"    # Landroid/media/soundtrigger/PhraseRecognitionEvent;
    .param p3, "captureSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 397
    :try_start_0
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 398
    invoke-static {p1, p3, p2}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiPhraseRecognitionEvent(IILandroid/media/soundtrigger/PhraseRecognitionEvent;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    move-result-object v2

    .line 397
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 399
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    monitor-exit p0

    return-void

    .line 396
    .end local v0    # "m":Landroid/os/Message;
    .end local p0    # "this":Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;
    .end local p1    # "handle":I
    .end local p2    # "event":Landroid/media/soundtrigger/PhraseRecognitionEvent;
    .end local p3    # "captureSession":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist onRecognition(ILandroid/media/soundtrigger/RecognitionEvent;I)V
    .locals 3
    .param p1, "handle"    # I
    .param p2, "event"    # Landroid/media/soundtrigger/RecognitionEvent;
    .param p3, "captureSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 388
    :try_start_0
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 389
    invoke-static {p1, p3, p2}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiRecognitionEvent(IILandroid/media/soundtrigger/RecognitionEvent;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    move-result-object v2

    .line 388
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 390
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    monitor-exit p0

    return-void

    .line 387
    .end local v0    # "m":Landroid/os/Message;
    .end local p0    # "this":Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;
    .end local p1    # "handle":I
    .end local p2    # "event":Landroid/media/soundtrigger/RecognitionEvent;
    .end local p3    # "captureSession":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist onResourcesAvailable()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 410
    :try_start_0
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 411
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    monitor-exit p0

    return-void

    .line 409
    .end local v0    # "m":Landroid/os/Message;
    .end local p0    # "this":Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
