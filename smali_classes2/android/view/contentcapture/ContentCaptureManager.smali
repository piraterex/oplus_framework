.class public final Landroid/view/contentcapture/ContentCaptureManager;
.super Ljava/lang/Object;
.source "ContentCaptureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;,
        Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate;,
        Landroid/view/contentcapture/ContentCaptureManager$MyRunnable;,
        Landroid/view/contentcapture/ContentCaptureManager$Dumper;,
        Landroid/view/contentcapture/ContentCaptureManager$ContentCaptureClient;,
        Landroid/view/contentcapture/ContentCaptureManager$LoggingLevel;,
        Landroid/view/contentcapture/ContentCaptureManager$DataShareError;
    }
.end annotation


# static fields
.field public static final whitelist DATA_SHARE_ERROR_CONCURRENT_REQUEST:I = 0x2

.field public static final whitelist DATA_SHARE_ERROR_TIMEOUT_INTERRUPTED:I = 0x3

.field public static final whitelist DATA_SHARE_ERROR_UNKNOWN:I = 0x1

.field public static final blacklist DEBUG:Z = false

.field public static final blacklist DEFAULT_IDLE_FLUSHING_FREQUENCY_MS:I = 0x1388

.field public static final blacklist DEFAULT_LOG_HISTORY_SIZE:I = 0xa

.field public static final blacklist DEFAULT_MAX_BUFFER_SIZE:I = 0x1f4

.field public static final blacklist DEFAULT_TEXT_CHANGE_FLUSHING_FREQUENCY_MS:I = 0x3e8

.field public static final blacklist DEVICE_CONFIG_PROPERTY_IDLE_FLUSH_FREQUENCY:Ljava/lang/String; = "idle_flush_frequency"

.field public static final blacklist DEVICE_CONFIG_PROPERTY_IDLE_UNBIND_TIMEOUT:Ljava/lang/String; = "idle_unbind_timeout"

.field public static final blacklist DEVICE_CONFIG_PROPERTY_LOGGING_LEVEL:Ljava/lang/String; = "logging_level"

.field public static final blacklist DEVICE_CONFIG_PROPERTY_LOG_HISTORY_SIZE:Ljava/lang/String; = "log_history_size"

.field public static final blacklist DEVICE_CONFIG_PROPERTY_MAX_BUFFER_SIZE:Ljava/lang/String; = "max_buffer_size"

.field public static final blacklist DEVICE_CONFIG_PROPERTY_SERVICE_EXPLICITLY_ENABLED:Ljava/lang/String; = "service_explicitly_enabled"

.field public static final blacklist DEVICE_CONFIG_PROPERTY_TEXT_CHANGE_FLUSH_FREQUENCY:Ljava/lang/String; = "text_change_flush_frequency"

.field public static final blacklist DUMPABLE_NAME:Ljava/lang/String; = "ContentCaptureManager"

.field public static final blacklist LOGGING_LEVEL_DEBUG:I = 0x1

.field public static final blacklist LOGGING_LEVEL_OFF:I = 0x0

.field public static final blacklist LOGGING_LEVEL_VERBOSE:I = 0x2

.field public static final whitelist NO_SESSION_ID:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist RESULT_CODE_FALSE:I = 0x2

.field public static final blacklist RESULT_CODE_OK:I = 0x0

.field public static final blacklist RESULT_CODE_SECURITY_EXCEPTION:I = -0x1

.field public static final blacklist RESULT_CODE_TRUE:I = 0x1

.field private static final blacklist SYNC_CALLS_TIMEOUT_MS:I = 0x1388

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDataShareAdapterResourceManager:Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;

.field private blacklist mDumpable:Landroid/view/contentcapture/ContentCaptureManager$Dumper;

.field private blacklist mFlags:I

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mMainSession:Landroid/view/contentcapture/MainContentCaptureSession;

.field final blacklist mOptions:Landroid/content/ContentCaptureOptions;

