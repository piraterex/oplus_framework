.class public Lcom/android/internal/os/KernelCpuSpeedReader;
.super Ljava/lang/Object;
.source "KernelCpuSpeedReader.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "KernelCpuSpeedReader"


# instance fields
.field private final greylist-max-o mDeltaSpeedTimesMs:[J

.field private final greylist-max-o mJiffyMillis:J

.field private final greylist-max-o mLastSpeedTimesMs:[J

.field private final greylist-max-o mNumSpeedSteps:I

.field private final greylist-max-o mProcFile:Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>(II)V
    .locals 4
    .param p1, "cpuNumber"    # I
    .param p2, "numSpeedSteps"    # I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 52
    const-string v1, "/sys/devices/system/cpu/cpu%d/cpufreq/stats/time_in_state"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mProcFile:Ljava/lang/String;

    .line 54
    iput p2, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mNumSpeedSteps:I

    .line 55
    new-array v0, p2, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimesMs:[J

    .line 56
    new-array v0, p2, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimesMs:[J

    .line 57
    sget v0, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    .line 58
    .local v0, "jiffyHz":J
    const-wide/16 v2, 0x3e8

    div-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mJiffyMillis:J

    .line 59
    return-void
.end method


# virtual methods
.method public greylist-max-o readAbsolute()[J
    .locals 11

    .line 114
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 115
    .local v0, "policy":Landroid/os/StrictMode$ThreadPolicy;
    iget v1, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mNumSpeedSteps:I

    new-array v1, v1, [J

    .line 116
    .local v1, "speedTimeMs":[J
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    iget-object v4, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mProcFile:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 117
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v3, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v4, 0x20

    invoke-direct {v3, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 119
    .local v3, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    const/4 v4, 0x0

    .line 120
    .local v4, "speedIndex":I
    :goto_0
    iget v5, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mNumSpeedSteps:I

    if-ge v4, v5, :cond_0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "line":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 121
    invoke-virtual {v3, v6}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    .line 123
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mJiffyMillis:J

    mul-long/2addr v7, v9

    .line 124
    .local v7, "time":J
    aput-wide v7, v1, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    nop

    .end local v7    # "time":J
    add-int/lit8 v4, v4, 0x1

    .line 126
    goto :goto_0

    .line 127
    .end local v3    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v4    # "speedIndex":I
    .end local v6    # "line":Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    .line 116
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "policy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v1    # "speedTimeMs":[J
    .end local p0    # "this":Lcom/android/internal/os/KernelCpuSpeedReader;
    :goto_1
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 131
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "policy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v1    # "speedTimeMs":[J
    .restart local p0    # "this":Lcom/android/internal/os/KernelCpuSpeedReader;
    :catchall_2
    move-exception v2

    goto :goto_3

    .line 127
    :catch_0
    move-exception v2

    .line 128
    .local v2, "e":Ljava/io/IOException;
    :try_start_5
    const-string v3, "KernelCpuSpeedReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read cpu-freq: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-wide/16 v3, 0x0

    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->fill([JJ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 131
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 132
    nop

    .line 133
    return-object v1

    .line 131
    :goto_3
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 132
    throw v2
.end method

.method public greylist-max-o readDelta()[J
    .locals 14

    .line 67
    const-string v0, "KernelCpuSpeedReader"

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 68
    .local v1, "policy":Landroid/os/StrictMode$ThreadPolicy;
    const-wide/16 v2, 0x0

    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    iget-object v6, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mProcFile:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 69
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v5, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v6, 0x20

    invoke-direct {v5, v6}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 71
    .local v5, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    const/4 v6, 0x0

    .line 72
    .local v6, "speedIndex":I
    :goto_0
    iget-object v7, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimesMs:[J

    array-length v7, v7

    if-ge v6, v7, :cond_1

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v7

    .local v8, "line":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 77
    :try_start_2
    invoke-virtual {v5, v8}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    .line 80
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iget-wide v11, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mJiffyMillis:J

    mul-long/2addr v9, v11

    .line 81
    .local v9, "time":J
    iget-object v7, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimesMs:[J

    aget-wide v11, v7, v6

    cmp-long v13, v9, v11

    if-gez v13, :cond_0

    .line 84
    iget-object v11, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimesMs:[J

    aput-wide v9, v11, v6

    goto :goto_1

    .line 86
    :cond_0
    iget-object v13, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimesMs:[J

    sub-long v11, v9, v11

    aput-wide v11, v13, v6

    .line 88
    :goto_1
    aput-wide v9, v7, v6
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    .end local v9    # "time":J
    goto :goto_2

    .line 91
    :catch_0
    move-exception v7

    .line 92
    .local v7, "ex":Ljava/lang/NumberFormatException;
    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "speedIndex = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Failed to read cpu-freq: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v9, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimesMs:[J

    aput-wide v2, v9, v6

    .line 94
    iget-object v9, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimesMs:[J

    aput-wide v2, v9, v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    add-int/lit8 v6, v6, 0x1

    .line 98
    .end local v7    # "ex":Ljava/lang/NumberFormatException;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 100
    .end local v5    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v6    # "speedIndex":I
    .end local v8    # "line":Ljava/lang/String;
    :cond_1
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    .line 68
    :catchall_0
    move-exception v5

    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v6

    :try_start_6
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "policy":Landroid/os/StrictMode$ThreadPolicy;
    .end local p0    # "this":Lcom/android/internal/os/KernelCpuSpeedReader;
    :goto_3
    throw v5
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 104
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "policy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local p0    # "this":Lcom/android/internal/os/KernelCpuSpeedReader;
    :catchall_2
    move-exception v0

    goto :goto_5

    .line 100
    :catch_1
    move-exception v4

    .line 101
    .local v4, "e":Ljava/io/IOException;
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to read cpu-freq: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimesMs:[J

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 104
    .end local v4    # "e":Ljava/io/IOException;
    :goto_4
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 105
    nop

    .line 106
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimesMs:[J

    return-object v0

    .line 104
    :goto_5
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 105
    throw v0
.end method
