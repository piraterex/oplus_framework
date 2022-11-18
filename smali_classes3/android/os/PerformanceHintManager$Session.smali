.class public Landroid/os/PerformanceHintManager$Session;
.super Ljava/lang/Object;
.source "PerformanceHintManager.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PerformanceHintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Session"
.end annotation


# instance fields
.field private blacklist mNativeSessionPtr:J


# direct methods
.method public constructor blacklist <init>(J)V
    .locals 0
    .param p1, "nativeSessionPtr"    # J

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-wide p1, p0, Landroid/os/PerformanceHintManager$Session;->mNativeSessionPtr:J

    .line 105
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 5

    .line 150
    iget-wide v0, p0, Landroid/os/PerformanceHintManager$Session;->mNativeSessionPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 151
    invoke-static {v0, v1}, Landroid/os/PerformanceHintManager;->-$$Nest$smnativeCloseSession(J)V

    .line 152
    iput-wide v2, p0, Landroid/os/PerformanceHintManager$Session;->mNativeSessionPtr:J

    .line 154
    :cond_0
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 111
    :try_start_0
    invoke-virtual {p0}, Landroid/os/PerformanceHintManager$Session;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 114
    nop

    .line 115
    return-void

    .line 113
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 114
    throw v0
.end method

.method public whitelist reportActualWorkDuration(J)V
    .locals 2
    .param p1, "actualDurationNanos"    # J

    .line 139
    long-to-float v0, p1

    const-string/jumbo v1, "the actual duration should be positive."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(FLjava/lang/String;)F

    .line 141
    iget-wide v0, p0, Landroid/os/PerformanceHintManager$Session;->mNativeSessionPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/os/PerformanceHintManager;->-$$Nest$smnativeReportActualWorkDuration(JJ)V

    .line 142
    return-void
.end method

.method public whitelist updateTargetWorkDuration(J)V
    .locals 2
    .param p1, "targetDurationNanos"    # J

    .line 123
    long-to-float v0, p1

    const-string/jumbo v1, "the hint target duration should be positive."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(FLjava/lang/String;)F

    .line 125
    iget-wide v0, p0, Landroid/os/PerformanceHintManager$Session;->mNativeSessionPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/os/PerformanceHintManager;->-$$Nest$smnativeUpdateTargetWorkDuration(JJ)V

    .line 126
    return-void
.end method
