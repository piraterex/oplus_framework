.class public Lcom/android/internal/os/KernelCpuProcStringReader;
.super Ljava/lang/Object;
.source "KernelCpuProcStringReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;
    }
.end annotation


# static fields
.field private static final blacklist ACTIVE_TIME_READER:Lcom/android/internal/os/KernelCpuProcStringReader;

.field private static final blacklist CLUSTER_TIME_READER:Lcom/android/internal/os/KernelCpuProcStringReader;

.field private static final blacklist ERROR_THRESHOLD:I = 0x5

.field private static final blacklist FREQ_TIME_READER:Lcom/android/internal/os/KernelCpuProcStringReader;

.field private static final blacklist FRESHNESS:J = 0x1f4L

.field private static final blacklist MAX_BUFFER_SIZE:I = 0x100000

.field private static final blacklist PROC_UID_ACTIVE_TIME:Ljava/lang/String; = "/proc/uid_concurrent_active_time"

.field private static final blacklist PROC_UID_CLUSTER_TIME:Ljava/lang/String; = "/proc/uid_concurrent_policy_time"

.field private static final blacklist PROC_UID_FREQ_TIME:Ljava/lang/String; = "/proc/uid_time_in_state"

.field private static final blacklist PROC_UID_USER_SYS_TIME:Ljava/lang/String; = "/proc/uid_cputime/show_uid_stat"

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist USER_SYS_TIME_READER:Lcom/android/internal/os/KernelCpuProcStringReader;


