.class public Lcom/android/internal/os/BatteryUsageStatsStore;
.super Ljava/lang/Object;
.source "BatteryUsageStatsStore.java"


# static fields
.field private static final blacklist BATTERY_USAGE_STATS_BEFORE_RESET_TIMESTAMP_PROPERTY:Ljava/lang/String; = "BATTERY_USAGE_STATS_BEFORE_RESET_TIMESTAMP"

.field private static final blacklist BATTERY_USAGE_STATS_DIR:Ljava/lang/String; = "battery-usage-stats"

.field private static final blacklist BATTERY_USAGE_STATS_QUERY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/BatteryUsageStatsQuery;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist CONFIG_FILENAME:Ljava/lang/String; = "config"

.field private static final blacklist DIR_LOCK_FILENAME:Ljava/lang/String; = ".lock"

.field private static final blacklist MAX_BATTERY_STATS_SNAPSHOT_STORAGE_BYTES:J = 0x19000L

.field private static final blacklist SNAPSHOT_FILE_EXTENSION:Ljava/lang/String; = ".bus"

.field private static final blacklist TAG:Ljava/lang/String; = "BatteryUsageStatsStore"


# instance fields
.field private final blacklist mBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private final blacklist mBatteryUsageStatsProvider:Lcom/android/internal/os/BatteryUsageStatsProvider;

.field private final blacklist mConfigFile:Landroid/util/AtomicFile;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mJvmLock:Ljava/nio/channels/FileLock;

.field private final blacklist mLockFile:Ljava/io/File;

.field private final blacklist mMaxStorageBytes:J

.field private final blacklist mStoreDir:Ljava/io/File;

.field private blacklist mSystemReady:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$68qPHZ-NgB1E5Jr-Tjx8cJIEwEM(Lcom/android/internal/os/BatteryUsageStatsStore;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryUsageStatsStore;->prepareForBatteryStatsReset(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 59
    new-instance v0, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 61
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includePowerModels()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v0

    .line 59
    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/BatteryUsageStatsStore;->BATTERY_USAGE_STATS_QUERY:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsImpl;Ljava/io/File;Landroid/os/Handler;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stats"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p3, "systemDir"    # Ljava/io/File;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 87
    const-wide/32 v5, 0x19000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryUsageStatsStore;-><init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsImpl;Ljava/io/File;Landroid/os/Handler;J)V

    .line 88
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsImpl;Ljava/io/File;Landroid/os/Handler;J)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "batteryStats"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p3, "systemDir"    # Ljava/io/File;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "maxStorageBytes"    # J

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 93
    iput-object p1, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 95
    new-instance v0, Ljava/io/File;

    const-string v1, "battery-usage-stats"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mStoreDir:Ljava/io/File;

    .line 96
    new-instance v1, Ljava/io/File;

    const-string v2, ".lock"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mLockFile:Ljava/io/File;

    .line 97
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "config"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mConfigFile:Landroid/util/AtomicFile;

    .line 98
    iput-object p4, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mHandler:Landroid/os/Handler;

    .line 99
    iput-wide p5, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mMaxStorageBytes:J

    .line 100
    new-instance v0, Lcom/android/internal/os/BatteryUsageStatsStore$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryUsageStatsStore$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/os/BatteryUsageStatsStore;)V

    invoke-virtual {p2, v0}, Lcom/android/internal/os/BatteryStatsImpl;->setBatteryResetListener(Lcom/android/internal/os/BatteryStatsImpl$BatteryResetListener;)V

    .line 101
    new-instance v0, Lcom/android/internal/os/BatteryUsageStatsProvider;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/os/BatteryUsageStatsProvider;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mBatteryUsageStatsProvider:Lcom/android/internal/os/BatteryUsageStatsProvider;

    .line 102
    return-void
.end method

