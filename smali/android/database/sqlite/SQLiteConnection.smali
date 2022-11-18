.class public final Landroid/database/sqlite/SQLiteConnection;
.super Ljava/lang/Object;
.source "SQLiteConnection.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteConnection$Operation;,
        Landroid/database/sqlite/SQLiteConnection$OperationLog;,
        Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;,
        Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o EMPTY_BYTE_ARRAY:[B

.field private static final greylist-max-o EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SQLiteConnection"


# instance fields
.field private greylist-max-o mCancellationSignalAttachCount:I

.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private final greylist-max-o mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

.field private final greylist-max-o mConnectionId:I

.field private greylist-max-o mConnectionPtr:J

.field private final greylist-max-o mIsPrimaryConnection:Z

.field private final greylist-max-o mIsReadOnlyConnection:Z

.field private greylist-max-o mOnlyAllowReadOnlyOperations:Z

.field private final greylist-max-o mPool:Landroid/database/sqlite/SQLiteConnectionPool;

.field private final greylist-max-o mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

.field private greylist-max-o mPreparedStatementPool:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

.field private final greylist-max-o mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mfinalizePreparedStatement(Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->finalizePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetEMPTY_BYTE_ARRAY()[B
    .locals 1

    sget-object v0, Landroid/database/sqlite/SQLiteConnection;->EMPTY_BYTE_ARRAY:[B

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smtrimSqlForDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroid/database/sqlite/SQLiteConnection;->trimSqlForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 102
    nop

    .line 106
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Landroid/database/sqlite/SQLiteConnection;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 107
    new-array v0, v0, [B

    sput-object v0, Landroid/database/sqlite/SQLiteConnection;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteDatabaseConfiguration;IZ)V
    .locals 3
    .param p1, "pool"    # Landroid/database/sqlite/SQLiteConnectionPool;
    .param p2, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;
    .param p3, "connectionId"    # I
    .param p4, "primaryConnection"    # Z

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 180
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnection;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    .line 181
    new-instance v1, Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-direct {v1, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;-><init>(Landroid/database/sqlite/SQLiteConnectionPool;)V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    .line 182
    new-instance v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-direct {v1, p2}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;-><init>(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .line 183
    iput p3, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionId:I

    .line 184
    iput-boolean p4, p0, Landroid/database/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    .line 185
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isReadOnlyDatabase()Z

    move-result v2

    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    .line 186
    new-instance v2, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    iget v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    invoke-direct {v2, p0, v1}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;-><init>(Landroid/database/sqlite/SQLiteConnection;I)V

    iput-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    .line 188
    const-string v1, "SQLiteConnection.close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method private greylist-max-o acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .locals 11
    .param p1, "sql"    # Ljava/lang/String;

    .line 1062
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1063
    .local v0, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    const/4 v1, 0x0

    .line 1064
    .local v1, "skipCache":Z
    if-eqz v0, :cond_1

    .line 1065
    iget-boolean v2, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInUse:Z

    if-nez v2, :cond_0

    .line 1066
    return-object v0

    .line 1071
    :cond_0
    const/4 v1, 0x1

    .line 1074
    :cond_1
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v2, v3, p1}, Landroid/database/sqlite/SQLiteConnection;->nativePrepareStatement(JLjava/lang/String;)J

    move-result-wide v2

    .line 1076
    .local v2, "statementPtr":J
    :try_start_0
    iget-wide v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v4, v5, v2, v3}, Landroid/database/sqlite/SQLiteConnection;->nativeGetParameterCount(JJ)I

    move-result v8

    .line 1077
    .local v8, "numParameters":I
    invoke-static {p1}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v9

    .line 1078
    .local v9, "type":I
    iget-wide v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v4, v5, v2, v3}, Landroid/database/sqlite/SQLiteConnection;->nativeIsReadOnly(JJ)Z

    move-result v10

    .line 1079
    .local v10, "readOnly":Z
    move-object v4, p0

    move-object v5, p1

    move-wide v6, v2

    invoke-direct/range {v4 .. v10}, Landroid/database/sqlite/SQLiteConnection;->obtainPreparedStatement(Ljava/lang/String;JIIZ)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v4

    move-object v0, v4

    .line 1080
    const/4 v4, 0x1

    if-nez v1, :cond_2

    invoke-static {v9}, Landroid/database/sqlite/SQLiteConnection;->isCacheable(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1081
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v5, p1, v0}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    iput-boolean v4, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1091
    .end local v8    # "numParameters":I
    .end local v9    # "type":I
    .end local v10    # "readOnly":Z
    :cond_2
    nop

    .line 1092
    iput-boolean v4, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInUse:Z

    .line 1093
    return-object v0

    .line 1084
    :catch_0
    move-exception v4

    .line 1087
    .local v4, "ex":Ljava/lang/RuntimeException;
    if-eqz v0, :cond_3

    iget-boolean v5, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z

    if-nez v5, :cond_4

    .line 1088
    :cond_3
    iget-wide v5, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v5, v6, v2, v3}, Landroid/database/sqlite/SQLiteConnection;->nativeFinalizeStatement(JJ)V

    .line 1090
    :cond_4
    throw v4
.end method

.method private greylist-max-o applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 1
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1224
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1225
    iget-boolean v0, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    if-eqz v0, :cond_0

    .line 1226
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    goto :goto_0

    .line 1228
    :cond_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 1231
    :cond_1
    :goto_0
    return-void
.end method

.method private greylist-max-o attachCancellationSignal(Landroid/os/CancellationSignal;)V
    .locals 4
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 1125
    if-eqz p1, :cond_0

    .line 1126
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 1128
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    .line 1129
    if-ne v0, v1, :cond_0

    .line 1131
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v2, v3, v1}, Landroid/database/sqlite/SQLiteConnection;->nativeResetCancel(JZ)V

    .line 1134
    invoke-virtual {p1, p0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 1137
    :cond_0
    return-void
.end method

.method private greylist-max-o bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V
    .locals 12
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .param p2, "bindArgs"    # [Ljava/lang/Object;

    .line 1165
    if-eqz p2, :cond_0

    array-length v0, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1166
    .local v0, "count":I
    :goto_0
    iget v1, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    if-ne v0, v1, :cond_5

    .line 1171
    if-nez v0, :cond_1

    .line 1172
    return-void

    .line 1175
    :cond_1
    iget-wide v9, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    .line 1176
    .local v9, "statementPtr":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 1177
    aget-object v11, p2, v1

    .line 1178
    .local v11, "arg":Ljava/lang/Object;
    invoke-static {v11}, Landroid/database/DatabaseUtils;->getTypeOfObject(Ljava/lang/Object;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1195
    :pswitch_0
    instance-of v2, v11, Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    .line 1198
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 v6, v1, 0x1

    .line 1199
    move-object v4, v11

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    const-wide/16 v4, 0x1

    goto :goto_2

    .line 1191
    :pswitch_1
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 v6, v1, 0x1

    move-object v7, v11

    check-cast v7, [B

    move-wide v4, v9

    invoke-static/range {v2 .. v7}, Landroid/database/sqlite/SQLiteConnection;->nativeBindBlob(JJI[B)V

    .line 1192
    goto :goto_3

    .line 1187
    :pswitch_2
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 v6, v1, 0x1

    move-object v4, v11

    check-cast v4, Ljava/lang/Number;

    .line 1188
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    .line 1187
    move-wide v4, v9

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SQLiteConnection;->nativeBindDouble(JJID)V

    .line 1189
    goto :goto_3

    .line 1183
    :pswitch_3
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 v6, v1, 0x1

    move-object v4, v11

    check-cast v4, Ljava/lang/Number;

    .line 1184
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    .line 1183
    move-wide v4, v9

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SQLiteConnection;->nativeBindLong(JJIJ)V

    .line 1185
    goto :goto_3

    .line 1180
    :pswitch_4
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 v4, v1, 0x1

    invoke-static {v2, v3, v9, v10, v4}, Landroid/database/sqlite/SQLiteConnection;->nativeBindNull(JJI)V

    .line 1181
    goto :goto_3

    .line 1199
    :cond_2
    const-wide/16 v4, 0x0

    :goto_2
    move-wide v7, v4

    .line 1198
    move-wide v4, v9

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SQLiteConnection;->nativeBindLong(JJIJ)V

    goto :goto_3

    .line 1201
    :cond_3
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-wide v4, v9

    invoke-static/range {v2 .. v7}, Landroid/database/sqlite/SQLiteConnection;->nativeBindString(JJILjava/lang/String;)V

    .line 1176
    .end local v11    # "arg":Ljava/lang/Object;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1206
    .end local v1    # "i":I
    :cond_4
    return-void

    .line 1167
    .end local v9    # "statementPtr":J
    :cond_5
    new-instance v1, Landroid/database/sqlite/SQLiteBindOrColumnIndexOutOfRangeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bind arguments but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " were provided."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/sqlite/SQLiteBindOrColumnIndexOutOfRangeException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static greylist-max-o canonicalizeSyncMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 411
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    goto :goto_0

    :pswitch_0
    const-string v0, "3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :pswitch_1
    const-string v0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :pswitch_2
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_3
    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 417
    return-object p0

    .line 415
    :pswitch_4
    const-string v0, "EXTRA"

    return-object v0

    .line 414
    :pswitch_5
    const-string v0, "FULL"

    return-object v0

    .line 413
    :pswitch_6
    const-string v0, "NORMAL"

    return-object v0

    .line 412
    :pswitch_7
    const-string v0, "OFF"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private blacklist checkDatabaseWiped()V
    .locals 5

    .line 541
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->checkDbWipe()Z

    move-result v0

    if-nez v0, :cond_0

    .line 542
    return-void

    .line 545
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-wipecheck"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 548
    .local v0, "checkFile":Ljava/io/File;
    const-string v1, "SELECT count(*) FROM sqlite_master WHERE type=\'table\' AND name=\'android_metadata\'"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 551
    .local v1, "hasMetadataTable":Z
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    .line 553
    .local v2, "hasCheckFile":Z
    iget-boolean v3, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v3, :cond_2

    if-nez v2, :cond_2

    .line 556
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 559
    :cond_2
    if-nez v1, :cond_3

    if-eqz v2, :cond_3

    .line 561
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    const-string/jumbo v4, "unknown"

    invoke-static {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->wipeDetected(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    .end local v0    # "checkFile":Ljava/io/File;
    .end local v1    # "hasMetadataTable":Z
    .end local v2    # "hasCheckFile":Z
    :cond_3
    goto :goto_1

    .line 564
    :catch_0
    move-exception v0

    .line 565
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "SQLiteConnection"

    const-string v2, "Unexpected exception while checking for wipe"

    invoke-static {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->wtfAsSystemServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 568
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private greylist-max-o detachCancellationSignal(Landroid/os/CancellationSignal;)V
    .locals 3
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 1140
    if-eqz p1, :cond_0

    .line 1141
    nop

    .line 1143
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    .line 1144
    if-nez v0, :cond_0

    .line 1146
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 1149
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteConnection;->nativeResetCancel(JZ)V

    .line 1152
    :cond_0
    return-void
.end method

.method private greylist-max-o dispose(Z)V
    .locals 6
    .param p1, "finalized"    # Z

    .line 284
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_1

    .line 285
    if-eqz p1, :cond_0

    .line 286
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 288
    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 291
    :cond_1
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 292
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string v1, "close"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v4}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 294
    .local v0, "cookie":I
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->evictAll()V

    .line 295
    iget-wide v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v4, v5}, Landroid/database/sqlite/SQLiteConnection;->nativeClose(J)V

    .line 296
    iput-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 299
    goto :goto_0

    .line 298
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 299
    throw v1

    .line 301
    .end local v0    # "cookie":I
    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist executePerConnectionSqlFromConfiguration(I)V
    .locals 6
    .param p1, "startIndex"    # I

    .line 523
    move v0, p1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->perConnectionSql:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 524
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->perConnectionSql:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 525
    .local v1, "statement":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[Ljava/lang/Object;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v2

    .line 526
    .local v2, "type":I
    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_0

    .line 534
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported configuration statement: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 531
    :sswitch_0
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v5, v3}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 532
    goto :goto_1

    .line 528
    :sswitch_1
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v5, v3}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    .line 529
    nop

    .line 523
    .end local v1    # "statement":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[Ljava/lang/Object;>;"
    .end local v2    # "type":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 538
    .end local v0    # "i":I
    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist-max-o finalizePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 4
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1120
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v2, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteConnection;->nativeFinalizeStatement(JJ)V

    .line 1121
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->recyclePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1122
    return-void
.end method

.method private greylist-max-o getMainDbStatsUnsafe(IJJ)Landroid/database/sqlite/SQLiteDebug$DbStats;
    .locals 13
    .param p1, "lookaside"    # I
    .param p2, "pageCount"    # J
    .param p4, "pageSize"    # J

    .line 1352
    move-object v0, p0

    iget-boolean v1, v0, Landroid/database/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    if-eqz v1, :cond_0

    .line 1353
    iget-object v1, v0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    .local v1, "label":Ljava/lang/String;
    goto :goto_0

    .line 1355
    .end local v1    # "label":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/database/sqlite/SQLiteConnection;->mConnectionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1357
    .restart local v1    # "label":Ljava/lang/String;
    :goto_0
    new-instance v12, Landroid/database/sqlite/SQLiteDebug$DbStats;

    iget-object v2, v0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    .line 1358
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->hitCount()I

    move-result v9

    iget-object v2, v0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    .line 1359
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->missCount()I

    move-result v10

    iget-object v2, v0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    .line 1360
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->size()I

    move-result v11

    move-object v2, v12

    move-object v3, v1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move v8, p1

    invoke-direct/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDebug$DbStats;-><init>(Ljava/lang/String;JJIIII)V

    .line 1357
    return-object v12
.end method

.method private static greylist-max-o isCacheable(I)Z
    .locals 2
    .param p0, "statementType"    # I

    .line 1216
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 1220
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1218
    :cond_1
    :goto_0
    return v0
.end method

.method private blacklist maybeTruncateWalFile()V
    .locals 8

    .line 364
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->shouldTruncateWalFile:Z

    if-nez v0, :cond_0

    .line 365
    return-void

    .line 368
    :cond_0
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getWALTruncateSize()J

    move-result-wide v0

    .line 372
    .local v0, "threshold":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 373
    return-void

    .line 376
    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-wal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 377
    .local v2, "walFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_2

    .line 378
    return-void

    .line 380
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 381
    .local v3, "size":J
    cmp-long v5, v3, v0

    if-gez v5, :cond_3

    .line 385
    return-void

    .line 388
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes: Bigger than "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; truncating"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SQLiteConnection"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :try_start_0
    const-string v5, "PRAGMA wal_checkpoint(TRUNCATE)"

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7, v7}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    .line 392
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    const/4 v7, 0x0

    iput-boolean v7, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->shouldTruncateWalFile:Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    goto :goto_0

    .line 393
    :catch_0
    move-exception v5

    .line 394
    .local v5, "e":Landroid/database/sqlite/SQLiteException;
    const-string v7, "Failed to truncate the -wal file"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    .end local v5    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_0
    return-void
.end method

.method private static native greylist-max-o nativeBindBlob(JJI[B)V
.end method

.method private static native greylist-max-o nativeBindDouble(JJID)V
.end method

.method private static native greylist-max-o nativeBindLong(JJIJ)V
.end method

.method private static native greylist-max-o nativeBindNull(JJI)V
.end method

.method private static native greylist-max-o nativeBindString(JJILjava/lang/String;)V
.end method

.method private static native greylist-max-o nativeCancel(J)V
.end method

.method private static native greylist-max-o nativeClose(J)V
.end method

.method private static native blacklist nativeExecute(JJZ)V
.end method

.method private static native greylist-max-o nativeExecuteForBlobFileDescriptor(JJ)I
.end method

.method private static native greylist-max-o nativeExecuteForChangedRowCount(JJ)I
.end method

.method private static native greylist-max-o nativeExecuteForCursorWindow(JJJIIZ)J
.end method

.method private static native greylist-max-o nativeExecuteForLastInsertedRowId(JJ)J
.end method

.method private static native greylist-max-o nativeExecuteForLong(JJ)J
.end method

.method private static native greylist-max-o nativeExecuteForString(JJ)Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeFinalizeStatement(JJ)V
.end method

.method private static native greylist-max-o nativeGetColumnCount(JJ)I
.end method

.method private static native greylist-max-o nativeGetColumnName(JJI)Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeGetDbLookaside(J)I
.end method

.method private static native greylist-max-o nativeGetParameterCount(JJ)I
.end method

.method private static native greylist-max-o nativeIsReadOnly(JJ)Z
.end method

.method private static native greylist-max-o nativeOpen(Ljava/lang/String;ILjava/lang/String;ZZII)J
.end method

.method private static native greylist-max-o nativePrepareStatement(JLjava/lang/String;)J
.end method

.method private static native blacklist nativeRegisterCustomAggregateFunction(JLjava/lang/String;Ljava/util/function/BinaryOperator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/function/BinaryOperator<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native blacklist nativeRegisterCustomScalarFunction(JLjava/lang/String;Ljava/util/function/UnaryOperator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/function/UnaryOperator<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native greylist-max-o nativeRegisterLocalizedCollators(JLjava/lang/String;)V
.end method

.method private static native greylist-max-o nativeResetCancel(JZ)V
.end method

.method private static native greylist-max-o nativeResetStatementAndClearBindings(JJ)V
.end method

.method private greylist-max-o obtainPreparedStatement(Ljava/lang/String;JIIZ)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "statementPtr"    # J
    .param p4, "numParameters"    # I
    .param p5, "type"    # I
    .param p6, "readOnly"    # Z

    .line 1370
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementPool:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1371
    .local v0, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1372
    iget-object v2, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mPoolNext:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    iput-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementPool:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1373
    iput-object v1, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mPoolNext:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1374
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z

    goto :goto_0

    .line 1376
    :cond_0
    new-instance v2, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    invoke-direct {v2, v1}, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;-><init>(Landroid/database/sqlite/SQLiteConnection$PreparedStatement-IA;)V

    move-object v0, v2

    .line 1378
    :goto_0
    iput-object p1, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mSql:Ljava/lang/String;

    .line 1379
    iput-wide p2, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    .line 1380
    iput p4, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    .line 1381
    iput p5, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mType:I

    .line 1382
    iput-boolean p6, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    .line 1383
    return-object v0
.end method

.method static greylist-max-o open(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteDatabaseConfiguration;IZ)Landroid/database/sqlite/SQLiteConnection;
    .locals 3
    .param p0, "pool"    # Landroid/database/sqlite/SQLiteConnectionPool;
    .param p1, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;
    .param p2, "connectionId"    # I
    .param p3, "primaryConnection"    # Z

    .line 208
    new-instance v0, Landroid/database/sqlite/SQLiteConnection;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteConnection;-><init>(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteDatabaseConfiguration;IZ)V

    .line 211
    .local v0, "connection":Landroid/database/sqlite/SQLiteConnection;
    :try_start_0
    invoke-direct {v0}, Landroid/database/sqlite/SQLiteConnection;->open()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    return-object v0

    .line 213
    :catch_0
    move-exception v1

    .line 214
    .local v1, "ex":Landroid/database/sqlite/SQLiteException;
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/database/sqlite/SQLiteConnection;->dispose(Z)V

    .line 215
    throw v1
.end method

.method private greylist-max-o open()V
    .locals 10

    .line 227
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    .line 228
    .local v0, "file":Ljava/lang/String;
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string/jumbo v2, "open"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v8

    .line 230
    .local v8, "cookie":I
    const/4 v9, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v2, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    sget-boolean v4, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_SQL_STATEMENTS:Z

    sget-boolean v5, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_SQL_TIME:Z

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v6, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotSize:I

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v7, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotCount:I

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SQLiteConnection;->nativeOpen(Ljava/lang/String;ILjava/lang/String;ZZII)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v1, v8}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 271
    nop

    .line 272
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setPageSize()V

    .line 273
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setForeignKeyModeFromConfiguration()V

    .line 274
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setJournalFromConfiguration()V

    .line 275
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setSyncModeFromConfiguration()V

    .line 276
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setJournalSizeLimit()V

    .line 277
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setAutoCheckpointInterval()V

    .line 278
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setLocaleFromConfiguration()V

    .line 279
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setCustomFunctionsFromConfiguration()V

    .line 280
    invoke-direct {p0, v9}, Landroid/database/sqlite/SQLiteConnection;->executePerConnectionSqlFromConfiguration(I)V

    .line 281
    return-void

    .line 270
    :catchall_0
    move-exception v1

    goto/16 :goto_2

    .line 234
    :catch_0
    move-exception v1

    .line 235
    .local v1, "e":Landroid/database/sqlite/SQLiteCantOpenDatabaseException;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot open database \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with flags 0x"

    .line 237
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 238
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    .local v2, "message":Ljava/lang/StringBuilder;
    :try_start_2
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    .line 245
    .local v3, "path":Ljava/nio/file/Path;
    invoke-interface {v3}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v4

    .line 246
    .local v4, "dir":Ljava/nio/file/Path;
    if-eqz v4, :cond_4

    .line 248
    new-array v5, v9, [Ljava/nio/file/LinkOption;

    invoke-static {v4, v5}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v6, " doesn\'t exist"

    if-eqz v5, :cond_3

    .line 250
    :try_start_3
    new-array v5, v9, [Ljava/nio/file/LinkOption;

    invoke-static {v3, v5}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v7, ": File "

    if-nez v5, :cond_0

    .line 251
    :try_start_4
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v5, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/high16 v6, 0x10000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_5

    .line 254
    const-string v5, " and CREATE_IF_NECESSARY is set, check directory permissions"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 257
    :cond_0
    invoke-static {v3}, Ljava/nio/file/Files;->isReadable(Ljava/nio/file/Path;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 259
    new-array v5, v9, [Ljava/nio/file/LinkOption;

    invoke-static {v3, v5}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 260
    const-string v5, ": Path "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is a directory"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 262
    :cond_1
    const-string v5, ": Unable to deduct failure reason"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 258
    :cond_2
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not readable"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 249
    :cond_3
    const-string v5, ": Directory "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 247
    :cond_4
    const-string v5, ": Directory not specified in the file path"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 267
    .end local v3    # "path":Ljava/nio/file/Path;
    .end local v4    # "dir":Ljava/nio/file/Path;
    :cond_5
    :goto_0
    goto :goto_1

    .line 264
    :catchall_1
    move-exception v3

    .line 265
    .local v3, "th":Ljava/lang/Throwable;
    :try_start_5
    const-string v4, ": Unable to deduct failure reason because filesystem couldn\'t be examined: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 266
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .end local v3    # "th":Ljava/lang/Throwable;
    :goto_1
    new-instance v3, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "file":Ljava/lang/String;
    .end local v8    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 270
    .end local v1    # "e":Landroid/database/sqlite/SQLiteCantOpenDatabaseException;
    .end local v2    # "message":Ljava/lang/StringBuilder;
    .restart local v0    # "file":Ljava/lang/String;
    .restart local v8    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    :goto_2
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v8}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 271
    throw v1
.end method

.method private greylist-max-o recyclePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 1
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1387
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mSql:Ljava/lang/String;

    .line 1388
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementPool:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    iput-object v0, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mPoolNext:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1389
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementPool:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1390
    return-void
.end method

.method private greylist-max-o releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 4
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1097
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInUse:Z

    .line 1098
    iget-boolean v0, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z

    if-eqz v0, :cond_0

    .line 1100
    :try_start_0
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v2, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteConnection;->nativeResetStatementAndClearBindings(JJ)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1101
    :catch_0
    move-exception v0

    .line 1112
    .local v0, "ex":Landroid/database/sqlite/SQLiteException;
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    iget-object v2, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteException;
    :goto_0
    goto :goto_1

    .line 1115
    :cond_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->finalizePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1117
    :goto_1
    return-void
.end method

.method private greylist-max-o setAutoCheckpointInterval()V
    .locals 7

    .line 314
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v0, :cond_0

    .line 315
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getWALAutoCheckpoint()I

    move-result v0

    int-to-long v0, v0

    .line 316
    .local v0, "newValue":J
    const-string v2, "PRAGMA wal_autocheckpoint"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v4

    .line 317
    .local v4, "value":J
    cmp-long v2, v4, v0

    if-eqz v2, :cond_0

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PRAGMA wal_autocheckpoint="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    .line 321
    .end local v0    # "newValue":J
    .end local v4    # "value":J
    :cond_0
    return-void
.end method

.method private blacklist setCustomFunctionsFromConfiguration()V
    .locals 5

    .line 510
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customScalarFunctions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 511
    iget-wide v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customScalarFunctions:Landroid/util/ArrayMap;

    .line 512
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customScalarFunctions:Landroid/util/ArrayMap;

    .line 513
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/function/UnaryOperator;

    .line 511
    invoke-static {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteConnection;->nativeRegisterCustomScalarFunction(JLjava/lang/String;Ljava/util/function/UnaryOperator;)V

    .line 510
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 515
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customAggregateFunctions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 516
    iget-wide v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customAggregateFunctions:Landroid/util/ArrayMap;

    .line 517
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customAggregateFunctions:Landroid/util/ArrayMap;

    .line 518
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/function/BinaryOperator;

    .line 516
    invoke-static {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteConnection;->nativeRegisterCustomAggregateFunction(JLjava/lang/String;Ljava/util/function/BinaryOperator;)V

    .line 515
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 520
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private greylist-max-o setForeignKeyModeFromConfiguration()V
    .locals 7

    .line 334
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v0, :cond_1

    .line 335
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 336
    .local v0, "newValue":J
    :goto_0
    const-string v2, "PRAGMA foreign_keys"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v4

    .line 337
    .local v4, "value":J
    cmp-long v2, v4, v0

    if-eqz v2, :cond_1

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PRAGMA foreign_keys="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 341
    .end local v0    # "newValue":J
    .end local v4    # "value":J
    :cond_1
    return-void
.end method

.method private blacklist setJournalFromConfiguration()V
    .locals 2

    .line 344
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveJournalMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnection;->setJournalMode(Ljava/lang/String;)V

    .line 346
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->maybeTruncateWalFile()V

    goto :goto_0

    .line 349
    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->shouldTruncateWalFile:Z

    .line 351
    :goto_0
    return-void
.end method

.method private greylist-max-o setJournalMode(Ljava/lang/String;)V
    .locals 4
    .param p1, "newValue"    # Ljava/lang/String;

    .line 421
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    return-void

    .line 425
    :cond_0
    const-string v0, "PRAGMA journal_mode"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 428
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PRAGMA journal_mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v1}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    move-result-object v1

    .line 429
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    .line 430
    return-void

    .line 437
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 434
    :catch_0
    move-exception v1

    .line 450
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not change the database journal mode of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' from \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' because the database is locked.  This usually means that there are other open connections to the database which prevents the database from enabling or disabling write-ahead logging mode.  Proceeding without changing the journal mode."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SQLiteConnection"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_2
    return-void
.end method

.method private greylist-max-o setJournalSizeLimit()V
    .locals 7

    .line 324
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v0, :cond_0

    .line 325
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getJournalSizeLimit()I

    move-result v0

    int-to-long v0, v0

    .line 326
    .local v0, "newValue":J
    const-string v2, "PRAGMA journal_size_limit"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v4

    .line 327
    .local v4, "value":J
    cmp-long v2, v4, v0

    if-eqz v2, :cond_0

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PRAGMA journal_size_limit="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    .line 331
    .end local v0    # "newValue":J
    .end local v4    # "value":J
    :cond_0
    return-void
.end method

.method private greylist-max-o setLocaleFromConfiguration()V
    .locals 9

    .line 460
    const-string v0, "COMMIT"

    const-string v1, "ROLLBACK"

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_0

    .line 461
    return-void

    .line 465
    :cond_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 466
    .local v2, "newLocale":Ljava/lang/String;
    iget-wide v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v3, v4, v2}, Landroid/database/sqlite/SQLiteConnection;->nativeRegisterLocalizedCollators(JLjava/lang/String;)V

    .line 468
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v3

    if-nez v3, :cond_1

    .line 469
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->checkDatabaseWiped()V

    .line 474
    :cond_1
    iget-boolean v3, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-eqz v3, :cond_2

    .line 475
    return-void

    .line 480
    :cond_2
    :try_start_0
    const-string v3, "CREATE TABLE IF NOT EXISTS android_metadata (locale TEXT)"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 483
    const-string v3, "SELECT locale FROM android_metadata UNION SELECT NULL ORDER BY locale DESC LIMIT 1"

    invoke-virtual {p0, v3, v4, v4}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    move-result-object v3

    .line 485
    .local v3, "oldLocale":Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 486
    return-void

    .line 490
    :cond_3
    const-string v5, "BEGIN"

    invoke-virtual {p0, v5, v4, v4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    const/4 v5, 0x0

    .line 493
    .local v5, "success":Z
    :try_start_1
    const-string v6, "DELETE FROM android_metadata"

    invoke-virtual {p0, v6, v4, v4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 494
    const-string v6, "INSERT INTO android_metadata (locale) VALUES(?)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-virtual {p0, v6, v7, v4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 496
    const-string v6, "REINDEX LOCALIZED"

    invoke-virtual {p0, v6, v4, v4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 497
    const/4 v5, 0x1

    .line 499
    if-eqz v5, :cond_4

    goto :goto_0

    :cond_4
    move-object v0, v1

    :goto_0
    :try_start_2
    invoke-virtual {p0, v0, v4, v4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 500
    nop

    .line 506
    .end local v3    # "oldLocale":Ljava/lang/String;
    .end local v5    # "success":Z
    nop

    .line 507
    return-void

    .line 499
    .restart local v3    # "oldLocale":Ljava/lang/String;
    .restart local v5    # "success":Z
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    move-object v0, v1

    :goto_1
    invoke-virtual {p0, v0, v4, v4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 500
    nop

    .end local v2    # "newLocale":Ljava/lang/String;
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    throw v6
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 503
    .end local v3    # "oldLocale":Ljava/lang/String;
    .end local v5    # "success":Z
    .restart local v2    # "newLocale":Ljava/lang/String;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    :catch_0
    move-exception v0

    .line 504
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Landroid/database/sqlite/SQLiteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to change locale for db \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' to \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 501
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 502
    .local v0, "ex":Landroid/database/sqlite/SQLiteException;
    throw v0
.end method

.method private greylist-max-o setPageSize()V
    .locals 7

    .line 304
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v0, :cond_0

    .line 305
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getDefaultPageSize()I

    move-result v0

    int-to-long v0, v0

    .line 306
    .local v0, "newValue":J
    const-string v2, "PRAGMA page_size"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v4

    .line 307
    .local v4, "value":J
    cmp-long v2, v4, v0

    if-eqz v2, :cond_0

    .line 308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PRAGMA page_size="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 311
    .end local v0    # "newValue":J
    .end local v4    # "value":J
    :cond_0
    return-void
.end method

.method private greylist-max-o setSyncMode(Ljava/lang/String;)V
    .locals 4
    .param p1, "newValue"    # Ljava/lang/String;

    .line 399
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    return-void

    .line 403
    :cond_0
    const-string v0, "PRAGMA synchronous"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/database/sqlite/SQLiteConnection;->canonicalizeSyncMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 405
    invoke-static {p1}, Landroid/database/sqlite/SQLiteConnection;->canonicalizeSyncMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 404
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PRAGMA synchronous="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v1}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 408
    :cond_1
    return-void
.end method

.method private blacklist setSyncModeFromConfiguration()V
    .locals 1

    .line 354
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v0, :cond_0

    .line 355
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveSyncMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnection;->setSyncMode(Ljava/lang/String;)V

    .line 357
    :cond_0
    return-void
.end method

.method private greylist-max-o throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 2
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1209
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1210
    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Cannot execute this statement because it might modify the database but the connection is read-only."

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1213
    :cond_1
    :goto_0
    return-void
.end method

.method private static greylist-max-o trimSqlForDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "sql"    # Ljava/lang/String;

    .line 1397
    const-string v0, "[\\s]*\\n+[\\s]*"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method greylist-max-o close()V
    .locals 1

    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnection;->dispose(Z)V

    .line 224
    return-void
.end method

.method greylist-max-o collectDbStats(Ljava/util/ArrayList;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/database/sqlite/SQLiteDebug$DbStats;",
            ">;)V"
        }
    .end annotation

    .line 1297
    .local p1, "dbStatsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDebug$DbStats;>;"
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    const-string v11, "PRAGMA "

    iget-wide v0, v9, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteConnection;->nativeGetDbLookaside(J)I

    move-result v12

    .line 1298
    .local v12, "lookaside":I
    const-wide/16 v1, 0x0

    .line 1299
    .local v1, "pageCount":J
    const-wide/16 v3, 0x0

    .line 1301
    .local v3, "pageSize":J
    const/4 v13, 0x0

    :try_start_0
    const-string v0, "PRAGMA page_count;"

    invoke-virtual {v9, v0, v13, v13}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v5

    move-wide v1, v5

    .line 1302
    const-string v0, "PRAGMA page_size;"

    invoke-virtual {v9, v0, v13, v13}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v5
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v3, v5

    .line 1305
    move-wide v14, v1

    move-wide/from16 v16, v3

    goto :goto_0

    .line 1303
    :catch_0
    move-exception v0

    move-wide v14, v1

    move-wide/from16 v16, v3

    .line 1306
    .end local v1    # "pageCount":J
    .end local v3    # "pageSize":J
    .local v14, "pageCount":J
    .local v16, "pageSize":J
    :goto_0
    move-object/from16 v1, p0

    move v2, v12

    move-wide v3, v14

    move-wide/from16 v5, v16

    invoke-direct/range {v1 .. v6}, Landroid/database/sqlite/SQLiteConnection;->getMainDbStatsUnsafe(IJJ)Landroid/database/sqlite/SQLiteDebug$DbStats;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1311
    new-instance v0, Landroid/database/CursorWindow;

    const-string v1, "collectDbStats"

    invoke-direct {v0, v1}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    .line 1313
    .local v8, "window":Landroid/database/CursorWindow;
    :try_start_1
    const-string v2, "PRAGMA database_list;"
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object v4, v8

    move-object/from16 v18, v8

    .end local v8    # "window":Landroid/database/CursorWindow;
    .local v18, "window":Landroid/database/CursorWindow;
    move-object v8, v0

    :try_start_2
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteConnection;->executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Landroid/database/CursorWindow;IIZLandroid/os/CancellationSignal;)I

    .line 1314
    const/4 v0, 0x1

    move v1, v0

    .local v1, "i":I
    :goto_1
    invoke-virtual/range {v18 .. v18}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ge v1, v0, :cond_1

    .line 1315
    const/4 v0, 0x1

    move-object/from16 v2, v18

    .end local v18    # "window":Landroid/database/CursorWindow;
    .local v2, "window":Landroid/database/CursorWindow;
    :try_start_3
    invoke-virtual {v2, v1, v0}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 1316
    .local v3, "name":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-virtual {v2, v1, v0}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v4, v0

    .line 1317
    .local v4, "path":Ljava/lang/String;
    const-wide/16 v14, 0x0

    .line 1318
    const-wide/16 v16, 0x0

    .line 1320
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".page_count;"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0, v13, v13}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v5

    move-wide v14, v5

    .line 1321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".page_size;"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0, v13, v13}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v5
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1324
    .end local v16    # "pageSize":J
    .local v5, "pageSize":J
    move-wide/from16 v16, v5

    goto :goto_2

    .line 1322
    .end local v5    # "pageSize":J
    .restart local v16    # "pageSize":J
    :catch_1
    move-exception v0

    .line 1325
    :goto_2
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "  (attached) "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1326
    .local v0, "label":Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1327
    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1329
    :cond_0
    new-instance v5, Landroid/database/sqlite/SQLiteDebug$DbStats;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v18, v5

    move-wide/from16 v20, v14

    move-wide/from16 v22, v16

    invoke-direct/range {v18 .. v27}, Landroid/database/sqlite/SQLiteDebug$DbStats;-><init>(Ljava/lang/String;JJIIII)V

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1314
    nop

    .end local v0    # "label":Ljava/lang/StringBuilder;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "path":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v18, v2

    goto/16 :goto_1

    .line 1334
    .end local v1    # "i":I
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 1331
    :catch_2
    move-exception v0

    goto :goto_4

    .line 1314
    .end local v2    # "window":Landroid/database/CursorWindow;
    .restart local v1    # "i":I
    .restart local v18    # "window":Landroid/database/CursorWindow;
    :cond_1
    move-object/from16 v2, v18

    .end local v1    # "i":I
    .end local v18    # "window":Landroid/database/CursorWindow;
    .restart local v2    # "window":Landroid/database/CursorWindow;
    goto :goto_4

    .line 1334
    .end local v2    # "window":Landroid/database/CursorWindow;
    .restart local v18    # "window":Landroid/database/CursorWindow;
    :catchall_1
    move-exception v0

    move-object/from16 v2, v18

    .end local v18    # "window":Landroid/database/CursorWindow;
    .restart local v2    # "window":Landroid/database/CursorWindow;
    goto :goto_3

    .line 1331
    .end local v2    # "window":Landroid/database/CursorWindow;
    .restart local v18    # "window":Landroid/database/CursorWindow;
    :catch_3
    move-exception v0

    move-object/from16 v2, v18

    .end local v18    # "window":Landroid/database/CursorWindow;
    .restart local v2    # "window":Landroid/database/CursorWindow;
    goto :goto_4

    .line 1334
    .end local v2    # "window":Landroid/database/CursorWindow;
    .restart local v8    # "window":Landroid/database/CursorWindow;
    :catchall_2
    move-exception v0

    move-object v2, v8

    .end local v8    # "window":Landroid/database/CursorWindow;
    .restart local v2    # "window":Landroid/database/CursorWindow;
    :goto_3
    invoke-virtual {v2}, Landroid/database/CursorWindow;->close()V

    .line 1335
    throw v0

    .line 1331
    .end local v2    # "window":Landroid/database/CursorWindow;
    .restart local v8    # "window":Landroid/database/CursorWindow;
    :catch_4
    move-exception v0

    move-object v2, v8

    .line 1334
    .end local v8    # "window":Landroid/database/CursorWindow;
    .restart local v2    # "window":Landroid/database/CursorWindow;
    :goto_4
    invoke-virtual {v2}, Landroid/database/CursorWindow;->close()V

    .line 1335
    nop

    .line 1336
    return-void
.end method

.method greylist-max-o collectDbStatsUnsafe(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/database/sqlite/SQLiteDebug$DbStats;",
            ">;)V"
        }
    .end annotation

    .line 1345
    .local p1, "dbStatsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDebug$DbStats;>;"
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteConnection;->getMainDbStatsUnsafe(IJJ)Landroid/database/sqlite/SQLiteDebug$DbStats;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1346
    return-void
.end method

.method greylist-max-o describeCurrentOperationUnsafe()Ljava/lang/String;
    .locals 1

    .line 1287
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->describeCurrentOperation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o dump(Landroid/util/Printer;Z)V
    .locals 0
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "verbose"    # Z

    .line 1240
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteConnection;->dumpUnsafe(Landroid/util/Printer;Z)V

    .line 1241
    return-void
.end method

.method greylist-max-o dumpUnsafe(Landroid/util/Printer;Z)V
    .locals 3
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "verbose"    # Z

    .line 1258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1259
    if-eqz p2, :cond_0

    .line 1260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  connectionPtr: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1262
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isPrimaryConnection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  onlyAllowReadOnlyOperations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1265
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->dump(Landroid/util/Printer;)V

    .line 1267
    if-eqz p2, :cond_1

    .line 1268
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->dump(Landroid/util/Printer;)V

    .line 1270
    :cond_1
    return-void
.end method

.method public greylist-max-o execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    .locals 7
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 721
    if-eqz p1, :cond_1

    .line 725
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string v1, "execute"

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 727
    .local v0, "cookie":I
    nop

    .line 728
    :try_start_0
    invoke-static {p1}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 729
    .local v1, "isPragmaStmt":Z
    :goto_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 731
    .local v2, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 732
    invoke-direct {p0, v2, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 733
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 734
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 736
    :try_start_2
    iget-wide v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v5, v2, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v3, v4, v5, v6, v1}, Landroid/database/sqlite/SQLiteConnection;->nativeExecute(JJZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 738
    :try_start_3
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 739
    nop

    .line 741
    :try_start_4
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 742
    nop

    .line 747
    .end local v1    # "isPragmaStmt":Z
    .end local v2    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 748
    nop

    .line 749
    return-void

    .line 738
    .restart local v1    # "isPragmaStmt":Z
    .restart local v2    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catchall_0
    move-exception v3

    :try_start_5
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    .line 739
    nop

    .end local v0    # "cookie":I
    .end local v1    # "isPragmaStmt":Z
    .end local v2    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 741
    .restart local v0    # "cookie":I
    .restart local v1    # "isPragmaStmt":Z
    .restart local v2    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_1
    move-exception v3

    :try_start_6
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 742
    nop

    .end local v0    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v3
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 747
    .end local v1    # "isPragmaStmt":Z
    .end local v2    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v0    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_2
    move-exception v1

    goto :goto_1

    .line 743
    :catch_0
    move-exception v1

    .line 744
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_7
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 745
    nop

    .end local v0    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 747
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 748
    throw v1

    .line 722
    .end local v0    # "cookie":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o executeForBlobFileDescriptor(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 858
    if-eqz p1, :cond_1

    .line 862
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string v1, "executeForBlobFileDescriptor"

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 865
    .local v0, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 867
    .local v1, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 868
    invoke-direct {p0, v1, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 869
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 870
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 872
    :try_start_2
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v4, v1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForBlobFileDescriptor(JJ)I

    move-result v2

    .line 874
    .local v2, "fd":I
    if-ltz v2, :cond_0

    invoke-static {v2}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 876
    :goto_0
    :try_start_3
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 879
    :try_start_4
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 885
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 874
    return-object v3

    .line 876
    .end local v2    # "fd":I
    :catchall_0
    move-exception v2

    :try_start_5
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    .line 877
    nop

    .end local v0    # "cookie":I
    .end local v1    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 879
    .restart local v0    # "cookie":I
    .restart local v1    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_1
    move-exception v2

    :try_start_6
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 880
    nop

    .end local v0    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v2
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 885
    .end local v1    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v0    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_2
    move-exception v1

    goto :goto_1

    .line 881
    :catch_0
    move-exception v1

    .line 882
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_7
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 883
    nop

    .end local v0    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 885
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 886
    throw v1

    .line 859
    .end local v0    # "cookie":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o executeForChangedRowCount(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)I
    .locals 8
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 904
    const-string v0, "changedRows="

    if-eqz p1, :cond_2

    .line 908
    const/4 v1, 0x0

    .line 909
    .local v1, "changedRows":I
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string v3, "executeForChangedRowCount"

    invoke-virtual {v2, v3, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    .line 912
    .local v2, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 914
    .local v3, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 915
    invoke-direct {p0, v3, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 916
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 917
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 919
    :try_start_2
    iget-wide v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v6, v3, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForChangedRowCount(JJ)I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v4

    .line 921
    nop

    .line 923
    :try_start_3
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 926
    :try_start_4
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 932
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 933
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    .line 921
    :cond_0
    return v1

    .line 923
    :catchall_0
    move-exception v4

    :try_start_5
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    .line 924
    nop

    .end local v1    # "changedRows":I
    .end local v2    # "cookie":I
    .end local v3    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 926
    .restart local v1    # "changedRows":I
    .restart local v2    # "cookie":I
    .restart local v3    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_1
    move-exception v4

    :try_start_6
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 927
    nop

    .end local v1    # "changedRows":I
    .end local v2    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v4
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 932
    .end local v3    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v1    # "changedRows":I
    .restart local v2    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_2
    move-exception v3

    goto :goto_0

    .line 928
    :catch_0
    move-exception v3

    .line 929
    .local v3, "ex":Ljava/lang/RuntimeException;
    :try_start_7
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v2, v3}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 930
    nop

    .end local v1    # "changedRows":I
    .end local v2    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 932
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    .restart local v1    # "changedRows":I
    .restart local v2    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_0
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 933
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    .line 935
    :cond_1
    throw v3

    .line 905
    .end local v1    # "changedRows":I
    .end local v2    # "cookie":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Landroid/database/CursorWindow;IIZLandroid/os/CancellationSignal;)I
    .locals 25
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "window"    # Landroid/database/CursorWindow;
    .param p4, "startPos"    # I
    .param p5, "requiredPos"    # I
    .param p6, "countAllRows"    # Z
    .param p7, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 1008
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v14, p4

    move-object/from16 v15, p7

    const-string v13, ", countedRows="

    const-string v12, ", filledRows="

    const-string v11, ", actualPos="

    const-string v9, "\', startPos="

    const-string/jumbo v10, "window=\'"

    if-eqz v2, :cond_3

    .line 1011
    if-eqz v4, :cond_2

    .line 1015
    invoke-virtual/range {p3 .. p3}, Landroid/database/CursorWindow;->acquireReference()V

    .line 1017
    const/16 v16, -0x1

    .line 1018
    .local v16, "actualPos":I
    const/16 v17, -0x1

    .line 1019
    .local v17, "countedRows":I
    const/16 v18, -0x1

    .line 1020
    .local v18, "filledRows":I
    :try_start_0
    iget-object v0, v1, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string v5, "executeForCursorWindow"

    invoke-virtual {v0, v5, v2, v3}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    move v7, v0

    .line 1023
    .local v7, "cookie":I
    :try_start_1
    invoke-direct/range {p0 .. p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    move-object v8, v0

    .line 1025
    .local v8, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_2
    invoke-direct {v1, v8}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1026
    invoke-direct {v1, v8, v3}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 1027
    invoke-direct {v1, v8}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1028
    invoke-direct {v1, v15}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    .line 1030
    :try_start_3
    iget-wide v5, v1, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v2, v8, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    :try_start_4
    iget-wide v9, v4, Landroid/database/CursorWindow;->mWindowPtr:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    move/from16 v21, v7

    move-object v14, v8

    .end local v7    # "cookie":I
    .end local v8    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .local v14, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .local v21, "cookie":I
    move-wide v7, v2

    move-object/from16 v3, v19

    move-object/from16 v2, v20

    move-object/from16 v22, v11

    move/from16 v11, p4

    move-object/from16 v23, v12

    move/from16 v12, p5

    move-object/from16 v24, v13

    move/from16 v13, p6

    :try_start_5
    invoke-static/range {v5 .. v13}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForCursorWindow(JJJIIZ)J

    move-result-wide v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 1033
    .local v5, "result":J
    const/16 v0, 0x20

    shr-long v7, v5, v0

    long-to-int v7, v7

    .line 1034
    .end local v16    # "actualPos":I
    .local v7, "actualPos":I
    long-to-int v8, v5

    .line 1035
    .end local v17    # "countedRows":I
    .local v8, "countedRows":I
    :try_start_6
    invoke-virtual/range {p3 .. p3}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move v9, v0

    .line 1036
    .end local v18    # "filledRows":I
    .local v9, "filledRows":I
    :try_start_7
    invoke-virtual {v4, v7}, Landroid/database/CursorWindow;->setStartPosition(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1037
    nop

    .line 1039
    :try_start_8
    invoke-direct {v1, v15}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1042
    :try_start_9
    invoke-direct {v1, v14}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1048
    :try_start_a
    iget-object v0, v1, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    move/from16 v10, v21

    .end local v21    # "cookie":I
    .local v10, "cookie":I
    invoke-virtual {v0, v10}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1049
    iget-object v0, v1, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move v11, v10

    move/from16 v10, p4

    .end local v10    # "cookie":I
    .local v11, "cookie":I
    :try_start_b
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v12, v22

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v13, v23

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, v24

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v11, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_c

    goto :goto_0

    .line 1048
    .end local v11    # "cookie":I
    .restart local v10    # "cookie":I
    :cond_0
    move v11, v10

    move/from16 v10, p4

    .line 1057
    .end local v10    # "cookie":I
    .restart local v11    # "cookie":I
    :goto_0
    invoke-virtual/range {p3 .. p3}, Landroid/database/CursorWindow;->releaseReference()V

    .line 1037
    return v8

    .line 1057
    .end local v5    # "result":J
    .end local v7    # "actualPos":I
    .end local v8    # "countedRows":I
    .end local v9    # "filledRows":I
    .end local v11    # "cookie":I
    .end local v14    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catchall_0
    move-exception v0

    move/from16 v10, p4

    goto/16 :goto_6

    .line 1048
    .restart local v7    # "actualPos":I
    .restart local v8    # "countedRows":I
    .restart local v9    # "filledRows":I
    .restart local v21    # "cookie":I
    :catchall_1
    move-exception v0

    move/from16 v10, p4

    move/from16 v11, v21

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move-object/from16 v5, v24

    .end local v21    # "cookie":I
    .restart local v11    # "cookie":I
    goto/16 :goto_5

    .line 1044
    .end local v11    # "cookie":I
    .restart local v21    # "cookie":I
    :catch_0
    move-exception v0

    move/from16 v10, p4

    move/from16 v11, v21

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move-object/from16 v5, v24

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    .end local v21    # "cookie":I
    .restart local v11    # "cookie":I
    goto/16 :goto_4

    .line 1042
    .end local v11    # "cookie":I
    .restart local v14    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v21    # "cookie":I
    :catchall_2
    move-exception v0

    move/from16 v10, p4

    move/from16 v11, v21

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move-object/from16 v5, v24

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    .end local v21    # "cookie":I
    .restart local v11    # "cookie":I
    goto/16 :goto_3

    .line 1039
    .end local v11    # "cookie":I
    .restart local v21    # "cookie":I
    :catchall_3
    move-exception v0

    move/from16 v10, p4

    move/from16 v11, v21

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move-object/from16 v5, v24

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    .end local v21    # "cookie":I
    .restart local v11    # "cookie":I
    goto :goto_2

    .end local v9    # "filledRows":I
    .end local v11    # "cookie":I
    .restart local v18    # "filledRows":I
    .restart local v21    # "cookie":I
    :catchall_4
    move-exception v0

    move/from16 v10, p4

    move/from16 v11, v21

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move-object/from16 v5, v24

    move/from16 v16, v7

    move/from16 v17, v8

    .end local v21    # "cookie":I
    .restart local v11    # "cookie":I
    goto :goto_2

    .end local v7    # "actualPos":I
    .end local v8    # "countedRows":I
    .end local v11    # "cookie":I
    .restart local v16    # "actualPos":I
    .restart local v17    # "countedRows":I
    .restart local v21    # "cookie":I
    :catchall_5
    move-exception v0

    move/from16 v10, p4

    move/from16 v11, v21

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move-object/from16 v5, v24

    .end local v21    # "cookie":I
    .restart local v11    # "cookie":I
    goto :goto_2

    .end local v11    # "cookie":I
    .end local v14    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .local v7, "cookie":I
    .local v8, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catchall_6
    move-exception v0

    move-object v5, v13

    move v10, v14

    move-object/from16 v3, v19

    move-object/from16 v2, v20

    goto :goto_1

    :catchall_7
    move-exception v0

    move-object v3, v9

    move-object v2, v10

    move-object v5, v13

    move v10, v14

    :goto_1
    move-object v14, v8

    move-object v13, v12

    move-object v12, v11

    move v11, v7

    .end local v7    # "cookie":I
    .end local v8    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v11    # "cookie":I
    .restart local v14    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :goto_2
    :try_start_c
    invoke-direct {v1, v15}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    .line 1040
    nop

    .end local v11    # "cookie":I
    .end local v14    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .end local v16    # "actualPos":I
    .end local v17    # "countedRows":I
    .end local v18    # "filledRows":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "window":Landroid/database/CursorWindow;
    .end local p4    # "startPos":I
    .end local p5    # "requiredPos":I
    .end local p6    # "countAllRows":Z
    .end local p7    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 1042
    .restart local v11    # "cookie":I
    .restart local v14    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v16    # "actualPos":I
    .restart local v17    # "countedRows":I
    .restart local v18    # "filledRows":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "window":Landroid/database/CursorWindow;
    .restart local p4    # "startPos":I
    .restart local p5    # "requiredPos":I
    .restart local p6    # "countAllRows":Z
    .restart local p7    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_8
    move-exception v0

    goto :goto_3

    .end local v11    # "cookie":I
    .end local v14    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v7    # "cookie":I
    .restart local v8    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catchall_9
    move-exception v0

    move-object v3, v9

    move-object v2, v10

    move-object v5, v13

    move v10, v14

    move-object v14, v8

    move-object v13, v12

    move-object v12, v11

    move v11, v7

    .end local v7    # "cookie":I
    .end local v8    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v11    # "cookie":I
    .restart local v14    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :goto_3
    :try_start_d
    invoke-direct {v1, v14}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1043
    nop

    .end local v11    # "cookie":I
    .end local v16    # "actualPos":I
    .end local v17    # "countedRows":I
    .end local v18    # "filledRows":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "window":Landroid/database/CursorWindow;
    .end local p4    # "startPos":I
    .end local p5    # "requiredPos":I
    .end local p6    # "countAllRows":Z
    .end local p7    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v0
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    .line 1044
    .end local v14    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v11    # "cookie":I
    .restart local v16    # "actualPos":I
    .restart local v17    # "countedRows":I
    .restart local v18    # "filledRows":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "window":Landroid/database/CursorWindow;
    .restart local p4    # "startPos":I
    .restart local p5    # "requiredPos":I
    .restart local p6    # "countAllRows":Z
    .restart local p7    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catch_1
    move-exception v0

    goto :goto_4

    .line 1048
    .end local v11    # "cookie":I
    .restart local v7    # "cookie":I
    :catchall_a
    move-exception v0

    move-object v3, v9

    move-object v2, v10

    move-object v5, v13

    move v10, v14

    move-object v13, v12

    move-object v12, v11

    move v11, v7

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    .end local v7    # "cookie":I
    .restart local v11    # "cookie":I
    goto :goto_5

    .line 1044
    .end local v11    # "cookie":I
    .restart local v7    # "cookie":I
    :catch_2
    move-exception v0

    move-object v3, v9

    move-object v2, v10

    move-object v5, v13

    move v10, v14

    move-object v13, v12

    move-object v12, v11

    move v11, v7

    .line 1045
    .end local v7    # "cookie":I
    .local v0, "ex":Ljava/lang/RuntimeException;
    .restart local v11    # "cookie":I
    :goto_4
    :try_start_e
    iget-object v6, v1, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v6, v11, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 1046
    nop

    .end local v11    # "cookie":I
    .end local v16    # "actualPos":I
    .end local v17    # "countedRows":I
    .end local v18    # "filledRows":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "window":Landroid/database/CursorWindow;
    .end local p4    # "startPos":I
    .end local p5    # "requiredPos":I
    .end local p6    # "countAllRows":Z
    .end local p7    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    .line 1048
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .restart local v11    # "cookie":I
    .restart local v16    # "actualPos":I
    .restart local v17    # "countedRows":I
    .restart local v18    # "filledRows":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "window":Landroid/database/CursorWindow;
    .restart local p4    # "startPos":I
    .restart local p5    # "requiredPos":I
    .restart local p6    # "countAllRows":Z
    .restart local p7    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_b
    move-exception v0

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    .end local v16    # "actualPos":I
    .end local v17    # "countedRows":I
    .end local v18    # "filledRows":I
    .local v7, "actualPos":I
    .local v8, "countedRows":I
    .restart local v9    # "filledRows":I
    :goto_5
    :try_start_f
    iget-object v6, v1, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v6, v11}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1049
    iget-object v6, v1, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v11, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    .line 1055
    :cond_1
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "window":Landroid/database/CursorWindow;
    .end local p4    # "startPos":I
    .end local p5    # "requiredPos":I
    .end local p6    # "countAllRows":Z
    .end local p7    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_c

    .line 1057
    .end local v7    # "actualPos":I
    .end local v8    # "countedRows":I
    .end local v9    # "filledRows":I
    .end local v11    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "window":Landroid/database/CursorWindow;
    .restart local p4    # "startPos":I
    .restart local p5    # "requiredPos":I
    .restart local p6    # "countAllRows":Z
    .restart local p7    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_c
    move-exception v0

    goto :goto_6

    :catchall_d
    move-exception v0

    move v10, v14

    :goto_6
    invoke-virtual/range {p3 .. p3}, Landroid/database/CursorWindow;->releaseReference()V

    .line 1058
    throw v0

    .line 1012
    :cond_2
    move v10, v14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "window must not be null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1009
    :cond_3
    move v10, v14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "sql must not be null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o executeForLastInsertedRowId(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 953
    if-eqz p1, :cond_0

    .line 957
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string v1, "executeForLastInsertedRowId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 960
    .local v0, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 962
    .local v1, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 963
    invoke-direct {p0, v1, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 964
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 965
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 967
    :try_start_2
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v4, v1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForLastInsertedRowId(JJ)J

    move-result-wide v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 970
    :try_start_3
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 973
    :try_start_4
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 979
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 967
    return-wide v2

    .line 970
    :catchall_0
    move-exception v2

    :try_start_5
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    .line 971
    nop

    .end local v0    # "cookie":I
    .end local v1    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 973
    .restart local v0    # "cookie":I
    .restart local v1    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_1
    move-exception v2

    :try_start_6
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 974
    nop

    .end local v0    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v2
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 979
    .end local v1    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v0    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_2
    move-exception v1

    goto :goto_0

    .line 975
    :catch_0
    move-exception v1

    .line 976
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_7
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 977
    nop

    .end local v0    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 979
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 980
    throw v1

    .line 954
    .end local v0    # "cookie":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 766
    if-eqz p1, :cond_0

    .line 770
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string v1, "executeForLong"

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 772
    .local v0, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 774
    .local v1, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 775
    invoke-direct {p0, v1, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 776
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 777
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 779
    :try_start_2
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v4, v1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForLong(JJ)J

    move-result-wide v2

    .line 780
    .local v2, "ret":J
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v2, v3}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->setResult(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 781
    nop

    .line 783
    :try_start_3
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 786
    :try_start_4
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 792
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 781
    return-wide v2

    .line 783
    .end local v2    # "ret":J
    :catchall_0
    move-exception v2

    :try_start_5
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    .line 784
    nop

    .end local v0    # "cookie":I
    .end local v1    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 786
    .restart local v0    # "cookie":I
    .restart local v1    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_1
    move-exception v2

    :try_start_6
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 787
    nop

    .end local v0    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v2
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 792
    .end local v1    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v0    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_2
    move-exception v1

    goto :goto_0

    .line 788
    :catch_0
    move-exception v1

    .line 789
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_7
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 790
    nop

    .end local v0    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 792
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 793
    throw v1

    .line 767
    .end local v0    # "cookie":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 811
    if-eqz p1, :cond_0

    .line 815
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string v1, "executeForString"

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 817
    .local v0, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 819
    .local v1, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 820
    invoke-direct {p0, v1, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 821
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 822
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 824
    :try_start_2
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v4, v1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForString(JJ)Ljava/lang/String;

    move-result-object v2

    .line 825
    .local v2, "ret":Ljava/lang/String;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->setResult(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 826
    nop

    .line 828
    :try_start_3
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 831
    :try_start_4
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 837
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 826
    return-object v2

    .line 828
    .end local v2    # "ret":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_5
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    .line 829
    nop

    .end local v0    # "cookie":I
    .end local v1    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 831
    .restart local v0    # "cookie":I
    .restart local v1    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_1
    move-exception v2

    :try_start_6
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 832
    nop

    .end local v0    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v2
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 837
    .end local v1    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v0    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_2
    move-exception v1

    goto :goto_0

    .line 833
    :catch_0
    move-exception v1

    .line 834
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_7
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 835
    nop

    .end local v0    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 837
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 838
    throw v1

    .line 812
    .end local v0    # "cookie":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 194
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConnectionPool;->onConnectionLeaked()V

    .line 198
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnection;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 201
    nop

    .line 202
    return-void

    .line 200
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 201
    throw v0
.end method

.method public greylist-max-o getConnectionId()I
    .locals 1

    .line 637
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionId:I

    return v0
.end method

.method greylist-max-o isPreparedStatementInCache(Ljava/lang/String;)Z
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;

    .line 629
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o isPrimaryConnection()Z
    .locals 1

    .line 645
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    return v0
.end method

.method public whitelist onCancel()V
    .locals 2

    .line 1161
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteConnection;->nativeCancel(J)V

    .line 1162
    return-void
.end method

.method public greylist-max-o prepare(Ljava/lang/String;Landroid/database/sqlite/SQLiteStatementInfo;)V
    .locals 9
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "outStatementInfo"    # Landroid/database/sqlite/SQLiteStatementInfo;

    .line 673
    if-eqz p1, :cond_2

    .line 677
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const/4 v1, 0x0

    const-string/jumbo v2, "prepare"

    invoke-virtual {v0, v2, p1, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 679
    .local v0, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 681
    .local v1, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    if-eqz p2, :cond_1

    .line 682
    :try_start_1
    iget v2, v1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    iput v2, p2, Landroid/database/sqlite/SQLiteStatementInfo;->numParameters:I

    .line 683
    iget-boolean v2, v1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    iput-boolean v2, p2, Landroid/database/sqlite/SQLiteStatementInfo;->readOnly:Z

    .line 685
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v4, v1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteConnection;->nativeGetColumnCount(JJ)I

    move-result v2

    .line 687
    .local v2, "columnCount":I
    if-nez v2, :cond_0

    .line 688
    sget-object v3, Landroid/database/sqlite/SQLiteConnection;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v3, p2, Landroid/database/sqlite/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;

    goto :goto_1

    .line 690
    :cond_0
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p2, Landroid/database/sqlite/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;

    .line 691
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 692
    iget-object v4, p2, Landroid/database/sqlite/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;

    iget-wide v5, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v7, v1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v5, v6, v7, v8, v3}, Landroid/database/sqlite/SQLiteConnection;->nativeGetColumnName(JJI)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 691
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 698
    .end local v2    # "columnCount":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v2

    :try_start_2
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 699
    nop

    .end local v0    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "outStatementInfo":Landroid/database/sqlite/SQLiteStatementInfo;
    throw v2

    .line 698
    .restart local v0    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "outStatementInfo":Landroid/database/sqlite/SQLiteStatementInfo;
    :cond_1
    :goto_1
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 699
    nop

    .line 704
    .end local v1    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 705
    nop

    .line 706
    return-void

    .line 704
    :catchall_1
    move-exception v1

    goto :goto_2

    .line 700
    :catch_0
    move-exception v1

    .line 701
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_3
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 702
    nop

    .end local v0    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "outStatementInfo":Landroid/database/sqlite/SQLiteStatementInfo;
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 704
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "outStatementInfo":Landroid/database/sqlite/SQLiteStatementInfo;
    :goto_2
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 705
    throw v1

    .line 674
    .end local v0    # "cookie":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    .locals 11
    .param p1, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .line 572
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    .line 575
    iget-boolean v1, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v0

    .line 577
    .local v1, "foreignKeyModeChanged":Z
    :goto_0
    iget-object v2, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v3

    .line 578
    .local v2, "localeChanged":Z
    iget-object v4, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customScalarFunctions:Landroid/util/ArrayMap;

    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v5, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customScalarFunctions:Landroid/util/ArrayMap;

    .line 579
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v3

    .line 580
    .local v4, "customScalarFunctionsChanged":Z
    iget-object v5, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customAggregateFunctions:Landroid/util/ArrayMap;

    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v6, v6, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customAggregateFunctions:Landroid/util/ArrayMap;

    .line 581
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v3

    .line 582
    .local v5, "customAggregateFunctionsChanged":Z
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v6, v6, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->perConnectionSql:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 583
    .local v6, "oldSize":I
    iget-object v7, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->perConnectionSql:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 584
    .local v7, "newSize":I
    if-le v7, v6, :cond_1

    move v0, v3

    .line 587
    .local v0, "perConnectionSqlChanged":Z
    :cond_1
    iget-object v8, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v8, p1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->updateParametersFrom(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    .line 590
    iget-object v8, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    iget v9, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    invoke-virtual {v8, v9}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->resize(I)V

    .line 592
    if-eqz v1, :cond_2

    .line 593
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setForeignKeyModeFromConfiguration()V

    .line 596
    :cond_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveJournalMode()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .line 597
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveJournalMode()Ljava/lang/String;

    move-result-object v9

    .line 596
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    xor-int/2addr v8, v3

    .line 598
    .local v8, "journalModeChanged":Z
    if-eqz v8, :cond_3

    .line 599
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setJournalFromConfiguration()V

    .line 602
    :cond_3
    nop

    .line 603
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveSyncMode()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveSyncMode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    xor-int/2addr v3, v9

    .line 604
    .local v3, "syncModeChanged":Z
    if-eqz v3, :cond_4

    .line 605
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setSyncModeFromConfiguration()V

    .line 608
    :cond_4
    if-eqz v2, :cond_5

    .line 609
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setLocaleFromConfiguration()V

    .line 611
    :cond_5
    if-nez v4, :cond_6

    if-eqz v5, :cond_7

    .line 612
    :cond_6
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setCustomFunctionsFromConfiguration()V

    .line 614
    :cond_7
    if-eqz v0, :cond_8

    .line 615
    invoke-direct {p0, v6}, Landroid/database/sqlite/SQLiteConnection;->executePerConnectionSqlFromConfiguration(I)V

    .line 617
    :cond_8
    return-void
.end method

.method greylist-max-o setOnlyAllowReadOnlyOperations(Z)V
    .locals 0
    .param p1, "readOnly"    # Z

    .line 623
    iput-boolean p1, p0, Landroid/database/sqlite/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    .line 624
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 1365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteConnection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