.field private final blacklist mService:Landroid/view/contentcapture/IContentCaptureManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/view/contentcapture/ContentCaptureManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlags(Landroid/view/contentcapture/ContentCaptureManager;)I
    .locals 0

    iget p0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/view/contentcapture/ContentCaptureManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMainSession(Landroid/view/contentcapture/ContentCaptureManager;)Landroid/view/contentcapture/MainContentCaptureSession;
    .locals 0

    iget-object p0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mMainSession:Landroid/view/contentcapture/MainContentCaptureSession;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/view/contentcapture/ContentCaptureManager;)Landroid/view/contentcapture/IContentCaptureManager;
    .locals 0

    iget-object p0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mService:Landroid/view/contentcapture/IContentCaptureManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 215
    const-class v0, Landroid/view/contentcapture/ContentCaptureManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/contentcapture/IContentCaptureManager;Landroid/content/ContentCaptureOptions;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/view/contentcapture/IContentCaptureManager;
    .param p3, "options"    # Landroid/content/ContentCaptureOptions;

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mLock:Ljava/lang/Object;

    .line 410
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mContext:Landroid/content/Context;

    .line 411
    const-string v0, "service cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/contentcapture/IContentCaptureManager;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mService:Landroid/view/contentcapture/IContentCaptureManager;

    .line 412
    const-string v0, "options cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentCaptureOptions;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    .line 414
    iget v0, v0, Landroid/content/ContentCaptureOptions;->loggingLevel:I

    invoke-static {v0}, Landroid/view/contentcapture/ContentCaptureHelper;->setLoggingLevel(I)V

    .line 416
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mHandler:Landroid/os/Handler;

    .line 423
    new-instance v0, Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;-><init>(Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager-IA;)V

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mDataShareAdapterResourceManager:Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;

    .line 424
    return-void
.end method