.method private blacklist lockSnapshotDirectory()V
    .locals 4

    .line 245
    iget-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mLockFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 250
    iget-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mLockFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 251
    iget-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mLockFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    const/4 v2, 0x0

    sget-object v3, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mJvmLock:Ljava/nio/channels/FileLock;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BatteryUsageStatsStore"

    const-string v2, "Cannot lock snapshot directory"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private blacklist makeSnapshotFilename(J)Ljava/io/File;
    .locals 7
    .param p1, "statsEndTimestamp"    # J

    .line 272
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mStoreDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "%019d"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".bus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private blacklist prepareForBatteryStatsReset(I)V
    .locals 3
    .param p1, "resetReason"    # I

    .line 112
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mSystemReady:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mBatteryUsageStatsProvider:Lcom/android/internal/os/BatteryUsageStatsProvider;

    sget-object v1, Lcom/android/internal/os/BatteryUsageStatsStore;->BATTERY_USAGE_STATS_QUERY:Ljava/util/List;

    .line 117
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryUsageStatsProvider;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 118
    .local v0, "stats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryUsageStats;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    const-string v1, "BatteryUsageStatsStore"

    const-string v2, "No battery usage stats generated"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/os/BatteryUsageStatsStore$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/os/BatteryUsageStatsStore$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/os/BatteryUsageStatsStore;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 124
    return-void

    .line 113
    .end local v0    # "stats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryUsageStats;>;"
    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist readXmlFileLocked(Ljava/io/File;)Landroid/os/BatteryUsageStats;
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 288
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 289
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newBinaryPullParser()Landroid/util/TypedXmlPullParser;

    move-result-object v1

    .line 290
    .local v1, "parser":Landroid/util/TypedXmlPullParser;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/util/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 291
    invoke-static {v1}, Landroid/os/BatteryUsageStats;->createFromXml(Landroid/util/TypedXmlPullParser;)Landroid/os/BatteryUsageStats;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 291
    return-object v2

    .line 288
    .end local v1    # "parser":Landroid/util/TypedXmlPullParser;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method private blacklist removeOldSnapshotsLocked()V
    .locals 11

    .line 299
    const-wide/16 v0, 0x0

    .line 300
    .local v0, "totalSize":J
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 301
    .local v2, "mFileSizes":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/io/File;Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mStoreDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 302
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 303
    .local v7, "fileSize":J
    add-long/2addr v0, v7

    .line 304
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".bus"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 305
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v6, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "fileSize":J
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 309
    :cond_1
    :goto_1
    iget-wide v3, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mMaxStorageBytes:J

    cmp-long v3, v0, v3

    if-lez v3, :cond_4

    .line 310
    invoke-virtual {v2}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v3

    .line 311
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/File;Ljava/lang/Long;>;"
    if-nez v3, :cond_2

    .line 312
    goto :goto_2

    .line 315
    :cond_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 316
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_3

    .line 317
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot delete battery usage stats "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BatteryUsageStatsStore"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v0, v5

    .line 320
    invoke-virtual {v2, v4}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/File;Ljava/lang/Long;>;"
    .end local v4    # "file":Ljava/io/File;
    goto :goto_1

    .line 322
    :cond_4
    :goto_2
    return-void
.end method

