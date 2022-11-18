.class public final Landroid/media/tv/TvInputManager;
.super Ljava/lang/Object;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvInputManager$Hardware;,
        Landroid/media/tv/TvInputManager$Session;,
        Landroid/media/tv/TvInputManager$HardwareCallback;,
        Landroid/media/tv/TvInputManager$TvInputCallbackRecord;,
        Landroid/media/tv/TvInputManager$TvInputCallback;,
        Landroid/media/tv/TvInputManager$SessionCallbackRecord;,
        Landroid/media/tv/TvInputManager$SessionCallback;,
        Landroid/media/tv/TvInputManager$SignalStrength;,
        Landroid/media/tv/TvInputManager$BroadcastInfoType;,
        Landroid/media/tv/TvInputManager$InputState;,
        Landroid/media/tv/TvInputManager$RecordingError;,
        Landroid/media/tv/TvInputManager$TimeShiftStatus;,
        Landroid/media/tv/TvInputManager$VideoUnavailableReason;,
        Landroid/media/tv/TvInputManager$DvbDeviceType;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_BLOCKED_RATINGS_CHANGED:Ljava/lang/String; = "android.media.tv.action.BLOCKED_RATINGS_CHANGED"

.field public static final whitelist ACTION_PARENTAL_CONTROLS_ENABLED_CHANGED:Ljava/lang/String; = "android.media.tv.action.PARENTAL_CONTROLS_ENABLED_CHANGED"

.field public static final whitelist ACTION_QUERY_CONTENT_RATING_SYSTEMS:Ljava/lang/String; = "android.media.tv.action.QUERY_CONTENT_RATING_SYSTEMS"

.field public static final whitelist ACTION_SETUP_INPUTS:Ljava/lang/String; = "android.media.tv.action.SETUP_INPUTS"

.field public static final whitelist ACTION_VIEW_RECORDING_SCHEDULES:Ljava/lang/String; = "android.media.tv.action.VIEW_RECORDING_SCHEDULES"

.field public static final whitelist BROADCAST_INFO_STREAM_EVENT:I = 0x5

.field public static final whitelist BROADCAST_INFO_TYPE_COMMAND:I = 0x7

.field public static final whitelist BROADCAST_INFO_TYPE_DSMCC:I = 0x6

.field public static final whitelist BROADCAST_INFO_TYPE_PES:I = 0x4

.field public static final whitelist BROADCAST_INFO_TYPE_SECTION:I = 0x3

.field public static final whitelist BROADCAST_INFO_TYPE_TABLE:I = 0x2

.field public static final whitelist BROADCAST_INFO_TYPE_TIMELINE:I = 0x8

.field public static final whitelist BROADCAST_INFO_TYPE_TS:I = 0x1

.field public static final greylist-max-o DVB_DEVICE_DEMUX:I = 0x0

.field public static final greylist-max-o DVB_DEVICE_DVR:I = 0x1

.field static final greylist-max-o DVB_DEVICE_END:I = 0x2

.field public static final greylist-max-o DVB_DEVICE_FRONTEND:I = 0x2

.field static final greylist-max-o DVB_DEVICE_START:I = 0x0

.field public static final whitelist INPUT_STATE_CONNECTED:I = 0x0

.field public static final whitelist INPUT_STATE_CONNECTED_STANDBY:I = 0x1

.field public static final whitelist INPUT_STATE_DISCONNECTED:I = 0x2

.field public static final whitelist META_DATA_CONTENT_RATING_SYSTEMS:Ljava/lang/String; = "android.media.tv.metadata.CONTENT_RATING_SYSTEMS"

.field static final greylist-max-o RECORDING_ERROR_END:I = 0x2

.field public static final whitelist RECORDING_ERROR_INSUFFICIENT_SPACE:I = 0x1

.field public static final whitelist RECORDING_ERROR_RESOURCE_BUSY:I = 0x2

.field static final greylist-max-o RECORDING_ERROR_START:I = 0x0

.field public static final whitelist RECORDING_ERROR_UNKNOWN:I = 0x0

.field public static final whitelist SIGNAL_STRENGTH_LOST:I = 0x1

.field public static final whitelist SIGNAL_STRENGTH_STRONG:I = 0x3

.field public static final whitelist SIGNAL_STRENGTH_WEAK:I = 0x2

.field private static final greylist-max-o TAG:Ljava/lang/String; = "TvInputManager"

