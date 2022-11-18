.class public abstract Landroid/media/MediaRoute2ProviderService;
.super Landroid/app/Service;
.source "MediaRoute2ProviderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;,
        Landroid/media/MediaRoute2ProviderService$Reason;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist MAX_REQUEST_IDS_SIZE:I = 0x1f4

.field public static final whitelist REASON_INVALID_COMMAND:I = 0x4

.field public static final whitelist REASON_NETWORK_ERROR:I = 0x2

.field public static final whitelist REASON_REJECTED:I = 0x1

.field public static final whitelist REASON_ROUTE_NOT_AVAILABLE:I = 0x3

.field public static final whitelist REASON_UNKNOWN_ERROR:I = 0x0

.field public static final whitelist REQUEST_ID_NONE:J = 0x0L

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.media.MediaRoute2ProviderService"

.field private static final blacklist TAG:Ljava/lang/String; = "MR2ProviderService"


# instance fields
.field private final blacklist mHandler:Landroid/os/Handler;

.field private volatile blacklist mProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

.field private blacklist mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

.field private final blacklist mRequestIds:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRequestIdsLock:Ljava/lang/Object;

.field private final blacklist mSessionInfo:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/media/RoutingSessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSessionLock:Ljava/lang/Object;

.field private final blacklist mSessionUpdateScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mStatePublishScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mStub:Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;