.method private blacklist storeBatteryUsageStats(Landroid/os/BatteryUsageStats;)V
    .locals 4
    .param p1, "stats"    # Landroid/os/BatteryUsageStats;

    .line 127
    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->lockSnapshotDirectory()V

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mStoreDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "BatteryUsageStatsStore"

    if-nez v0, :cond_0

    .line 130
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mStoreDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    const-string v0, "Could not create a directory for battery usage stats snapshots"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    .line 132
    return-void

    .line 135
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats;->getStatsEndTimestamp()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/os/BatteryUsageStatsStore;->makeSnapshotFilename(J)Ljava/io/File;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    .local v0, "file":Ljava/io/File;
    :try_start_3
    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryUsageStatsStore;->writeXmlFileLocked(Landroid/os/BatteryUsageStats;Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 140
    goto :goto_0

    .line 138
    :catch_0
    move-exception v2

    .line 139
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v3, "Cannot save battery usage stats"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->removeOldSnapshotsLocked()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 144
    .end local v0    # "file":Ljava/io/File;
    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    .line 145
    nop

    .line 146
    return-void

    .line 144
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    .line 145
    throw v0
.end method

.method private blacklist unlockSnapshotDirectory()V
    .locals 3

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mJvmLock:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    nop

    :goto_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 264
    goto :goto_1

    .line 263
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v1, "BatteryUsageStatsStore"

    const-string v2, "Cannot unlock snapshot directory"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    nop

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 265
    :goto_1
    return-void

    .line 263
    :goto_2
    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 264
    throw v0
.end method

.method private blacklist writeXmlFileLocked(Landroid/os/BatteryUsageStats;Ljava/io/File;)V
    .locals 4
    .param p1, "stats"    # Landroid/os/BatteryUsageStats;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 278
    .local v0, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newBinarySerializer()Landroid/util/TypedXmlSerializer;

    move-result-object v1

    .line 279
    .local v1, "serializer":Landroid/util/TypedXmlSerializer;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/util/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 280
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 281
    invoke-virtual {p1, v1}, Landroid/os/BatteryUsageStats;->writeXml(Landroid/util/TypedXmlSerializer;)V

    .line 282
    invoke-interface {v1}, Landroid/util/TypedXmlSerializer;->endDocument()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    .end local v1    # "serializer":Landroid/util/TypedXmlSerializer;
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 284
    .end local v0    # "out":Ljava/io/OutputStream;
    return-void

    .line 277
    .restart local v0    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method


# virtual methods
.method public blacklist getLastBatteryUsageStatsBeforeResetAtomPullTimestamp()J
    .locals 5

    .line 229
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 230
    .local v0, "props":Ljava/util/Properties;
    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->lockSnapshotDirectory()V

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 233
    .local v1, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 236
    .end local v1    # "in":Ljava/io/InputStream;
    :cond_0
    goto :goto_1

    .line 232
    .restart local v1    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "props":Ljava/util/Properties;
    .end local p0    # "this":Lcom/android/internal/os/BatteryUsageStatsStore;
    :cond_1
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 238
    .end local v1    # "in":Ljava/io/InputStream;
    .restart local v0    # "props":Ljava/util/Properties;
    .restart local p0    # "this":Lcom/android/internal/os/BatteryUsageStatsStore;
    :catchall_2
    move-exception v1

    goto :goto_2

    .line 234
    :catch_0
    move-exception v1

    .line 235
    .local v1, "e":Ljava/io/IOException;
    :try_start_5
    const-string v2, "BatteryUsageStatsStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot load config file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 238
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    .line 239
    nop

    .line 240
    nop

    .line 241
    const-string v1, "BATTERY_USAGE_STATS_BEFORE_RESET_TIMESTAMP"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1

    .line 238
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    .line 239
    throw v1
.end method

.method synthetic blacklist lambda$prepareForBatteryStatsReset$0$com-android-internal-os-BatteryUsageStatsStore(Ljava/util/List;)V
    .locals 1
    .param p1, "stats"    # Ljava/util/List;

    .line 123
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryUsageStats;

    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryUsageStatsStore;->storeBatteryUsageStats(Landroid/os/BatteryUsageStats;)V

    return-void
.end method

.method public blacklist listBatteryUsageStatsTimestamps()[J
    .locals 12

    .line 153
    const-string v0, ".bus"

    new-instance v1, Landroid/util/LongArray;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Landroid/util/LongArray;-><init>(I)V

    .line 154
    .local v1, "timestamps":Landroid/util/LongArray;
    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->lockSnapshotDirectory()V

    .line 156
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mStoreDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 157
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 158
    .local v7, "fileName":Ljava/lang/String;
    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_0

    .line 160
    nop

    .line 161
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    .line 160
    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 162
    .local v8, "fileNameWithoutExtension":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Landroid/util/LongArray;->add(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    .end local v8    # "fileNameWithoutExtension":Ljava/lang/String;
    goto :goto_1

    .line 163
    :catch_0
    move-exception v8

    .line 164
    .local v8, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    const-string v9, "BatteryUsageStatsStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid format of BatteryUsageStats snapshot file name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 170
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    .line 171
    nop

    .line 172
    invoke-virtual {v1}, Landroid/util/LongArray;->toArray()[J

    move-result-object v0

    return-object v0

    .line 170
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    .line 171
    throw v0
.end method

.method public blacklist loadBatteryUsageStats(J)Landroid/os/BatteryUsageStats;
    .locals 4
    .param p1, "timestamp"    # J

    .line 181
    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->lockSnapshotDirectory()V

    .line 183
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BatteryUsageStatsStore;->makeSnapshotFilename(J)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    .local v0, "file":Ljava/io/File;
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryUsageStatsStore;->readXmlFileLocked(Ljava/io/File;)Landroid/os/BatteryUsageStats;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    .line 185
    return-object v1

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "BatteryUsageStatsStore"

    const-string v3, "Cannot read battery usage stats"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    nop

    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    .line 191
    nop

    .line 192
    const/4 v0, 0x0

    return-object v0

    .line 190
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    .line 191
    throw v0
.end method

.method public blacklist onSystemReady()V
    .locals 1

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mSystemReady:Z

    .line 109
    return-void
.end method

.method public blacklist removeAllSnapshots()V
    .locals 7

    .line 325
    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->lockSnapshotDirectory()V

    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mStoreDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 328
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".bus"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 329
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 330
    const-string v4, "BatteryUsageStatsStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot delete battery usage stats "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    .end local v3    # "file":Ljava/io/File;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 335
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    .line 336
    nop

    .line 337
    return-void

    .line 335
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    .line 336
    throw v0
.end method

.method public blacklist setLastBatteryUsageStatsBeforeResetAtomPullTimestamp(J)V
    .locals 6
    .param p1, "timestamp"    # J

    .line 200
    const-string v0, "BatteryUsageStatsStore"

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 201
    .local v1, "props":Ljava/util/Properties;
    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->lockSnapshotDirectory()V

    .line 203
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 204
    .local v2, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 207
    .end local v2    # "in":Ljava/io/InputStream;
    :cond_0
    goto :goto_1

    .line 203
    .restart local v2    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "props":Ljava/util/Properties;
    .end local p0    # "this":Lcom/android/internal/os/BatteryUsageStatsStore;
    .end local p1    # "timestamp":J
    :cond_1
    :goto_0
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 220
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v1    # "props":Ljava/util/Properties;
    .restart local p0    # "this":Lcom/android/internal/os/BatteryUsageStatsStore;
    .restart local p1    # "timestamp":J
    :catchall_2
    move-exception v0

    goto :goto_3

    .line 205
    :catch_0
    move-exception v2

    .line 206
    .local v2, "e":Ljava/io/IOException;
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot load config file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    const-string v2, "BATTERY_USAGE_STATS_BEFORE_RESET_TIMESTAMP"

    .line 209
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 208
    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 210
    const/4 v2, 0x0

    .line 212
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_6
    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    .line 213
    const-string v3, "Statsd atom pull timestamps"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 214
    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 218
    goto :goto_2

    .line 215
    :catch_1
    move-exception v3

    .line 216
    .local v3, "e":Ljava/io/IOException;
    :try_start_7
    iget-object v4, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 217
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot save config file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 220
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    .line 221
    nop

    .line 222
    return-void

    .line 220
    :goto_3
    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    .line 221
    throw v0
.end method
