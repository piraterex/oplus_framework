.class public Lcom/android/internal/os/SystemServerCpuThreadReader;
.super Ljava/lang/Object;
.source "SystemServerCpuThreadReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;
    }
.end annotation


# instance fields
.field private final blacklist mDeltaCpuThreadTimes:Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;

.field private final blacklist mKernelCpuThreadReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

.field private blacklist mLastBinderThreadCpuTimesUs:[J

.field private blacklist mLastThreadCpuTimesUs:[J


# direct methods
.method public constructor blacklist <init>(ILcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "cpuTimeInStateReader"    # Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;-><init>(ILcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)V

    invoke-direct {p0, v0}, Lcom/android/internal/os/SystemServerCpuThreadReader;-><init>(Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;)V

    .line 62
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;)V
    .locals 1
    .param p1, "kernelCpuThreadReader"    # Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;

    invoke-direct {v0}, Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/SystemServerCpuThreadReader;->mDeltaCpuThreadTimes:Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;

    .line 66
    iput-object p1, p0, Lcom/android/internal/os/SystemServerCpuThreadReader;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    .line 67
    return-void
.end method

.method public static blacklist create()Lcom/android/internal/os/SystemServerCpuThreadReader;
    .locals 2

    .line 53
    new-instance v0, Lcom/android/internal/os/SystemServerCpuThreadReader;

    .line 54
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->create(I)Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/os/SystemServerCpuThreadReader;-><init>(Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;)V

    .line 53
    return-object v0
.end method


# virtual methods
.method public blacklist readAbsolute()Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;
    .locals 9

    .line 117
    iget-object v0, p0, Lcom/android/internal/os/SystemServerCpuThreadReader;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    invoke-virtual {v0}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->getCpuFrequencyCount()I

    move-result v0

    .line 118
    .local v0, "numCpuFrequencies":I
    iget-object v1, p0, Lcom/android/internal/os/SystemServerCpuThreadReader;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    .line 119
    invoke-virtual {v1}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->getProcessCpuUsage()Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;

    move-result-object v1

    .line 120
    .local v1, "processCpuUsage":Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;
    if-nez v1, :cond_0

    .line 121
    const/4 v2, 0x0

    return-object v2

    .line 123
    :cond_0
    new-instance v2, Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;

    invoke-direct {v2}, Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;-><init>()V

    .line 124
    .local v2, "result":Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;
    new-array v3, v0, [J

    iput-object v3, v2, Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;->threadCpuTimesUs:[J

    .line 125
    new-array v3, v0, [J

    iput-object v3, v2, Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;->binderThreadCpuTimesUs:[J

    .line 126
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 127
    iget-object v4, v2, Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;->threadCpuTimesUs:[J

    iget-object v5, v1, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;->threadCpuTimesMillis:[J

    aget-wide v5, v5, v3

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    aput-wide v5, v4, v3

    .line 128
    iget-object v4, v2, Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;->binderThreadCpuTimesUs:[J

    iget-object v5, v1, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;->selectedThreadCpuTimesMillis:[J

    aget-wide v5, v5, v3

    mul-long/2addr v5, v7

    aput-wide v5, v4, v3

    .line 126
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 131
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method public blacklist readDelta()Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;
    .locals 13

    .line 85
    iget-object v0, p0, Lcom/android/internal/os/SystemServerCpuThreadReader;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    invoke-virtual {v0}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->getCpuFrequencyCount()I

    move-result v0

    .line 86
    .local v0, "numCpuFrequencies":I
    iget-object v1, p0, Lcom/android/internal/os/SystemServerCpuThreadReader;->mLastThreadCpuTimesUs:[J

    if-nez v1, :cond_0

    .line 87
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/internal/os/SystemServerCpuThreadReader;->mLastThreadCpuTimesUs:[J

    .line 88
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/internal/os/SystemServerCpuThreadReader;->mLastBinderThreadCpuTimesUs:[J

    .line 90
    iget-object v1, p0, Lcom/android/internal/os/SystemServerCpuThreadReader;->mDeltaCpuThreadTimes:Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;

    new-array v2, v0, [J

    iput-object v2, v1, Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;->threadCpuTimesUs:[J

    .line 91
    iget-object v1, p0, Lcom/android/internal/os/SystemServerCpuThreadReader;->mDeltaCpuThreadTimes:Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;

    new-array v2, v0, [J

    iput-object v2, v1, Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;->binderThreadCpuTimesUs:[J

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/SystemServerCpuThreadReader;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    .line 95
    invoke-virtual {v1}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->getProcessCpuUsage()Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;

    move-result-object v1

    .line 96
    .local v1, "processCpuUsage":Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;
    if-nez v1, :cond_1

    .line 97
    const/4 v2, 0x0

    return-object v2

    .line 100
    :cond_1
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 101
    iget-object v3, v1, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;->threadCpuTimesMillis:[J

    aget-wide v3, v3, v2

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    .line 102
    .local v3, "threadCpuTimesUs":J
    iget-object v7, v1, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;->selectedThreadCpuTimesMillis:[J

    aget-wide v7, v7, v2

    mul-long/2addr v7, v5

    .line 103
    .local v7, "binderThreadCpuTimesUs":J
    iget-object v5, p0, Lcom/android/internal/os/SystemServerCpuThreadReader;->mDeltaCpuThreadTimes:Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;

    iget-object v5, v5, Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;->threadCpuTimesUs:[J

    iget-object v6, p0, Lcom/android/internal/os/SystemServerCpuThreadReader;->mLastThreadCpuTimesUs:[J

    aget-wide v9, v6, v2

    sub-long v9, v3, v9

    .line 104
    const-wide/16 v11, 0x0

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    aput-wide v9, v5, v2

    .line 105
    iget-object v5, p0, Lcom/android/internal/os/SystemServerCpuThreadReader;->mDeltaCpuThreadTimes:Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;

    iget-object v5, v5, Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;->binderThreadCpuTimesUs:[J

    iget-object v6, p0, Lcom/android/internal/os/SystemServerCpuThreadReader;->mLastBinderThreadCpuTimesUs:[J

    aget-wide v9, v6, v2

    sub-long v9, v7, v9

    .line 106
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    aput-wide v9, v5, v2

    .line 107
    iget-object v5, p0, Lcom/android/internal/os/SystemServerCpuThreadReader;->mLastThreadCpuTimesUs:[J

    aput-wide v3, v5, v2

    .line 108
    iget-object v5, p0, Lcom/android/internal/os/SystemServerCpuThreadReader;->mLastBinderThreadCpuTimesUs:[J

    aput-wide v7, v5, v2

    .line 100
    .end local v3    # "threadCpuTimesUs":J
    .end local v7    # "binderThreadCpuTimesUs":J
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 111
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/internal/os/SystemServerCpuThreadReader;->mDeltaCpuThreadTimes:Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;

    return-object v2
.end method

.method public blacklist setBinderThreadNativeTids([I)V
    .locals 1
    .param p1, "nativeTids"    # [I

    .line 77
    iget-object v0, p0, Lcom/android/internal/os/SystemServerCpuThreadReader;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->setSelectedThreadIds([I)V

    .line 78
    return-void
.end method

.method public blacklist startTrackingThreadCpuTime()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/internal/os/SystemServerCpuThreadReader;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    invoke-virtual {v0}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->startTrackingThreadCpuTimes()V

    .line 74
    return-void
.end method
