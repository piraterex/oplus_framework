.class public Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;
.super Lcom/android/internal/os/KernelCpuUidTimeReader;
.source "KernelCpuUidTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelCpuUidTimeReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KernelCpuUidActiveTimeReader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/os/KernelCpuUidTimeReader<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mBuffer:[J

.field private blacklist mCores:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/KernelCpuProcStringReader;Lcom/android/internal/os/KernelCpuUidBpfMapReader;Z)V
    .locals 1
    .param p1, "reader"    # Lcom/android/internal/os/KernelCpuProcStringReader;
    .param p2, "bpfReader"    # Lcom/android/internal/os/KernelCpuUidBpfMapReader;
    .param p3, "throttle"    # Z

    .line 662
    sget-object v0, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader;-><init>(Lcom/android/internal/os/KernelCpuProcStringReader;Lcom/android/internal/os/KernelCpuUidBpfMapReader;ZLcom/android/internal/os/Clock;)V

    .line 647
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->mCores:I

    .line 663
    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .locals 1
    .param p1, "throttle"    # Z

    .line 651
    sget-object v0, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;-><init>(ZLcom/android/internal/os/Clock;)V

    .line 652
    return-void
.end method

.method public constructor blacklist <init>(ZLcom/android/internal/os/Clock;)V
    .locals 2
    .param p1, "throttle"    # Z
    .param p2, "clock"    # Lcom/android/internal/os/Clock;

    .line 655
    invoke-static {}, Lcom/android/internal/os/KernelCpuProcStringReader;->getActiveTimeReaderInstance()Lcom/android/internal/os/KernelCpuProcStringReader;

    move-result-object v0

    .line 656
    invoke-static {}, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->getActiveTimeReaderInstance()Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    move-result-object v1

    .line 655
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/os/KernelCpuUidTimeReader;-><init>(Lcom/android/internal/os/KernelCpuProcStringReader;Lcom/android/internal/os/KernelCpuUidBpfMapReader;ZLcom/android/internal/os/Clock;)V

    .line 647
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->mCores:I

    .line 657
    return-void
.end method

