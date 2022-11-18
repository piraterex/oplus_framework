.class public Lcom/android/internal/util/LatencyTracker;
.super Ljava/lang/Object;
.source "LatencyTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/LatencyTracker$Session;,
        Lcom/android/internal/util/LatencyTracker$Action;
    }
.end annotation


# static fields
.field private static final blacklist ACTIONS_ALL:[I

.field public static final blacklist ACTION_CHECK_CREDENTIAL:I = 0x3

.field public static final blacklist ACTION_CHECK_CREDENTIAL_UNLOCKED:I = 0x4

.field public static final blacklist ACTION_EXPAND_PANEL:I = 0x0

.field public static final blacklist ACTION_FACE_WAKE_AND_UNLOCK:I = 0x7

.field public static final blacklist ACTION_FINGERPRINT_WAKE_AND_UNLOCK:I = 0x2

.field public static final blacklist ACTION_LOAD_SHARE_SHEET:I = 0x10

.field public static final blacklist ACTION_LOCKSCREEN_UNLOCK:I = 0xb

.field public static final blacklist ACTION_ROTATE_SCREEN:I = 0x6

.field public static final blacklist ACTION_ROTATE_SCREEN_CAMERA_CHECK:I = 0xa

.field public static final blacklist ACTION_ROTATE_SCREEN_SENSOR:I = 0x9

.field public static final blacklist ACTION_SHOW_BACK_ARROW:I = 0xf

.field public static final blacklist ACTION_START_RECENTS_ANIMATION:I = 0x8

.field public static final blacklist ACTION_SWITCH_DISPLAY_UNFOLD:I = 0xd

.field public static final blacklist ACTION_TOGGLE_RECENTS:I = 0x1

.field public static final blacklist ACTION_TURN_ON_SCREEN:I = 0x5

.field public static final blacklist ACTION_UDFPS_ILLUMINATE:I = 0xe

.field public static final blacklist ACTION_USER_SWITCH:I = 0xc

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DEFAULT_ENABLED:Z

.field private static final blacklist DEFAULT_SAMPLING_INTERVAL:I = 0x5

.field public static final blacklist SETTINGS_ENABLED_KEY:Ljava/lang/String; = "enabled"

.field private static final blacklist SETTINGS_SAMPLING_INTERVAL_KEY:Ljava/lang/String; = "sampling_interval"

.field private static final blacklist STATSD_ACTION:[I

.field private static final blacklist TAG:Ljava/lang/String; = "LatencyTracker"

.field private static blacklist sLatencyTracker:Lcom/android/internal/util/LatencyTracker;


# instance fields
.field private blacklist mEnabled:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mSamplingInterval:I

.field private final blacklist mSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/util/LatencyTracker$Session;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTraceThresholdPerAction:[I


# direct methods
.method public static synthetic blacklist $r8$lambda$DRnZbV-_f67FVGSzCjRFLX6dnUQ(Lcom/android/internal/util/LatencyTracker;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/util/LatencyTracker;->updateProperties(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSTATSD_ACTION()[I
    .locals 1

    sget-object v0, Lcom/android/internal/util/LatencyTracker;->STATSD_ACTION:[I

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetTraceNameOfAction(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/util/LatencyTracker;->getTraceNameOfAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 55
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/internal/util/LatencyTracker;->DEFAULT_ENABLED:Z

    .line 145
    const/16 v0, 0x11

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/internal/util/LatencyTracker;->ACTIONS_ALL:[I

    .line 189
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/util/LatencyTracker;->STATSD_ACTION:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xb
        0xa
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
    .end array-data
.end method

.method private constructor blacklist <init>()V
    .locals 3

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    .line 212
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mSessions:Landroid/util/SparseArray;

    .line 214
    sget-object v0, Lcom/android/internal/util/LatencyTracker;->ACTIONS_ALL:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mTraceThresholdPerAction:[I

    .line 233
    sget-boolean v0, Lcom/android/internal/util/LatencyTracker;->DEFAULT_ENABLED:Z

    iput-boolean v0, p0, Lcom/android/internal/util/LatencyTracker;->mEnabled:Z

    .line 234
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/util/LatencyTracker;->mSamplingInterval:I

    .line 237
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/util/LatencyTracker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 239
    nop

    .line 240
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/util/LatencyTracker;)V

    .line 239
    const-string/jumbo v2, "latency_tracker"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 241
    return-void
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 222
    sget-object v0, Lcom/android/internal/util/LatencyTracker;->sLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    if-nez v0, :cond_1

    .line 223
    const-class v0, Lcom/android/internal/util/LatencyTracker;

    monitor-enter v0

    .line 224
    :try_start_0
    sget-object v1, Lcom/android/internal/util/LatencyTracker;->sLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    if-nez v1, :cond_0

    .line 225
    new-instance v1, Lcom/android/internal/util/LatencyTracker;

    invoke-direct {v1}, Lcom/android/internal/util/LatencyTracker;-><init>()V

    sput-object v1, Lcom/android/internal/util/LatencyTracker;->sLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 227
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 229
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/util/LatencyTracker;->sLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    return-object v0
.end method

.method public static blacklist getNameOfAction(I)Ljava/lang/String;
    .locals 2
    .param p0, "atomsProtoAction"    # I

    .line 263
    packed-switch p0, :pswitch_data_0

    .line 301
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid action"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :pswitch_0
    const-string v0, "ACTION_LOAD_SHARE_SHEET"

    return-object v0

    .line 297
    :pswitch_1
    const-string v0, "ACTION_SHOW_BACK_ARROW"

    return-object v0

    .line 295
    :pswitch_2
    const-string v0, "ACTION_UDFPS_ILLUMINATE"

    return-object v0

    .line 293
    :pswitch_3
    const-string v0, "ACTION_SWITCH_DISPLAY_UNFOLD"

    return-object v0

    .line 291
    :pswitch_4
    const-string v0, "ACTION_USER_SWITCH"

    return-object v0

    .line 289
    :pswitch_5
    const-string v0, "ACTION_LOCKSCREEN_UNLOCK"

    return-object v0

    .line 287
    :pswitch_6
    const-string v0, "ACTION_ROTATE_SCREEN_SENSOR"

    return-object v0

    .line 285
    :pswitch_7
    const-string v0, "ACTION_ROTATE_SCREEN_CAMERA_CHECK"

    return-object v0

    .line 283
    :pswitch_8
    const-string v0, "ACTION_START_RECENTS_ANIMATION"

    return-object v0

    .line 281
    :pswitch_9
    const-string v0, "ACTION_FACE_WAKE_AND_UNLOCK"

    return-object v0

    .line 279
    :pswitch_a
    const-string v0, "ACTION_ROTATE_SCREEN"

    return-object v0

    .line 277
    :pswitch_b
    const-string v0, "ACTION_TURN_ON_SCREEN"

    return-object v0

    .line 275
    :pswitch_c
    const-string v0, "ACTION_CHECK_CREDENTIAL_UNLOCKED"

    return-object v0

    .line 273
    :pswitch_d
    const-string v0, "ACTION_CHECK_CREDENTIAL"

    return-object v0

    .line 271
    :pswitch_e
    const-string v0, "ACTION_FINGERPRINT_WAKE_AND_UNLOCK"

    return-object v0

    .line 269
    :pswitch_f
    const-string v0, "ACTION_TOGGLE_RECENTS"

    return-object v0

    .line 267
    :pswitch_10
    const-string v0, "ACTION_EXPAND_PANEL"

    return-object v0

    .line 265
    :pswitch_11
    const-string v0, "UNKNOWN"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist getTraceNameOfAction(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "action"    # I
    .param p1, "tag"    # Ljava/lang/String;

    .line 306
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ">"

    const-string v2, "L<"

    if-eqz v0, :cond_0

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/internal/util/LatencyTracker;->STATSD_ACTION:[I

    aget v2, v2, p0

    invoke-static {v2}, Lcom/android/internal/util/LatencyTracker;->getNameOfAction(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 309
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/internal/util/LatencyTracker;->STATSD_ACTION:[I

    aget v2, v2, p0

    invoke-static {v2}, Lcom/android/internal/util/LatencyTracker;->getNameOfAction(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "::"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getTraceTriggerNameForAction(I)Ljava/lang/String;
    .locals 2
    .param p0, "action"    # I

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.android.telemetry.latency-tracker-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/util/LatencyTracker;->STATSD_ACTION:[I

    aget v1, v1, p0

    invoke-static {v1}, Lcom/android/internal/util/LatencyTracker;->getNameOfAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist isEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .line 318
    invoke-static {p0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/LatencyTracker;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist logActionDeprecated(IIZ)V
    .locals 4
    .param p0, "action"    # I
    .param p1, "duration"    # I
    .param p2, "writeToStatsLog"    # Z

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/internal/util/LatencyTracker;->STATSD_ACTION:[I

    aget v2, v1, p0

    invoke-static {v2}, Lcom/android/internal/util/LatencyTracker;->getNameOfAction(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " latency="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LatencyTracker"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const v2, 0x8ce6

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 439
    if-eqz p2, :cond_0

    .line 440
    const/16 v0, 0x132

    aget v1, v1, p0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 443
    :cond_0
    return-void
.end method

.method private blacklist updateProperties(Landroid/provider/DeviceConfig$Properties;)V
    .locals 8
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 244
    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_0
    const-string/jumbo v1, "sampling_interval"

    const/4 v2, 0x5

    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/util/LatencyTracker;->mSamplingInterval:I

    .line 247
    const-string v1, "enabled"

    sget-boolean v2, Lcom/android/internal/util/LatencyTracker;->DEFAULT_ENABLED:Z

    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/util/LatencyTracker;->mEnabled:Z

    .line 248
    sget-object v1, Lcom/android/internal/util/LatencyTracker;->ACTIONS_ALL:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 249
    .local v4, "action":I
    iget-object v5, p0, Lcom/android/internal/util/LatencyTracker;->mTraceThresholdPerAction:[I

    sget-object v6, Lcom/android/internal/util/LatencyTracker;->STATSD_ACTION:[I

    aget v6, v6, v4

    .line 250
    invoke-static {v6}, Lcom/android/internal/util/LatencyTracker;->getNameOfAction(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v6

    aput v6, v5, v4

    .line 248
    .end local v4    # "action":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 252
    :cond_0
    monitor-exit v0

    .line 253
    return-void

    .line 252
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public blacklist isEnabled()Z
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/util/LatencyTracker;->mEnabled:Z

    monitor-exit v0

    return v1

    .line 324
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$new$0$com-android-internal-util-LatencyTracker()V
    .locals 2

    .line 237
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 238
    const-string/jumbo v1, "latency_tracker"

    invoke-static {v1, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    .line 237
    invoke-direct {p0, v0}, Lcom/android/internal/util/LatencyTracker;->updateProperties(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method synthetic blacklist lambda$onActionStart$1$com-android-internal-util-LatencyTracker(I)V
    .locals 0
    .param p1, "action"    # I

    .line 352
    invoke-virtual {p0, p1}, Lcom/android/internal/util/LatencyTracker;->onActionCancel(I)V

    return-void
.end method

.method public blacklist logAction(II)V
    .locals 3
    .param p1, "action"    # I
    .param p2, "duration"    # I

    .line 415
    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 416
    :try_start_0
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v1

    iget v2, p0, Lcom/android/internal/util/LatencyTracker;->mSamplingInterval:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 417
    .local v1, "shouldSample":Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/util/LatencyTracker;->mTraceThresholdPerAction:[I

    aget v2, v2, p1

    .line 418
    .local v2, "traceThreshold":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    if-lez v2, :cond_1

    if-lt p2, v2, :cond_1

    .line 421
    invoke-static {p1}, Lcom/android/internal/util/LatencyTracker;->getTraceTriggerNameForAction(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/PerfettoTrigger;->trigger(Ljava/lang/String;)V

    .line 424
    :cond_1
    invoke-static {p1, p2, v1}, Lcom/android/internal/util/LatencyTracker;->logActionDeprecated(IIZ)V

    .line 425
    return-void

    .line 418
    .end local v1    # "shouldSample":Z
    .end local v2    # "traceThreshold":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist onActionCancel(I)V
    .locals 3
    .param p1, "action"    # I

    .line 392
    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 393
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/LatencyTracker$Session;

    .line 394
    .local v1, "session":Lcom/android/internal/util/LatencyTracker$Session;
    if-nez v1, :cond_0

    .line 395
    monitor-exit v0

    return-void

    .line 397
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/util/LatencyTracker$Session;->cancel()V

    .line 398
    iget-object v2, p0, Lcom/android/internal/util/LatencyTracker;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 403
    .end local v1    # "session":Lcom/android/internal/util/LatencyTracker$Session;
    monitor-exit v0

    .line 404
    return-void

    .line 403
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onActionEnd(I)V
    .locals 3
    .param p1, "action"    # I

    .line 367
    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 368
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/util/LatencyTracker;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 369
    monitor-exit v0

    return-void

    .line 371
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/LatencyTracker$Session;

    .line 372
    .local v1, "session":Lcom/android/internal/util/LatencyTracker$Session;
    if-nez v1, :cond_1

    .line 373
    monitor-exit v0

    return-void

    .line 375
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/util/LatencyTracker$Session;->end()V

    .line 376
    iget-object v2, p0, Lcom/android/internal/util/LatencyTracker;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 377
    invoke-virtual {v1}, Lcom/android/internal/util/LatencyTracker$Session;->duration()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/util/LatencyTracker;->logAction(II)V

    .line 382
    .end local v1    # "session":Lcom/android/internal/util/LatencyTracker$Session;
    monitor-exit v0

    .line 383
    return-void

    .line 382
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onActionStart(I)V
    .locals 1
    .param p1, "action"    # I

    .line 333
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/LatencyTracker;->onActionStart(ILjava/lang/String;)V

    .line 334
    return-void
.end method

.method public blacklist onActionStart(ILjava/lang/String;)V
    .locals 3
    .param p1, "action"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 343
    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 344
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/util/LatencyTracker;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 345
    monitor-exit v0

    return-void

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 349
    monitor-exit v0

    return-void

    .line 351
    :cond_1
    new-instance v1, Lcom/android/internal/util/LatencyTracker$Session;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/util/LatencyTracker$Session;-><init>(ILjava/lang/String;)V

    .line 352
    .local v1, "session":Lcom/android/internal/util/LatencyTracker$Session;
    new-instance v2, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/util/LatencyTracker;I)V

    invoke-virtual {v1, v2}, Lcom/android/internal/util/LatencyTracker$Session;->begin(Ljava/lang/Runnable;)V

    .line 353
    iget-object v2, p0, Lcom/android/internal/util/LatencyTracker;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 358
    .end local v1    # "session":Lcom/android/internal/util/LatencyTracker$Session;
    monitor-exit v0

    .line 359
    return-void

    .line 358
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
