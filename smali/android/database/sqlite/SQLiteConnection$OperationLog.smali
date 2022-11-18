.class final Landroid/database/sqlite/SQLiteConnection$OperationLog;
.super Ljava/lang/Object;
.source "SQLiteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OperationLog"
.end annotation


# static fields
.field private static final greylist-max-o COOKIE_GENERATION_SHIFT:I = 0x8

.field private static final greylist-max-o COOKIE_INDEX_MASK:I = 0xff

.field private static final greylist-max-o MAX_RECENT_OPERATIONS:I = 0x14


# instance fields
.field private greylist-max-o mGeneration:I

.field private greylist-max-o mIndex:I

.field private final greylist-max-o mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

.field private final greylist-max-o mPool:Landroid/database/sqlite/SQLiteConnectionPool;

.field private blacklist mResultLong:J

.field private blacklist mResultString:Ljava/lang/String;


# direct methods
.method constructor greylist-max-o <init>(Landroid/database/sqlite/SQLiteConnectionPool;)V
    .locals 2
    .param p1, "pool"    # Landroid/database/sqlite/SQLiteConnectionPool;

    .line 1491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1484
    const/16 v0, 0x14

    new-array v0, v0, [Landroid/database/sqlite/SQLiteConnection$Operation;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    .line 1488
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mResultLong:J

    .line 1492
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    .line 1493
    return-void
.end method

.method private greylist-max-o endOperationDeferLogLocked(I)Z
    .locals 7
    .param p1, "cookie"    # I

    .line 1583
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object v0

    .line 1584
    .local v0, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1585
    const-wide/32 v2, 0x100000

    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1586
    invoke-static {v0}, Landroid/database/sqlite/SQLiteConnection$Operation;->-$$Nest$mgetTraceMethodName(Landroid/database/sqlite/SQLiteConnection$Operation;)Ljava/lang/String;

    move-result-object v4

    iget v5, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    invoke-static {v2, v3, v4, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1589
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    .line 1590
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    .line 1591
    iget-wide v3, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    iget-wide v5, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    sub-long/2addr v3, v5

    .line 1594
    .local v3, "execTime":J
    const-wide/16 v5, 0x1f4

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    .line 1595
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SlowSQLite: /"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/database/sqlite/SQLiteConnection$Operation;->-$$Nest$mgetTraceMethodName(Landroid/database/sqlite/SQLiteConnection$Operation;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getObfuscateSql(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/ cost= /"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Quality"

    invoke-static {v6, v5}, Landroid/util/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    :cond_1
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v5, v3, v4}, Landroid/database/sqlite/SQLiteConnectionPool;->onStatementExecuted(J)V

    .line 1599
    sget-boolean v5, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_LOG_SLOW_QUERIES:Z

    if-eqz v5, :cond_2

    invoke-static {v3, v4}, Landroid/database/sqlite/SQLiteDebug;->shouldLogSlowQuery(J)Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 1602
    .end local v3    # "execTime":J
    :cond_3
    return v1
.end method

.method private blacklist getObfuscateSql(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "sqlStr"    # Ljava/lang/String;

    .line 1609
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 1610
    .local v0, "digest":Ljava/security/MessageDigest;
    if-eqz v0, :cond_2

    .line 1611
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 1612
    .local v1, "hash":[B
    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    .line 1613
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1614
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 1615
    const-string v4, "%02x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-byte v7, v1, v3

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1617
    const/16 v4, 0xf

    if-ne v3, v4, :cond_0

    .line 1618
    goto :goto_1

    .line 1614
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1621
    .end local v3    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 1626
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "hash":[B
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    goto :goto_2

    .line 1624
    :catch_0
    move-exception v0

    .line 1625
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CatchException getObfuscateSql():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SQLiteConnection"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    const-string v0, ""

    return-object v0
.end method

.method private greylist-max-o getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;
    .locals 3
    .param p1, "cookie"    # I

    .line 1649
    and-int/lit16 v0, p1, 0xff

    .line 1650
    .local v0, "index":I
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v1, v1, v0

    .line 1651
    .local v1, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    iget v2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    if-ne v2, p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method private greylist-max-o logOperationLocked(ILjava/lang/String;)V
    .locals 4
    .param p1, "cookie"    # I
    .param p2, "detail"    # Ljava/lang/String;

    .line 1632
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object v0

    .line 1633
    .local v0, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    iget-wide v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mResultLong:J

    iput-wide v1, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mResultLong:J

    .line 1634
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mResultString:Ljava/lang/String;

    iput-object v1, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mResultString:Ljava/lang/String;

    .line 1635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1636
    .local v1, "msg":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    .line 1637
    if-eqz p2, :cond_0

    .line 1638
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1640
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SQLiteConnection"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    return-void
.end method

.method private greylist-max-o newOperationCookieLocked(I)I
    .locals 2
    .param p1, "index"    # I

    .line 1644
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mGeneration:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mGeneration:I

    .line 1645
    .local v0, "generation":I
    shl-int/lit8 v1, v0, 0x8

    or-int/2addr v1, p1

    return v1
.end method


# virtual methods
.method public greylist-max-o beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 8
    .param p1, "kind"    # Ljava/lang/String;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "bindArgs"    # [Ljava/lang/Object;

    .line 1496
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mResultLong:J

    .line 1497
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mResultString:Ljava/lang/String;

    .line 1499
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v3

    .line 1500
    :try_start_0
    iget v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x14

    .line 1501
    .local v4, "index":I
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v5, v5, v4

    .line 1502
    .local v5, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    if-nez v5, :cond_0

    .line 1503
    new-instance v6, Landroid/database/sqlite/SQLiteConnection$Operation;

    invoke-direct {v6, v2}, Landroid/database/sqlite/SQLiteConnection$Operation;-><init>(Landroid/database/sqlite/SQLiteConnection$Operation-IA;)V

    move-object v5, v6

    .line 1504
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aput-object v5, v6, v4

    goto :goto_0

    .line 1506
    :cond_0
    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    .line 1507
    iput-object v2, v5, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    .line 1508
    iget-object v6, v5, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 1509
    iget-object v6, v5, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1512
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartWallTime:J

    .line 1513
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    .line 1514
    iput-object p1, v5, Landroid/database/sqlite/SQLiteConnection$Operation;->mKind:Ljava/lang/String;

    .line 1515
    iput-object p2, v5, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    .line 1516
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteConnectionPool;->getPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/database/sqlite/SQLiteConnection$Operation;->mPath:Ljava/lang/String;

    .line 1517
    iput-wide v0, v5, Landroid/database/sqlite/SQLiteConnection$Operation;->mResultLong:J

    .line 1518
    iput-object v2, v5, Landroid/database/sqlite/SQLiteConnection$Operation;->mResultString:Ljava/lang/String;

    .line 1519
    if-eqz p3, :cond_4

    .line 1520
    iget-object v0, v5, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 1521
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v5, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    goto :goto_1

    .line 1523
    :cond_2
    iget-object v0, v5, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1525
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p3

    if-ge v0, v1, :cond_4

    .line 1526
    aget-object v1, p3, v0

    .line 1527
    .local v1, "arg":Ljava/lang/Object;
    if-eqz v1, :cond_3

    instance-of v2, v1, [B

    if-eqz v2, :cond_3

    .line 1529
    iget-object v2, v5, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-static {}, Landroid/database/sqlite/SQLiteConnection;->-$$Nest$sfgetEMPTY_BYTE_ARRAY()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1531
    :cond_3
    iget-object v2, v5, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1525
    .end local v1    # "arg":Ljava/lang/Object;
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1535
    .end local v0    # "i":I
    :cond_4
    invoke-direct {p0, v4}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->newOperationCookieLocked(I)I

    move-result v0

    iput v0, v5, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    .line 1536
    const-wide/32 v0, 0x100000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1537
    invoke-static {v5}, Landroid/database/sqlite/SQLiteConnection$Operation;->-$$Nest$mgetTraceMethodName(Landroid/database/sqlite/SQLiteConnection$Operation;)Ljava/lang/String;

    move-result-object v2

    iget v6, v5, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    invoke-static {v0, v1, v2, v6}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1540
    :cond_5
    iput v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    .line 1541
    iget v0, v5, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    monitor-exit v3

    return v0

    .line 1542
    .end local v4    # "index":I
    .end local v5    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public greylist-max-o describeCurrentOperation()Ljava/lang/String;
    .locals 4

    .line 1655
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 1656
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    iget v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    aget-object v1, v1, v2

    .line 1657
    .local v1, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    if-nez v2, :cond_0

    .line 1658
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1659
    .local v2, "msg":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    .line 1660
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 1662
    .end local v2    # "msg":Ljava/lang/StringBuilder;
    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 1663
    .end local v1    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist dump(Landroid/util/Printer;)V
    .locals 9
    .param p1, "printer"    # Landroid/util/Printer;

    .line 1667
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 1668
    :try_start_0
    const-string v1, "  Most recently executed operations:"

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1669
    iget v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    .line 1670
    .local v1, "index":I
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v2, v2, v1

    .line 1671
    .local v2, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    if-eqz v2, :cond_3

    .line 1675
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1676
    .local v3, "opDF":Ljava/text/SimpleDateFormat;
    const/4 v4, 0x0

    .line 1678
    .local v4, "n":I
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1679
    .local v5, "msg":Ljava/lang/StringBuilder;
    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1680
    new-instance v6, Ljava/util/Date;

    iget-wide v7, v2, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartWallTime:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 1681
    .local v6, "formattedStartTime":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1682
    const-string v7, "] "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1683
    const/4 v7, 0x0

    invoke-virtual {v2, v5, v7}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    .line 1684
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1686
    if-lez v1, :cond_1

    .line 1687
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1689
    :cond_1
    const/16 v1, 0x13

    .line 1691
    :goto_0
    add-int/lit8 v4, v4, 0x1

    .line 1692
    iget-object v7, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v7, v7, v1

    move-object v2, v7

    .line 1693
    .end local v5    # "msg":Ljava/lang/StringBuilder;
    .end local v6    # "formattedStartTime":Ljava/lang/String;
    if-eqz v2, :cond_2

    const/16 v5, 0x14

    if-lt v4, v5, :cond_0

    .line 1694
    .end local v3    # "opDF":Ljava/text/SimpleDateFormat;
    .end local v4    # "n":I
    :cond_2
    goto :goto_1

    .line 1695
    :cond_3
    const-string v3, "    <none>"

    invoke-interface {p1, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1697
    .end local v1    # "index":I
    .end local v2    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :goto_1
    monitor-exit v0

    .line 1698
    return-void

    .line 1697
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o endOperation(I)V
    .locals 2
    .param p1, "cookie"    # I

    .line 1555
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 1556
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogLocked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1557
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperationLocked(ILjava/lang/String;)V

    .line 1559
    :cond_0
    monitor-exit v0

    .line 1560
    return-void

    .line 1559
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o endOperationDeferLog(I)Z
    .locals 2
    .param p1, "cookie"    # I

    .line 1563
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 1564
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogLocked(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1565
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o failOperation(ILjava/lang/Exception;)V
    .locals 2
    .param p1, "cookie"    # I
    .param p2, "ex"    # Ljava/lang/Exception;

    .line 1546
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 1547
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object v1

    .line 1548
    .local v1, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    if-eqz v1, :cond_0

    .line 1549
    iput-object p2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    .line 1551
    .end local v1    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :cond_0
    monitor-exit v0

    .line 1552
    return-void

    .line 1551
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o logOperation(ILjava/lang/String;)V
    .locals 2
    .param p1, "cookie"    # I
    .param p2, "detail"    # Ljava/lang/String;

    .line 1569
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 1570
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperationLocked(ILjava/lang/String;)V

    .line 1571
    monitor-exit v0

    .line 1572
    return-void

    .line 1571
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setResult(J)V
    .locals 0
    .param p1, "longResult"    # J

    .line 1575
    iput-wide p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mResultLong:J

    .line 1576
    return-void
.end method

.method public blacklist setResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "stringResult"    # Ljava/lang/String;

    .line 1579
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mResultString:Ljava/lang/String;

    .line 1580
    return-void
.end method
