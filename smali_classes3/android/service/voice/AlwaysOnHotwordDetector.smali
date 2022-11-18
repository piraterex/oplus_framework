.class public Landroid/service/voice/AlwaysOnHotwordDetector;
.super Landroid/service/voice/AbstractHotwordDetector;
.source "AlwaysOnHotwordDetector.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;,
        Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;,
        Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;,
        Landroid/service/voice/AlwaysOnHotwordDetector$Callback;,
        Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;,
        Landroid/service/voice/AlwaysOnHotwordDetector$ModelParamRange;,
        Landroid/service/voice/AlwaysOnHotwordDetector$ModelParams;,
        Landroid/service/voice/AlwaysOnHotwordDetector$AudioCapabilities;,
        Landroid/service/voice/AlwaysOnHotwordDetector$RecognitionModes;,
        Landroid/service/voice/AlwaysOnHotwordDetector$RecognitionFlags;
    }
.end annotation


# static fields
.field public static final whitelist AUDIO_CAPABILITY_ECHO_CANCELLATION:I = 0x1

.field public static final whitelist AUDIO_CAPABILITY_NOISE_SUPPRESSION:I = 0x2

.field static final greylist-max-o DBG:Z = false

.field public static final whitelist MODEL_PARAM_THRESHOLD_FACTOR:I = 0x0

.field private static final greylist-max-o MSG_AVAILABILITY_CHANGED:I = 0x1

.field private static final greylist-max-o MSG_DETECTION_ERROR:I = 0x3

.field private static final greylist-max-o MSG_DETECTION_PAUSE:I = 0x4

.field private static final greylist-max-o MSG_DETECTION_RESUME:I = 0x5

.field private static final greylist-max-o MSG_HOTWORD_DETECTED:I = 0x2

.field private static final blacklist MSG_HOTWORD_REJECTED:I = 0x6

.field private static final blacklist MSG_HOTWORD_STATUS_REPORTED:I = 0x7

.field private static final blacklist MSG_PROCESS_RESTARTED:I = 0x8

.field public static final whitelist RECOGNITION_FLAG_ALLOW_MULTIPLE_TRIGGERS:I = 0x2

.field public static final whitelist RECOGNITION_FLAG_CAPTURE_TRIGGER_AUDIO:I = 0x1

.field public static final whitelist RECOGNITION_FLAG_ENABLE_AUDIO_ECHO_CANCELLATION:I = 0x4

.field public static final whitelist RECOGNITION_FLAG_ENABLE_AUDIO_NOISE_SUPPRESSION:I = 0x8

.field public static final greylist-max-o RECOGNITION_FLAG_NONE:I = 0x0

.field public static final whitelist RECOGNITION_FLAG_RUN_IN_BATTERY_SAVER:I = 0x10

.field public static final whitelist RECOGNITION_MODE_USER_IDENTIFICATION:I = 0x2

.field public static final whitelist RECOGNITION_MODE_VOICE_TRIGGER:I = 0x1

.field public static final whitelist STATE_ERROR:I = 0x3

.field public static final whitelist STATE_HARDWARE_UNAVAILABLE:I = -0x2

.field private static final greylist-max-o STATE_INVALID:I = -0x3

.field public static final whitelist STATE_KEYPHRASE_ENROLLED:I = 0x2

.field public static final whitelist STATE_KEYPHRASE_UNENROLLED:I = 0x1

.field public static final whitelist STATE_KEYPHRASE_UNSUPPORTED:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o STATE_NOT_READY:I = 0x0

.field private static final greylist-max-o STATUS_ERROR:I = -0x80000000

.field private static final greylist-max-o STATUS_OK:I = 0x0

.field static final greylist-max-o TAG:Ljava/lang/String; = "AlwaysOnHotwordDetector"


# instance fields
.field private greylist-max-o mAvailability:I

.field private final blacklist mBinder:Landroid/os/IBinder;