.field public static final whitelist TIME_SHIFT_INVALID_TIME:J = -0x8000000000000000L

.field public static final whitelist TIME_SHIFT_STATUS_AVAILABLE:I = 0x3

.field public static final whitelist TIME_SHIFT_STATUS_UNAVAILABLE:I = 0x2

.field public static final whitelist TIME_SHIFT_STATUS_UNKNOWN:I = 0x0

.field public static final whitelist TIME_SHIFT_STATUS_UNSUPPORTED:I = 0x1

.field public static final blacklist UNKNOWN_CLIENT_PID:I = -0x1

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_AUDIO_ONLY:I = 0x4

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_BUFFERING:I = 0x3

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_CAS_BLACKOUT:I = 0x10

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_CAS_CARD_INVALID:I = 0xf

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_CAS_CARD_MUTE:I = 0xe

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_CAS_INSUFFICIENT_OUTPUT_PROTECTION:I = 0x7

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_CAS_LICENSE_EXPIRED:I = 0xa

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_CAS_NEED_ACTIVATION:I = 0xb

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_CAS_NEED_PAIRING:I = 0xc

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_CAS_NO_CARD:I = 0xd

.field public static final blacklist VIDEO_UNAVAILABLE_REASON_CAS_NO_LICENSE:I = 0x9

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_CAS_PVR_RECORDING_NOT_ALLOWED:I = 0x8

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_CAS_REBOOTING:I = 0x11

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_CAS_UNKNOWN:I = 0x12

.field static final greylist-max-o VIDEO_UNAVAILABLE_REASON_END:I = 0x12

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_INSUFFICIENT_RESOURCE:I = 0x6

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_NOT_CONNECTED:I = 0x5

.field static final greylist-max-o VIDEO_UNAVAILABLE_REASON_START:I = 0x0

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_TUNING:I = 0x1

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_UNKNOWN:I = 0x0

.field public static final whitelist VIDEO_UNAVAILABLE_REASON_WEAK_SIGNAL:I = 0x2


# instance fields
.field private final greylist-max-o mCallbackRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/tv/TvInputManager$TvInputCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mClient:Landroid/media/tv/ITvInputClient;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-o mNextSeq:I

.field private final greylist-max-o mService:Landroid/media/tv/ITvInputManager;

