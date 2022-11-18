.class public final Landroid/database/sqlite/SQLiteGlobal;
.super Ljava/lang/Object;
.source "SQLiteGlobal.java"


# static fields
.field public static final blacklist SYNC_MODE_FULL:Ljava/lang/String; = "FULL"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SQLiteGlobal"

.field static final blacklist WIPE_CHECK_FILE_SUFFIX:Ljava/lang/String; = "-wipecheck"

.field private static greylist-max-o sDefaultPageSize:I

.field public static volatile blacklist sDefaultSyncMode:Ljava/lang/String;

.field private static final greylist-max-o sLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/database/sqlite/SQLiteGlobal;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static blacklist checkDbWipe()Z
    .locals 1

    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getDefaultJournalMode()Ljava/lang/String;
    .locals 2

    .line 88
    nop

    .line 89
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040314

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    const-string v1, "debug.sqlite.journalmode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDefaultPageSize()I
    .locals 3

    .line 74
    sget-object v0, Landroid/database/sqlite/SQLiteGlobal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_0
    sget v1, Landroid/database/sqlite/SQLiteGlobal;->sDefaultPageSize:I

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Landroid/os/StatFs;

    const-string v2, "/data"

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    sput v1, Landroid/database/sqlite/SQLiteGlobal;->sDefaultPageSize:I

    .line 80
    :cond_0
    const-string v1, "debug.sqlite.pagesize"

    sget v2, Landroid/database/sqlite/SQLiteGlobal;->sDefaultPageSize:I

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 81
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist getDefaultSyncMode()Ljava/lang/String;
    .locals 3

    .line 107
    sget-object v0, Landroid/database/sqlite/SQLiteGlobal;->sDefaultSyncMode:Ljava/lang/String;

    .line 108
    .local v0, "defaultMode":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 109
    return-object v0

    .line 111
    :cond_0
    nop

    .line 112
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040315

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    const-string v2, "debug.sqlite.syncmode"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getIdleConnectionTimeout()I
    .locals 2

    .line 155
    nop

    .line 156
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0101

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 155
    const-string v1, "debug.sqlite.idle_connection_timeout"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static blacklist getJournalSizeLimit()I
    .locals 2

    .line 97
    nop

    .line 98
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0102

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 97
    const-string v1, "debug.sqlite.journalsizelimit"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static blacklist getWALAutoCheckpoint()I
    .locals 2

    .line 134
    nop

    .line 135
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0103

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 134
    const-string v1, "debug.sqlite.wal.autocheckpoint"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 137
    .local v0, "value":I
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public static blacklist getWALConnectionPoolSize()I
    .locals 2

    .line 144
    nop

    .line 145
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0100

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 144
    const-string v1, "debug.sqlite.wal.poolsize"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 147
    .local v0, "value":I
    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public static blacklist getWALSyncMode()Ljava/lang/String;
    .locals 3

    .line 121
    sget-object v0, Landroid/database/sqlite/SQLiteGlobal;->sDefaultSyncMode:Ljava/lang/String;

    .line 122
    .local v0, "defaultMode":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 123
    return-object v0

    .line 125
    :cond_0
    nop

    .line 126
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040316

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 125
    const-string v2, "debug.sqlite.wal.syncmode"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getWALTruncateSize()J
    .locals 4

    .line 168
    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->getTruncateSize()J

    move-result-wide v0

    .line 169
    .local v0, "setting":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 170
    return-wide v0

    .line 172
    :cond_0
    nop

    .line 173
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0104

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 172
    const-string v3, "debug.sqlite.wal.truncatesize"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    return-wide v2
.end method

.method private static native greylist-max-o nativeReleaseMemory()I
.end method

.method public static blacklist releaseMemory()I
    .locals 1

    .line 67
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->nativeReleaseMemory()I

    move-result v0

    return v0
.end method
