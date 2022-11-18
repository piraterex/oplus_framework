.class public final Landroid/media/soundtrigger/SoundTriggerDetector;
.super Ljava/lang/Object;
.source "SoundTriggerDetector.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;,
        Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;,
        Landroid/media/soundtrigger/SoundTriggerDetector$Callback;,
        Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;,
        Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionFlags;
    }
.end annotation


# static fields
.field private static final greylist-max-o DBG:Z = false

.field private static final greylist-max-o MSG_AVAILABILITY_CHANGED:I = 0x1

.field private static final greylist-max-o MSG_DETECTION_ERROR:I = 0x3

.field private static final greylist-max-o MSG_DETECTION_PAUSE:I = 0x4

.field private static final greylist-max-o MSG_DETECTION_RESUME:I = 0x5

.field private static final greylist-max-o MSG_SOUND_TRIGGER_DETECTED:I = 0x2

.field public static final whitelist RECOGNITION_FLAG_ALLOW_MULTIPLE_TRIGGERS:I = 0x2

.field public static final whitelist RECOGNITION_FLAG_CAPTURE_TRIGGER_AUDIO:I = 0x1

.field public static final whitelist RECOGNITION_FLAG_ENABLE_AUDIO_ECHO_CANCELLATION:I = 0x4

.field public static final whitelist RECOGNITION_FLAG_ENABLE_AUDIO_NOISE_SUPPRESSION:I = 0x8

.field public static final greylist-max-o RECOGNITION_FLAG_NONE:I = 0x0

.field public static final whitelist RECOGNITION_FLAG_RUN_IN_BATTERY_SAVER:I = 0x10

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SoundTriggerDetector"


# instance fields
.field private final greylist-max-o mCallback:Landroid/media/soundtrigger/SoundTriggerDetector$Callback;

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mRecognitionCallback:Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;

.field private final greylist-max-o mSoundModelId:Ljava/util/UUID;

.field private final blacklist mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/media/soundtrigger/SoundTriggerDetector$Callback;
    .locals 0

    iget-object p0, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mCallback:Landroid/media/soundtrigger/SoundTriggerDetector$Callback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method constructor blacklist <init>(Lcom/android/internal/app/ISoundTriggerSession;Ljava/util/UUID;Landroid/media/soundtrigger/SoundTriggerDetector$Callback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "soundTriggerSession"    # Lcom/android/internal/app/ISoundTriggerSession;
    .param p2, "soundModelId"    # Ljava/util/UUID;
    .param p3, "callback"    # Landroid/media/soundtrigger/SoundTriggerDetector$Callback;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mLock:Ljava/lang/Object;

    .line 281
    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    .line 282
    iput-object p2, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mSoundModelId:Ljava/util/UUID;

    .line 283
    iput-object p3, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mCallback:Landroid/media/soundtrigger/SoundTriggerDetector$Callback;

    .line 284
    if-nez p4, :cond_0

    .line 285
    new-instance v0, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;

    invoke-direct {v0, p0}, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;-><init>(Landroid/media/soundtrigger/SoundTriggerDetector;)V

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 287
    :cond_0
    new-instance v0, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;-><init>(Landroid/media/soundtrigger/SoundTriggerDetector;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mHandler:Landroid/os/Handler;

    .line 289
    :goto_0
    new-instance v0, Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;-><init>(Landroid/media/soundtrigger/SoundTriggerDetector;Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback-IA;)V

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mRecognitionCallback:Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;

    .line 290
    return-void
.end method


# virtual methods
.method public greylist-max-o dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 349
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 351
    :try_start_0
    monitor-exit v0

    .line 352
    return-void

    .line 351
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist startRecognition(I)Z
    .locals 14
    .param p1, "recognitionFlags"    # I

    .line 302
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    .line 305
    .local v4, "captureTriggerAudio":Z
    :goto_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v1

    .line 308
    .local v5, "allowMultipleTriggers":Z
    :goto_1
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    .line 310
    .local v0, "runInBatterySaver":Z
    :goto_2
    const/4 v3, 0x0

    .line 311
    .local v3, "audioCapabilities":I
    and-int/lit8 v6, p1, 0x4

    if-eqz v6, :cond_3

    .line 312
    or-int/lit8 v3, v3, 0x1

    .line 314
    :cond_3
    and-int/lit8 v6, p1, 0x8

    if-eqz v6, :cond_4

    .line 315
    or-int/lit8 v3, v3, 0x2

    move v9, v3

    goto :goto_3

    .line 314
    :cond_4
    move v9, v3

    .line 320
    .end local v3    # "audioCapabilities":I
    .local v9, "audioCapabilities":I
    :goto_3
    :try_start_0
    iget-object v10, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    new-instance v11, Landroid/os/ParcelUuid;

    iget-object v3, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mSoundModelId:Ljava/util/UUID;

    invoke-direct {v11, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget-object v12, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mRecognitionCallback:Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;

    new-instance v13, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v13

    move v8, v9

    invoke-direct/range {v3 .. v8}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;-><init>(ZZ[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;[BI)V

    invoke-interface {v10, v11, v12, v13, v0}, Lcom/android/internal/app/ISoundTriggerSession;->startRecognition(Landroid/os/ParcelUuid;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    .local v3, "status":I
    nop

    .line 327
    if-nez v3, :cond_5

    move v1, v2

    :cond_5
    return v1

    .line 324
    .end local v3    # "status":I
    :catch_0
    move-exception v2

    .line 325
    .local v2, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist stopRecognition()Z
    .locals 5

    .line 335
    const/4 v0, 0x0

    .line 337
    .local v0, "status":I
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    new-instance v3, Landroid/os/ParcelUuid;

    iget-object v4, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mSoundModelId:Ljava/util/UUID;

    invoke-direct {v3, v4}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget-object v4, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mRecognitionCallback:Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;

    invoke-interface {v2, v3, v4}, Lcom/android/internal/app/ISoundTriggerSession;->stopRecognition(Landroid/os/ParcelUuid;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 341
    nop

    .line 342
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 339
    :catch_0
    move-exception v2

    .line 340
    .local v2, "e":Landroid/os/RemoteException;
    return v1
.end method
