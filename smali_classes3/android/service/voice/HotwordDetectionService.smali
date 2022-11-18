.class public abstract Landroid/service/voice/HotwordDetectionService;
.super Landroid/app/Service;
.source "HotwordDetectionService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/HotwordDetectionService$Callback;,
        Landroid/service/voice/HotwordDetectionService$AudioSource;
    }
.end annotation


# static fields
.field public static final blacklist AUDIO_SOURCE_EXTERNAL:I = 0x2

.field public static final blacklist AUDIO_SOURCE_MICROPHONE:I = 0x1

.field private static final blacklist DBG:Z = false

.field public static final whitelist INITIALIZATION_STATUS_SUCCESS:I = 0x0

.field public static final whitelist INITIALIZATION_STATUS_UNKNOWN:I = 0x64

.field public static final blacklist KEY_INITIALIZATION_STATUS:Ljava/lang/String; = "initialization_status"

.field public static final blacklist MAXIMUM_NUMBER_OF_INITIALIZATION_STATUS_CUSTOM_ERROR:I = 0x2

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.voice.HotwordDetectionService"

.field private static final blacklist TAG:Ljava/lang/String; = "HotwordDetectionService"

.field private static final blacklist UPDATE_TIMEOUT_MILLIS:J = 0x4e20L


# instance fields
.field private blacklist mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

.field private final blacklist mInterface:Landroid/service/voice/IHotwordDetectionService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmContentCaptureManager(Landroid/service/voice/HotwordDetectionService;Landroid/view/contentcapture/ContentCaptureManager;)V
    .locals 0

    iput-object p1, p0, Landroid/service/voice/HotwordDetectionService;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monUpdateStateInternal(Landroid/service/voice/HotwordDetectionService;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/service/voice/HotwordDetectionService;->onUpdateStateInternal(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 131
    new-instance v0, Landroid/service/voice/HotwordDetectionService$1;

    invoke-direct {v0, p0}, Landroid/service/voice/HotwordDetectionService$1;-><init>(Landroid/service/voice/HotwordDetectionService;)V

    iput-object v0, p0, Landroid/service/voice/HotwordDetectionService;->mInterface:Landroid/service/voice/IHotwordDetectionService;

    return-void
.end method

.method public static whitelist getMaxCustomInitializationStatus()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 240
    const/4 v0, 0x2

    return v0
.end method

.method static synthetic blacklist lambda$onUpdateStateInternal$0(Landroid/os/IRemoteCallback;I)V
    .locals 3
    .param p0, "callback"    # Landroid/os/IRemoteCallback;
    .param p1, "value"    # I

    .line 345
    invoke-static {}, Landroid/service/voice/HotwordDetectionService;->getMaxCustomInitializationStatus()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 350
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 351
    .local v0, "status":Landroid/os/Bundle;
    const-string/jumbo v1, "initialization_status"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 352
    invoke-interface {p0, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    .end local v0    # "status":Landroid/os/Bundle;
    nop

    .line 356
    return-void

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 346
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The initialization status is invalid for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist onUpdateStateInternal(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V
    .locals 7
    .param p1, "options"    # Landroid/os/PersistableBundle;
    .param p2, "sharedMemory"    # Landroid/os/SharedMemory;
    .param p3, "callback"    # Landroid/os/IRemoteCallback;

    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, "intConsumer":Ljava/util/function/IntConsumer;
    if-eqz p3, :cond_0

    .line 343
    new-instance v1, Landroid/service/voice/HotwordDetectionService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p3}, Landroid/service/voice/HotwordDetectionService$$ExternalSyntheticLambda0;-><init>(Landroid/os/IRemoteCallback;)V

    move-object v0, v1

    .line 358
    :cond_0
    const-wide/16 v4, 0x4e20

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/service/voice/HotwordDetectionService;->onUpdateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;JLjava/util/function/IntConsumer;)V

    .line 359
    return-void
.end method


# virtual methods
.method public whitelist getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 223
    const-string v0, "content_capture"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Landroid/service/voice/HotwordDetectionService;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    return-object v0

    .line 226
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 212
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.service.voice.HotwordDetectionService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Landroid/service/voice/HotwordDetectionService;->mInterface:Landroid/service/voice/IHotwordDetectionService;

    invoke-interface {v0}, Landroid/service/voice/IHotwordDetectionService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to bind to wrong intent (should be android.service.voice.HotwordDetectionService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HotwordDetectionService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onDetect(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/HotwordDetectionService$Callback;)V
    .locals 1
    .param p1, "audioStream"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "audioFormat"    # Landroid/media/AudioFormat;
    .param p3, "options"    # Landroid/os/PersistableBundle;
    .param p4, "callback"    # Landroid/service/voice/HotwordDetectionService$Callback;

    .line 336
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist onDetect(Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;JLandroid/service/voice/HotwordDetectionService$Callback;)V
    .locals 1
    .param p1, "eventPayload"    # Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;
    .param p2, "timeoutMillis"    # J
    .param p4, "callback"    # Landroid/service/voice/HotwordDetectionService$Callback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 266
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist onDetect(Landroid/service/voice/HotwordDetectionService$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/service/voice/HotwordDetectionService$Callback;

    .line 310
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist onStopDetection()V
    .locals 0

    .line 368
    return-void
.end method

.method public whitelist onUpdateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;JLjava/util/function/IntConsumer;)V
    .locals 0
    .param p1, "options"    # Landroid/os/PersistableBundle;
    .param p2, "sharedMemory"    # Landroid/os/SharedMemory;
    .param p3, "callbackTimeoutMillis"    # J
    .param p5, "statusCallback"    # Ljava/util/function/IntConsumer;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 295
    return-void
.end method
