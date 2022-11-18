.class Landroid/service/voice/AbstractHotwordDetector$BinderCallback;
.super Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback$Stub;
.source "AbstractHotwordDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/AbstractHotwordDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BinderCallback"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/service/voice/HotwordDetector$Callback;

.field private final blacklist mHandler:Landroid/os/Handler;


# direct methods
.method constructor blacklist <init>(Landroid/os/Handler;Landroid/service/voice/HotwordDetector$Callback;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "callback"    # Landroid/service/voice/HotwordDetector$Callback;

    .line 173
    invoke-direct {p0}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback$Stub;-><init>()V

    .line 174
    iput-object p1, p0, Landroid/service/voice/AbstractHotwordDetector$BinderCallback;->mHandler:Landroid/os/Handler;

    .line 175
    iput-object p2, p0, Landroid/service/voice/AbstractHotwordDetector$BinderCallback;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    .line 176
    return-void
.end method


# virtual methods
.method public blacklist onDetected(Landroid/service/voice/HotwordDetectedResult;Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;)V
    .locals 4
    .param p1, "hotwordDetectedResult"    # Landroid/service/voice/HotwordDetectedResult;
    .param p2, "audioFormat"    # Landroid/media/AudioFormat;
    .param p3, "audioStreamIgnored"    # Landroid/os/ParcelFileDescriptor;

    .line 184
    iget-object v0, p0, Landroid/service/voice/AbstractHotwordDetector$BinderCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/voice/AbstractHotwordDetector$BinderCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/voice/AbstractHotwordDetector$BinderCallback$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/voice/AbstractHotwordDetector$BinderCallback;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    new-instance v3, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    invoke-direct {v3}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;-><init>()V

    .line 188
    invoke-virtual {v3, p2}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->setCaptureAudioFormat(Landroid/media/AudioFormat;)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    move-result-object v3

    .line 189
    invoke-virtual {v3, p1}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->setHotwordDetectedResult(Landroid/service/voice/HotwordDetectedResult;)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    move-result-object v3

    .line 190
    invoke-virtual {v3}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->build()Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;

    move-result-object v3

    .line 184
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 191
    return-void
.end method

.method public blacklist onError()V
    .locals 3

    .line 196
    invoke-static {}, Landroid/service/voice/AbstractHotwordDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BinderCallback#onError"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Landroid/service/voice/AbstractHotwordDetector$BinderCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/voice/AbstractHotwordDetector$BinderCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/service/voice/AbstractHotwordDetector$BinderCallback$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/service/voice/AbstractHotwordDetector$BinderCallback;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 200
    return-void
.end method

.method public blacklist onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    .locals 3
    .param p1, "result"    # Landroid/service/voice/HotwordRejectedResult;

    .line 204
    if-nez p1, :cond_0

    .line 205
    new-instance v0, Landroid/service/voice/HotwordRejectedResult$Builder;

    invoke-direct {v0}, Landroid/service/voice/HotwordRejectedResult$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/service/voice/HotwordRejectedResult$Builder;->build()Landroid/service/voice/HotwordRejectedResult;

    move-result-object p1

    .line 207
    :cond_0
    iget-object v0, p0, Landroid/service/voice/AbstractHotwordDetector$BinderCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/voice/AbstractHotwordDetector$BinderCallback$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/service/voice/AbstractHotwordDetector$BinderCallback$$ExternalSyntheticLambda2;-><init>()V

    iget-object v2, p0, Landroid/service/voice/AbstractHotwordDetector$BinderCallback;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 211
    return-void
.end method
