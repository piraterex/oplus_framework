.class public Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;
.super Ljava/lang/Object;
.source "KernelSingleProcessCpuThreadReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;,
        Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "KernelSingleProcCpuThreadRdr"


# instance fields
.field private final blacklist mCpuTimeInStateReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;

.field private blacklist mFrequencyCount:I

.field private blacklist mIsTracking:Z

.field private final blacklist mPid:I

.field private blacklist mSelectedThreadNativeTids:[I


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

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mSelectedThreadNativeTids:[I

    .line 94
    iput p1, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mPid:I

    .line 95
    iput-object p2, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mCpuTimeInStateReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;

    .line 96
    return-void
.end method

.method public static blacklist create(I)Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;
    .locals 4
    .param p0, "pid"    # I

    .line 106
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;-><init>(ILcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "KernelSingleProcCpuThreadRdr"

    const-string v3, "Failed to initialize KernelSingleProcessCpuThreadReader"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    return-object v0
.end method

.method private native blacklist getCpuFrequencyCount(Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)I
.end method

.method private native blacklist readProcessCpuUsage(I[J[JLcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)Z
.end method

.method private native blacklist startAggregatingThreadCpuTimes([ILcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)Z
.end method

.method private native blacklist startTrackingProcessCpuTimes(ILcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)Z
.end method


# virtual methods
.method public blacklist getCpuFrequencyCount()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mFrequencyCount:I

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mCpuTimeInStateReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;

    invoke-direct {p0, v0}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->getCpuFrequencyCount(Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mFrequencyCount:I

    .line 152
    :cond_0
    iget v0, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mFrequencyCount:I

    return v0
.end method

.method public blacklist getProcessCpuUsage()Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;
    .locals 5

    .line 166
    new-instance v0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;

    invoke-virtual {p0}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->getCpuFrequencyCount()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;-><init>(I)V

    .line 168
    .local v0, "processCpuUsage":Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;
    iget v1, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mPid:I

    iget-object v2, v0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;->threadCpuTimesMillis:[J

    iget-object v3, v0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;->selectedThreadCpuTimesMillis:[J

    iget-object v4, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mCpuTimeInStateReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->readProcessCpuUsage(I[J[JLcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)Z

    move-result v1

    .line 172
    .local v1, "result":Z
    if-nez v1, :cond_0

    .line 173
    const/4 v2, 0x0

    return-object v2

    .line 183
    :cond_0
    return-object v0
.end method

.method public blacklist setSelectedThreadIds([I)V
    .locals 2
    .param p1, "nativeTids"    # [I

    .line 139
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mSelectedThreadNativeTids:[I

    .line 140
    iget-boolean v1, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mIsTracking:Z

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mCpuTimeInStateReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->startAggregatingThreadCpuTimes([ILcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)Z

    .line 143
    :cond_0
    return-void
.end method

.method public blacklist startTrackingThreadCpuTimes()V
    .locals 3

    .line 118
    iget-boolean v0, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mIsTracking:Z

    if-nez v0, :cond_2

    .line 119
    iget v0, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mPid:I

    iget-object v1, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mCpuTimeInStateReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->startTrackingProcessCpuTimes(ILcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)Z

    move-result v0

    const-string v1, "KernelSingleProcCpuThreadRdr"

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start tracking process CPU times for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mPid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mSelectedThreadNativeTids:[I

    array-length v2, v0

    if-lez v2, :cond_1

    .line 123
    iget-object v2, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mCpuTimeInStateReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->startAggregatingThreadCpuTimes([ILcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start tracking aggregated thread CPU times for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mSelectedThreadNativeTids:[I

    .line 126
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->mIsTracking:Z

    .line 131
    :cond_2
    return-void
.end method
