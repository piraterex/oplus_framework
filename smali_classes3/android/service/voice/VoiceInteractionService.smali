.class public Landroid/service/voice/VoiceInteractionService;
.super Landroid/app/Service;
.source "VoiceInteractionService.java"


# static fields
.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.voice.VoiceInteractionService"

.field public static final whitelist SERVICE_META_DATA:Ljava/lang/String; = "android.voice_interaction"

.field static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private greylist-max-o mHotwordDetector:Landroid/service/voice/AlwaysOnHotwordDetector;

.field greylist-max-o mInterface:Landroid/service/voice/IVoiceInteractionService;

.field private greylist-max-o mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private blacklist mSoftwareHotwordDetector:Landroid/service/voice/SoftwareHotwordDetector;

.field greylist-max-o mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;


# direct methods
.method public static synthetic blacklist $r8$lambda$zL_HgFmQBP15x9WUk0yiMBPhowA(Landroid/service/voice/VoiceInteractionService;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/voice/VoiceInteractionService;->onShutdownInternal()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monHandleVoiceActionCheck(Landroid/service/voice/VoiceInteractionService;Ljava/util/List;Lcom/android/internal/app/IVoiceActionCheckCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/voice/VoiceInteractionService;->onHandleVoiceActionCheck(Ljava/util/List;Lcom/android/internal/app/IVoiceActionCheckCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monShutdownInternal(Landroid/service/voice/VoiceInteractionService;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/voice/VoiceInteractionService;->onShutdownInternal()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monSoundModelsChangedInternal(Landroid/service/voice/VoiceInteractionService;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/voice/VoiceInteractionService;->onSoundModelsChangedInternal()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 72
    const-class v0, Landroid/service/voice/VoiceInteractionService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/voice/VoiceInteractionService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 92
    new-instance v0, Landroid/service/voice/VoiceInteractionService$1;

    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionService$1;-><init>(Landroid/service/voice/VoiceInteractionService;)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mInterface:Landroid/service/voice/IVoiceInteractionService;

    .line 132
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    .line 260
    new-instance v0, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda1;-><init>(Landroid/service/voice/VoiceInteractionService;)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method private blacklist createAlwaysOnHotwordDetectorInternal(Ljava/lang/String;Ljava/util/Locale;ZLandroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;
    .locals 13
    .param p1, "keyphrase"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "supportHotwordDetectionService"    # Z
    .param p4, "options"    # Landroid/os/PersistableBundle;
    .param p5, "sharedMemory"    # Landroid/os/SharedMemory;
    .param p6, "callback"    # Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    .line 378
    move-object v1, p0

    iget-object v0, v1, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_0

    .line 381
    iget-object v2, v1, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 383
    :try_start_0
    invoke-direct {p0}, Landroid/service/voice/VoiceInteractionService;->safelyShutdownAllHotwordDetectors()V

    .line 384
    new-instance v0, Landroid/service/voice/AlwaysOnHotwordDetector;

    iget-object v7, v1, Landroid/service/voice/VoiceInteractionService;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    iget-object v8, v1, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 386
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v9, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p6

    move/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-direct/range {v3 .. v12}, Landroid/service/voice/AlwaysOnHotwordDetector;-><init>(Ljava/lang/String;Ljava/util/Locale;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;Lcom/android/internal/app/IVoiceInteractionManagerService;IZLandroid/os/PersistableBundle;Landroid/os/SharedMemory;)V

    iput-object v0, v1, Landroid/service/voice/VoiceInteractionService;->mHotwordDetector:Landroid/service/voice/AlwaysOnHotwordDetector;

    .line 388
    new-instance v3, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda2;-><init>(Landroid/service/voice/VoiceInteractionService;)V

    invoke-virtual {v0, v3}, Landroid/service/voice/AlwaysOnHotwordDetector;->registerOnDestroyListener(Ljava/util/function/Consumer;)V

    .line 390
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    iget-object v0, v1, Landroid/service/voice/VoiceInteractionService;->mHotwordDetector:Landroid/service/voice/AlwaysOnHotwordDetector;

    return-object v0

    .line 390
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 379
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Not available until onReady() is called"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist isActiveService(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/ComponentName;

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "voice_interaction_service"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "cur":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 163
    .local v2, "curComp":Landroid/content/ComponentName;
    if-nez v2, :cond_1

    .line 164
    return v1

    .line 166
    :cond_1
    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 160
    .end local v2    # "curComp":Landroid/content/ComponentName;
    :cond_2
    :goto_0
    return v1
.end method

.method private blacklist onDspHotwordDetectorDestroyed(Landroid/service/voice/AlwaysOnHotwordDetector;)V
    .locals 2
    .param p1, "detector"    # Landroid/service/voice/AlwaysOnHotwordDetector;

    .line 511
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 512
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mHotwordDetector:Landroid/service/voice/AlwaysOnHotwordDetector;

    .line 513
    monitor-exit v0

    .line 514
    return-void

    .line 513
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist onHandleVoiceActionCheck(Ljava/util/List;Lcom/android/internal/app/IVoiceActionCheckCallback;)V
    .locals 3
    .param p2, "callback"    # Lcom/android/internal/app/IVoiceActionCheckCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/IVoiceActionCheckCallback;",
            ")V"
        }
    .end annotation

    .line 296
    .local p1, "voiceActions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 298
    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 299
    .local v0, "voiceActionsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Landroid/service/voice/VoiceInteractionService;->onGetSupportedVoiceActions(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 300
    .local v1, "resultSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2, v2}, Lcom/android/internal/app/IVoiceActionCheckCallback;->onComplete(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    .end local v0    # "voiceActionsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "resultSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0

    .line 301
    :catch_0
    move-exception v0

    .line 304
    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist onMicrophoneHotwordDetectorDestroyed(Landroid/service/voice/SoftwareHotwordDetector;)V
    .locals 2
    .param p1, "detector"    # Landroid/service/voice/SoftwareHotwordDetector;

    .line 517
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 518
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mSoftwareHotwordDetector:Landroid/service/voice/SoftwareHotwordDetector;

    .line 519
    monitor-exit v0

    .line 520
    return-void

    .line 519
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o onShutdownInternal()V
    .locals 0

    .line 268
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionService;->onShutdown()V

    .line 274
    invoke-direct {p0}, Landroid/service/voice/VoiceInteractionService;->safelyShutdownAllHotwordDetectors()V

    .line 275
    return-void
.end method

.method private greylist-max-o onSoundModelsChangedInternal()V
    .locals 1

    .line 286
    monitor-enter p0

    .line 287
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mHotwordDetector:Landroid/service/voice/AlwaysOnHotwordDetector;

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->onSoundModelsChanged()V

    .line 291
    :cond_0
    monitor-exit p0

    .line 292
    return-void

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private blacklist safelyShutdownAllHotwordDetectors()V
    .locals 4

    .line 491
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 492
    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mHotwordDetector:Landroid/service/voice/AlwaysOnHotwordDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 494
    :try_start_1
    invoke-virtual {v1}, Landroid/service/voice/AlwaysOnHotwordDetector;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 497
    goto :goto_0

    .line 495
    :catch_0
    move-exception v1

    .line 496
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_2
    sget-object v2, Landroid/service/voice/VoiceInteractionService;->TAG:Ljava/lang/String;

    const-string v3, "exception destroying AlwaysOnHotwordDetector"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 500
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mSoftwareHotwordDetector:Landroid/service/voice/SoftwareHotwordDetector;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    .line 502
    :try_start_3
    invoke-virtual {v1}, Landroid/service/voice/SoftwareHotwordDetector;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 505
    goto :goto_1

    .line 503
    :catch_1
    move-exception v1

    .line 504
    .restart local v1    # "ex":Ljava/lang/Exception;
    :try_start_4
    sget-object v2, Landroid/service/voice/VoiceInteractionService;->TAG:Ljava/lang/String;

    const-string v3, "exception destroying SoftwareHotwordDetector"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 507
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_1
    monitor-exit v0

    .line 508
    return-void

    .line 507
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method


# virtual methods
.method public final whitelist createAlwaysOnHotwordDetector(Ljava/lang/String;Ljava/util/Locale;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;
    .locals 7
    .param p1, "keyphrase"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "options"    # Landroid/os/PersistableBundle;
    .param p4, "sharedMemory"    # Landroid/os/SharedMemory;
    .param p5, "callback"    # Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 366
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/service/voice/VoiceInteractionService;->createAlwaysOnHotwordDetectorInternal(Ljava/lang/String;Ljava/util/Locale;ZLandroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist createAlwaysOnHotwordDetector(Ljava/lang/String;Ljava/util/Locale;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;
    .locals 7
    .param p1, "keyphrase"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "callback"    # Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 325
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/service/voice/VoiceInteractionService;->createAlwaysOnHotwordDetectorInternal(Ljava/lang/String;Ljava/util/Locale;ZLandroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist createHotwordDetector(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/service/voice/HotwordDetector$Callback;)Landroid/service/voice/HotwordDetector;
    .locals 8
    .param p1, "options"    # Landroid/os/PersistableBundle;
    .param p2, "sharedMemory"    # Landroid/os/SharedMemory;
    .param p3, "callback"    # Landroid/service/voice/HotwordDetector$Callback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 433
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 438
    :try_start_0
    invoke-direct {p0}, Landroid/service/voice/VoiceInteractionService;->safelyShutdownAllHotwordDetectors()V

    .line 439
    new-instance v7, Landroid/service/voice/SoftwareHotwordDetector;

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    const/4 v3, 0x0

    move-object v1, v7

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/service/voice/SoftwareHotwordDetector;-><init>(Lcom/android/internal/app/IVoiceInteractionManagerService;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/service/voice/HotwordDetector$Callback;)V

    iput-object v7, p0, Landroid/service/voice/VoiceInteractionService;->mSoftwareHotwordDetector:Landroid/service/voice/SoftwareHotwordDetector;

    .line 442
    new-instance v1, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda3;-><init>(Landroid/service/voice/VoiceInteractionService;)V

    invoke-virtual {v7, v1}, Landroid/service/voice/SoftwareHotwordDetector;->registerOnDestroyListener(Ljava/util/function/Consumer;)V

    .line 445
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSoftwareHotwordDetector:Landroid/service/voice/SoftwareHotwordDetector;

    return-object v0

    .line 445
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 434
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not available until onReady() is called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist createKeyphraseModelManager()Landroid/media/voice/KeyphraseModelManager;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 458
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 462
    :try_start_0
    new-instance v1, Landroid/media/voice/KeyphraseModelManager;

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-direct {v1, v2}, Landroid/media/voice/KeyphraseModelManager;-><init>(Lcom/android/internal/app/IVoiceInteractionManagerService;)V

    monitor-exit v0

    return-object v1

    .line 463
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 459
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not available until onReady() is called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 541
    const-string v0, "VOICE INTERACTION"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 543
    :try_start_0
    const-string v1, "  AlwaysOnHotwordDetector"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 544
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mHotwordDetector:Landroid/service/voice/AlwaysOnHotwordDetector;

    if-nez v1, :cond_0

    .line 545
    const-string v1, "    NULL"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 547
    :cond_0
    const-string v2, "    "

    invoke-virtual {v1, v2, p2}, Landroid/service/voice/AlwaysOnHotwordDetector;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 550
    :goto_0
    const-string v1, "  MicrophoneHotwordDetector"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 551
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mSoftwareHotwordDetector:Landroid/service/voice/SoftwareHotwordDetector;

    if-nez v1, :cond_1

    .line 552
    const-string v1, "    NULL"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 554
    :cond_1
    const-string v2, "    "

    invoke-virtual {v1, v2, p2}, Landroid/service/voice/SoftwareHotwordDetector;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 556
    :goto_1
    monitor-exit v0

    .line 557
    return-void

    .line 556
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getDisabledShowContext()I
    .locals 2

    .line 188
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService;->getDisabledShowContext()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method protected final greylist-max-o getKeyphraseEnrollmentInfo()Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;
    .locals 1

    .line 472
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    return-object v0
.end method

.method public final greylist isKeyphraseAndLocaleSupportedForHotword(Ljava/lang/String;Ljava/util/Locale;)Z
    .locals 2
    .param p1, "keyphrase"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 484
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 485
    return v1

    .line 487
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->getKeyphraseMetadata(Ljava/lang/String;Ljava/util/Locale;)Landroid/hardware/soundtrigger/KeyphraseMetadata;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method synthetic blacklist lambda$createAlwaysOnHotwordDetectorInternal$1$android-service-voice-VoiceInteractionService(Landroid/service/voice/AbstractHotwordDetector;)V
    .locals 1
    .param p1, "detector"    # Landroid/service/voice/AbstractHotwordDetector;

    .line 388
    move-object v0, p1

    check-cast v0, Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-direct {p0, v0}, Landroid/service/voice/VoiceInteractionService;->onDspHotwordDetectorDestroyed(Landroid/service/voice/AlwaysOnHotwordDetector;)V

    return-void
.end method

.method synthetic blacklist lambda$createHotwordDetector$2$android-service-voice-VoiceInteractionService(Landroid/service/voice/AbstractHotwordDetector;)V
    .locals 1
    .param p1, "detector"    # Landroid/service/voice/AbstractHotwordDetector;

    .line 443
    move-object v0, p1

    check-cast v0, Landroid/service/voice/SoftwareHotwordDetector;

    invoke-direct {p0, v0}, Landroid/service/voice/VoiceInteractionService;->onMicrophoneHotwordDetectorDestroyed(Landroid/service/voice/SoftwareHotwordDetector;)V

    return-void
.end method

.method synthetic blacklist lambda$new$0$android-service-voice-VoiceInteractionService()V
    .locals 2

    .line 261
    sget-object v0, Landroid/service/voice/VoiceInteractionService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "system service binder died shutting down"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 264
    return-void
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 236
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.service.voice.VoiceInteractionService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mInterface:Landroid/service/voice/IVoiceInteractionService;

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 239
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onGetSupportedVoiceActions(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 231
    .local p1, "voiceActions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onLaunchVoiceAssistFromKeyguard()V
    .locals 0

    .line 150
    return-void
.end method

.method public whitelist onReady()V
    .locals 3

    .line 249
    nop

    .line 250
    const-string/jumbo v0, "voiceinteraction"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 249
    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionManagerService;

    move-result-object v0

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 251
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/service/voice/VoiceInteractionService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unable to link to death with system service"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    .line 258
    return-void
.end method

.method public whitelist onShutdown()V
    .locals 0

    .line 283
    return-void
.end method

.method public whitelist setDisabledShowContext(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 178
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->setDisabledShowContext(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 181
    :goto_0
    return-void
.end method

.method public final whitelist setUiHints(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "hints"    # Landroid/os/Bundle;

    .line 528
    if-eqz p1, :cond_0

    .line 533
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->setUiHints(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    nop

    .line 537
    return-void

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 529
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Hints must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist showSession(Landroid/os/Bundle;I)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "flags"    # I

    .line 207
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_0

    .line 211
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->showSession(Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 214
    :goto_0
    return-void

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not available until onReady() is called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