.method private static blacklist getService()Landroid/view/contentcapture/IContentCaptureManager;
    .locals 1

    .line 857
    const-string v0, "content_capture"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/contentcapture/IContentCaptureManager;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getServiceSettingsComponentName()Landroid/content/ComponentName;
    .locals 8

    .line 524
    nop

    .line 525
    const-string v0, "content_capture"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 526
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 528
    :cond_0
    invoke-static {v0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/contentcapture/IContentCaptureManager;

    move-result-object v2

    .line 529
    .local v2, "service":Landroid/view/contentcapture/IContentCaptureManager;
    new-instance v3, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v4, 0x1388

    invoke-direct {v3, v4}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 531
    .local v3, "resultReceiver":Lcom/android/internal/util/SyncResultReceiver;
    :try_start_0
    invoke-interface {v2, v3}, Landroid/view/contentcapture/IContentCaptureManager;->getServiceSettingsActivity(Lcom/android/internal/os/IResultReceiver;)V

    .line 532
    invoke-virtual {v3}, Lcom/android/internal/util/SyncResultReceiver;->getIntResult()I

    move-result v4

    .line 533
    .local v4, "resultCode":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 536
    invoke-virtual {v3}, Lcom/android/internal/util/SyncResultReceiver;->getParcelableResult()Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    return-object v5

    .line 534
    :cond_1
    new-instance v5, Ljava/lang/SecurityException;

    invoke-virtual {v3}, Lcom/android/internal/util/SyncResultReceiver;->getStringResult()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "service":Landroid/view/contentcapture/IContentCaptureManager;
    .end local v3    # "resultReceiver":Lcom/android/internal/util/SyncResultReceiver;
    throw v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    .end local v4    # "resultCode":I
    .restart local v0    # "binder":Landroid/os/IBinder;
    .restart local v2    # "service":Landroid/view/contentcapture/IContentCaptureManager;
    .restart local v3    # "resultReceiver":Lcom/android/internal/util/SyncResultReceiver;
    :catch_0
    move-exception v4

    .line 540
    .local v4, "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    sget-object v5, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fail to get service settings componentName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    return-object v1

    .line 537
    .end local v4    # "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    :catch_1
    move-exception v1

    .line 538
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public static blacklist resetTemporaryService(I)V
    .locals 3
    .param p0, "userId"    # I

    .line 801
    invoke-static {}, Landroid/view/contentcapture/ContentCaptureManager;->getService()Landroid/view/contentcapture/IContentCaptureManager;

    move-result-object v0

    .line 802
    .local v0, "service":Landroid/view/contentcapture/IContentCaptureManager;
    if-nez v0, :cond_0

    .line 803
    sget-object v1, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    const-string v2, "IContentCaptureManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Landroid/view/contentcapture/IContentCaptureManager;->resetTemporaryService(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 809
    nop

    .line 810
    return-void

    .line 807
    :catch_0
    move-exception v1

    .line 808
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static blacklist setDefaultServiceEnabled(IZ)V
    .locals 3
    .param p0, "userId"    # I
    .param p1, "enabled"    # Z

    .line 845
    invoke-static {}, Landroid/view/contentcapture/ContentCaptureManager;->getService()Landroid/view/contentcapture/IContentCaptureManager;

    move-result-object v0

    .line 846
    .local v0, "service":Landroid/view/contentcapture/IContentCaptureManager;
    if-nez v0, :cond_0

    .line 847
    sget-object v1, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    const-string v2, "IContentCaptureManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Landroid/view/contentcapture/IContentCaptureManager;->setDefaultServiceEnabled(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    nop

    .line 854
    return-void

    .line 851
    :catch_0
    move-exception v1

    .line 852
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static blacklist setTemporaryService(ILjava/lang/String;I)V
    .locals 3
    .param p0, "userId"    # I
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .line 826
    invoke-static {}, Landroid/view/contentcapture/ContentCaptureManager;->getService()Landroid/view/contentcapture/IContentCaptureManager;

    move-result-object v0

    .line 827
    .local v0, "service":Landroid/view/contentcapture/IContentCaptureManager;
    if-nez v0, :cond_0

    .line 828
    sget-object v1, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    const-string v2, "IContentCaptureManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Landroid/view/contentcapture/IContentCaptureManager;->setTemporaryService(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    nop

    .line 835
    return-void

    .line 832
    :catch_0
    move-exception v1

    .line 833
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private blacklist syncRun(Landroid/view/contentcapture/ContentCaptureManager$MyRunnable;)Lcom/android/internal/util/SyncResultReceiver;
    .locals 4
    .param p1, "r"    # Landroid/view/contentcapture/ContentCaptureManager$MyRunnable;

    .line 737
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 739
    .local v0, "resultReceiver":Lcom/android/internal/util/SyncResultReceiver;
    :try_start_0
    invoke-interface {p1, v0}, Landroid/view/contentcapture/ContentCaptureManager$MyRunnable;->run(Lcom/android/internal/util/SyncResultReceiver;)V

    .line 740
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getIntResult()I

    move-result v1

    .line 741
    .local v1, "resultCode":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 748
    .end local v1    # "resultCode":I
    nop

    .line 749
    return-object v0

    .line 742
    .restart local v1    # "resultCode":I
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getStringResult()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "resultReceiver":Lcom/android/internal/util/SyncResultReceiver;
    .end local p0    # "this":Landroid/view/contentcapture/ContentCaptureManager;
    .end local p1    # "r":Landroid/view/contentcapture/ContentCaptureManager$MyRunnable;
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    .end local v1    # "resultCode":I
    .restart local v0    # "resultReceiver":Lcom/android/internal/util/SyncResultReceiver;
    .restart local p0    # "this":Landroid/view/contentcapture/ContentCaptureManager;
    .restart local p1    # "r":Landroid/view/contentcapture/ContentCaptureManager$MyRunnable;
    :catch_0
    move-exception v1

    .line 747
    .local v1, "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Fail to get syn run result from SyncResultReceiver."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 744
    .end local v1    # "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    :catch_1
    move-exception v1

    .line 745
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public blacklist addDumpable(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 754
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mDumpable:Landroid/view/contentcapture/ContentCaptureManager$Dumper;

    if-nez v0, :cond_0

    .line 755
    new-instance v0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/contentcapture/ContentCaptureManager$Dumper;-><init>(Landroid/view/contentcapture/ContentCaptureManager;Landroid/view/contentcapture/ContentCaptureManager$Dumper-IA;)V

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mDumpable:Landroid/view/contentcapture/ContentCaptureManager$Dumper;

    .line 757
    :cond_0
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mDumpable:Landroid/view/contentcapture/ContentCaptureManager$Dumper;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->addDumpable(Landroid/util/Dumpable;)Z

    .line 758
    return-void
.end method

.method public blacklist flush(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 488
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions;->lite:Z

    if-eqz v0, :cond_0

    return-void

    .line 489
    :cond_0
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureManager;->getMainContentCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->flush(I)V

    .line 490
    return-void
.end method

.method public whitelist getContentCaptureConditions()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/view/contentcapture/ContentCaptureCondition;",
            ">;"
        }
    .end annotation

    .line 588
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureManager;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions;->lite:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 590
    :cond_0
    new-instance v0, Landroid/view/contentcapture/ContentCaptureManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/view/contentcapture/ContentCaptureManager$$ExternalSyntheticLambda0;-><init>(Landroid/view/contentcapture/ContentCaptureManager;)V

    invoke-direct {p0, v0}, Landroid/view/contentcapture/ContentCaptureManager;->syncRun(Landroid/view/contentcapture/ContentCaptureManager$MyRunnable;)Lcom/android/internal/util/SyncResultReceiver;

    move-result-object v0

    .line 594
    .local v0, "resultReceiver":Lcom/android/internal/util/SyncResultReceiver;
    nop

    .line 595
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getParcelableListResult()Ljava/util/ArrayList;

    move-result-object v1

    .line 596
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/contentcapture/ContentCaptureCondition;>;"
    invoke-static {v1}, Landroid/view/contentcapture/ContentCaptureHelper;->toSet(Ljava/util/List;)Landroid/util/ArraySet;

    move-result-object v2
    :try_end_0
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 597
    .end local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/contentcapture/ContentCaptureCondition;>;"
    :catch_0
    move-exception v1

    .line 598
    .local v1, "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Fail to get content capture conditions."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist getMainContentCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;
    .locals 5

    .line 438
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 439
    :try_start_0
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mMainSession:Landroid/view/contentcapture/MainContentCaptureSession;

    if-nez v1, :cond_0

    .line 440
    new-instance v1, Landroid/view/contentcapture/MainContentCaptureSession;

    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/view/contentcapture/ContentCaptureManager;->mService:Landroid/view/contentcapture/IContentCaptureManager;

    invoke-direct {v1, v2, p0, v3, v4}, Landroid/view/contentcapture/MainContentCaptureSession;-><init>(Landroid/content/Context;Landroid/view/contentcapture/ContentCaptureManager;Landroid/os/Handler;Landroid/view/contentcapture/IContentCaptureManager;)V

    iput-object v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mMainSession:Landroid/view/contentcapture/MainContentCaptureSession;

    .line 441
    sget-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMainContentCaptureSession(): created "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureManager;->mMainSession:Landroid/view/contentcapture/MainContentCaptureSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_0
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mMainSession:Landroid/view/contentcapture/MainContentCaptureSession;

    monitor-exit v0

    return-object v1

    .line 444
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getServiceComponentName()Landroid/content/ComponentName;
    .locals 4

    .line 500
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureManager;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions;->lite:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 502
    :cond_0
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 504
    .local v0, "resultReceiver":Lcom/android/internal/util/SyncResultReceiver;
    :try_start_0
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mService:Landroid/view/contentcapture/IContentCaptureManager;

    invoke-interface {v1, v0}, Landroid/view/contentcapture/IContentCaptureManager;->getServiceComponentName(Lcom/android/internal/os/IResultReceiver;)V

    .line 505
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getParcelableResult()Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 508
    :catch_0
    move-exception v1

    .line 509
    .local v1, "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Fail to get service componentName."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 506
    .end local v1    # "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    :catch_1
    move-exception v1

    .line 507
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist isContentCaptureEnabled()Z
    .locals 3

    .line 560
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions;->lite:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 563
    :cond_0
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 564
    :try_start_0
    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureManager;->mMainSession:Landroid/view/contentcapture/MainContentCaptureSession;

    .line 565
    .local v2, "mainSession":Landroid/view/contentcapture/MainContentCaptureSession;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/contentcapture/MainContentCaptureSession;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 570
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 565
    .end local v2    # "mainSession":Landroid/view/contentcapture/MainContentCaptureSession;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist isContentCaptureFeatureEnabled()Z
    .locals 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 666
    new-instance v0, Landroid/view/contentcapture/ContentCaptureManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/view/contentcapture/ContentCaptureManager$$ExternalSyntheticLambda1;-><init>(Landroid/view/contentcapture/ContentCaptureManager;)V

    invoke-direct {p0, v0}, Landroid/view/contentcapture/ContentCaptureManager;->syncRun(Landroid/view/contentcapture/ContentCaptureManager$MyRunnable;)Lcom/android/internal/util/SyncResultReceiver;

    move-result-object v0

    .line 670
    .local v0, "resultReceiver":Lcom/android/internal/util/SyncResultReceiver;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getIntResult()I

    move-result v2

    .line 671
    .local v2, "resultCode":I
    packed-switch v2, :pswitch_data_0

    .line 677
    sget-object v3, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    goto :goto_0

    .line 675
    :pswitch_0
    return v1

    .line 673
    :pswitch_1
    const/4 v1, 0x1

    return v1

    .line 677
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "received invalid result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    return v1

    .line 680
    .end local v2    # "resultCode":I
    :catch_0
    move-exception v2

    .line 681
    .local v2, "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    sget-object v3, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to get content capture feature enable status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic blacklist lambda$getContentCaptureConditions$0$android-view-contentcapture-ContentCaptureManager(Lcom/android/internal/util/SyncResultReceiver;)V
    .locals 2
    .param p1, "r"    # Lcom/android/internal/util/SyncResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 591
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mService:Landroid/view/contentcapture/IContentCaptureManager;

    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/view/contentcapture/IContentCaptureManager;->getContentCaptureConditions(Ljava/lang/String;Lcom/android/internal/os/IResultReceiver;)V

    return-void
.end method

.method synthetic blacklist lambda$isContentCaptureFeatureEnabled$1$android-view-contentcapture-ContentCaptureManager(Lcom/android/internal/util/SyncResultReceiver;)V
    .locals 1
    .param p1, "r"    # Lcom/android/internal/util/SyncResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 667
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mService:Landroid/view/contentcapture/IContentCaptureManager;

    invoke-interface {v0, p1}, Landroid/view/contentcapture/IContentCaptureManager;->isContentCaptureFeatureEnabled(Lcom/android/internal/os/IResultReceiver;)V

    return-void
.end method

.method public blacklist onActivityCreated(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "applicationToken"    # Landroid/os/IBinder;
    .param p2, "shareableActivityToken"    # Landroid/os/IBinder;
    .param p3, "activityComponent"    # Landroid/content/ComponentName;

    .line 451
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions;->lite:Z

    if-eqz v0, :cond_0

    return-void

    .line 452
    :cond_0
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 453
    :try_start_0
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureManager;->getMainContentCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v1

    iget v2, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    invoke-virtual {v1, p1, p2, p3, v2}, Landroid/view/contentcapture/MainContentCaptureSession;->start(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    .line 455
    monitor-exit v0

    .line 456
    return-void

    .line 455
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onActivityDestroyed()V
    .locals 1

    .line 475
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions;->lite:Z

    if-eqz v0, :cond_0

    return-void

    .line 476
    :cond_0
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureManager;->getMainContentCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/contentcapture/MainContentCaptureSession;->destroy()V

    .line 477
    return-void
.end method

.method public blacklist onActivityPaused()V
    .locals 1

    .line 468
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions;->lite:Z

    if-eqz v0, :cond_0

    return-void

    .line 469
    :cond_0
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureManager;->getMainContentCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/contentcapture/MainContentCaptureSession;->notifySessionPaused()V

    .line 470
    return-void
.end method

.method public blacklist onActivityResumed()V
    .locals 1

    .line 461
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions;->lite:Z

    if-eqz v0, :cond_0

    return-void

    .line 462
    :cond_0
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureManager;->getMainContentCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/contentcapture/MainContentCaptureSession;->notifySessionResumed()V

    .line 463
    return-void
.end method

.method public whitelist removeData(Landroid/view/contentcapture/DataRemovalRequest;)V
    .locals 2
    .param p1, "request"    # Landroid/view/contentcapture/DataRemovalRequest;

    .line 693
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    :try_start_0
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mService:Landroid/view/contentcapture/IContentCaptureManager;

    invoke-interface {v0, p1}, Landroid/view/contentcapture/IContentCaptureManager;->removeData(Landroid/view/contentcapture/DataRemovalRequest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    nop

    .line 700
    return-void

    .line 697
    :catch_0
    move-exception v0

    .line 698
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setContentCaptureEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 609
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    if-eqz v0, :cond_0

    .line 610
    sget-object v0, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContentCaptureEnabled(): setting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_0
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 615
    if-eqz p1, :cond_1

    .line 616
    :try_start_0
    iget v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    goto :goto_0

    .line 618
    :cond_1
    iget v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    .line 620
    :goto_0
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mMainSession:Landroid/view/contentcapture/MainContentCaptureSession;

    .line 621
    .local v1, "mainSession":Landroid/view/contentcapture/MainContentCaptureSession;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    if-eqz v1, :cond_2

    .line 623
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {v1, v0}, Landroid/view/contentcapture/MainContentCaptureSession;->setDisabled(Z)Z

    .line 625
    :cond_2
    return-void

    .line 621
    .end local v1    # "mainSession":Landroid/view/contentcapture/MainContentCaptureSession;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist shareData(Landroid/view/contentcapture/DataShareRequest;Ljava/util/concurrent/Executor;Landroid/view/contentcapture/DataShareWriteAdapter;)V
    .locals 4
    .param p1, "request"    # Landroid/view/contentcapture/DataShareRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "dataShareWriteAdapter"    # Landroid/view/contentcapture/DataShareWriteAdapter;

    .line 717
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    :try_start_0
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mService:Landroid/view/contentcapture/IContentCaptureManager;

    new-instance v1, Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate;

    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureManager;->mDataShareAdapterResourceManager:Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;

    const/4 v3, 0x0

    invoke-direct {v1, p2, p3, v2, v3}, Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate;-><init>(Ljava/util/concurrent/Executor;Landroid/view/contentcapture/DataShareWriteAdapter;Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate-IA;)V

    invoke-interface {v0, p1, v1}, Landroid/view/contentcapture/IContentCaptureManager;->shareData(Landroid/view/contentcapture/DataShareRequest;Landroid/view/contentcapture/IDataShareWriteAdapter;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    nop

    .line 728
    return-void

    .line 725
    :catch_0
    move-exception v0

    .line 726
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist updateWindowAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 633
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    if-eqz v0, :cond_0

    .line 634
    sget-object v0, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateWindowAttributes(): window flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 640
    .local v0, "flagSecureEnabled":Z
    :goto_0
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 641
    if-eqz v0, :cond_2

    .line 642
    :try_start_0
    iget v2, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    goto :goto_1

    .line 644
    :cond_2
    iget v2, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    .line 646
    :goto_1
    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureManager;->mMainSession:Landroid/view/contentcapture/MainContentCaptureSession;

    .line 647
    .local v2, "mainSession":Landroid/view/contentcapture/MainContentCaptureSession;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    if-eqz v2, :cond_3

    .line 649
    invoke-virtual {v2, v0}, Landroid/view/contentcapture/MainContentCaptureSession;->setDisabled(Z)Z

    .line 651
    :cond_3
    return-void

    .line 647
    .end local v2    # "mainSession":Landroid/view/contentcapture/MainContentCaptureSession;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
