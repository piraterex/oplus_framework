.class Landroid/service/voice/SoftwareHotwordDetector;
.super Landroid/service/voice/AbstractHotwordDetector;
.source "SoftwareHotwordDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;,
        Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mAudioFormat:Landroid/media/AudioFormat;

.field private final blacklist mCallback:Landroid/service/voice/HotwordDetector$Callback;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/service/voice/SoftwareHotwordDetector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 49
    const-class v0, Landroid/service/voice/SoftwareHotwordDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/voice/SoftwareHotwordDetector;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/app/IVoiceInteractionManagerService;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/service/voice/HotwordDetector$Callback;)V
    .locals 3
    .param p1, "managerService"    # Lcom/android/internal/app/IVoiceInteractionManagerService;
    .param p2, "audioFormat"    # Landroid/media/AudioFormat;
    .param p3, "options"    # Landroid/os/PersistableBundle;
    .param p4, "sharedMemory"    # Landroid/os/SharedMemory;
    .param p5, "callback"    # Landroid/service/voice/HotwordDetector$Callback;

    .line 63
    const/4 v0, 0x2

    invoke-direct {p0, p1, p5, v0}, Landroid/service/voice/AbstractHotwordDetector;-><init>(Lcom/android/internal/app/IVoiceInteractionManagerService;Landroid/service/voice/HotwordDetector$Callback;I)V

    .line 65
    iput-object p1, p0, Landroid/service/voice/SoftwareHotwordDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 66
    iput-object p2, p0, Landroid/service/voice/SoftwareHotwordDetector;->mAudioFormat:Landroid/media/AudioFormat;

    .line 67
    iput-object p5, p0, Landroid/service/voice/SoftwareHotwordDetector;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    .line 68
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/service/voice/SoftwareHotwordDetector;->mHandler:Landroid/os/Handler;

    .line 69
    new-instance v2, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;

    invoke-direct {v2, v1, p5}, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;-><init>(Landroid/os/Handler;Landroid/service/voice/HotwordDetector$Callback;)V

    invoke-virtual {p0, p3, p4, v2, v0}, Landroid/service/voice/SoftwareHotwordDetector;->updateStateLocked(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;I)V

    .line 72
    return-void
.end method

.method private blacklist maybeCloseExistingSession()V
    .locals 0

    .line 130
    return-void
.end method


# virtual methods
.method public whitelist destroy()V
    .locals 1

    .line 116
    invoke-virtual {p0}, Landroid/service/voice/SoftwareHotwordDetector;->stopRecognition()Z

    .line 117
    invoke-direct {p0}, Landroid/service/voice/SoftwareHotwordDetector;->maybeCloseExistingSession()V

    .line 120
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService;->shutdownHotwordDetectionService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 124
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    invoke-super {p0}, Landroid/service/voice/AbstractHotwordDetector;->destroy()V

    .line 125
    return-void
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 256
    return-void
.end method

.method public whitelist startRecognition()Z
    .locals 5

    .line 80
    invoke-virtual {p0}, Landroid/service/voice/SoftwareHotwordDetector;->throwIfDetectorIsNoLongerActive()V

    .line 81
    invoke-direct {p0}, Landroid/service/voice/SoftwareHotwordDetector;->maybeCloseExistingSession()V

    .line 84
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v1, p0, Landroid/service/voice/SoftwareHotwordDetector;->mAudioFormat:Landroid/media/AudioFormat;

    new-instance v2, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;

    iget-object v3, p0, Landroid/service/voice/SoftwareHotwordDetector;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/service/voice/SoftwareHotwordDetector;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    invoke-direct {v2, v3, v4}, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;-><init>(Landroid/os/Handler;Landroid/service/voice/HotwordDetector$Callback;)V

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->startListeningFromMic(Landroid/media/AudioFormat;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 93
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 86
    :catch_1
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v1, Landroid/service/voice/SoftwareHotwordDetector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startRecognition failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist stopRecognition()Z
    .locals 1

    .line 103
    invoke-virtual {p0}, Landroid/service/voice/SoftwareHotwordDetector;->throwIfDetectorIsNoLongerActive()V

    .line 106
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService;->stopListeningFromMic()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 111
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
