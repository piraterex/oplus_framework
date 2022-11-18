.class public Landroid/util/SystemConfigFileCommitEventLogger;
.super Ljava/lang/Object;
.source "SystemConfigFileCommitEventLogger.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# instance fields
.field private final blacklist mName:Ljava/lang/String;

.field private blacklist mStartTime:J


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/util/SystemConfigFileCommitEventLogger;->mName:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method blacklist onFinishWrite()V
    .locals 5

    .line 70
    iget-object v0, p0, Landroid/util/SystemConfigFileCommitEventLogger;->mName:Ljava/lang/String;

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Landroid/util/SystemConfigFileCommitEventLogger;->mStartTime:J

    sub-long/2addr v1, v3

    .line 70
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V

    .line 72
    return-void
.end method

.method blacklist onStartWrite()V
    .locals 4

    .line 61
    iget-wide v0, p0, Landroid/util/SystemConfigFileCommitEventLogger;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 62
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/util/SystemConfigFileCommitEventLogger;->mStartTime:J

    .line 64
    :cond_0
    return-void
.end method

.method public blacklist setStartTime(J)V
    .locals 0
    .param p1, "startTime"    # J

    .line 54
    iput-wide p1, p0, Landroid/util/SystemConfigFileCommitEventLogger;->mStartTime:J

    .line 55
    return-void
.end method