# instance fields
.field private blacklist mBuf:[C

.field private final blacklist mClock:Lcom/android/internal/os/Clock;

.field private blacklist mErrors:I

.field private final blacklist mFile:Ljava/nio/file/Path;

.field private blacklist mLastReadTime:J

.field private final blacklist mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final blacklist mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field private blacklist mSize:I

.field private final blacklist mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBuf(Lcom/android/internal/os/KernelCpuProcStringReader;)[C
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mBuf:[C

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReadLock(Lcom/android/internal/os/KernelCpuProcStringReader;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 53
    const-class v0, Lcom/android/internal/os/KernelCpuProcStringReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/KernelCpuProcStringReader;->TAG:Ljava/lang/String;

    .line 64
    new-instance v0, Lcom/android/internal/os/KernelCpuProcStringReader;

    const-string v1, "/proc/uid_time_in_state"

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuProcStringReader;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/KernelCpuProcStringReader;->FREQ_TIME_READER:Lcom/android/internal/os/KernelCpuProcStringReader;

    .line 66
    new-instance v0, Lcom/android/internal/os/KernelCpuProcStringReader;

    const-string v1, "/proc/uid_concurrent_active_time"

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuProcStringReader;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/KernelCpuProcStringReader;->ACTIVE_TIME_READER:Lcom/android/internal/os/KernelCpuProcStringReader;

    .line 68
    new-instance v0, Lcom/android/internal/os/KernelCpuProcStringReader;

    const-string v1, "/proc/uid_concurrent_policy_time"

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuProcStringReader;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/KernelCpuProcStringReader;->CLUSTER_TIME_READER:Lcom/android/internal/os/KernelCpuProcStringReader;

    .line 70
    new-instance v0, Lcom/android/internal/os/KernelCpuProcStringReader;

    const-string v1, "/proc/uid_cputime/show_uid_stat"

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuProcStringReader;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/KernelCpuProcStringReader;->USER_SYS_TIME_READER:Lcom/android/internal/os/KernelCpuProcStringReader;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/lang/String;

    .line 100
    sget-object v0, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/KernelCpuProcStringReader;-><init>(Ljava/lang/String;Lcom/android/internal/os/Clock;)V

    .line 101
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/os/Clock;)V
    .locals 3
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "clock"    # Lcom/android/internal/os/Clock;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mErrors:I

    .line 94
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mLastReadTime:J

    .line 95
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 96
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 97
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 104
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mFile:Ljava/nio/file/Path;

    .line 105
    iput-object p2, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mClock:Lcom/android/internal/os/Clock;

    .line 106
    return-void
.end method

.method public static blacklist asLongs(Ljava/nio/CharBuffer;[J)I
    .locals 11
    .param p0, "buf"    # Ljava/nio/CharBuffer;
    .param p1, "array"    # [J

    .line 263
    if-nez p0, :cond_0

    .line 264
    const/4 v0, -0x1

    return v0

    .line 266
    :cond_0
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    .line 267
    .local v0, "initialPos":I
    const/4 v1, 0x0

    .line 268
    .local v1, "count":I
    const-wide/16 v2, -0x1

    .line 271
    .local v2, "num":J
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v4

    const-wide/16 v5, 0x0

    if-lez v4, :cond_5

    array-length v4, p1

    if-ge v1, v4, :cond_5

    .line 272
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->get()C

    move-result v4

    .line 273
    .local v4, "c":C
    invoke-static {v4}, Lcom/android/internal/os/KernelCpuProcStringReader;->isNumber(C)Z

    move-result v7

    if-nez v7, :cond_2

    const/16 v7, 0x20

    if-eq v4, v7, :cond_2

    const/16 v7, 0x3a

    if-eq v4, v7, :cond_2

    .line 274
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 275
    const/4 v5, -0x2

    return v5

    .line 277
    :cond_2
    cmp-long v7, v2, v5

    if-gez v7, :cond_3

    .line 278
    invoke-static {v4}, Lcom/android/internal/os/KernelCpuProcStringReader;->isNumber(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 279
    add-int/lit8 v5, v4, -0x30

    int-to-long v2, v5

    goto :goto_0

    .line 282
    :cond_3
    invoke-static {v4}, Lcom/android/internal/os/KernelCpuProcStringReader;->isNumber(C)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 283
    const-wide/16 v7, 0xa

    mul-long/2addr v7, v2

    int-to-long v9, v4

    add-long/2addr v7, v9

    const-wide/16 v9, 0x30

    sub-long v2, v7, v9

    .line 284
    cmp-long v5, v2, v5

    if-gez v5, :cond_1

    .line 285
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 286
    const/4 v5, -0x3

    return v5

    .line 289
    :cond_4
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "count":I
    .local v5, "count":I
    aput-wide v2, p1, v1

    .line 290
    const-wide/16 v2, -0x1

    move v1, v5

    goto :goto_0

    .line 294
    .end local v4    # "c":C
    .end local v5    # "count":I
    .restart local v1    # "count":I
    :cond_5
    cmp-long v4, v2, v5

    if-ltz v4, :cond_6

    .line 295
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "count":I
    .local v4, "count":I
    aput-wide v2, p1, v1

    move v1, v4

    .line 297
    .end local v4    # "count":I
    .restart local v1    # "count":I
    :cond_6
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 298
    return v1
.end method

.method private blacklist dataValid()Z
    .locals 4

    .line 194
    iget v0, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mSize:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mLastReadTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static blacklist getActiveTimeReaderInstance()Lcom/android/internal/os/KernelCpuProcStringReader;
    .locals 1

    .line 78
    sget-object v0, Lcom/android/internal/os/KernelCpuProcStringReader;->ACTIVE_TIME_READER:Lcom/android/internal/os/KernelCpuProcStringReader;

    return-object v0
.end method

.method static blacklist getClusterTimeReaderInstance()Lcom/android/internal/os/KernelCpuProcStringReader;
    .locals 1

    .line 82
    sget-object v0, Lcom/android/internal/os/KernelCpuProcStringReader;->CLUSTER_TIME_READER:Lcom/android/internal/os/KernelCpuProcStringReader;

    return-object v0
.end method

.method static blacklist getFreqTimeReaderInstance()Lcom/android/internal/os/KernelCpuProcStringReader;
    .locals 1

    .line 74
    sget-object v0, Lcom/android/internal/os/KernelCpuProcStringReader;->FREQ_TIME_READER:Lcom/android/internal/os/KernelCpuProcStringReader;

    return-object v0
.end method

.method static blacklist getUserSysTimeReaderInstance()Lcom/android/internal/os/KernelCpuProcStringReader;
    .locals 1

    .line 86
    sget-object v0, Lcom/android/internal/os/KernelCpuProcStringReader;->USER_SYS_TIME_READER:Lcom/android/internal/os/KernelCpuProcStringReader;

    return-object v0
.end method

.method private static blacklist isNumber(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 302
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist open()Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;
    .locals 1

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/KernelCpuProcStringReader;->open(Z)Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist open(Z)Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;
    .locals 8
    .param p1, "ignoreCache"    # Z

    .line 133
    iget v0, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mErrors:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    .line 134
    return-object v1

    .line 137
    :cond_0
    if-eqz p1, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    goto :goto_0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 141
    invoke-direct {p0}, Lcom/android/internal/os/KernelCpuProcStringReader;->dataValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    new-instance v0, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;

    iget v1, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mSize:I

    invoke-direct {v0, p0, v1}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;-><init>(Lcom/android/internal/os/KernelCpuProcStringReader;I)V

    return-object v0

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 145
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 146
    invoke-direct {p0}, Lcom/android/internal/os/KernelCpuProcStringReader;->dataValid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 149
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 150
    new-instance v0, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;

    iget v1, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mSize:I

    invoke-direct {v0, p0, v1}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;-><init>(Lcom/android/internal/os/KernelCpuProcStringReader;I)V

    return-object v0

    .line 155
    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 157
    .local v0, "total":I
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mSize:I

    .line 158
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v2

    .line 159
    .local v2, "oldMask":I
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mFile:Ljava/nio/file/Path;

    invoke-static {v3}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;)Ljava/io/BufferedReader;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 160
    .local v3, "r":Ljava/io/BufferedReader;
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mBuf:[C

    if-nez v4, :cond_4

    .line 161
    const/16 v4, 0x400

    new-array v4, v4, [C

    iput-object v4, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mBuf:[C

    .line 163
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mBuf:[C

    array-length v5, v4

    sub-int/2addr v5, v0

    invoke-virtual {v3, v4, v0, v5}, Ljava/io/BufferedReader;->read([CII)I

    move-result v4

    move v5, v4

    .local v5, "curr":I
    if-ltz v4, :cond_7

    .line 164
    add-int/2addr v0, v5

    .line 165
    iget-object v4, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mBuf:[C

    array-length v6, v4

    if-ne v0, v6, :cond_4

    .line 167
    array-length v6, v4

    const/high16 v7, 0x100000

    if-ne v6, v7, :cond_6

    .line 168
    iget v4, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mErrors:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mErrors:I

    .line 169
    sget-object v4, Lcom/android/internal/os/KernelCpuProcStringReader;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Proc file too large: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mFile:Ljava/nio/file/Path;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    nop

    .line 180
    if-eqz v3, :cond_5

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 187
    :cond_5
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 188
    iget-object v4, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 170
    return-object v1

    .line 172
    :cond_6
    :try_start_3
    array-length v6, v4

    shl-int/lit8 v6, v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mBuf:[C

    goto :goto_1

    .line 175
    :cond_7
    iput v0, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mSize:I

    .line 176
    iget-object v4, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v4}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mLastReadTime:J

    .line 178
    iget-object v4, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 179
    new-instance v4, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;

    invoke-direct {v4, p0, v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;-><init>(Lcom/android/internal/os/KernelCpuProcStringReader;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 180
    if-eqz v3, :cond_8

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 187
    :cond_8
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 188
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 179
    return-object v4

    .line 159
    .end local v5    # "curr":I
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_9

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v5

    :try_start_6
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "total":I
    .end local v2    # "oldMask":I
    .end local p0    # "this":Lcom/android/internal/os/KernelCpuProcStringReader;
    .end local p1    # "ignoreCache":Z
    :cond_9
    :goto_2
    throw v4
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 187
    .end local v3    # "r":Ljava/io/BufferedReader;
    .restart local v0    # "total":I
    .restart local v2    # "oldMask":I
    .restart local p0    # "this":Lcom/android/internal/os/KernelCpuProcStringReader;
    .restart local p1    # "ignoreCache":Z
    :catchall_2
    move-exception v1

    goto :goto_4

    .line 183
    :catch_0
    move-exception v3

    .line 184
    .local v3, "e":Ljava/io/IOException;
    :try_start_7
    iget v4, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mErrors:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mErrors:I

    .line 185
    sget-object v4, Lcom/android/internal/os/KernelCpuProcStringReader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mFile:Ljava/nio/file/Path;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 180
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 181
    .restart local v3    # "e":Ljava/io/IOException;
    iget v4, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mErrors:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mErrors:I

    .line 182
    sget-object v4, Lcom/android/internal/os/KernelCpuProcStringReader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File not found. It\'s normal if not implemented: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mFile:Ljava/nio/file/Path;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 187
    :goto_3
    nop

    .end local v3    # "e":Ljava/io/IOException;
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 188
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 189
    nop

    .line 190
    return-object v1

    .line 187
    :goto_4
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 188
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 189
    throw v1
.end method