.method private blacklist checkPrecondition(Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;)Z
    .locals 7
    .param p1, "iter"    # Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;

    .line 771
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->hasNextLine()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 775
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->nextLine()Ljava/nio/CharBuffer;

    move-result-object v1

    .line 776
    .local v1, "line":Ljava/nio/CharBuffer;
    iget v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->mCores:I

    const/4 v3, 0x1

    if-lez v2, :cond_1

    .line 777
    return v3

    .line 780
    :cond_1
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 781
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 782
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->mTag:Ljava/lang/String;

    const-string v4, "Empty uid_concurrent_active_time"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    return v0

    .line 785
    :cond_2
    const-string v4, "cpus:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "Malformed uid_concurrent_active_time line: "

    if-nez v4, :cond_3

    .line 786
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    return v0

    .line 789
    :cond_3
    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0xa

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 790
    .local v4, "cores":I
    if-gtz v4, :cond_4

    .line 791
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    return v0

    .line 794
    :cond_4
    iput v4, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->mCores:I

    .line 795
    add-int/lit8 v0, v4, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->mBuffer:[J

    .line 796
    return v3

    .line 773
    .end local v1    # "line":Ljava/nio/CharBuffer;
    .end local v2    # "str":Ljava/lang/String;
    .end local v4    # "cores":I
    :cond_5
    :goto_0
    return v0
.end method

.method private blacklist checkPrecondition(Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;)Z
    .locals 5
    .param p1, "iter"    # Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;

    .line 753
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 754
    iput-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->mBpfTimesAvailable:Z

    .line 755
    return v0

    .line 757
    :cond_0
    iget v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->mCores:I

    const/4 v2, 0x1

    if-lez v1, :cond_1

    .line 758
    return v2

    .line 760
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->mBpfReader:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    invoke-virtual {v1}, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->getDataDimensions()[J

    move-result-object v1

    .line 761
    .local v1, "cores":[J
    if-eqz v1, :cond_3

    array-length v3, v1

    if-ge v3, v2, :cond_2

    goto :goto_0

    .line 765
    :cond_2
    aget-wide v3, v1, v0

    long-to-int v0, v3

    iput v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->mCores:I

    .line 766
    add-int/2addr v0, v2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->mBuffer:[J

    .line 767
    return v2

    .line 762
    :cond_3
    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->mBpfTimesAvailable:Z

    .line 763
    return v0
.end method

.method private blacklist processUidAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 710
    .local p1, "cb":Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;, "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->mBuffer:[J

    iget-boolean v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->mBpfTimesAvailable:Z

    if-eqz v1, :cond_0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->sumActiveTime([JD)J

    move-result-wide v0

    .line 711
    .local v0, "cpuActiveTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 712
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->mBuffer:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    long-to-int v2, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;->onUidCpuTime(ILjava/lang/Object;)V

    .line 714
    :cond_1
    return-void
.end method

.method private blacklist processUidDelta(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 666
    .local p1, "cb":Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;, "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->mBuffer:[J

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    long-to-int v1, v1

    .line 667
    .local v1, "uid":I
    iget-boolean v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->mBpfTimesAvailable:Z

    if-eqz v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    :goto_0
    invoke-static {v0, v2, v3}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->sumActiveTime([JD)J

    move-result-wide v2

    .line 668
    .local v2, "cpuActiveTime":J
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 669
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->mLastTimes:Landroid/util/SparseArray;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v2, v6

    .line 670
    .local v6, "delta":J
    cmp-long v0, v6, v4

    if-lez v0, :cond_1

    .line 671
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->mLastTimes:Landroid/util/SparseArray;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 672
    if-eqz p1, :cond_2

    .line 673
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;->onUidCpuTime(ILjava/lang/Object;)V

    goto :goto_1

    .line 675
    :cond_1
    cmp-long v0, v6, v4

    if-gez v0, :cond_2

    .line 676
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Negative delta from active time for uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", delta: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    .end local v6    # "delta":J
    :cond_2
    :goto_1
    return-void
.end method

.method private static blacklist sumActiveTime([JD)J
    .locals 7
    .param p0, "times"    # [J
    .param p1, "factor"    # D

    .line 745
    const-wide/16 v0, 0x0

    .line 746
    .local v0, "sum":D
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 747
    aget-wide v3, p0, v2

    long-to-double v3, v3

    mul-double/2addr v3, p1

    int-to-double v5, v2

    div-double/2addr v3, v5

    add-double/2addr v0, v3

    .line 746
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 749
    .end local v2    # "i":I
    :cond_0
    double-to-long v2, v0

    return-wide v2
.end method


# virtual methods
.method blacklist readAbsoluteImpl(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 718
    .local p1, "cb":Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;, "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<Ljava/lang/Long;>;"
    iget-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->mBpfTimesAvailable:Z

    if-eqz v0, :cond_4

    .line 719
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->mBpfReader:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    iget-boolean v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->mThrottle:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->open(Z)Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;

    move-result-object v0

    .line 720
    .local v0, "iter":Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->checkPrecondition(Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 721
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->mBuffer:[J

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->getNextUid([J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 722
    invoke-direct {p0, p1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->processUidAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 726
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->close()V

    .line 724
    :cond_1
    return-void

    .line 726
    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->close()V

    goto :goto_2

    .line 719
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

    .line 728
    .end local v0    # "iter":Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->mReader:Lcom/android/internal/os/KernelCpuProcStringReader;

    iget-boolean v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->mThrottle:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelCpuProcStringReader;->open(Z)Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;

    move-result-object v0

    .line 729
    .local v0, "iter":Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;
    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->checkPrecondition(Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v1, :cond_6

    .line 740
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V

    .line 730
    :cond_5
    return-void

    .line 733
    :cond_6
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->nextLine()Ljava/nio/CharBuffer;

    move-result-object v1

    move-object v2, v1

    .local v2, "buf":Ljava/nio/CharBuffer;
    if-eqz v1, :cond_8

    .line 734
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->mBuffer:[J

    invoke-static {v2, v1}, Lcom/android/internal/os/KernelCpuProcStringReader;->asLongs(Ljava/nio/CharBuffer;[J)I

    move-result v1

    iget-object v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->mBuffer:[J

    array-length v3, v3

    if-eq v1, v3, :cond_7

    .line 735
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->mTag:Ljava/lang/String;

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

    .line 736
    goto :goto_3

    .line 738
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->processUidAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    .line 740
    .end local v2    # "buf":Ljava/nio/CharBuffer;
    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V

    .line 741
    .end local v0    # "iter":Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;
    :cond_9
    return-void

    .line 728
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
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .line 684
    .local p1, "cb":Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;, "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<Ljava/lang/Long;>;"
    iget-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->mBpfTimesAvailable:Z

    if-eqz v0, :cond_4

    .line 685
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->mBpfReader:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    iget-boolean v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->mThrottle:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->open(Z)Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;

    move-result-object v0

    .line 686
    .local v0, "iter":Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->checkPrecondition(Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 687
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->mBuffer:[J

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->getNextUid([J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 688
    invoke-direct {p0, p1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->processUidDelta(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 692
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->close()V

    .line 690
    :cond_1
    return-void

    .line 692
    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->close()V

    goto :goto_2

    .line 685
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

    .line 694
    .end local v0    # "iter":Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->mReader:Lcom/android/internal/os/KernelCpuProcStringReader;

    iget-boolean v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->mThrottle:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelCpuProcStringReader;->open(Z)Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;

    move-result-object v0

    .line 695
    .local v0, "iter":Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;
    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->checkPrecondition(Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v1, :cond_6

    .line 706
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V

    .line 696
    :cond_5
    return-void

    .line 699
    :cond_6
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->nextLine()Ljava/nio/CharBuffer;

    move-result-object v1

    move-object v2, v1

    .local v2, "buf":Ljava/nio/CharBuffer;
    if-eqz v1, :cond_8

    .line 700
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->mBuffer:[J

    invoke-static {v2, v1}, Lcom/android/internal/os/KernelCpuProcStringReader;->asLongs(Ljava/nio/CharBuffer;[J)I

    move-result v1

    iget-object v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->mBuffer:[J

    array-length v3, v3

    if-eq v1, v3, :cond_7

    .line 701
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->mTag:Ljava/lang/String;

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

    .line 702
    goto :goto_3

    .line 704
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->processUidDelta(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    .line 706
    .end local v2    # "buf":Ljava/nio/CharBuffer;
    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V

    .line 707
    .end local v0    # "iter":Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;
    :cond_9
    return-void

    .line 694
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