# direct methods
.method public static synthetic blacklist $r8$lambda$1EDB417pnI9-FX9khdR7C54QzfI(Landroid/media/MediaRoute2ProviderService;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaRoute2ProviderService;->updateSessions()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$5hzmqiG5B0J3WUTluElOW7zaifk(Landroid/media/MediaRoute2ProviderService;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaRoute2ProviderService;->publishState()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/media/MediaRoute2ProviderService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRoute2ProviderService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProviderInfo(Landroid/media/MediaRoute2ProviderService;)Landroid/media/MediaRoute2ProviderInfo;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRoute2ProviderService;->mProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$maddRequestId(Landroid/media/MediaRoute2ProviderService;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/MediaRoute2ProviderService;->addRequestId(J)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 74
    const-string v0, "MR2ProviderService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/MediaRoute2ProviderService;->DEBUG:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 155
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 141
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionLock:Ljava/lang/Object;

    .line 142
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRequestIdsLock:Ljava/lang/Object;

    .line 143
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mStatePublishScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 144
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionUpdateScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 149
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRequestIds:Ljava/util/Deque;

    .line 152
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionInfo:Landroid/util/ArrayMap;

    .line 156
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mHandler:Landroid/os/Handler;

    .line 157
    return-void
.end method

.method private blacklist addRequestId(J)V
    .locals 3
    .param p1, "requestId"    # J

    .line 533
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRequestIdsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 534
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService;->mRequestIds:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_0

    .line 535
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService;->mRequestIds:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 537
    :cond_0
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService;->mRequestIds:Ljava/util/Deque;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 538
    monitor-exit v0

    .line 539
    return-void

    .line 538
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist publishState()V
    .locals 3

    .line 485
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mStatePublishScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    return-void

    .line 489
    :cond_0
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    if-nez v0, :cond_1

    .line 490
    return-void

    .line 494
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService;->mProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

    invoke-interface {v0, v1}, Landroid/media/IMediaRoute2ProviderServiceCallback;->notifyProviderUpdated(Landroid/media/MediaRoute2ProviderInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    goto :goto_0

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MR2ProviderService"

    const-string v2, "Failed to publish provider state."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 498
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private blacklist removeRequestId(J)Z
    .locals 3
    .param p1, "requestId"    # J

    .line 553
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRequestIdsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 554
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService;->mRequestIds:Ljava/util/Deque;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Deque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 555
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist updateSessions()V
    .locals 4

    .line 507
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionUpdateScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    return-void

    .line 511
    :cond_0
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    if-nez v0, :cond_1

    .line 512
    return-void

    .line 516
    :cond_1
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 517
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService;->mSessionInfo:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 518
    .local v1, "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/RoutingSessionInfo;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    invoke-interface {v0, v1}, Landroid/media/IMediaRoute2ProviderServiceCallback;->notifySessionsUpdated(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 524
    goto :goto_0

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "MR2ProviderService"

    const-string v3, "Failed to notify session info changed."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 518
    .end local v1    # "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/RoutingSessionInfo;>;"
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public final whitelist getAllSessionInfo()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/RoutingSessionInfo;",
            ">;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService;->mSessionInfo:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 222
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final whitelist getSessionInfo(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;
    .locals 2
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 207
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService;->mSessionInfo:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    monitor-exit v0

    return-object v1

    .line 212
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sessionId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist notifyRequestFailed(JI)V
    .locals 3
    .param p1, "requestId"    # J
    .param p3, "reason"    # I

    .line 342
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    if-nez v0, :cond_0

    .line 343
    return-void

    .line 346
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/media/MediaRoute2ProviderService;->removeRequestId(J)Z

    move-result v0

    const-string v1, "MR2ProviderService"

    if-nez v0, :cond_1

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyRequestFailed: The requestId doesn\'t exist. requestId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    return-void

    .line 353
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/IMediaRoute2ProviderServiceCallback;->notifyRequestFailed(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    goto :goto_0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "Failed to notify that the request has failed."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public final whitelist notifyRoutes(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 465
    .local p1, "routes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/MediaRoute2Info;>;"
    const-string v0, "routes must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 466
    new-instance v0, Landroid/media/MediaRoute2ProviderInfo$Builder;

    invoke-direct {v0}, Landroid/media/MediaRoute2ProviderInfo$Builder;-><init>()V

    .line 467
    invoke-virtual {v0, p1}, Landroid/media/MediaRoute2ProviderInfo$Builder;->addRoutes(Ljava/util/Collection;)Landroid/media/MediaRoute2ProviderInfo$Builder;

    move-result-object v0

    .line 468
    invoke-virtual {v0}, Landroid/media/MediaRoute2ProviderInfo$Builder;->build()Landroid/media/MediaRoute2ProviderInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

    .line 469
    invoke-virtual {p0}, Landroid/media/MediaRoute2ProviderService;->schedulePublishState()V

    .line 470
    return-void
.end method

.method public final whitelist notifySessionCreated(JLandroid/media/RoutingSessionInfo;)V
    .locals 5
    .param p1, "requestId"    # J
    .param p3, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 241
    const-string v0, "sessionInfo must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 243
    sget-boolean v0, Landroid/media/MediaRoute2ProviderService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 244
    const-string v0, "MR2ProviderService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySessionCreated: Creating a session. requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sessionInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Landroid/media/MediaRoute2ProviderService;->removeRequestId(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 249
    const-string v0, "MR2ProviderService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySessionCreated: The requestId doesn\'t exist. requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-void

    .line 253
    :cond_1
    invoke-virtual {p3}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "sessionId":Ljava/lang/String;
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService;->mSessionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 255
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService;->mSessionInfo:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 256
    const-string v2, "MR2ProviderService"

    const-string v3, "notifySessionCreated: Ignoring duplicate session id."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    monitor-exit v1

    return-void

    .line 259
    :cond_2
    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService;->mSessionInfo:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    if-nez v2, :cond_3

    .line 262
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 265
    :cond_3
    :try_start_1
    invoke-interface {v2, p1, p2, p3}, Landroid/media/IMediaRoute2ProviderServiceCallback;->notifySessionCreated(JLandroid/media/RoutingSessionInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    goto :goto_0

    .line 266
    :catch_0
    move-exception v2

    .line 267
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "MR2ProviderService"

    const-string v4, "Failed to notify session created."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v1

    .line 270
    return-void

    .line 269
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public final whitelist notifySessionReleased(Ljava/lang/String;)V
    .locals 5
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 302
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 305
    sget-boolean v0, Landroid/media/MediaRoute2ProviderService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 306
    const-string v0, "MR2ProviderService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySessionReleased: Releasing session id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 311
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService;->mSessionInfo:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    .line 313
    .local v1, "sessionInfo":Landroid/media/RoutingSessionInfo;
    if-nez v1, :cond_1

    .line 314
    const-string v2, "MR2ProviderService"

    const-string v3, "notifySessionReleased: Ignoring unknown session info."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    monitor-exit v0

    return-void

    .line 318
    :cond_1
    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    if-nez v2, :cond_2

    .line 319
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 322
    :cond_2
    :try_start_1
    invoke-interface {v2, v1}, Landroid/media/IMediaRoute2ProviderServiceCallback;->notifySessionReleased(Landroid/media/RoutingSessionInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    goto :goto_0

    .line 323
    :catch_0
    move-exception v2

    .line 324
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "MR2ProviderService"

    const-string v4, "Failed to notify session released."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 327
    return-void

    .line 326
    .end local v1    # "sessionInfo":Landroid/media/RoutingSessionInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 303
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sessionId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist notifySessionUpdated(Landroid/media/RoutingSessionInfo;)V
    .locals 4
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 277
    const-string v0, "sessionInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 279
    sget-boolean v0, Landroid/media/MediaRoute2ProviderService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 280
    const-string v0, "MR2ProviderService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySessionUpdated: Updating session id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_0
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "sessionId":Ljava/lang/String;
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService;->mSessionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 285
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService;->mSessionInfo:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService;->mSessionInfo:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    invoke-virtual {p0}, Landroid/media/MediaRoute2ProviderService;->scheduleUpdateSessions()V

    .line 293
    return-void

    .line 288
    :cond_1
    :try_start_1
    const-string v2, "MR2ProviderService"

    const-string v3, "notifySessionUpdated: Ignoring unknown session info."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    monitor-exit v1

    return-void

    .line 291
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 168
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.MediaRoute2ProviderService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mStub:Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;

    invoke-direct {v0, p0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;-><init>(Landroid/media/MediaRoute2ProviderService;)V

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mStub:Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;

    .line 172
    :cond_0
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mStub:Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;

    return-object v0

    .line 174
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist onCreateSession(JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract whitelist onDeselectRoute(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public whitelist onDiscoveryPreferenceChanged(Landroid/media/RouteDiscoveryPreference;)V
    .locals 0
    .param p1, "preference"    # Landroid/media/RouteDiscoveryPreference;

    .line 459
    return-void
.end method

.method public abstract whitelist onReleaseSession(JLjava/lang/String;)V
.end method

.method public abstract whitelist onSelectRoute(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract whitelist onSetRouteVolume(JLjava/lang/String;I)V
.end method

.method public abstract whitelist onSetSessionVolume(JLjava/lang/String;I)V
.end method

.method public abstract whitelist onTransferToRoute(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method blacklist schedulePublishState()V
    .locals 3

    .line 479
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mStatePublishScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRoute2ProviderService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/media/MediaRoute2ProviderService$$ExternalSyntheticLambda1;-><init>(Landroid/media/MediaRoute2ProviderService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 482
    :cond_0
    return-void
.end method

.method blacklist scheduleUpdateSessions()V
    .locals 3

    .line 501
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mSessionUpdateScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRoute2ProviderService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/media/MediaRoute2ProviderService$$ExternalSyntheticLambda0;-><init>(Landroid/media/MediaRoute2ProviderService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 504
    :cond_0
    return-void
.end method

.method blacklist setCallback(Landroid/media/IMediaRoute2ProviderServiceCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/media/IMediaRoute2ProviderServiceCallback;

    .line 473
    iput-object p1, p0, Landroid/media/MediaRoute2ProviderService;->mRemoteCallback:Landroid/media/IMediaRoute2ProviderServiceCallback;

    .line 474
    invoke-virtual {p0}, Landroid/media/MediaRoute2ProviderService;->schedulePublishState()V

    .line 475
    invoke-virtual {p0}, Landroid/media/MediaRoute2ProviderService;->scheduleUpdateSessions()V

    .line 476
    return-void
.end method
