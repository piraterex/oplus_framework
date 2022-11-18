.class public Landroid/telecom/Logging/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Logging/SessionManager$ISessionIdQueryHandler;,
        Landroid/telecom/Logging/SessionManager$ISessionListener;,
        Landroid/telecom/Logging/SessionManager$ICurrentThreadId;,
        Landroid/telecom/Logging/SessionManager$ISessionCleanupTimeoutMs;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_SESSION_TIMEOUT_MS:J = 0x7530L

.field private static final blacklist LOGGING_TAG:Ljava/lang/String; = "Logging"

.field private static final blacklist SESSION_ID_ROLLOVER_THRESHOLD:J = 0x40000L

.field private static final blacklist TIMEOUTS_PREFIX:Ljava/lang/String; = "telecom."


# instance fields
.field public blacklist mCleanStaleSessions:Ljava/lang/Runnable;

.field private blacklist mContext:Landroid/content/Context;

.field public blacklist mCurrentThreadId:Landroid/telecom/Logging/SessionManager$ICurrentThreadId;

.field private blacklist mSessionCleanupHandler:Landroid/os/Handler;

.field private blacklist mSessionCleanupTimeoutMs:Landroid/telecom/Logging/SessionManager$ISessionCleanupTimeoutMs;

.field private blacklist mSessionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Logging/SessionManager$ISessionListener;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/telecom/Logging/Session;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist sCodeEntryCounter:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Landroid/telecom/Logging/SessionManager;->sCodeEntryCounter:I

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    .line 58
    new-instance v0, Landroid/telecom/Logging/SessionManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/telecom/Logging/SessionManager$$ExternalSyntheticLambda0;-><init>(Landroid/telecom/Logging/SessionManager;)V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mCleanStaleSessions:Ljava/lang/Runnable;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionCleanupHandler:Landroid/os/Handler;

    .line 73
    new-instance v0, Landroid/telecom/Logging/SessionManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/telecom/Logging/SessionManager$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mCurrentThreadId:Landroid/telecom/Logging/SessionManager$ICurrentThreadId;

    .line 76
    new-instance v0, Landroid/telecom/Logging/SessionManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/telecom/Logging/SessionManager$$ExternalSyntheticLambda2;-><init>(Landroid/telecom/Logging/SessionManager;)V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionCleanupTimeoutMs:Landroid/telecom/Logging/SessionManager$ISessionCleanupTimeoutMs;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionListeners:Ljava/util/List;

    .line 106
    return-void
.end method

.method private blacklist endParentSessions(Landroid/telecom/Logging/Session;)V
    .locals 6
    .param p1, "subsession"    # Landroid/telecom/Logging/Session;

    .line 364
    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->isSessionCompleted()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->getChildSessions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 367
    :cond_0
    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v0

    .line 368
    .local v0, "parentSession":Landroid/telecom/Logging/Session;
    if-eqz v0, :cond_2

    .line 369
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/telecom/Logging/Session;->setParentSession(Landroid/telecom/Logging/Session;)V

    .line 370
    invoke-virtual {v0, p1}, Landroid/telecom/Logging/Session;->removeChild(Landroid/telecom/Logging/Session;)V

    .line 373
    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->isExternal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 375
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->getExecutionStartTimeMilliseconds()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 376
    .local v1, "fullSessionTimeMs":J
    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->getShortMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1, v2}, Landroid/telecom/Logging/SessionManager;->notifySessionCompleteListeners(Ljava/lang/String;J)V

    .line 378
    .end local v1    # "fullSessionTimeMs":J
    :cond_1
    invoke-direct {p0, v0}, Landroid/telecom/Logging/SessionManager;->endParentSessions(Landroid/telecom/Logging/Session;)V

    goto :goto_0

    .line 383
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->getExecutionStartTimeMilliseconds()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 386
    .restart local v1    # "fullSessionTimeMs":J
    sget-boolean v3, Landroid/telecom/Log;->OPLUS_DEBUG:Z

    if-eqz v3, :cond_3

    .line 387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "END_SESSION (dur: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 388
    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 387
    const-string v5, "Logging"

    invoke-static {v5, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    :cond_3
    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->isExternal()Z

    move-result v3

    if-nez v3, :cond_4

    .line 392
    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->getShortMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1, v2}, Landroid/telecom/Logging/SessionManager;->notifySessionCompleteListeners(Ljava/lang/String;J)V

    .line 395
    .end local v1    # "fullSessionTimeMs":J
    :cond_4
    :goto_0
    return-void

    .line 365
    .end local v0    # "parentSession":Landroid/telecom/Logging/Session;
    :cond_5
    :goto_1
    return-void
