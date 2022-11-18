.class public interface abstract Lcom/android/internal/os/IProcessCpuTrackerExt;
.super Ljava/lang/Object;
.source "IProcessCpuTrackerExt.java"


# static fields
.field public static final blacklist TAG:Ljava/lang/String; = "IProcessCpuTrackerExt"


# virtual methods
.method public blacklist buildWorkingProcs()V
    .locals 0

    .line 72
    return-void
.end method

.method public blacklist collectAnbormalStats()V
    .locals 2

    .line 47
    const-string v0, "IProcessCpuTrackerExt"

    const-string v1, "default collectAnbormalStats"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method

.method public blacklist collectSimpleTopThreeProcessesInfo(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;)V"
        }
    .end annotation

    .line 74
    .local p1, "workingProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    return-void
.end method

.method public blacklist getLoad1()I
    .locals 1

    .line 69
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getLoad15()I
    .locals 1

    .line 71
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getLoad5()I
    .locals 1

    .line 70
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getMaxCpuProName()Ljava/lang/String;
    .locals 1

    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMaxCpuThousandths()I
    .locals 1

    .line 77
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getRatioString(JJ)Ljava/lang/String;
    .locals 1
    .param p1, "numerator"    # J
    .param p3, "denominator"    # J

    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSimpleTopProcessesSnapShot()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 43
    const-string v0, "IProcessCpuTrackerExt"

    const-string v1, "default handleMessage"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method

.method public blacklist init(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p1, "procStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    return-void
.end method

.method public blacklist initHandler(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .line 39
    const-string v0, "IProcessCpuTrackerExt"

    const-string v1, "default initHandler"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method

.method public blacklist initMaxCpuInfo()V
    .locals 0

    .line 79
    return-void
.end method

.method public blacklist printCpuTrack(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 51
    const-string v0, "IProcessCpuTrackerExt"

    const-string v1, "default printCpuTrack"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method public blacklist setContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    const-string v0, "IProcessCpuTrackerExt"

    const-string v1, "default setContext"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method public blacklist updateCurrentSampleWallTime(J)V
    .locals 2
    .param p1, "currentSampleWallTime"    # J

    .line 63
    const-string v0, "IProcessCpuTrackerExt"

    const-string v1, "default updateCurrentSampleWallTime"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method public blacklist updateLastSampleWallTime(J)V
    .locals 2
    .param p1, "lastSampleWallTime"    # J

    .line 59
    const-string v0, "IProcessCpuTrackerExt"

    const-string v1, "default updateLastSampleWallTime"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method

.method public blacklist updateLoad(FFF)V
    .locals 0
    .param p1, "load1"    # F
    .param p2, "load5"    # F
    .param p3, "load15"    # F

    .line 68
    return-void
.end method

.method public blacklist updateMaxCpuInfo(Lcom/android/internal/os/ProcessCpuTracker$Stats;I)V
    .locals 0
    .param p1, "st"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .param p2, "denom"    # I

    .line 76
    return-void
.end method

.method public blacklist updateProcStats(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;)V"
        }
    .end annotation

    .line 67
    .local p1, "stats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    return-void
.end method
