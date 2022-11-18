.class final Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;
.super Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;
.source "AlwaysOnHotwordDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/AlwaysOnHotwordDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SoundTriggerListener"
.end annotation


# instance fields
.field private final greylist-max-o mHandler:Landroid/os/Handler;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .line 1379
    invoke-direct {p0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;-><init>()V

    .line 1380
    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;->mHandler:Landroid/os/Handler;

    .line 1381
    return-void
.end method


# virtual methods
.method public greylist-max-o onError(I)V
    .locals 2
    .param p1, "status"    # I

    .line 1414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlwaysOnHotwordDetector"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1416
    return-void
.end method

.method public greylist-max-o onGenericSoundTriggerDetected(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    .line 1399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Generic sound trigger event detected at AOHD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlwaysOnHotwordDetector"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    return-void
.end method

.method public blacklist onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/HotwordDetectedResult;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    .param p2, "result"    # Landroid/service/voice/HotwordDetectedResult;

    .line 1389
    const-string v0, "AlwaysOnHotwordDetector"

    const-string/jumbo v1, "onDetected"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    invoke-direct {v1, p1}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;-><init>(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V

    .line 1393
    invoke-virtual {v1, p2}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->setHotwordDetectedResult(Landroid/service/voice/HotwordDetectedResult;)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    move-result-object v1

    .line 1394
    invoke-virtual {v1}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->build()Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;

    move-result-object v1

    .line 1391
    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1395
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1396
    return-void
.end method

.method public blacklist onProcessRestarted()V
    .locals 2

    .line 1444
    const-string v0, "AlwaysOnHotwordDetector"

    const-string/jumbo v1, "onProcessRestarted"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1446
    return-void
.end method

.method public greylist-max-o onRecognitionPaused()V
    .locals 2

    .line 1420
    const-string v0, "AlwaysOnHotwordDetector"

    const-string/jumbo v1, "onRecognitionPaused"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1422
    return-void
.end method

.method public greylist-max-o onRecognitionResumed()V
    .locals 2

    .line 1426
    const-string v0, "AlwaysOnHotwordDetector"

    const-string/jumbo v1, "onRecognitionResumed"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1428
    return-void
.end method

.method public blacklist onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    .locals 2
    .param p1, "result"    # Landroid/service/voice/HotwordRejectedResult;

    .line 1407
    const-string v0, "AlwaysOnHotwordDetector"

    const-string/jumbo v1, "onRejected"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1410
    return-void
.end method

.method public blacklist onStatusReported(I)V
    .locals 2
    .param p1, "status"    # I

    .line 1435
    const-string v0, "AlwaysOnHotwordDetector"

    const-string/jumbo v1, "onStatusReported"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1438
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1439
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1440
    return-void
.end method