.end method

.method private blacklist getBase64Encoding(I)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # I

    .line 428
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 429
    .local v1, "idByteArray":[B
    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 430
    .end local v1    # "idByteArray":[B
    .local v0, "idByteArray":[B
    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getCallingThreadId()I
    .locals 1

    .line 434
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mCurrentThreadId:Landroid/telecom/Logging/SessionManager$ICurrentThreadId;

    invoke-interface {v0}, Landroid/telecom/Logging/SessionManager$ICurrentThreadId;->get()I

    move-result v0

    return v0
.end method

.method private blacklist getCleanupTimeout(Landroid/content/Context;)J
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 482
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 483
    .local v0, "cr":Landroid/content/ContentResolver;
    nop

    .line 485
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v1

    .line 483
    const-string/jumbo v2, "telecom.stale_session_cleanup_timeout_millis"

    const-wide/16 v3, 0x7530

    invoke-static {v0, v2, v3, v4, v1}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v1

    return-wide v1
.end method

.method private declared-synchronized blacklist getNextSessionID()Ljava/lang/String;
    .locals 5

    monitor-enter p0

    .line 415
    :try_start_0
    iget v0, p0, Landroid/telecom/Logging/SessionManager;->sCodeEntryCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/telecom/Logging/SessionManager;->sCodeEntryCounter:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 416
    .local v0, "nextId":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    const-wide/32 v3, 0x40000

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 417
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->restartSessionCounter()V

    .line 418
    iget v1, p0, Landroid/telecom/Logging/SessionManager;->sCodeEntryCounter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/telecom/Logging/SessionManager;->sCodeEntryCounter:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v0, v1

    .line 420
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/telecom/Logging/SessionManager;->getBase64Encoding(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 414
    .end local v0    # "nextId":Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private blacklist getSessionCleanupTimeoutMs()J
    .locals 2

    .line 109
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionCleanupTimeoutMs:Landroid/telecom/Logging/SessionManager$ISessionCleanupTimeoutMs;

    invoke-interface {v0}, Landroid/telecom/Logging/SessionManager$ISessionCleanupTimeoutMs;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist notifySessionCompleteListeners(Ljava/lang/String;J)V
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "sessionTimeMs"    # J

    .line 398
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/SessionManager$ISessionListener;

    .line 399
    .local v1, "l":Landroid/telecom/Logging/SessionManager$ISessionListener;
    invoke-interface {v1, p1, p2, p3}, Landroid/telecom/Logging/SessionManager$ISessionListener;->sessionComplete(Ljava/lang/String;J)V

    .line 400
    .end local v1    # "l":Landroid/telecom/Logging/SessionManager$ISessionListener;
    goto :goto_0

    .line 401
    :cond_0
    return-void
.end method

.method private declared-synchronized blacklist resetStaleSessionTimer()V
    .locals 4

    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionCleanupHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mCleanStaleSessions:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 116
    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mSessionCleanupHandler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getSessionCleanupTimeoutMs()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    :cond_0
    monitor-exit p0

    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized blacklist restartSessionCounter()V
    .locals 1

    monitor-enter p0

    .line 424
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Landroid/telecom/Logging/SessionManager;->sCodeEntryCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    monitor-exit p0

    return-void

    .line 423
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized blacklist cancelSubsession(Landroid/telecom/Logging/Session;)V
    .locals 2
    .param p1, "subsession"    # Landroid/telecom/Logging/Session;

    monitor-enter p0

    .line 291
    if-nez p1, :cond_0

    .line 292
    monitor-exit p0

    return-void

    .line 295
    :cond_0
    const-wide/16 v0, -0x1

    :try_start_0
    invoke-virtual {p1, v0, v1}, Landroid/telecom/Logging/Session;->markSessionCompleted(J)V

    .line 296
    invoke-direct {p0, p1}, Landroid/telecom/Logging/SessionManager;->endParentSessions(Landroid/telecom/Logging/Session;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    monitor-exit p0

    return-void

    .line 290
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    .end local p1    # "subsession":Landroid/telecom/Logging/Session;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist cleanupStaleSessions(J)V
    .locals 9
    .param p1, "timeoutMs"    # J

    monitor-enter p0

    .line 453
    :try_start_0
    const-string v0, "Stale Sessions Cleaned:\n"

    .line 454
    .local v0, "logMessage":Ljava/lang/String;
    const/4 v1, 0x0

    .line 455
    .local v1, "isSessionsStale":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 460
    .local v2, "currentTimeMs":J
    iget-object v4, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    .line 461
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/telecom/Logging/Session;>;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 462
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 463
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/telecom/Logging/Session;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/Logging/Session;

    .line 464
    .local v6, "session":Landroid/telecom/Logging/Session;
    invoke-virtual {v6}, Landroid/telecom/Logging/Session;->getExecutionStartTimeMilliseconds()J

    move-result-wide v7

    sub-long v7, v2, v7

    cmp-long v7, v7, p1

    if-lez v7, :cond_0

    .line 465
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 466
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Landroid/telecom/Logging/Session;->printFullSessionTree()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 467
    const/4 v1, 0x1

    .line 469
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/telecom/Logging/Session;>;"
    .end local v6    # "session":Landroid/telecom/Logging/Session;
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    :cond_0
    goto :goto_0

    .line 470
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/telecom/Logging/Session;>;>;"
    :cond_1
    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 471
    const-string v5, "Logging"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v4}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 473
    :cond_2
    const-string v5, "Logging"

    const-string v6, "No stale logging sessions needed to be cleaned..."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v6, v4}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    :goto_1
    monitor-exit p0

    return-void

    .line 452
    .end local v0    # "logMessage":Ljava/lang/String;
    .end local v1    # "isSessionsStale":Z
    .end local v2    # "currentTimeMs":J
    .end local p1    # "timeoutMs":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V
    .locals 5
    .param p1, "subsession"    # Landroid/telecom/Logging/Session;
    .param p2, "shortMethodName"    # Ljava/lang/String;

    monitor-enter p0

    .line 305
    if-nez p1, :cond_0

    .line 306
    monitor-exit p0

    return-void

    .line 308
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->resetStaleSessionTimer()V

    .line 309
    invoke-virtual {p1, p2}, Landroid/telecom/Logging/Session;->setShortMethodName(Ljava/lang/String;)V

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/telecom/Logging/Session;->setExecutionStartTimeMs(J)V

    .line 311
    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v0

    .line 312
    .local v0, "parentSession":Landroid/telecom/Logging/Session;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 313
    const-string v2, "Logging"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Log.continueSession was called with no session active for method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Landroid/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    monitor-exit p0

    return-void

    .line 318
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->isStartedFromActiveSession()Z

    move-result v2

    if-nez v2, :cond_2

    .line 320
    const-string v2, "Logging"

    const-string v3, "CONTINUE_SUBSESSION"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 322
    :cond_2
    const-string v2, "Logging"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CONTINUE_SUBSESSION (Invisible Subsession) with Method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    :goto_0
    monitor-exit p0

    return-void

    .line 304
    .end local v0    # "parentSession":Landroid/telecom/Logging/Session;
    .end local p1    # "subsession":Landroid/telecom/Logging/Session;
    .end local p2    # "shortMethodName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist createSubsession()Landroid/telecom/Logging/Session;
    .locals 1

    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/Logging/SessionManager;->createSubsession(Z)Landroid/telecom/Logging/Session;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized blacklist createSubsession(Z)Landroid/telecom/Logging/Session;
    .locals 11
    .param p1, "isStartedFromActiveSession"    # Z

    monitor-enter p0

    .line 229
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v0

    .line 230
    .local v0, "threadId":I
    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session;

    .line 231
    .local v1, "threadSession":Landroid/telecom/Logging/Session;
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 234
    sget-boolean v3, Landroid/telecom/Log;->OPLUS_DEBUG:Z

    if-eqz v3, :cond_0

    .line 235
    const-string v3, "Logging"

    const-string v4, "Log.createSubsession was called with no session active."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    :cond_0
    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    .line 242
    :cond_1
    :try_start_1
    new-instance v10, Landroid/telecom/Logging/Session;

    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->getNextChildId()Ljava/lang/String;

    move-result-object v4

    .line 243
    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->getShortMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 244
    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->getOwnerInfo()Ljava/lang/String;

    move-result-object v9

    move-object v3, v10

    move v8, p1

    invoke-direct/range {v3 .. v9}, Landroid/telecom/Logging/Session;-><init>(Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)V

    move-object v3, v10

    .line 245
    .local v3, "newSubsession":Landroid/telecom/Logging/Session;
    invoke-virtual {v1, v3}, Landroid/telecom/Logging/Session;->addChild(Landroid/telecom/Logging/Session;)V

    .line 246
    invoke-virtual {v3, v1}, Landroid/telecom/Logging/Session;->setParentSession(Landroid/telecom/Logging/Session;)V

    .line 248
    if-nez p1, :cond_2

    .line 249
    const-string v4, "Logging"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CREATE_SUBSESSION "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 250
    invoke-virtual {v3}, Landroid/telecom/Logging/Session;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    .line 249
    invoke-static {v4, v5, v2}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 252
    :cond_2
    const-string v4, "Logging"

    const-string v5, "CREATE_SUBSESSION (Invisible subsession)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v2}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    :goto_0
    monitor-exit p0

    return-object v3

    .line 228
    .end local v0    # "threadId":I
    .end local v1    # "threadSession":Landroid/telecom/Logging/Session;
    .end local v3    # "newSubsession":Landroid/telecom/Logging/Session;
    .end local p1    # "isStartedFromActiveSession":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist endSession()V
    .locals 7

    monitor-enter p0

    .line 332
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v0

    .line 333
    .local v0, "threadId":I
    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session;

    .line 334
    .local v1, "completedSession":Landroid/telecom/Logging/Session;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 335
    const-string v3, "Logging"

    const-string v4, "Log.endSession was called with no session active."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    monitor-exit p0

    return-void

    .line 339
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/telecom/Logging/Session;->markSessionCompleted(J)V

    .line 340
    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->isStartedFromActiveSession()Z

    move-result v3

    if-nez v3, :cond_1

    .line 341
    const-string v3, "Logging"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "END_SUBSESSION (dur: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 342
    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->getLocalExecutionTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mS)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    .line 341
    invoke-static {v3, v4, v2}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 344
    :cond_1
    const-string v3, "Logging"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "END_SUBSESSION (Invisible Subsession) (dur: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 345
    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->getLocalExecutionTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    .line 344
    invoke-static {v3, v4, v2}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    :goto_0
    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v2

    .line 350
    .local v2, "parentSession":Landroid/telecom/Logging/Session;
    iget-object v3, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    invoke-direct {p0, v1}, Landroid/telecom/Logging/SessionManager;->endParentSessions(Landroid/telecom/Logging/Session;)V

    .line 354
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/telecom/Logging/Session;->isSessionCompleted()Z

    move-result v3

    if-nez v3, :cond_2

    .line 355
    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->isStartedFromActiveSession()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 356
    iget-object v3, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    :cond_2
    monitor-exit p0

    return-void

    .line 331
    .end local v0    # "threadId":I
    .end local v1    # "completedSession":Landroid/telecom/Logging/Session;
    .end local v2    # "parentSession":Landroid/telecom/Logging/Session;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist getExternalSession()Landroid/telecom/Logging/Session$Info;
    .locals 1

    monitor-enter p0

    .line 259
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/telecom/Logging/SessionManager;->getExternalSession(Ljava/lang/String;)Landroid/telecom/Logging/Session$Info;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 259
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist getExternalSession(Ljava/lang/String;)Landroid/telecom/Logging/Session$Info;
    .locals 5
    .param p1, "ownerInfo"    # Ljava/lang/String;

    monitor-enter p0

    .line 270
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v0

    .line 271
    .local v0, "threadId":I
    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session;

    .line 272
    .local v1, "threadSession":Landroid/telecom/Logging/Session;
    if-nez v1, :cond_1

    .line 275
    sget-boolean v2, Landroid/telecom/Log;->OPLUS_DEBUG:Z

    if-eqz v2, :cond_0

    .line 276
    const-string v2, "Logging"

    const-string v3, "Log.getExternalSession was called with no session active."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    :cond_0
    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    .line 282
    :cond_1
    :try_start_1
    invoke-virtual {v1, p1}, Landroid/telecom/Logging/Session;->getExternalInfo(Ljava/lang/String;)Landroid/telecom/Logging/Session$Info;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 269
    .end local v0    # "threadId":I
    .end local v1    # "threadSession":Landroid/telecom/Logging/Session;
    .end local p1    # "ownerInfo":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist getSessionId()Ljava/lang/String;
    .locals 2

    .line 404
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Logging/Session;

    .line 405
    .local v0, "currentSession":Landroid/telecom/Logging/Session;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1
.end method

.method synthetic blacklist lambda$new$0$android-telecom-Logging-SessionManager()V
    .locals 2

    .line 60
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getSessionCleanupTimeoutMs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/telecom/Logging/SessionManager;->cleanupStaleSessions(J)V

    return-void
.end method

.method synthetic blacklist lambda$new$1$android-telecom-Logging-SessionManager()J
    .locals 2

    .line 79
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 80
    const-wide/16 v0, 0x7530

    return-wide v0

    .line 82
    :cond_0
    invoke-direct {p0, v0}, Landroid/telecom/Logging/SessionManager;->getCleanupTimeout(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized blacklist printActiveSessions()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 443
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 444
    .local v0, "message":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 445
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/telecom/Logging/Session;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session;

    invoke-virtual {v3}, Landroid/telecom/Logging/Session;->printFullSessionTree()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    nop

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/telecom/Logging/Session;>;"
    goto :goto_0

    .line 448
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 442
    .end local v0    # "message":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist registerSessionListener(Landroid/telecom/Logging/SessionManager$ISessionListener;)V
    .locals 1
    .param p1, "l"    # Landroid/telecom/Logging/SessionManager$ISessionListener;

    monitor-enter p0

    .line 409
    if-eqz p1, :cond_0

    .line 410
    :try_start_0
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 408
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    .end local p1    # "l":Landroid/telecom/Logging/SessionManager$ISessionListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 412
    .restart local p0    # "this":Landroid/telecom/Logging/SessionManager;
    .restart local p1    # "l":Landroid/telecom/Logging/SessionManager$ISessionListener;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public blacklist setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 102
    iput-object p1, p0, Landroid/telecom/Logging/SessionManager;->mContext:Landroid/content/Context;

    .line 103
    return-void
.end method

.method public declared-synchronized blacklist startExternalSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V
    .locals 10
    .param p1, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .param p2, "shortMethodName"    # Ljava/lang/String;

    monitor-enter p0

    .line 172
    if-nez p1, :cond_0

    .line 173
    monitor-exit p0

    return-void

    .line 176
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v0

    .line 177
    .local v0, "threadId":I
    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session;

    .line 178
    .local v1, "threadSession":Landroid/telecom/Logging/Session;
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 181
    const-string v3, "Logging"

    const-string/jumbo v4, "trying to start an external session with a session already active."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    monitor-exit p0

    return-void

    .line 189
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    :cond_1
    :try_start_1
    sget-boolean v3, Landroid/telecom/Log;->OPLUS_DEBUG:Z

    if-eqz v3, :cond_2

    .line 190
    const-string v3, "Logging"

    const-string v4, "START_EXTERNAL_SESSION"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    :cond_2
    new-instance v9, Landroid/telecom/Logging/Session;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "E-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/telecom/Logging/Session$Info;->sessionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Landroid/telecom/Logging/Session$Info;->methodPath:Ljava/lang/String;

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    iget-object v8, p1, Landroid/telecom/Logging/Session$Info;->ownerInfo:Ljava/lang/String;

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Landroid/telecom/Logging/Session;-><init>(Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)V

    move-object v2, v9

    .line 196
    .local v2, "externalSession":Landroid/telecom/Logging/Session;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/telecom/Logging/Session;->setIsExternal(Z)V

    .line 199
    const-wide/16 v3, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/telecom/Logging/Session;->markSessionCompleted(J)V

    .line 202
    iget-object v3, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-virtual {p0}, Landroid/telecom/Logging/SessionManager;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object v3

    .line 205
    .local v3, "childSession":Landroid/telecom/Logging/Session;
    invoke-virtual {p0, v3, p2}, Landroid/telecom/Logging/SessionManager;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    monitor-exit p0

    return-void

    .line 171
    .end local v0    # "threadId":I
    .end local v1    # "threadSession":Landroid/telecom/Logging/Session;
    .end local v2    # "externalSession":Landroid/telecom/Logging/Session;
    .end local v3    # "childSession":Landroid/telecom/Logging/Session;
    .end local p1    # "sessionInfo":Landroid/telecom/Logging/Session$Info;
    .end local p2    # "shortMethodName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Landroid/telecom/Logging/Session$Info;
    .param p2, "shortMethodName"    # Ljava/lang/String;
    .param p3, "callerIdentification"    # Ljava/lang/String;

    monitor-enter p0

    .line 128
    if-nez p1, :cond_0

    .line 129
    :try_start_0
    invoke-virtual {p0, p2, p3}, Landroid/telecom/Logging/SessionManager;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/telecom/Logging/SessionManager;->startExternalSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :goto_0
    monitor-exit p0

    return-void

    .line 127
    .end local p1    # "info":Landroid/telecom/Logging/Session$Info;
    .end local p2    # "shortMethodName":Ljava/lang/String;
    .end local p3    # "callerIdentification":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist startSession(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "shortMethodName"    # Ljava/lang/String;
    .param p2, "callerIdentification"    # Ljava/lang/String;

    monitor-enter p0

    .line 141
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->resetStaleSessionTimer()V

    .line 142
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v0

    .line 143
    .local v0, "threadId":I
    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session;

    .line 146
    .local v1, "activeSession":Landroid/telecom/Logging/Session;
    if-eqz v1, :cond_0

    .line 147
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/telecom/Logging/SessionManager;->createSubsession(Z)Landroid/telecom/Logging/Session;

    move-result-object v2

    .line 148
    .local v2, "childSession":Landroid/telecom/Logging/Session;
    invoke-virtual {p0, v2, p1}, Landroid/telecom/Logging/SessionManager;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    .line 154
    .end local v2    # "childSession":Landroid/telecom/Logging/Session;
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    :cond_0
    :try_start_1
    sget-boolean v2, Landroid/telecom/Log;->OPLUS_DEBUG:Z

    if-eqz v2, :cond_1

    .line 155
    const-string v2, "Logging"

    const-string v3, "START_SESSION"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    :cond_1
    new-instance v9, Landroid/telecom/Logging/Session;

    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getNextSessionID()Ljava/lang/String;

    move-result-object v3

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    move-object v2, v9

    move-object v4, p1

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Landroid/telecom/Logging/Session;-><init>(Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)V

    move-object v2, v9

    .line 161
    .local v2, "newSession":Landroid/telecom/Logging/Session;
    iget-object v3, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    .line 140
    .end local v0    # "threadId":I
    .end local v1    # "activeSession":Landroid/telecom/Logging/Session;
    .end local v2    # "newSession":Landroid/telecom/Logging/Session;
    .end local p1    # "shortMethodName":Ljava/lang/String;
    .end local p2    # "callerIdentification":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
