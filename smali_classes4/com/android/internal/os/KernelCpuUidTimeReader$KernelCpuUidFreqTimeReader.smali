.class public Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;
.super Lcom/android/internal/os/KernelCpuUidTimeReader;
.source "KernelCpuUidTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelCpuUidTimeReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KernelCpuUidFreqTimeReader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/os/KernelCpuUidTimeReader<",
        "[J>;"
    }
.end annotation


# static fields
.field private static final blacklist MAX_ERROR_COUNT:I = 0x5

.field private static final blacklist UID_TIMES_PROC_FILE:Ljava/lang/String; = "/proc/uid_time_in_state"


# instance fields
.field private blacklist mAllUidTimesAvailable:Z

.field private blacklist mBuffer:[J

.field private blacklist mCpuFreqs:[J

.field private blacklist mCurTimes:[J

.field private blacklist mDeltaTimes:[J

.field private blacklist mErrors:I

.field private blacklist mFreqCount:I

.field private blacklist mPerClusterTimesAvailable:Z

.field private final blacklist mProcFilePath:Ljava/nio/file/Path;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/os/KernelCpuProcStringReader;Lcom/android/internal/os/KernelCpuUidBpfMapReader;Z)V
    .locals 6
    .param p1, "procFile"    # Ljava/lang/String;
    .param p2, "reader"    # Lcom/android/internal/os/KernelCpuProcStringReader;
    .param p3, "bpfReader"    # Lcom/android/internal/os/KernelCpuUidBpfMapReader;
    .param p4, "throttle"    # Z

    .line 369
    sget-object v5, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;-><init>(Ljava/lang/String;Lcom/android/internal/os/KernelCpuProcStringReader;Lcom/android/internal/os/KernelCpuUidBpfMapReader;ZLcom/android/internal/os/Clock;)V

    .line 370
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/os/KernelCpuProcStringReader;Lcom/android/internal/os/KernelCpuUidBpfMapReader;ZLcom/android/internal/os/Clock;)V
    .locals 2
    .param p1, "procFile"    # Ljava/lang/String;
    .param p2, "reader"    # Lcom/android/internal/os/KernelCpuProcStringReader;
    .param p3, "bpfReader"    # Lcom/android/internal/os/KernelCpuUidBpfMapReader;
    .param p4, "throttle"    # Z
    .param p5, "clock"    # Lcom/android/internal/os/Clock;

    .line 374
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/internal/os/KernelCpuUidTimeReader;-><init>(Lcom/android/internal/os/KernelCpuProcStringReader;Lcom/android/internal/os/KernelCpuUidBpfMapReader;ZLcom/android/internal/os/Clock;)V

    .line 352
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mFreqCount:I

    .line 353
    iput v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mErrors:I

    .line 355
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mAllUidTimesAvailable:Z

    .line 375
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mProcFilePath:Ljava/nio/file/Path;

    .line 376
    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .locals 1
    .param p1, "throttle"    # Z

    .line 358
    sget-object v0, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;-><init>(ZLcom/android/internal/os/Clock;)V

    .line 359
    return-void
.end method

.method public constructor blacklist <init>(ZLcom/android/internal/os/Clock;)V
    .locals 6
    .param p1, "throttle"    # Z
    .param p2, "clock"    # Lcom/android/internal/os/Clock;

    .line 362
    invoke-static {}, Lcom/android/internal/os/KernelCpuProcStringReader;->getFreqTimeReaderInstance()Lcom/android/internal/os/KernelCpuProcStringReader;

    move-result-object v2

    .line 363
    invoke-static {}, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->getFreqTimeReaderInstance()Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    move-result-object v3

    .line 362
    const-string v1, "/proc/uid_time_in_state"

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;-><init>(Ljava/lang/String;Lcom/android/internal/os/KernelCpuProcStringReader;Lcom/android/internal/os/KernelCpuUidBpfMapReader;ZLcom/android/internal/os/Clock;)V

    .line 364
    return-void
.end method

.method private blacklist checkPrecondition(Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;)Z
    .locals 4
    .param p1, "iter"    # Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;

    .line 590
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->hasNextLine()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 594
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->nextLine()Ljava/nio/CharBuffer;

    move-result-object v1

    .line 595
    .local v1, "line":Ljava/nio/CharBuffer;
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mCpuFreqs:[J

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 596
    return v3

    .line 598
    :cond_1
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->readFreqs(Ljava/lang/String;)[J

    move-result-object v2

    if-eqz v2, :cond_2

    move v0, v3

    :cond_2
    return v0

    .line 592
    .end local v1    # "line":Ljava/nio/CharBuffer;
    :cond_3
    :goto_0
    return v0
.end method

.method private blacklist checkPrecondition(Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;)Z
    .locals 3
    .param p1, "iter"    # Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;

    .line 578
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 579
    iput-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBpfTimesAvailable:Z

    .line 580
    return v0

    .line 582
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mCpuFreqs:[J

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 583
    return v2

    .line 585
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->readFreqsThroughBpf()[J

    move-result-object v1

    if-eqz v1, :cond_2

    move v0, v2

    :cond_2
    iput-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBpfTimesAvailable:Z

    .line 586
    iget-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBpfTimesAvailable:Z

    return v0
.end method

.method private blacklist copyToCurTimes()V
    .locals 6

    .line 571
    iget-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBpfTimesAvailable:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0xa

    .line 572
    .local v0, "factor":J
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mFreqCount:I

    if-ge v2, v3, :cond_1

    .line 573
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mCurTimes:[J

    iget-object v4, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBuffer:[J

    add-int/lit8 v5, v2, 0x1

    aget-wide v4, v4, v5

    mul-long/2addr v4, v0

    aput-wide v4, v3, v2

    .line 572
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 575
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private blacklist extractClusterInfoFromProcFileFreqs()Landroid/util/IntArray;
    .locals 8

    .line 612
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 613
    .local v0, "numClusterFreqs":Landroid/util/IntArray;
    const/4 v1, 0x0

    .line 614
    .local v1, "freqsFound":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mFreqCount:I

    if-ge v2, v3, :cond_2

    .line 615
    add-int/lit8 v1, v1, 0x1

    .line 616
    add-int/lit8 v4, v2, 0x1

    if-eq v4, v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mCpuFreqs:[J

    add-int/lit8 v4, v2, 0x1

    aget-wide v4, v3, v4

    aget-wide v6, v3, v2

    cmp-long v3, v4, v6

    if-gtz v3, :cond_1

    .line 617
    :cond_0
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 618
    const/4 v1, 0x0

    .line 614
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 621
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method private blacklist processUidDelta(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<",
            "[J>;)V"
        }
    .end annotation

    .line 488
    .local p1, "cb":Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;, "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<[J>;"
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBuffer:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    long-to-int v0, v2

    .line 489
    .local v0, "uid":I
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mLastTimes:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    .line 490
    .local v2, "lastTimes":[J
    if-nez v2, :cond_0

    .line 491
    iget v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mFreqCount:I

    new-array v2, v3, [J

    .line 492
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mLastTimes:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 494
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->copyToCurTimes()V

    .line 495
    const/4 v3, 0x0

    .line 496
    .local v3, "notify":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v5, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mFreqCount:I

    if-ge v4, v5, :cond_3

    .line 498
    iget-object v5, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mDeltaTimes:[J

    iget-object v6, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mCurTimes:[J

    aget-wide v6, v6, v4

    aget-wide v8, v2, v4

    sub-long/2addr v6, v8

    aput-wide v6, v5, v4

    .line 499
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_1

    .line 500
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Negative delta from freq time for uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", delta: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mDeltaTimes:[J

    aget-wide v6, v6, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    return-void

    .line 504
    :cond_1
    cmp-long v5, v6, v8

    if-lez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    or-int/2addr v3, v5

    .line 496
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 506
    .end local v4    # "i":I
    :cond_3
    if-eqz v3, :cond_4

    .line 507
    iget-object v4, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mCurTimes:[J

    invoke-static {v4, v1, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 508
    if-eqz p1, :cond_4

    .line 509
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mDeltaTimes:[J

    invoke-interface {p1, v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;->onUidCpuTime(ILjava/lang/Object;)V

    .line 512
    :cond_4
    return-void
.end method

.method private blacklist readFreqs(Ljava/lang/String;)[J
    .locals 5
    .param p1, "line"    # Ljava/lang/String;

    .line 468
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 471
    :cond_0
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, "lineArray":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 473
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed freq line: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    return-object v0

    .line 476
    :cond_1
    array-length v0, v1

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mFreqCount:I

    .line 477
    new-array v2, v0, [J

    iput-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mCpuFreqs:[J

    .line 478
    new-array v2, v0, [J

    iput-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mCurTimes:[J

    .line 479
    new-array v2, v0, [J

    iput-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mDeltaTimes:[J

    .line 480
    add-int/2addr v0, v3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBuffer:[J

    .line 481
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mFreqCount:I

    if-ge v0, v2, :cond_2

    .line 482
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mCpuFreqs:[J

    add-int/lit8 v3, v0, 0x1

    aget-object v3, v1, v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    aput-wide v3, v2, v0

    .line 481
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 484
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mCpuFreqs:[J

    return-object v0

    .line 469
    .end local v1    # "lineArray":[Ljava/lang/String;
    :cond_3
    :goto_1
    return-object v0
.end method

.method private blacklist readFreqsThroughBpf()[J
    .locals 3

    .line 453
    iget-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBpfTimesAvailable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBpfReader:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    if-nez v0, :cond_0

    goto :goto_0

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBpfReader:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->getDataDimensions()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mCpuFreqs:[J

    .line 457
    if-nez v0, :cond_1

    .line 458
    return-object v1

    .line 460
    :cond_1
    array-length v1, v0

    iput v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mFreqCount:I

    .line 461
    new-array v2, v1, [J

    iput-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mCurTimes:[J

    .line 462
    new-array v2, v1, [J

    iput-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mDeltaTimes:[J

    .line 463
    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBuffer:[J

    .line 464
    return-object v0

    .line 454
    :cond_2
    :goto_0
    return-object v1
.end method


# virtual methods
.method public blacklist allUidTimesAvailable()Z
    .locals 1

    .line 389
    iget-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mAllUidTimesAvailable:Z

    return v0
.end method

.method public blacklist getAllUidCpuFreqTimeMs()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[J>;"
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mLastTimes:Landroid/util/SparseArray;

    return-object v0
.end method

.method public blacklist isFastCpuTimesReader()Z
    .locals 1

    .line 625
    iget-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBpfTimesAvailable:Z

    return v0
.end method

.method public blacklist perClusterTimesAvailable()Z
    .locals 1

    .line 382
    iget-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mPerClusterTimesAvailable:Z

    return v0
.end method

.method blacklist readAbsoluteImpl(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<",
            "[J>;)V"
        }
    .end annotation

    .line 543
    .local p1, "cb":Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;, "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<[J>;"
    iget-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBpfTimesAvailable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 544
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBpfReader:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    iget-boolean v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mThrottle:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->open(Z)Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;

    move-result-object v0

    .line 545
    .local v0, "iter":Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->checkPrecondition(Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 546
    :goto_0
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBuffer:[J

    invoke-virtual {v0, v2}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->getNextUid([J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 547
    invoke-direct {p0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->copyToCurTimes()V

    .line 548
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBuffer:[J

    aget-wide v2, v2, v1

    long-to-int v2, v2

    iget-object v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mCurTimes:[J

    invoke-interface {p1, v2, v3}, Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;->onUidCpuTime(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 552
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->close()V

    .line 550
    :cond_1
    return-void

    .line 552
    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->close()V

    goto :goto_2

    .line 544
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1

    .line 554
    .end local v0    # "iter":Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mReader:Lcom/android/internal/os/KernelCpuProcStringReader;

    iget-boolean v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mThrottle:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/internal/os/KernelCpuProcStringReader;->open(Z)Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;

    move-result-object v0

    .line 555
    .local v0, "iter":Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;
    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->checkPrecondition(Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v2, :cond_6

    .line 567
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V

    .line 556
    :cond_5
    return-void

    .line 559
    :cond_6
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->nextLine()Ljava/nio/CharBuffer;

    move-result-object v2

    move-object v3, v2

    .local v3, "buf":Ljava/nio/CharBuffer;
    if-eqz v2, :cond_8

    .line 560
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBuffer:[J

    invoke-static {v3, v2}, Lcom/android/internal/os/KernelCpuProcStringReader;->asLongs(Ljava/nio/CharBuffer;[J)I

    move-result v2

    iget-object v4, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBuffer:[J

    array-length v4, v4

    if-eq v2, v4, :cond_7

    .line 561
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid line: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    goto :goto_3

    .line 564
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->copyToCurTimes()V

    .line 565
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBuffer:[J

    aget-wide v4, v2, v1

    long-to-int v2, v4

    iget-object v4, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mCurTimes:[J

    invoke-interface {p1, v2, v4}, Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;->onUidCpuTime(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    .line 567
    .end local v3    # "buf":Ljava/nio/CharBuffer;
    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V

    .line 568
    .end local v0    # "iter":Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;
    :cond_9
    return-void

    .line 554
    .restart local v0    # "iter":Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_a

    :try_start_4
    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_4
    throw v1
.end method

.method blacklist readDeltaImpl(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;Z)V
    .locals 5
    .param p2, "forceRead"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<",
            "[J>;Z)V"
        }
    .end annotation

    .line 516
    .local p1, "cb":Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;, "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<[J>;"
    iget-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBpfTimesAvailable:Z

    if-eqz v0, :cond_4

    .line 517
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBpfReader:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    iget-boolean v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mThrottle:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->open(Z)Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;

    move-result-object v0

    .line 518
    .local v0, "iter":Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->checkPrecondition(Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 519
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBuffer:[J

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->getNextUid([J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 520
    invoke-direct {p0, p1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->processUidDelta(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 524
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->close()V

    .line 522
    :cond_1
    return-void

    .line 524
    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->close()V

    goto :goto_2

    .line 517
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1

    .line 526
    .end local v0    # "iter":Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mReader:Lcom/android/internal/os/KernelCpuProcStringReader;

    iget-boolean v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mThrottle:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelCpuProcStringReader;->open(Z)Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;

    move-result-object v0

    .line 527
    .local v0, "iter":Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;
    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->checkPrecondition(Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v1, :cond_6

    .line 538
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V

    .line 528
    :cond_5
    return-void

    .line 531
    :cond_6
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->nextLine()Ljava/nio/CharBuffer;

    move-result-object v1

    move-object v2, v1

    .local v2, "buf":Ljava/nio/CharBuffer;
    if-eqz v1, :cond_8

    .line 532
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBuffer:[J

    invoke-static {v2, v1}, Lcom/android/internal/os/KernelCpuProcStringReader;->asLongs(Ljava/nio/CharBuffer;[J)I

    move-result v1

    iget-object v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBuffer:[J

    array-length v3, v3

    if-eq v1, v3, :cond_7

    .line 533
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid line: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    goto :goto_3

    .line 536
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->processUidDelta(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    .line 538
    .end local v2    # "buf":Ljava/nio/CharBuffer;
    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V

    .line 539
    .end local v0    # "iter":Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;
    :cond_9
    return-void

    .line 526
    .restart local v0    # "iter":Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_a

    :try_start_4
    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_4
    throw v1
.end method

.method public blacklist readFreqs(Lcom/android/internal/os/PowerProfile;)[J
    .locals 7
    .param p1, "powerProfile"    # Lcom/android/internal/os/PowerProfile;

    .line 407
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mCpuFreqs:[J

    if-eqz v0, :cond_0

    .line 410
    return-object v0

    .line 412
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mAllUidTimesAvailable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 413
    return-object v1

    .line 415
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mBpfTimesAvailable:Z

    if-eqz v0, :cond_2

    .line 416
    invoke-direct {p0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->readFreqsThroughBpf()[J

    .line 418
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mCpuFreqs:[J

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_8

    .line 419
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v0

    .line 420
    .local v0, "oldMask":I
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mProcFilePath:Ljava/nio/file/Path;

    invoke-static {v4}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;)Ljava/io/BufferedReader;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 421
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->readFreqs(Ljava/lang/String;)[J

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_4

    .line 422
    nop

    .line 424
    if-eqz v4, :cond_3

    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 431
    :cond_3
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 422
    return-object v1

    .line 424
    :cond_4
    if-eqz v4, :cond_5

    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 431
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :cond_5
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 432
    goto :goto_2

    .line 420
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_6

    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v6

    :try_start_5
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "oldMask":I
    .end local p0    # "this":Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;
    .end local p1    # "powerProfile":Lcom/android/internal/os/PowerProfile;
    :cond_6
    :goto_0
    throw v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 431
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "oldMask":I
    .restart local p0    # "this":Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;
    .restart local p1    # "powerProfile":Lcom/android/internal/os/PowerProfile;
    :catchall_2
    move-exception v1

    goto :goto_1

    .line 424
    :catch_0
    move-exception v4

    .line 425
    .local v4, "e":Ljava/io/IOException;
    :try_start_6
    iget v5, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mErrors:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mErrors:I

    const/4 v2, 0x5

    if-lt v5, v2, :cond_7

    .line 426
    iput-boolean v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mAllUidTimesAvailable:Z

    .line 428
    :cond_7
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read /proc/uid_time_in_state: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 429
    nop

    .line 431
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 429
    return-object v1

    .line 431
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 432
    throw v1

    .line 435
    .end local v0    # "oldMask":I
    :cond_8
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->extractClusterInfoFromProcFileFreqs()Landroid/util/IntArray;

    move-result-object v0

    .line 436
    .local v0, "numClusterFreqs":Landroid/util/IntArray;
    invoke-virtual {p1}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v1

    .line 437
    .local v1, "numClusters":I
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v4

    if-ne v4, v1, :cond_b

    .line 438
    iput-boolean v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mPerClusterTimesAvailable:Z

    .line 439
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v1, :cond_a

    .line 440
    invoke-virtual {v0, v2}, Landroid/util/IntArray;->get(I)I

    move-result v4

    invoke-virtual {p1, v2}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v5

    if-eq v4, v5, :cond_9

    .line 441
    iput-boolean v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mPerClusterTimesAvailable:Z

    .line 442
    goto :goto_4

    .line 439
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v2    # "i":I
    :cond_a
    :goto_4
    goto :goto_5

    .line 446
    :cond_b
    iput-boolean v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mPerClusterTimesAvailable:Z

    .line 448
    :goto_5
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPerClusterTimesAvailable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mPerClusterTimesAvailable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->mCpuFreqs:[J

    return-object v2
.end method