.field private final greylist-max-o mSessionCallbackRecordMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/media/tv/TvInputManager$SessionCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mUserId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbackRecords(Landroid/media/tv/TvInputManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/TvInputManager;->mCallbackRecords:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/media/tv/TvInputManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/TvInputManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/media/tv/TvInputManager;)Landroid/media/tv/ITvInputManager;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/TvInputManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStateMap(Landroid/media/tv/TvInputManager;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/TvInputManager;->mStateMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserId(Landroid/media/tv/TvInputManager;)I
    .locals 0

    iget p0, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    return p0
.end method

.method public constructor greylist-max-o <init>(Landroid/media/tv/ITvInputManager;I)V
    .locals 9
    .param p1, "service"    # Landroid/media/tv/ITvInputManager;
    .param p2, "userId"    # I

    .line 1137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputManager;->mLock:Ljava/lang/Object;

    .line 487
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Landroid/media/tv/TvInputManager;->mCallbackRecords:Ljava/util/List;

    .line 491
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/media/tv/TvInputManager;->mStateMap:Ljava/util/Map;

    .line 494
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/media/tv/TvInputManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    .line 1138
    iput-object p1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    .line 1139
    iput p2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    .line 1140
    new-instance v1, Landroid/media/tv/TvInputManager$1;

    invoke-direct {v1, p0}, Landroid/media/tv/TvInputManager$1;-><init>(Landroid/media/tv/TvInputManager;)V

    iput-object v1, p0, Landroid/media/tv/TvInputManager;->mClient:Landroid/media/tv/ITvInputClient;

    .line 1417
    new-instance v1, Landroid/media/tv/TvInputManager$2;

    invoke-direct {v1, p0}, Landroid/media/tv/TvInputManager$2;-><init>(Landroid/media/tv/TvInputManager;)V

    .line 1476
    .local v1, "managerCallback":Landroid/media/tv/ITvInputManagerCallback;
    if-eqz p1, :cond_1

    .line 1477
    :try_start_0
    invoke-interface {p1, v1, p2}, Landroid/media/tv/ITvInputManager;->registerCallback(Landroid/media/tv/ITvInputManagerCallback;I)V

    .line 1478
    invoke-interface {p1, p2}, Landroid/media/tv/ITvInputManager;->getTvInputList(I)Ljava/util/List;

    move-result-object v2

    .line 1479
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1480
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/tv/TvInputInfo;

    .line 1481
    .local v4, "info":Landroid/media/tv/TvInputInfo;
    invoke-virtual {v4}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v5

    .line 1482
    .local v5, "inputId":Ljava/lang/String;
    iget-object v6, p0, Landroid/media/tv/TvInputManager;->mStateMap:Ljava/util/Map;

    iget-object v7, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v8, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v7, v5, v8}, Landroid/media/tv/ITvInputManager;->getTvInputState(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1483
    nop

    .end local v4    # "info":Landroid/media/tv/TvInputInfo;
    .end local v5    # "inputId":Ljava/lang/String;
    goto :goto_0

    .line 1484
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "managerCallback":Landroid/media/tv/ITvInputManagerCallback;
    .end local p0    # "this":Landroid/media/tv/TvInputManager;
    .end local p1    # "service":Landroid/media/tv/ITvInputManager;
    .end local p2    # "userId":I
    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1486
    .end local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    .restart local v1    # "managerCallback":Landroid/media/tv/ITvInputManagerCallback;
    .restart local p0    # "this":Landroid/media/tv/TvInputManager;
    .restart local p1    # "service":Landroid/media/tv/ITvInputManager;
    .restart local p2    # "userId":I
    :catch_0
    move-exception v0

    .line 1487
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1488
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    nop

    .line 1489
    return-void
.end method

.method private blacklist acquireTvInputHardwareInternal(ILandroid/media/tv/TvInputInfo;Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/media/tv/TvInputManager$HardwareCallback;)Landroid/media/tv/TvInputManager$Hardware;
    .locals 7
    .param p1, "deviceId"    # I
    .param p2, "info"    # Landroid/media/tv/TvInputInfo;
    .param p3, "tvInputSessionId"    # Ljava/lang/String;
    .param p4, "priorityHint"    # I
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "callback"    # Landroid/media/tv/TvInputManager$HardwareCallback;

    .line 2167
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    new-instance v2, Landroid/media/tv/TvInputManager$4;

    invoke-direct {v2, p0, p5, p6}, Landroid/media/tv/TvInputManager$4;-><init>(Landroid/media/tv/TvInputManager;Ljava/util/concurrent/Executor;Landroid/media/tv/TvInputManager$HardwareCallback;)V

    iget v4, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    .line 2168
    move v1, p1

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    invoke-interface/range {v0 .. v6}, Landroid/media/tv/ITvInputManager;->acquireTvInputHardware(ILandroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;ILjava/lang/String;I)Landroid/media/tv/ITvInputHardware;

    move-result-object v0

    .line 2189
    .local v0, "hardware":Landroid/media/tv/ITvInputHardware;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2190
    return-object v1

    .line 2192
    :cond_0
    new-instance v2, Landroid/media/tv/TvInputManager$Hardware;

    invoke-direct {v2, v0, v1}, Landroid/media/tv/TvInputManager$Hardware;-><init>(Landroid/media/tv/ITvInputHardware;Landroid/media/tv/TvInputManager$Hardware-IA;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 2193
    .end local v0    # "hardware":Landroid/media/tv/ITvInputHardware;
    :catch_0
    move-exception v0

    .line 2194
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private greylist-max-o createSessionInternal(Ljava/lang/String;ZLandroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V
    .locals 10
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "isRecordingSession"    # Z
    .param p3, "callback"    # Landroid/media/tv/TvInputManager$SessionCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 1925
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1926
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1927
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1928
    new-instance v0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    invoke-direct {v0, p3, p4}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;-><init>(Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V

    .line 1929
    .local v0, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1930
    :try_start_0
    iget v2, p0, Landroid/media/tv/TvInputManager;->mNextSeq:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/media/tv/TvInputManager;->mNextSeq:I

    .line 1931
    .local v2, "seq":I
    iget-object v3, p0, Landroid/media/tv/TvInputManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1933
    :try_start_1
    iget-object v4, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v5, p0, Landroid/media/tv/TvInputManager;->mClient:Landroid/media/tv/ITvInputClient;

    iget v9, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    move-object v6, p1

    move v7, p2

    move v8, v2

    invoke-interface/range {v4 .. v9}, Landroid/media/tv/ITvInputManager;->createSession(Landroid/media/tv/ITvInputClient;Ljava/lang/String;ZII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1936
    nop

    .line 1937
    .end local v2    # "seq":I
    :try_start_2
    monitor-exit v1

    .line 1938
    return-void

    .line 1934
    .restart local v2    # "seq":I
    :catch_0
    move-exception v3

    .line 1935
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    .end local p0    # "this":Landroid/media/tv/TvInputManager;
    .end local p1    # "inputId":Ljava/lang/String;
    .end local p2    # "isRecordingSession":Z
    .end local p3    # "callback":Landroid/media/tv/TvInputManager$SessionCallback;
    .end local p4    # "handler":Landroid/os/Handler;
    throw v4

    .line 1937
    .end local v2    # "seq":I
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    .restart local p0    # "this":Landroid/media/tv/TvInputManager;
    .restart local p1    # "inputId":Ljava/lang/String;
    .restart local p2    # "isRecordingSession":Z
    .restart local p3    # "callback":Landroid/media/tv/TvInputManager$SessionCallback;
    .restart local p4    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private blacklist getClientPidInternal(Ljava/lang/String;)I
    .locals 3
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 1941
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1942
    const/4 v0, -0x1

    .line 1944
    .local v0, "clientPid":I
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-interface {v1, p1}, Landroid/media/tv/ITvInputManager;->getClientPid(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1947
    nop

    .line 1948
    return v0

    .line 1945
    :catch_0
    move-exception v1

    .line 1946
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private blacklist getClientPriorityInternal(ILjava/lang/String;)I
    .locals 2
    .param p1, "useCase"    # I
    .param p2, "sessionId"    # Ljava/lang/String;

    .line 1953
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/ITvInputManager;->getClientPriority(ILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1954
    :catch_0
    move-exception v0

    .line 1955
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist isValidUseCase(I)Z
    .locals 1
    .param p1, "useCase"    # I

    .line 1960
    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x12c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x190

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public whitelist acquireTvInputHardware(ILandroid/media/tv/TvInputInfo;Landroid/media/tv/TvInputManager$HardwareCallback;)Landroid/media/tv/TvInputManager$Hardware;
    .locals 7
    .param p1, "deviceId"    # I
    .param p2, "info"    # Landroid/media/tv/TvInputInfo;
    .param p3, "callback"    # Landroid/media/tv/TvInputManager$HardwareCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2084
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2085
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2086
    new-instance v5, Landroid/media/tv/TvInputManager$3;

    invoke-direct {v5, p0}, Landroid/media/tv/TvInputManager$3;-><init>(Landroid/media/tv/TvInputManager;)V

    const/4 v3, 0x0

    const/16 v4, 0x190

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/media/tv/TvInputManager;->acquireTvInputHardwareInternal(ILandroid/media/tv/TvInputInfo;Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/media/tv/TvInputManager$HardwareCallback;)Landroid/media/tv/TvInputManager$Hardware;

    move-result-object v0

    return-object v0
.end method

.method public whitelist acquireTvInputHardware(ILandroid/media/tv/TvInputInfo;Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/media/tv/TvInputManager$HardwareCallback;)Landroid/media/tv/TvInputManager$Hardware;
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "info"    # Landroid/media/tv/TvInputInfo;
    .param p3, "tvInputSessionId"    # Ljava/lang/String;
    .param p4, "priorityHint"    # I
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "callback"    # Landroid/media/tv/TvInputManager$HardwareCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2123
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2124
    invoke-static {p6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2125
    invoke-direct/range {p0 .. p6}, Landroid/media/tv/TvInputManager;->acquireTvInputHardwareInternal(ILandroid/media/tv/TvInputInfo;Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/media/tv/TvInputManager$HardwareCallback;)Landroid/media/tv/TvInputManager$Hardware;

    move-result-object v0

    return-object v0
.end method

.method public greylist acquireTvInputHardware(ILandroid/media/tv/TvInputManager$HardwareCallback;Landroid/media/tv/TvInputInfo;)Landroid/media/tv/TvInputManager$Hardware;
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "callback"    # Landroid/media/tv/TvInputManager$HardwareCallback;
    .param p3, "info"    # Landroid/media/tv/TvInputInfo;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2058
    invoke-virtual {p0, p1, p3, p2}, Landroid/media/tv/TvInputManager;->acquireTvInputHardware(ILandroid/media/tv/TvInputInfo;Landroid/media/tv/TvInputManager$HardwareCallback;)Landroid/media/tv/TvInputManager$Hardware;

    move-result-object v0

    return-object v0
.end method

.method public whitelist addBlockedRating(Landroid/media/tv/TvContentRating;)V
    .locals 3
    .param p1, "rating"    # Landroid/media/tv/TvContentRating;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1732
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1734
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/media/tv/ITvInputManager;->addBlockedRating(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1737
    nop

    .line 1738
    return-void

    .line 1735
    :catch_0
    move-exception v0

    .line 1736
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist addHardwareDevice(I)V
    .locals 2
    .param p1, "deviceId"    # I

    .line 2140
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-interface {v0, p1}, Landroid/media/tv/ITvInputManager;->addHardwareDevice(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2143
    nop

    .line 2144
    return-void

    .line 2141
    :catch_0
    move-exception v0

    .line 2142
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .locals 2
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "config"    # Landroid/media/tv/TvStreamConfig;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2004
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/media/tv/ITvInputManager;->captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2005
    :catch_0
    move-exception v0

    .line 2006
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o createRecordingSession(Ljava/lang/String;Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V
    .locals 1
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/media/tv/TvInputManager$SessionCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 1920
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/media/tv/TvInputManager;->createSessionInternal(Ljava/lang/String;ZLandroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V

    .line 1921
    return-void
.end method

.method public greylist-max-o createSession(Ljava/lang/String;Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V
    .locals 1
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/media/tv/TvInputManager$SessionCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 1844
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/media/tv/TvInputManager;->createSessionInternal(Ljava/lang/String;ZLandroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V

    .line 1845
    return-void
.end method

.method public whitelist getAvailableExtensionInterfaceNames(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "inputId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1590
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1592
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, p1, v1}, Landroid/media/tv/ITvInputManager;->getAvailableExtensionInterfaceNames(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1593
    :catch_0
    move-exception v0

    .line 1594
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAvailableTvStreamConfigList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "inputId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/tv/TvStreamConfig;",
            ">;"
        }
    .end annotation

    .line 1985
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, p1, v1}, Landroid/media/tv/ITvInputManager;->getAvailableTvStreamConfigList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1986
    :catch_0
    move-exception v0

    .line 1987
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getBlockedRatings()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/TvContentRating;",
            ">;"
        }
    .end annotation

    .line 1711
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1712
    .local v0, "ratings":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvContentRating;>;"
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v1, v2}, Landroid/media/tv/ITvInputManager;->getBlockedRatings(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1713
    .local v2, "rating":Ljava/lang/String;
    invoke-static {v2}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1714
    nop

    .end local v2    # "rating":Ljava/lang/String;
    goto :goto_0

    .line 1715
    :cond_0
    return-object v0

    .line 1716
    .end local v0    # "ratings":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvContentRating;>;"
    :catch_0
    move-exception v0

    .line 1717
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getClientPid(Ljava/lang/String;)I
    .locals 1
    .param p1, "sessionId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1859
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputManager;->getClientPidInternal(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getClientPriority(I)I
    .locals 3
    .param p1, "useCase"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1902
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputManager;->isValidUseCase(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1905
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/tv/TvInputManager;->getClientPriorityInternal(ILjava/lang/String;)I

    move-result v0

    return v0

    .line 1903
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid use case: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getClientPriority(ILjava/lang/String;)I
    .locals 3
    .param p1, "useCase"    # I
    .param p2, "sessionId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1880
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1881
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputManager;->isValidUseCase(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1884
    invoke-direct {p0, p1, p2}, Landroid/media/tv/TvInputManager;->getClientPriorityInternal(ILjava/lang/String;)I

    move-result v0

    return v0

    .line 1882
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid use case: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getCurrentTunedInfos()Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/TunedInfo;",
            ">;"
        }
    .end annotation

    .line 2292
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/media/tv/ITvInputManager;->getCurrentTunedInfos(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2293
    :catch_0
    move-exception v0

    .line 2294
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getDvbDeviceList()Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/DvbDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 2227
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-interface {v0}, Landroid/media/tv/ITvInputManager;->getDvbDeviceList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2228
    :catch_0
    move-exception v0

    .line 2229
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getExtensionInterface(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 2
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1616
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1617
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, p1, p2, v1}, Landroid/media/tv/ITvInputManager;->getExtensionInterface(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1620
    :catch_0
    move-exception v0

    .line 1621
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getHardwareList()Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/TvInputHardwareInfo;",
            ">;"
        }
    .end annotation

    .line 2034
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-interface {v0}, Landroid/media/tv/ITvInputManager;->getHardwareList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2035
    :catch_0
    move-exception v0

    .line 2036
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getInputState(Ljava/lang/String;)I
    .locals 5
    .param p1, "inputId"    # Ljava/lang/String;

    .line 1561
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1562
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1563
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1564
    .local v1, "state":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 1565
    const-string v2, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized input ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    const/4 v2, 0x2

    monitor-exit v0

    return v2

    .line 1568
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    monitor-exit v0

    return v2

    .line 1569
    .end local v1    # "state":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getTvContentRatingSystemList()Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/TvContentRatingSystemInfo;",
            ">;"
        }
    .end annotation

    .line 1767
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/media/tv/ITvInputManager;->getTvContentRatingSystemList(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1768
    :catch_0
    move-exception v0

    .line 1769
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getTvInputInfo(Ljava/lang/String;)Landroid/media/tv/TvInputInfo;
    .locals 2
    .param p1, "inputId"    # Ljava/lang/String;

    .line 1512
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1514
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, p1, v1}, Landroid/media/tv/ITvInputManager;->getTvInputInfo(Ljava/lang/String;I)Landroid/media/tv/TvInputInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1515
    :catch_0
    move-exception v0

    .line 1516
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getTvInputList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/TvInputInfo;",
            ">;"
        }
    .end annotation

    .line 1498
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/media/tv/ITvInputManager;->getTvInputList(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1499
    :catch_0
    move-exception v0

    .line 1500
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isParentalControlsEnabled()Z
    .locals 2

    .line 1665
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/media/tv/ITvInputManager;->isParentalControlsEnabled(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1666
    :catch_0
    move-exception v0

    .line 1667
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isRatingBlocked(Landroid/media/tv/TvContentRating;)Z
    .locals 3
    .param p1, "rating"    # Landroid/media/tv/TvContentRating;

    .line 1696
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1698
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/media/tv/ITvInputManager;->isRatingBlocked(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1699
    :catch_0
    move-exception v0

    .line 1700
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isSingleSessionActive()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2019
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/media/tv/ITvInputManager;->isSingleSessionActive(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2020
    :catch_0
    move-exception v0

    .line 2021
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist notifyPreviewProgramAddedToWatchNext(Ljava/lang/String;JJ)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "previewProgramId"    # J
    .param p4, "watchNextProgramId"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1819
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1820
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.tv.action.PREVIEW_PROGRAM_ADDED_TO_WATCH_NEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1821
    const-string v1, "android.media.tv.extra.PREVIEW_PROGRAM_ID"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1822
    const-string v1, "android.media.tv.extra.WATCH_NEXT_PROGRAM_ID"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1823
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1825
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/media/tv/ITvInputManager;->sendTvInputNotifyIntent(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1828
    nop

    .line 1829
    return-void

    .line 1826
    :catch_0
    move-exception v1

    .line 1827
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist notifyPreviewProgramBrowsableDisabled(Ljava/lang/String;J)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "programId"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1781
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1782
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.tv.action.PREVIEW_PROGRAM_BROWSABLE_DISABLED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1783
    const-string v1, "android.media.tv.extra.PREVIEW_PROGRAM_ID"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1784
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1786
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/media/tv/ITvInputManager;->sendTvInputNotifyIntent(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1789
    nop

    .line 1790
    return-void

    .line 1787
    :catch_0
    move-exception v1

    .line 1788
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist notifyWatchNextProgramBrowsableDisabled(Ljava/lang/String;J)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "programId"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1800
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1801
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.tv.action.WATCH_NEXT_PROGRAM_BROWSABLE_DISABLED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1802
    const-string v1, "android.media.tv.extra.WATCH_NEXT_PROGRAM_ID"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1803
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1805
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/media/tv/ITvInputManager;->sendTvInputNotifyIntent(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1808
    nop

    .line 1809
    return-void

    .line 1806
    :catch_0
    move-exception v1

    .line 1807
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist openDvbDevice(Landroid/media/tv/DvbDeviceInfo;I)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "info"    # Landroid/media/tv/DvbDeviceInfo;
    .param p2, "deviceType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2253
    if-ltz p2, :cond_0

    const/4 v0, 0x2

    if-lt v0, p2, :cond_0

    .line 2256
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/ITvInputManager;->openDvbDevice(Landroid/media/tv/DvbDeviceInfo;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    .line 2254
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid DVB device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/tv/TvInputManager;
    .end local p1    # "info":Landroid/media/tv/DvbDeviceInfo;
    .end local p2    # "deviceType":I
    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2257
    .restart local p0    # "this":Landroid/media/tv/TvInputManager;
    .restart local p1    # "info":Landroid/media/tv/DvbDeviceInfo;
    .restart local p2    # "deviceType":I
    :catch_0
    move-exception v0

    .line 2258
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist registerCallback(Landroid/media/tv/TvInputManager$TvInputCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/media/tv/TvInputManager$TvInputCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1632
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1633
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1634
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1635
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mCallbackRecords:Ljava/util/List;

    new-instance v2, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    invoke-direct {v2, p1, p2}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;-><init>(Landroid/media/tv/TvInputManager$TvInputCallback;Landroid/os/Handler;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1636
    monitor-exit v0

    .line 1637
    return-void

    .line 1636
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist releaseTvInputHardware(ILandroid/media/tv/TvInputManager$Hardware;)V
    .locals 3
    .param p1, "deviceId"    # I
    .param p2, "hardware"    # Landroid/media/tv/TvInputManager$Hardware;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2210
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-static {p2}, Landroid/media/tv/TvInputManager$Hardware;->-$$Nest$mgetInterface(Landroid/media/tv/TvInputManager$Hardware;)Landroid/media/tv/ITvInputHardware;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, p1, v1, v2}, Landroid/media/tv/ITvInputManager;->releaseTvInputHardware(ILandroid/media/tv/ITvInputHardware;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2213
    nop

    .line 2214
    return-void

    .line 2211
    :catch_0
    move-exception v0

    .line 2212
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeBlockedRating(Landroid/media/tv/TvContentRating;)V
    .locals 3
    .param p1, "rating"    # Landroid/media/tv/TvContentRating;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1751
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1753
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/media/tv/ITvInputManager;->removeBlockedRating(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1756
    nop

    .line 1757
    return-void

    .line 1754
    :catch_0
    move-exception v0

    .line 1755
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeHardwareDevice(I)V
    .locals 2
    .param p1, "deviceId"    # I

    .line 2157
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-interface {v0, p1}, Landroid/media/tv/ITvInputManager;->removeHardwareDevice(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2160
    nop

    .line 2161
    return-void

    .line 2158
    :catch_0
    move-exception v0

    .line 2159
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o requestChannelBrowsable(Landroid/net/Uri;)V
    .locals 2
    .param p1, "channelUri"    # Landroid/net/Uri;

    .line 2273
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, p1, v1}, Landroid/media/tv/ITvInputManager;->requestChannelBrowsable(Landroid/net/Uri;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2276
    nop

    .line 2277
    return-void

    .line 2274
    :catch_0
    move-exception v0

    .line 2275
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setParentalControlsEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1683
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, p1, v1}, Landroid/media/tv/ITvInputManager;->setParentalControlsEnabled(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1686
    nop

    .line 1687
    return-void

    .line 1684
    :catch_0
    move-exception v0

    .line 1685
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unregisterCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/media/tv/TvInputManager$TvInputCallback;

    .line 1645
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1646
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1647
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1648
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/tv/TvInputManager$TvInputCallbackRecord;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1649
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    .line 1650
    .local v2, "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    invoke-virtual {v2}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->getCallback()Landroid/media/tv/TvInputManager$TvInputCallback;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 1651
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1652
    goto :goto_1

    .line 1654
    .end local v2    # "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    :cond_0
    goto :goto_0

    .line 1655
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/tv/TvInputManager$TvInputCallbackRecord;>;"
    :cond_1
    :goto_1
    monitor-exit v0

    .line 1656
    return-void

    .line 1655
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist updateTvInputInfo(Landroid/media/tv/TvInputInfo;)V
    .locals 2
    .param p1, "inputInfo"    # Landroid/media/tv/TvInputInfo;

    .line 1538
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1540
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v1, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v0, p1, v1}, Landroid/media/tv/ITvInputManager;->updateTvInputInfo(Landroid/media/tv/TvInputInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1543
    nop

    .line 1544
    return-void

    .line 1541
    :catch_0
    move-exception v0

    .line 1542
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
