.class public Landroid/speech/SpeechRecognizer;
.super Ljava/lang/Object;
.source "SpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/SpeechRecognizer$InternalSupportCallback;,
        Landroid/speech/SpeechRecognizer$InternalRecognitionListener;,
        Landroid/speech/SpeechRecognizer$CheckRecognitionSupportArgs;,
        Landroid/speech/SpeechRecognizer$RecognitionError;
    }
.end annotation


# static fields
.field public static final whitelist CONFIDENCE_SCORES:Ljava/lang/String; = "confidence_scores"

.field private static final greylist-max-o DBG:Z = false

.field public static final whitelist ERROR_AUDIO:I = 0x3

.field public static final whitelist ERROR_CANNOT_CHECK_SUPPORT:I = 0xe

.field public static final whitelist ERROR_CLIENT:I = 0x5

.field public static final whitelist ERROR_INSUFFICIENT_PERMISSIONS:I = 0x9

.field public static final whitelist ERROR_LANGUAGE_NOT_SUPPORTED:I = 0xc

.field public static final whitelist ERROR_LANGUAGE_UNAVAILABLE:I = 0xd

.field public static final whitelist ERROR_NETWORK:I = 0x2

.field public static final whitelist ERROR_NETWORK_TIMEOUT:I = 0x1

.field public static final whitelist ERROR_NO_MATCH:I = 0x7

.field public static final whitelist ERROR_RECOGNIZER_BUSY:I = 0x8

.field public static final whitelist ERROR_SERVER:I = 0x4

.field public static final whitelist ERROR_SERVER_DISCONNECTED:I = 0xb

.field public static final whitelist ERROR_SPEECH_TIMEOUT:I = 0x6

.field public static final whitelist ERROR_TOO_MANY_REQUESTS:I = 0xa

.field private static final greylist-max-o MSG_CANCEL:I = 0x3

.field private static final greylist-max-o MSG_CHANGE_LISTENER:I = 0x4

.field private static final blacklist MSG_CHECK_RECOGNITION_SUPPORT:I = 0x6

.field private static final blacklist MSG_SET_TEMPORARY_ON_DEVICE_COMPONENT:I = 0x5

.field private static final greylist-max-o MSG_START:I = 0x1

.field private static final greylist-max-o MSG_STOP:I = 0x2

.field private static final blacklist MSG_TRIGGER_MODEL_DOWNLOAD:I = 0x7

.field public static final whitelist RESULTS_RECOGNITION:Ljava/lang/String; = "results_recognition"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SpeechRecognizer"


# instance fields
.field private final blacklist mClientToken:Landroid/os/IBinder;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private final blacklist mListener:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

.field private blacklist mManagerService:Landroid/speech/IRecognitionServiceManager;

.field private final blacklist mOnDevice:Z

.field private final greylist-max-o mPendingTasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mService:Landroid/speech/IRecognitionService;