.field private final greylist-max-o mExternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private final greylist-max-o mInternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

.field private final greylist-max-o mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

.field private greylist-max-o mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

.field private final greylist-max-o mLocale:Ljava/util/Locale;

.field private final greylist-max-o mModelManagementService:Lcom/android/internal/app/IVoiceInteractionManagerService;

.field private final blacklist mSoundTriggerSession:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

.field private final blacklist mSupportHotwordDetectionService:Z

.field private final blacklist mTargetSdkVersion:I

.field private final greylist-max-o mText:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAvailability(Landroid/service/voice/AlwaysOnHotwordDetector;)I
    .locals 0

    iget p0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExternalCallback(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
    .locals 0

    iget-object p0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mExternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeyphraseMetadata(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/hardware/soundtrigger/KeyphraseMetadata;
    .locals 0

    iget-object p0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocale(Landroid/service/voice/AlwaysOnHotwordDetector;)Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmModelManagementService(Landroid/service/voice/AlwaysOnHotwordDetector;)Lcom/android/internal/app/IVoiceInteractionManagerService;
    .locals 0

    iget-object p0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mModelManagementService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSoundTriggerSession(Landroid/service/voice/AlwaysOnHotwordDetector;)Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;
    .locals 0

    iget-object p0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSoundTriggerSession:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTargetSdkVersion(Landroid/service/voice/AlwaysOnHotwordDetector;)I
    .locals 0

    iget p0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mTargetSdkVersion:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmText(Landroid/service/voice/AlwaysOnHotwordDetector;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mText:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmKeyphraseMetadata(Landroid/service/voice/AlwaysOnHotwordDetector;Landroid/hardware/soundtrigger/KeyphraseMetadata;)V
    .locals 0

    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateAndNotifyStateChangedLocked(Landroid/service/voice/AlwaysOnHotwordDetector;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/voice/AlwaysOnHotwordDetector;->updateAndNotifyStateChangedLocked(I)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/util/Locale;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;Lcom/android/internal/app/IVoiceInteractionManagerService;IZLandroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "callback"    # Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
    .param p4, "keyphraseEnrollmentInfo"    # Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;
    .param p5, "modelManagementService"    # Lcom/android/internal/app/IVoiceInteractionManagerService;
    .param p6, "targetSdkVersion"    # I
    .param p7, "supportHotwordDetectionService"    # Z
    .param p8, "options"    # Landroid/os/PersistableBundle;
    .param p9, "sharedMemory"    # Landroid/os/SharedMemory;

    .line 793
    nop

    .line 794
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p7, :cond_0

    move v2, v0

    goto :goto_0

    .line 795
    :cond_0
    move v2, v1

    .line 793
    :goto_0
    invoke-direct {p0, p5, p3, v2}, Landroid/service/voice/AbstractHotwordDetector;-><init>(Lcom/android/internal/app/IVoiceInteractionManagerService;Landroid/service/voice/HotwordDetector$Callback;I)V

    .line 286
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mBinder:Landroid/os/IBinder;

    .line 290
    iput v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    .line 797
    new-instance v3, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;

    invoke-direct {v3, p0}, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;-><init>(Landroid/service/voice/AlwaysOnHotwordDetector;)V

    iput-object v3, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mHandler:Landroid/os/Handler;

    .line 798
    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mText:Ljava/lang/String;

    .line 799
    iput-object p2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    .line 800
    iput-object p4, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    .line 801
    iput-object p3, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mExternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    .line 802
    new-instance v4, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

    invoke-direct {v4, v3}, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;-><init>(Landroid/os/Handler;)V

    iput-object v4, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mInternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

    .line 803
    iput-object p5, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mModelManagementService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 804
    iput p6, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mTargetSdkVersion:I

    .line 805
    iput-boolean p7, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSupportHotwordDetectionService:Z

    .line 806
    if-eqz p7, :cond_1

    .line 807
    invoke-virtual {p0, p8, p9, v4, v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->updateStateLocked(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;I)V

    .line 811
    :cond_1
    :try_start_0
    new-instance v0, Landroid/media/permission/Identity;

    invoke-direct {v0}, Landroid/media/permission/Identity;-><init>()V

    .line 812
    .local v0, "identity":Landroid/media/permission/Identity;
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 813
    invoke-interface {p5, v0, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->createSoundTriggerSessionAsOriginator(Landroid/media/permission/Identity;Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    move-result-object v2

    iput-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSoundTriggerSession:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    .end local v0    # "identity":Landroid/media/permission/Identity;
    nop

    .line 818
    new-instance v0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;

    invoke-direct {v0, p0}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;-><init>(Landroid/service/voice/AlwaysOnHotwordDetector;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 819
    return-void

    .line 815
    :catch_0
    move-exception v0

    .line 816
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private greylist-max-o getManageIntentLocked(I)Landroid/content/Intent;
    .locals 3
    .param p1, "action"    # I

    .line 1192
    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 1198
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1200
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Managing the given keyphrase is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1204
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mText:Ljava/lang/String;

    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->getManageKeyphraseIntent(ILjava/lang/String;Ljava/util/Locale;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 1193
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getManageIntent called on an invalid detector or error state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getParameterLocked(I)I
    .locals 2
    .param p1, "modelParam"    # I

    .line 1338
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSoundTriggerSession:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    invoke-virtual {v1}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->getParameter(II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1339
    :catch_0
    move-exception v0

    .line 1340
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist getSupportedAudioCapabilitiesLocked()I
    .locals 2

    .line 931
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSoundTriggerSession:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    .line 932
    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->getDspModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object v0

    .line 933
    .local v0, "properties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    if-eqz v0, :cond_0

    .line 934
    invoke-virtual {v0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getAudioCapabilities()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 937
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 938
    .end local v0    # "properties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :catch_0
    move-exception v0

    .line 939
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private greylist-max-o getSupportedRecognitionModesLocked()I
    .locals 2

    .line 896
    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 902
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    if-eqz v0, :cond_0

    .line 907
    invoke-virtual {v0}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getRecognitionModeFlags()I

    move-result v0

    return v0

    .line 903
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Getting supported recognition modes for the keyphrase is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 897
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getSupportedRecognitionModes called on an invalid detector or error state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o notifyStateChangedLocked()V
    .locals 2

    .line 1370
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1371
    .local v0, "message":Landroid/os/Message;
    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1372
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1373
    return-void
.end method

.method private blacklist queryParameterLocked(I)Landroid/service/voice/AlwaysOnHotwordDetector$ModelParamRange;
    .locals 2
    .param p1, "modelParam"    # I

    .line 1347
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSoundTriggerSession:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    .line 1348
    invoke-virtual {v1}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->queryParameter(II)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    move-result-object v0

    .line 1350
    .local v0, "modelParamRange":Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    if-nez v0, :cond_0

    .line 1351
    const/4 v1, 0x0

    return-object v1

    .line 1354
    :cond_0
    new-instance v1, Landroid/service/voice/AlwaysOnHotwordDetector$ModelParamRange;

    invoke-direct {v1, v0}, Landroid/service/voice/AlwaysOnHotwordDetector$ModelParamRange;-><init>(Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1355
    .end local v0    # "modelParamRange":Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    :catch_0
    move-exception v0

    .line 1356
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist setParameterLocked(II)I
    .locals 4
    .param p1, "modelParam"    # I
    .param p2, "value"    # I

    .line 1323
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSoundTriggerSession:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    invoke-virtual {v1}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->setParameter(III)I

    move-result v0

    .line 1326
    .local v0, "code":I
    if-eqz v0, :cond_0

    .line 1327
    const-string v1, "AlwaysOnHotwordDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setParameter failed with error code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1330
    :cond_0
    return v0

    .line 1331
    .end local v0    # "code":I
    :catch_0
    move-exception v0

    .line 1332
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private greylist-max-o startRecognitionLocked(I)I
    .locals 14
    .param p1, "recognitionFlags"    # I

    .line 1271
    const/4 v0, 0x1

    new-array v7, v0, [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 1273
    .local v7, "recognitionExtra":[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    new-instance v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    invoke-virtual {v2}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getId()I

    move-result v2

    iget-object v3, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    .line 1274
    invoke-virtual {v3}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getRecognitionModeFlags()I

    move-result v3

    const/4 v4, 0x0

    new-array v5, v4, [Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;-><init>(III[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;)V

    aput-object v1, v7, v4

    .line 1275
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v4

    .line 1277
    .local v2, "captureTriggerAudio":Z
    :goto_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v4

    .line 1279
    .local v3, "allowMultipleTriggers":Z
    :goto_1
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_2

    move v13, v0

    goto :goto_2

    :cond_2
    move v13, v4

    .line 1281
    .local v13, "runInBatterySaver":Z
    :goto_2
    const/4 v0, 0x0

    .line 1282
    .local v0, "audioCapabilities":I
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_3

    .line 1283
    or-int/lit8 v0, v0, 0x1

    .line 1285
    :cond_3
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_4

    .line 1286
    or-int/lit8 v0, v0, 0x2

    .line 1291
    :cond_4
    :try_start_0
    iget-object v8, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSoundTriggerSession:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    .line 1292
    invoke-virtual {v1}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getId()I

    move-result v9

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mInternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

    new-instance v12, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    const/4 v5, 0x0

    move-object v1, v12

    move-object v4, v7

    move v6, v0

    invoke-direct/range {v1 .. v6}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;-><init>(ZZ[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;[BI)V

    .line 1291
    invoke-interface/range {v8 .. v13}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->startRecognition(ILjava/lang/String;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1298
    .local v1, "code":I
    nop

    .line 1300
    if-eqz v1, :cond_5

    .line 1301
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startRecognition() failed with error code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AlwaysOnHotwordDetector"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    :cond_5
    return v1

    .line 1296
    .end local v1    # "code":I
    :catch_0
    move-exception v1

    .line 1297
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method private greylist-max-o stopRecognitionLocked()I
    .locals 3

    .line 1309
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSoundTriggerSession:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    invoke-virtual {v1}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getId()I

    move-result v1

    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mInternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->stopRecognition(ILcom/android/internal/app/IHotwordRecognitionStatusCallback;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1313
    .local v0, "code":I
    nop

    .line 1315
    if-eqz v0, :cond_0

    .line 1316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopRecognition() failed with error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AlwaysOnHotwordDetector"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    :cond_0
    return v0

    .line 1311
    .end local v0    # "code":I
    :catch_0
    move-exception v0

    .line 1312
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist updateAndNotifyStateChangedLocked(I)V
    .locals 0
    .param p1, "availability"    # I

    .line 1365
    iput p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    .line 1366
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->notifyStateChangedLocked()V

    .line 1367
    return-void
.end method


# virtual methods
.method public whitelist createEnrollIntent()Landroid/content/Intent;
    .locals 2

    .line 1142
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1143
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector;->getManageIntentLocked(I)Landroid/content/Intent;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1144
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist createReEnrollIntent()Landroid/content/Intent;
    .locals 2

    .line 1186
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1187
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector;->getManageIntentLocked(I)Landroid/content/Intent;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1188
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist createUnEnrollIntent()Landroid/content/Intent;
    .locals 2

    .line 1164
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1165
    const/4 v1, 0x2

    :try_start_0
    invoke-direct {p0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector;->getManageIntentLocked(I)Landroid/content/Intent;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1166
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist destroy()V
    .locals 3

    .line 1213
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1214
    :try_start_0
    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1215
    invoke-virtual {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->stopRecognition()Z

    .line 1218
    :cond_0
    const/4 v1, -0x3

    iput v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    .line 1219
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->notifyStateChangedLocked()V

    .line 1221
    iget-boolean v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSupportHotwordDetectionService:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 1223
    :try_start_1
    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mModelManagementService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->shutdownHotwordDetectionService()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1226
    goto :goto_0

    .line 1224
    :catch_0
    move-exception v1

    .line 1225
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    throw v2

    .line 1228
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1229
    invoke-super {p0}, Landroid/service/voice/AbstractHotwordDetector;->destroy()V

    .line 1230
    return-void

    .line 1228
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public greylist-max-o dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 1560
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1561
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Text="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mText:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1562
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Locale="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1563
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Availability="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1564
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "KeyphraseMetadata="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1565
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "EnrollmentInfo="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1566
    monitor-exit v0

    .line 1567
    return-void

    .line 1566
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getParameter(I)I
    .locals 3
    .param p1, "modelParam"    # I

    .line 1084
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1085
    :try_start_0
    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 1090
    invoke-direct {p0, p1}, Landroid/service/voice/AlwaysOnHotwordDetector;->getParameterLocked(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1086
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "getParameter called on an invalid detector or error state"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .end local p1    # "modelParam":I
    throw v1

    .line 1091
    .restart local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .restart local p1    # "modelParam":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getSupportedAudioCapabilities()I
    .locals 2

    .line 924
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 925
    :try_start_0
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->getSupportedAudioCapabilitiesLocked()I

    move-result v1

    monitor-exit v0

    return v1

    .line 926
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getSupportedRecognitionModes()I
    .locals 2

    .line 890
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 891
    :try_start_0
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->getSupportedRecognitionModesLocked()I

    move-result v1

    monitor-exit v0

    return v1

    .line 892
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method greylist-max-o onSoundModelsChanged()V
    .locals 5

    .line 1238
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1239
    :try_start_0
    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x3

    if-eq v1, v2, :cond_3

    const/4 v2, -0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 1252
    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 1254
    :try_start_1
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->stopRecognitionLocked()I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1262
    goto :goto_0

    .line 1255
    :catch_0
    move-exception v1

    .line 1256
    .local v1, "e":Ljava/lang/SecurityException;
    :try_start_2
    const-string v3, "AlwaysOnHotwordDetector"

    const-string v4, "Failed to Stop the recognition"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1257
    iget v3, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mTargetSdkVersion:I

    const/16 v4, 0x1e

    if-le v3, v4, :cond_1

    .line 1260
    invoke-direct {p0, v2}, Landroid/service/voice/AlwaysOnHotwordDetector;->updateAndNotifyStateChangedLocked(I)V

    .line 1261
    monitor-exit v0

    return-void

    .line 1258
    :cond_1
    nop

    .end local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    throw v1

    .line 1266
    .end local v1    # "e":Ljava/lang/SecurityException;
    .restart local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    :cond_2
    :goto_0
    new-instance v1, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;

    invoke-direct {v1, p0}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;-><init>(Landroid/service/voice/AlwaysOnHotwordDetector;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1267
    monitor-exit v0

    .line 1268
    return-void

    .line 1242
    :cond_3
    :goto_1
    const-string v1, "AlwaysOnHotwordDetector"

    const-string v2, "Received onSoundModelsChanged for an unsupported keyphrase/config or in the error state"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    monitor-exit v0

    return-void

    .line 1267
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist queryParameter(I)Landroid/service/voice/AlwaysOnHotwordDetector$ModelParamRange;
    .locals 3
    .param p1, "modelParam"    # I

    .line 1114
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1115
    :try_start_0
    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 1120
    invoke-direct {p0, p1}, Landroid/service/voice/AlwaysOnHotwordDetector;->queryParameterLocked(I)Landroid/service/voice/AlwaysOnHotwordDetector$ModelParamRange;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1116
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "queryParameter called on an invalid detector or error state"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .end local p1    # "modelParam":I
    throw v1

    .line 1121
    .restart local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .restart local p1    # "modelParam":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist setParameter(II)I
    .locals 3
    .param p1, "modelParam"    # I
    .param p2, "value"    # I

    .line 1052
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1053
    :try_start_0
    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 1058
    invoke-direct {p0, p1, p2}, Landroid/service/voice/AlwaysOnHotwordDetector;->setParameterLocked(II)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1054
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "setParameter called on an invalid detector or error state"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .end local p1    # "modelParam":I
    .end local p2    # "value":I
    throw v1

    .line 1059
    .restart local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .restart local p1    # "modelParam":I
    .restart local p2    # "value":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist startRecognition()Z
    .locals 1

    .line 987
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->startRecognition(I)Z

    move-result v0

    return v0
.end method

.method public whitelist startRecognition(I)Z
    .locals 3
    .param p1, "recognitionFlags"    # I

    .line 963
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 964
    :try_start_0
    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 970
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 975
    invoke-direct {p0, p1}, Landroid/service/voice/AlwaysOnHotwordDetector;->startRecognitionLocked(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 971
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Recognition for the given keyphrase is not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .end local p1    # "recognitionFlags":I
    throw v1

    .line 965
    .restart local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .restart local p1    # "recognitionFlags":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "startRecognition called on an invalid detector or error state"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .end local p1    # "recognitionFlags":I
    throw v1

    .line 976
    .restart local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .restart local p1    # "recognitionFlags":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic whitelist startRecognition(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;)Z
    .locals 0

    .line 76
    invoke-super {p0, p1, p2, p3}, Landroid/service/voice/AbstractHotwordDetector;->startRecognition(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;)Z

    move-result p1

    return p1
.end method

.method public whitelist stopRecognition()Z
    .locals 3

    .line 1010
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1011
    :try_start_0
    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 1017
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1022
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->stopRecognitionLocked()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 1018
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Recognition for the given keyphrase is not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    throw v1

    .line 1012
    .restart local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "stopRecognition called on an invalid detector or error state"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    throw v1

    .line 1023
    .restart local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist triggerHardwareRecognitionEventForTest(IIZIIIZLandroid/media/AudioFormat;[BLjava/util/List;)V
    .locals 16
    .param p1, "status"    # I
    .param p2, "soundModelHandle"    # I
    .param p3, "captureAvailable"    # Z
    .param p4, "captureSession"    # I
    .param p5, "captureDelayMs"    # I
    .param p6, "capturePreambleMs"    # I
    .param p7, "triggerInData"    # Z
    .param p8, "captureFormat"    # Landroid/media/AudioFormat;
    .param p9, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZIIIZ",
            "Landroid/media/AudioFormat;",
            "[B",
            "Ljava/util/List<",
            "Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;",
            ">;)V"
        }
    .end annotation

    .line 856
    .local p10, "keyphraseRecognitionExtras":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;>;"
    move-object/from16 v1, p0

    const-string v0, "AlwaysOnHotwordDetector"

    const-string/jumbo v2, "triggerHardwareRecognitionEventForTest()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    iget-object v2, v1, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 858
    :try_start_0
    iget v0, v1, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, -0x3

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    .line 863
    :try_start_1
    iget-object v0, v1, Landroid/service/voice/AlwaysOnHotwordDetector;->mModelManagementService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    new-instance v14, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 866
    move-object/from16 v15, p10

    :try_start_2
    invoke-interface {v15, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    move-object v3, v14

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-direct/range {v3 .. v13}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;-><init>(IIZIIIZLandroid/media/AudioFormat;[B[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;)V

    iget-object v3, v1, Landroid/service/voice/AlwaysOnHotwordDetector;->mInternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

    .line 863
    invoke-interface {v0, v14, v3}, Lcom/android/internal/app/IVoiceInteractionManagerService;->triggerHardwareRecognitionEventForTest(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 871
    nop

    .line 872
    :try_start_3
    monitor-exit v2

    .line 873
    return-void

    .line 869
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v15, p10

    .line 870
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .end local p1    # "status":I
    .end local p2    # "soundModelHandle":I
    .end local p3    # "captureAvailable":Z
    .end local p4    # "captureSession":I
    .end local p5    # "captureDelayMs":I
    .end local p6    # "capturePreambleMs":I
    .end local p7    # "triggerInData":Z
    .end local p8    # "captureFormat":Landroid/media/AudioFormat;
    .end local p9    # "data":[B
    .end local p10    # "keyphraseRecognitionExtras":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;>;"
    throw v3

    .line 858
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .restart local p1    # "status":I
    .restart local p2    # "soundModelHandle":I
    .restart local p3    # "captureAvailable":Z
    .restart local p4    # "captureSession":I
    .restart local p5    # "captureDelayMs":I
    .restart local p6    # "capturePreambleMs":I
    .restart local p7    # "triggerInData":Z
    .restart local p8    # "captureFormat":Landroid/media/AudioFormat;
    .restart local p9    # "data":[B
    .restart local p10    # "keyphraseRecognitionExtras":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;>;"
    :cond_0
    move-object/from16 v15, p10

    .line 859
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "triggerHardwareRecognitionEventForTest called on an invalid detector or error state"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .end local p1    # "status":I
    .end local p2    # "soundModelHandle":I
    .end local p3    # "captureAvailable":Z
    .end local p4    # "captureSession":I
    .end local p5    # "captureDelayMs":I
    .end local p6    # "capturePreambleMs":I
    .end local p7    # "triggerInData":Z
    .end local p8    # "captureFormat":Landroid/media/AudioFormat;
    .end local p9    # "data":[B
    .end local p10    # "keyphraseRecognitionExtras":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;>;"
    throw v0

    .line 872
    .restart local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .restart local p1    # "status":I
    .restart local p2    # "soundModelHandle":I
    .restart local p3    # "captureAvailable":Z
    .restart local p4    # "captureSession":I
    .restart local p5    # "captureDelayMs":I
    .restart local p6    # "capturePreambleMs":I
    .restart local p7    # "triggerInData":Z
    .restart local p8    # "captureFormat":Landroid/media/AudioFormat;
    .restart local p9    # "data":[B
    .restart local p10    # "keyphraseRecognitionExtras":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;>;"
    :catchall_0
    move-exception v0

    move-object/from16 v15, p10

    :goto_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public final whitelist updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
    .locals 3
    .param p1, "options"    # Landroid/os/PersistableBundle;
    .param p2, "sharedMemory"    # Landroid/os/SharedMemory;

    .line 831
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 832
    :try_start_0
    iget-boolean v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSupportHotwordDetectionService:Z

    if-eqz v1, :cond_1

    .line 836
    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 840
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 842
    invoke-super {p0, p1, p2}, Landroid/service/voice/AbstractHotwordDetector;->updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V

    .line 843
    return-void

    .line 837
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "updateState called on an invalid detector or error state"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .end local p1    # "options":Landroid/os/PersistableBundle;
    .end local p2    # "sharedMemory":Landroid/os/SharedMemory;
    throw v1

    .line 833
    .restart local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .restart local p1    # "options":Landroid/os/PersistableBundle;
    .restart local p2    # "sharedMemory":Landroid/os/SharedMemory;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "updateState called, but it doesn\'t support hotword detection service"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .end local p1    # "options":Landroid/os/PersistableBundle;
    .end local p2    # "sharedMemory":Landroid/os/SharedMemory;
    throw v1

    .line 840
    .restart local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .restart local p1    # "options":Landroid/os/PersistableBundle;
    .restart local p2    # "sharedMemory":Landroid/os/SharedMemory;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
