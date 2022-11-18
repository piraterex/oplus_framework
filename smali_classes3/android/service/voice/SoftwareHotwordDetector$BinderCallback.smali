.class Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;
.super Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback$Stub;
.source "SoftwareHotwordDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/SoftwareHotwordDetector;
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

    .line 138
    invoke-direct {p0}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback$Stub;-><init>()V

    .line 139
    iput-object p1, p0, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;->mHandler:Landroid/os/Handler;

    .line 140
    iput-object p2, p0, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    .line 141
    return-void
.end method


# virtual methods
.method public blacklist onDetected(Landroid/service/voice/HotwordDetectedResult;Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;)V
    .locals 4
    .param p1, "hotwordDetectedResult"    # Landroid/service/voice/HotwordDetectedResult;
    .param p2, "audioFormat"    # Landroid/media/AudioFormat;
    .param p3, "audioStream"    # Landroid/os/ParcelFileDescriptor;

    .line 149
    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/voice/AbstractHotwordDetector$BinderCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/voice/AbstractHotwordDetector$BinderCallback$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    new-instance v3, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    invoke-direct {v3}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;-><init>()V

    .line 153
    invoke-virtual {v3, p2}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->setCaptureAudioFormat(Landroid/media/AudioFormat;)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    move-result-object v3

    .line 154
    invoke-virtual {v3, p3}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->setAudioStream(Landroid/os/ParcelFileDescriptor;)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    move-result-object v3

    .line 155
    invoke-virtual {v3, p1}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->setHotwordDetectedResult(Landroid/service/voice/HotwordDetectedResult;)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    move-result-object v3

    .line 156
    invoke-virtual {v3}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->build()Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;

    move-result-object v3

    .line 149
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 157
    return-void
.end method

.method public blacklist onError()V
    .locals 3

    .line 162
    invoke-static {}, Landroid/service/voice/SoftwareHotwordDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BinderCallback#onError"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/voice/AbstractHotwordDetector$BinderCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/service/voice/AbstractHotwordDetector$BinderCallback$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 166
    return-void
.end method

.method public blacklist onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    .locals 3
    .param p1, "result"    # Landroid/service/voice/HotwordRejectedResult;

    .line 170
    if-nez p1, :cond_0

    .line 171
    new-instance v0, Landroid/service/voice/HotwordRejectedResult$Builder;

    invoke-direct {v0}, Landroid/service/voice/HotwordRejectedResult$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/service/voice/HotwordRejectedResult$Builder;->build()Landroid/service/voice/HotwordRejectedResult;

    move-result-object p1

    .line 173
    :cond_0
    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/voice/AbstractHotwordDetector$BinderCallback$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/service/voice/AbstractHotwordDetector$BinderCallback$$ExternalSyntheticLambda2;-><init>()V

    iget-object v2, p0, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 177
    return-void
.end method