.field private final greylist-max-o mServiceComponent:Landroid/content/ComponentName;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/speech/SpeechRecognizer;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/speech/SpeechRecognizer;)Landroid/speech/SpeechRecognizer$InternalRecognitionListener;
    .locals 0

    iget-object p0, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingTasks(Landroid/speech/SpeechRecognizer;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Landroid/speech/SpeechRecognizer;->mPendingTasks:Ljava/util/Queue;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmService(Landroid/speech/SpeechRecognizer;Landroid/speech/IRecognitionService;)V
    .locals 0

    iput-object p1, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleCancelMessage(Landroid/speech/SpeechRecognizer;)V
    .locals 0

    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->handleCancelMessage()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleChangeListener(Landroid/speech/SpeechRecognizer;Landroid/speech/RecognitionListener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/speech/SpeechRecognizer;->handleChangeListener(Landroid/speech/RecognitionListener;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleCheckRecognitionSupport(Landroid/speech/SpeechRecognizer;Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/speech/SpeechRecognizer;->handleCheckRecognitionSupport(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleSetTemporaryComponent(Landroid/speech/SpeechRecognizer;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/speech/SpeechRecognizer;->handleSetTemporaryComponent(Landroid/content/ComponentName;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleStartListening(Landroid/speech/SpeechRecognizer;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/speech/SpeechRecognizer;->handleStartListening(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleStopMessage(Landroid/speech/SpeechRecognizer;)V
    .locals 0

    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->handleStopMessage()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleTriggerModelDownload(Landroid/speech/SpeechRecognizer;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/speech/SpeechRecognizer;->handleTriggerModelDownload(Landroid/content/Intent;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceComponent"    # Landroid/content/ComponentName;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v0, Landroid/speech/SpeechRecognizer$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/speech/SpeechRecognizer$1;-><init>(Landroid/speech/SpeechRecognizer;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    .line 225
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Landroid/speech/SpeechRecognizer;->mPendingTasks:Ljava/util/Queue;

    .line 228
    new-instance v0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;-><init>(Landroid/speech/SpeechRecognizer$InternalRecognitionListener-IA;)V

    iput-object v0, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    .line 230
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/speech/SpeechRecognizer;->mClientToken:Landroid/os/IBinder;

    .line 237
    iput-object p1, p0, Landroid/speech/SpeechRecognizer;->mContext:Landroid/content/Context;

    .line 238
    iput-object p2, p0, Landroid/speech/SpeechRecognizer;->mServiceComponent:Landroid/content/ComponentName;

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/speech/SpeechRecognizer;->mOnDevice:Z

    .line 240
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onDevice"    # Z

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v0, Landroid/speech/SpeechRecognizer$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/speech/SpeechRecognizer$1;-><init>(Landroid/speech/SpeechRecognizer;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    .line 225
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Landroid/speech/SpeechRecognizer;->mPendingTasks:Ljava/util/Queue;

    .line 228
    new-instance v0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;-><init>(Landroid/speech/SpeechRecognizer$InternalRecognitionListener-IA;)V

    iput-object v0, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    .line 230
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/speech/SpeechRecognizer;->mClientToken:Landroid/os/IBinder;

    .line 247
    iput-object p1, p0, Landroid/speech/SpeechRecognizer;->mContext:Landroid/content/Context;

    .line 248
    iput-object v1, p0, Landroid/speech/SpeechRecognizer;->mServiceComponent:Landroid/content/ComponentName;

    .line 249
    iput-boolean p2, p0, Landroid/speech/SpeechRecognizer;->mOnDevice:Z

    .line 250
    return-void
.end method

.method private static greylist-max-o checkIsCalledFromMainThread()V
    .locals 2

    .line 557
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 561
    return-void

    .line 558
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SpeechRecognizer should be used only from the application\'s main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o checkOpenConnection()Z
    .locals 2

    .line 660
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    if-eqz v0, :cond_0

    .line 661
    const/4 v0, 0x1

    return v0

    .line 663
    :cond_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->onError(I)V

    .line 664
    const-string v0, "SpeechRecognizer"

    const-string/jumbo v1, "not connected to the recognition service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist connectToSystemService()V
    .locals 5

    .line 691
    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->maybeInitializeManagerService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 692
    return-void

    .line 695
    :cond_0
    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->getSpeechRecognizerComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 697
    .local v0, "componentName":Landroid/content/ComponentName;
    iget-boolean v1, p0, Landroid/speech/SpeechRecognizer;->mOnDevice:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 698
    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->onError(I)V

    .line 699
    return-void

    .line 703
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/speech/SpeechRecognizer;->mManagerService:Landroid/speech/IRecognitionServiceManager;

    iget-object v3, p0, Landroid/speech/SpeechRecognizer;->mClientToken:Landroid/os/IBinder;

    new-instance v4, Landroid/speech/SpeechRecognizer$2;

    invoke-direct {v4, p0}, Landroid/speech/SpeechRecognizer$2;-><init>(Landroid/speech/SpeechRecognizer;)V

    invoke-interface {v2, v0, v3, v1, v4}, Landroid/speech/IRecognitionServiceManager;->createSession(Landroid/content/ComponentName;Landroid/os/IBinder;ZLandroid/speech/IRecognitionServiceManagerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    goto :goto_0

    .line 726
    :catch_0
    move-exception v1

    .line 727
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 729
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static whitelist createOnDeviceSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 365
    invoke-static {p0}, Landroid/speech/SpeechRecognizer;->isOnDeviceRecognitionAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    invoke-static {p0}, Landroid/speech/SpeechRecognizer;->lenientlyCreateOnDeviceSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    return-object v0

    .line 366
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "On-device recognition is not available"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist createOnDeviceTestingSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 382
    invoke-static {p0}, Landroid/speech/SpeechRecognizer;->lenientlyCreateOnDeviceSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 305
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createSpeechRecognizer(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/speech/SpeechRecognizer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceComponent"    # Landroid/content/ComponentName;

    .line 343
    if-eqz p0, :cond_0

    .line 346
    invoke-static {}, Landroid/speech/SpeechRecognizer;->checkIsCalledFromMainThread()V

    .line 347
    new-instance v0, Landroid/speech/SpeechRecognizer;

    invoke-direct {v0, p0, p1}, Landroid/speech/SpeechRecognizer;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    return-object v0

    .line 344
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getSpeechRecognizerComponentName()Landroid/content/ComponentName;
    .locals 4

    .line 767
    iget-boolean v0, p0, Landroid/speech/SpeechRecognizer;->mOnDevice:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 768
    return-object v1

    .line 771
    :cond_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mServiceComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 772
    return-object v0

    .line 775
    :cond_1
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "voice_recognition_service"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 778
    .local v0, "serviceComponent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 779
    const-string v2, "SpeechRecognizer"

    const-string/jumbo v3, "no selected voice recognition service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    iget-object v2, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->onError(I)V

    .line 781
    return-object v1

    .line 784
    :cond_2
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o handleCancelMessage()V
    .locals 3

    .line 601
    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->checkOpenConnection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 602
    return-void

    .line 605
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/speech/IRecognitionService;->cancel(Landroid/speech/IRecognitionListener;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    goto :goto_0

    .line 607
    :catch_0
    move-exception v0

    .line 608
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SpeechRecognizer"

    const-string v2, "cancel() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 609
    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->onError(I)V

    .line 611
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private greylist-max-o handleChangeListener(Landroid/speech/RecognitionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/speech/RecognitionListener;

    .line 671
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    invoke-static {v0, p1}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->-$$Nest$fputmInternalListener(Landroid/speech/SpeechRecognizer$InternalRecognitionListener;Landroid/speech/RecognitionListener;)V

    .line 672
    return-void
.end method

.method private blacklist handleCheckRecognitionSupport(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;)V
    .locals 3
    .param p1, "recognizerIntent"    # Landroid/content/Intent;
    .param p2, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p3, "recognitionSupportCallback"    # Landroid/speech/RecognitionSupportCallback;

    .line 633
    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->maybeInitializeManagerService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 634
    return-void

    .line 637
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    new-instance v1, Landroid/speech/SpeechRecognizer$InternalSupportCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p3, v2}, Landroid/speech/SpeechRecognizer$InternalSupportCallback;-><init>(Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;Landroid/speech/SpeechRecognizer$InternalSupportCallback-IA;)V

    invoke-interface {v0, p1, v1}, Landroid/speech/IRecognitionService;->checkRecognitionSupport(Landroid/content/Intent;Landroid/speech/IRecognitionSupportCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    goto :goto_0

    .line 641
    :catch_0
    move-exception v0

    .line 642
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SpeechRecognizer"

    const-string v2, "checkRecognitionSupport() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 643
    new-instance v1, Landroid/speech/SpeechRecognizer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p3}, Landroid/speech/SpeechRecognizer$$ExternalSyntheticLambda0;-><init>(Landroid/speech/RecognitionSupportCallback;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 645
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private blacklist handleSetTemporaryComponent(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 618
    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->maybeInitializeManagerService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 619
    return-void

    .line 623
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mManagerService:Landroid/speech/IRecognitionServiceManager;

    invoke-interface {v0, p1}, Landroid/speech/IRecognitionServiceManager;->setTemporaryComponent(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    goto :goto_0

    .line 624
    :catch_0
    move-exception v0

    .line 625
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 627
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private greylist-max-o handleStartListening(Landroid/content/Intent;)V
    .locals 3
    .param p1, "recognizerIntent"    # Landroid/content/Intent;

    .line 573
    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->checkOpenConnection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 574
    return-void

    .line 577
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    iget-object v2, p0, Landroid/speech/SpeechRecognizer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Landroid/speech/IRecognitionService;->startListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    goto :goto_0

    .line 579
    :catch_0
    move-exception v0

    .line 580
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SpeechRecognizer"

    const-string/jumbo v2, "startListening() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 581
    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->onError(I)V

    .line 583
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private greylist-max-o handleStopMessage()V
    .locals 3

    .line 587
    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->checkOpenConnection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 588
    return-void

    .line 591
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    invoke-interface {v0, v1}, Landroid/speech/IRecognitionService;->stopListening(Landroid/speech/IRecognitionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    goto :goto_0

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SpeechRecognizer"

    const-string/jumbo v2, "stopListening() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 595
    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->onError(I)V

    .line 597
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private blacklist handleTriggerModelDownload(Landroid/content/Intent;)V
    .locals 3
    .param p1, "recognizerIntent"    # Landroid/content/Intent;

    .line 648
    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->maybeInitializeManagerService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 649
    return-void

    .line 652
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    invoke-interface {v0, p1}, Landroid/speech/IRecognitionService;->triggerModelDownload(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    goto :goto_0

    .line 653
    :catch_0
    move-exception v0

    .line 654
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SpeechRecognizer"

    const-string v2, "downloadModel() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 655
    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->onError(I)V

    .line 657
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static whitelist isOnDeviceRecognitionAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 277
    nop

    .line 279
    const v0, 0x104024f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 280
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static whitelist isRecognitionAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 262
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.RecognitionService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 264
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method static synthetic blacklist lambda$handleCheckRecognitionSupport$0(Landroid/speech/RecognitionSupportCallback;)V
    .locals 1
    .param p0, "recognitionSupportCallback"    # Landroid/speech/RecognitionSupportCallback;

    .line 643
    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/speech/RecognitionSupportCallback;->onError(I)V

    return-void
.end method

.method private static blacklist lenientlyCreateOnDeviceSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 389
    if-eqz p0, :cond_0

    .line 392
    invoke-static {}, Landroid/speech/SpeechRecognizer;->checkIsCalledFromMainThread()V

    .line 393
    new-instance v0, Landroid/speech/SpeechRecognizer;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/speech/SpeechRecognizer;-><init>(Landroid/content/Context;Z)V

    return-object v0

    .line 390
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized blacklist maybeInitializeManagerService()Z
    .locals 2

    monitor-enter p0

    .line 735
    :try_start_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mManagerService:Landroid/speech/IRecognitionServiceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 736
    monitor-exit p0

    return v1

    .line 739
    :cond_0
    :try_start_1
    const-string/jumbo v0, "speech_recognition"

    .line 740
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 739
    invoke-static {v0}, Landroid/speech/IRecognitionServiceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/IRecognitionServiceManager;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/SpeechRecognizer;->mManagerService:Landroid/speech/IRecognitionServiceManager;

    .line 745
    if-nez v0, :cond_2

    .line 746
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    if-eqz v0, :cond_1

    .line 747
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->onError(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 749
    .end local p0    # "this":Landroid/speech/SpeechRecognizer;
    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 751
    :cond_2
    monitor-exit p0

    return v1

    .line 734
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private greylist-max-o putMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 564
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    if-nez v0, :cond_0

    .line 565
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 567
    :cond_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 569
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist cancel()V
    .locals 2

    .line 481
    invoke-static {}, Landroid/speech/SpeechRecognizer;->checkIsCalledFromMainThread()V

    .line 482
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/SpeechRecognizer;->putMessage(Landroid/os/Message;)V

    .line 483
    return-void
.end method

.method public whitelist checkRecognitionSupport(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;)V
    .locals 4
    .param p1, "recognizerIntent"    # Landroid/content/Intent;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "supportListener"    # Landroid/speech/RecognitionSupportCallback;

    .line 498
    const-string/jumbo v0, "intent must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 499
    const-string/jumbo v0, "listener must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 508
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    if-nez v0, :cond_0

    .line 510
    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->connectToSystemService()V

    .line 512
    :cond_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    new-instance v2, Landroid/speech/SpeechRecognizer$CheckRecognitionSupportArgs;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, p3, v3}, Landroid/speech/SpeechRecognizer$CheckRecognitionSupportArgs;-><init>(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;Landroid/speech/SpeechRecognizer$CheckRecognitionSupportArgs-IA;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/SpeechRecognizer;->putMessage(Landroid/os/Message;)V

    .line 514
    return-void
.end method

.method public whitelist destroy()V
    .locals 3

    .line 676
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    if-eqz v0, :cond_0

    .line 678
    :try_start_0
    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/speech/IRecognitionService;->cancel(Landroid/speech/IRecognitionListener;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    goto :goto_0

    .line 679
    :catch_0
    move-exception v0

    .line 684
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    .line 685
    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 686
    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    invoke-static {v1, v0}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->-$$Nest$fputmInternalListener(Landroid/speech/SpeechRecognizer$InternalRecognitionListener;Landroid/speech/RecognitionListener;)V

    .line 687
    return-void
.end method

.method public whitelist setRecognitionListener(Landroid/speech/RecognitionListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/speech/RecognitionListener;

    .line 406
    invoke-static {}, Landroid/speech/SpeechRecognizer;->checkIsCalledFromMainThread()V

    .line 407
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/SpeechRecognizer;->putMessage(Landroid/os/Message;)V

    .line 408
    return-void
.end method

.method public blacklist setTemporaryOnDeviceRecognizer(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 552
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    .line 553
    const/4 v1, 0x5

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 552
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 554
    return-void
.end method

.method public whitelist startListening(Landroid/content/Intent;)V
    .locals 2
    .param p1, "recognizerIntent"    # Landroid/content/Intent;

    .line 421
    const/16 v0, 0x48

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 422
    if-eqz p1, :cond_1

    .line 425
    invoke-static {}, Landroid/speech/SpeechRecognizer;->checkIsCalledFromMainThread()V

    .line 434
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    if-nez v0, :cond_0

    .line 436
    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->connectToSystemService()V

    .line 438
    :cond_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/SpeechRecognizer;->putMessage(Landroid/os/Message;)V

    .line 439
    return-void

    .line 423
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "intent must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist stopListening()V
    .locals 2

    .line 462
    invoke-static {}, Landroid/speech/SpeechRecognizer;->checkIsCalledFromMainThread()V

    .line 471
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/SpeechRecognizer;->putMessage(Landroid/os/Message;)V

    .line 472
    return-void
.end method

.method public whitelist triggerModelDownload(Landroid/content/Intent;)V
    .locals 2
    .param p1, "recognizerIntent"    # Landroid/content/Intent;

    .line 525
    const-string/jumbo v0, "intent must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 532
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    if-nez v0, :cond_0

    .line 534
    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->connectToSystemService()V

    .line 536
    :cond_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/SpeechRecognizer;->putMessage(Landroid/os/Message;)V

    .line 537
    return-void
.end method
