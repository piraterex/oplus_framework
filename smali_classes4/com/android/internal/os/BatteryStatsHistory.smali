.class public Lcom/android/internal/os/BatteryStatsHistory;
.super Ljava/lang/Object;
.source "BatteryStatsHistory.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static final blacklist FILE_SUFFIX:Ljava/lang/String; = ".bin"

.field public static final blacklist HISTORY_DIR:Ljava/lang/String; = "battery-history"

.field private static final blacklist MIN_FREE_SPACE:I = 0x6400000

.field private static final blacklist TAG:Ljava/lang/String; = "BatteryStatsHistory"


# instance fields
.field private blacklist mActiveFile:Landroid/util/AtomicFile;

.field private blacklist mCurrentFileIndex:I

.field private blacklist mCurrentParcel:Landroid/os/Parcel;

.field private blacklist mCurrentParcelEnd:I

.field private final blacklist mFileNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHistoryBuffer:Landroid/os/Parcel;

.field private final blacklist mHistoryDir:Ljava/io/File;

.field private blacklist mHistoryParcels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Parcel;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mParcelIndex:I

.field private blacklist mRecordCount:I

.field private final blacklist mStats:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "historyBuffer"    # Landroid/os/Parcel;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    .line 100
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordCount:I

    .line 105
    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mParcelIndex:I

    .line 159
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 160
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Ljava/io/File;

    .line 161
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    .line 162
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl;Ljava/io/File;Landroid/os/Parcel;)V
    .locals 5
    .param p1, "stats"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "systemDir"    # Ljava/io/File;
    .param p3, "historyBuffer"    # Landroid/os/Parcel;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    .line 83
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    .line 100
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordCount:I

    .line 105
    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mParcelIndex:I

    .line 115
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 116
    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    .line 117
    new-instance v2, Ljava/io/File;

    const-string v3, "battery-history"

    invoke-direct {v2, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Ljava/io/File;

    .line 118
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 119
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HistoryDir does not exist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BatteryStatsHistory"

    invoke-static {v4, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 125
    .local v3, "dedup":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v4, Lcom/android/internal/os/BatteryStatsHistory$1;

    invoke-direct {v4, p0, v3}, Lcom/android/internal/os/BatteryStatsHistory$1;-><init>(Lcom/android/internal/os/BatteryStatsHistory;Ljava/util/Set;)V

    invoke-virtual {v2, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 142
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 143
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 144
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 145
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->setActiveFile(I)V

    goto :goto_0

    .line 148
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-direct {p0, v1}, Lcom/android/internal/os/BatteryStatsHistory;->setActiveFile(I)V

    .line 151
    :goto_0
    return-void
.end method

.method public static blacklist createFromBatteryUsageStatsParcel(Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsHistory;
    .locals 4
    .param p0, "in"    # Landroid/os/Parcel;

    .line 430
    invoke-virtual {p0}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v0

    .line 432
    .local v0, "historyBlob":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 433
    .local v1, "historyBuffer":Landroid/os/Parcel;
    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 435
    new-instance v2, Lcom/android/internal/os/BatteryStatsHistory;

    invoke-direct {v2, v1}, Lcom/android/internal/os/BatteryStatsHistory;-><init>(Landroid/os/Parcel;)V

    .line 436
    .local v2, "history":Lcom/android/internal/os/BatteryStatsHistory;
    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/internal/os/BatteryStatsHistory;->readFromParcel(Landroid/os/Parcel;Z)V

    .line 437
    return-object v2
.end method

.method private blacklist getFile(I)Landroid/util/AtomicFile;
    .locals 5
    .param p1, "num"    # I

    .line 186
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".bin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method private blacklist hasFreeDiskSpace()Z
    .locals 5

    .line 472
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 473
    .local v0, "stats":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v1

    const-wide/32 v3, 0x6400000

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;Z)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "useBlobs"    # Z

    .line 450
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 451
    .local v0, "start":J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    .line 452
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 453
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 454
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v4

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 455
    .local v4, "temp":[B
    :goto_1
    if-eqz v4, :cond_2

    array-length v5, v4

    if-nez v5, :cond_1

    .line 456
    goto :goto_2

    .line 458
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 459
    .local v5, "p":Landroid/os/Parcel;
    array-length v6, v4

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 460
    invoke-virtual {v5, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 461
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    .end local v4    # "temp":[B
    .end local v5    # "p":Landroid/os/Parcel;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 466
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method private blacklist setActiveFile(I)V
    .locals 1
    .param p1, "fileNumber"    # I

    .line 174
    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->getFile(I)Landroid/util/AtomicFile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFile:Landroid/util/AtomicFile;

    .line 178
    return-void
.end method

.method private blacklist skipHead(Landroid/os/Parcel;)Z
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .line 372
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 374
    .local v1, "version":I
    const/16 v2, 0xd1

    if-eq v1, v2, :cond_0

    .line 375
    return v0

    .line 378
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 379
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist writeToParcel(Landroid/os/Parcel;Z)V
    .locals 8
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "useBlobs"    # Z

    .line 403
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 404
    .local v0, "start":J
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 406
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/os/BatteryStatsHistory;->getFile(I)Landroid/util/AtomicFile;

    move-result-object v3

    .line 407
    .local v3, "file":Landroid/util/AtomicFile;
    const/4 v4, 0x0

    new-array v4, v4, [B

    .line 409
    .local v4, "raw":[B
    :try_start_0
    invoke-virtual {v3}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 412
    goto :goto_1

    .line 410
    :catch_0
    move-exception v5

    .line 411
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error reading file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BatteryStatsHistory"

    invoke-static {v7, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 413
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    if-eqz p2, :cond_0

    .line 414
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeBlob([B)V

    goto :goto_2

    .line 417
    :cond_0
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 405
    .end local v3    # "file":Landroid/util/AtomicFile;
    .end local v4    # "raw":[B
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 423
    .end local v2    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist finishIteratingHistory()V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 260
    return-void
.end method

.method public blacklist getActiveFile()Landroid/util/AtomicFile;
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFile:Landroid/util/AtomicFile;

    return-object v0
.end method

.method public blacklist getFilesNumbers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getHistoryDirectory()Ljava/io/File;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Ljava/io/File;

    return-object v0
.end method

.method public blacklist getHistoryUsedSize()I
    .locals 6

    .line 488
    const/4 v0, 0x0

    .line 489
    .local v0, "ret":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 490
    int-to-long v2, v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/os/BatteryStatsHistory;->getFile(I)Landroid/util/AtomicFile;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    long-to-int v0, v2

    .line 489
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 492
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 493
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 494
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 495
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 494
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 498
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public blacklist getNextParcel(Landroid/os/BatteryStats$HistoryItem;)Landroid/os/Parcel;
    .locals 6
    .param p1, "out"    # Landroid/os/BatteryStats$HistoryItem;

    .line 271
    iget v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordCount:I

    if-nez v0, :cond_0

    .line 273
    invoke-virtual {p1}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    .line 275
    :cond_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordCount:I

    .line 278
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 280
    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    iget v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcelEnd:I

    if-ge v0, v2, :cond_1

    .line 282
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    return-object v0

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    if-ne v0, v2, :cond_2

    .line 285
    return-object v1

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 287
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 289
    :cond_3
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 295
    :cond_4
    :goto_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentFileIndex:I

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_7

    .line 296
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    .line 297
    iput v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcelEnd:I

    .line 298
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 299
    .local v0, "p":Landroid/os/Parcel;
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    iget v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentFileIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentFileIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/os/BatteryStatsHistory;->getFile(I)Landroid/util/AtomicFile;

    move-result-object v2

    .line 300
    .local v2, "file":Landroid/util/AtomicFile;
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/os/BatteryStatsHistory;->readFileToParcel(Landroid/os/Parcel;Landroid/util/AtomicFile;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 301
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 302
    .local v3, "bufSize":I
    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    .line 303
    .local v4, "curPos":I
    add-int v5, v4, v3

    iput v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcelEnd:I

    .line 304
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    .line 305
    if-ge v4, v5, :cond_5

    .line 306
    return-object v0

    .line 308
    .end local v3    # "bufSize":I
    .end local v4    # "curPos":I
    :cond_5
    goto :goto_1

    .line 309
    :cond_6
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 311
    .end local v0    # "p":Landroid/os/Parcel;
    .end local v2    # "file":Landroid/util/AtomicFile;
    :goto_1
    goto :goto_0

    .line 315
    :cond_7
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 316
    :goto_2
    iget v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mParcelIndex:I

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_a

    .line 317
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mParcelIndex:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mParcelIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcel;

    .line 318
    .restart local v0    # "p":Landroid/os/Parcel;
    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->skipHead(Landroid/os/Parcel;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 319
    goto :goto_2

    .line 321
    :cond_8
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 322
    .local v2, "bufSize":I
    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    .line 323
    .restart local v4    # "curPos":I
    add-int v5, v4, v2

    iput v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcelEnd:I

    .line 324
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    .line 325
    if-ge v4, v5, :cond_9

    .line 326
    return-object v0

    .line 328
    .end local v0    # "p":Landroid/os/Parcel;
    .end local v2    # "bufSize":I
    .end local v4    # "curPos":I
    :cond_9
    goto :goto_2

    .line 332
    :cond_a
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    if-gtz v0, :cond_b

    .line 334
    return-object v1

    .line 336
    :cond_b
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 337
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    .line 338
    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcelEnd:I

    .line 339
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    return-object v0
.end method

.method public blacklist readFileToParcel(Landroid/os/Parcel;Landroid/util/AtomicFile;)Z
    .locals 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "file"    # Landroid/util/AtomicFile;

    .line 349
    const/4 v0, 0x0

    .line 351
    .local v0, "raw":[B
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 352
    .local v2, "start":J
    invoke-virtual {p2}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 360
    .end local v2    # "start":J
    nop

    .line 361
    array-length v2, v0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 362
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 363
    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->skipHead(Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 357
    :catch_0
    move-exception v2

    .line 358
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BatteryStatsHistory"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 359
    return v1
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 446
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsHistory;->readFromParcel(Landroid/os/Parcel;Z)V

    .line 447
    return-void
.end method

.method public blacklist resetAllFiles()V
    .locals 3

    .line 230
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 231
    .local v1, "i":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/os/BatteryStatsHistory;->getFile(I)Landroid/util/AtomicFile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V

    .line 232
    .end local v1    # "i":Ljava/lang/Integer;
    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 234
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-direct {p0, v1}, Lcom/android/internal/os/BatteryStatsHistory;->setActiveFile(I)V

    .line 236
    return-void
.end method

.method public blacklist startIteratingHistory()Z
    .locals 2

    .line 243
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordCount:I

    .line 244
    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentFileIndex:I

    .line 245
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    .line 246
    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcelEnd:I

    .line 247
    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mParcelIndex:I

    .line 248
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist startNextFile()V
    .locals 4

    .line 195
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const-string v1, "BatteryStatsHistory"

    if-nez v0, :cond_0

    .line 196
    const-string/jumbo v0, "mStats should not be null when writing history"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    const-string/jumbo v0, "mFileNumbers should never be empty"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 208
    .local v0, "next":I
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->setActiveFile(I)V

    .line 212
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistory;->hasFreeDiskSpace()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 213
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 214
    .local v1, "oldest":I
    invoke-direct {p0, v1}, Lcom/android/internal/os/BatteryStatsHistory;->getFile(I)Landroid/util/AtomicFile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/AtomicFile;->delete()V

    .line 219
    .end local v1    # "oldest":I
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mConstants:Lcom/android/internal/os/BatteryStatsImpl$Constants;

    iget v3, v3, Lcom/android/internal/os/BatteryStatsImpl$Constants;->MAX_HISTORY_FILES:I

    if-le v1, v3, :cond_3

    .line 220
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 221
    .restart local v1    # "oldest":I
    invoke-direct {p0, v1}, Lcom/android/internal/os/BatteryStatsHistory;->getFile(I)Landroid/util/AtomicFile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/AtomicFile;->delete()V

    .line 222
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 223
    .end local v1    # "oldest":I
    goto :goto_0

    .line 224
    :cond_3
    return-void
.end method

.method public blacklist writeToBatteryUsageStatsParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;

    .line 398
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBlob([B)V

    .line 399
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsHistory;->writeToParcel(Landroid/os/Parcel;Z)V

    .line 400
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;

    .line 389
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsHistory;->writeToParcel(Landroid/os/Parcel;Z)V

    .line 390
    return-void
.end method
