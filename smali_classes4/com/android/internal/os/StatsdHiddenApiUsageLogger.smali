.class Lcom/android/internal/os/StatsdHiddenApiUsageLogger;
.super Ljava/lang/Object;
.source "StatsdHiddenApiUsageLogger.java"

# interfaces
.implements Ldalvik/system/VMRuntime$HiddenApiUsageLogger;


# static fields
.field private static final blacklist sInstance:Lcom/android/internal/os/StatsdHiddenApiUsageLogger;


# instance fields
.field private blacklist mHiddenApiAccessLogSampleRate:I

.field private blacklist mHiddenApiAccessStatslogSampleRate:I

.field private final blacklist mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;

    invoke-direct {v0}, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;-><init>()V

    sput-object v0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->sInstance:Lcom/android/internal/os/StatsdHiddenApiUsageLogger;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->mHiddenApiAccessLogSampleRate:I

    .line 33
    iput v0, p0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->mHiddenApiAccessStatslogSampleRate:I

    return-void
.end method

.method static blacklist getInstance()Lcom/android/internal/os/StatsdHiddenApiUsageLogger;
    .locals 1

    .line 41
    sget-object v0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->sInstance:Lcom/android/internal/os/StatsdHiddenApiUsageLogger;

    return-object v0
.end method

.method private blacklist logUsage(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;
    .param p3, "accessMethod"    # I
    .param p4, "accessDenied"    # Z

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "accessMethodMetric":I
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 69
    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    .line 66
    :pswitch_1
    const/4 v0, 0x2

    .line 67
    goto :goto_0

    .line 63
    :pswitch_2
    const/4 v0, 0x1

    .line 64
    goto :goto_0

    .line 60
    :pswitch_3
    const/4 v0, 0x0

    .line 61
    nop

    .line 73
    :goto_0
    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x56f

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 74
    invoke-virtual {v1, p1}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v2, 0x572

    .line 75
    invoke-virtual {v1, v2, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v2, 0x570

    .line 77
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 76
    invoke-virtual {v1, v2, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 79
    .local v1, "logMaker":Landroid/metrics/LogMaker;
    if-eqz p4, :cond_0

    .line 80
    const/16 v2, 0x571

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 83
    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 84
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist newLogUsage(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "signature"    # Ljava/lang/String;
    .param p2, "accessMethod"    # I
    .param p3, "accessDenied"    # Z

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "accessMethodProto":I
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 99
    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    .line 96
    :pswitch_1
    const/4 v0, 0x2

    .line 97
    goto :goto_0

    .line 93
    :pswitch_2
    const/4 v0, 0x1

    .line 94
    goto :goto_0

    .line 90
    :pswitch_3
    const/4 v0, 0x0

    .line 91
    nop

    .line 103
    :goto_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 104
    .local v1, "uid":I
    const/16 v2, 0xb2

    invoke-static {v2, v1, p1, v0, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IZ)V

    .line 106
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static blacklist setHiddenApiAccessLogSampleRates(II)V
    .locals 1
    .param p0, "sampleRate"    # I
    .param p1, "newSampleRate"    # I

    .line 36
    sget-object v0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->sInstance:Lcom/android/internal/os/StatsdHiddenApiUsageLogger;

    iput p0, v0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->mHiddenApiAccessLogSampleRate:I

    .line 37
    iput p1, v0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->mHiddenApiAccessStatslogSampleRate:I

    .line 38
    return-void
.end method


# virtual methods
.method public blacklist test-api hiddenApiUsed(ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "sampledValue"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "accessMethod"    # I
    .param p5, "accessDenied"    # Z

    .line 46
    iget v0, p0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->mHiddenApiAccessLogSampleRate:I

    if-ge p1, v0, :cond_0

    .line 47
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->logUsage(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 50
    :cond_0
    iget v0, p0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->mHiddenApiAccessStatslogSampleRate:I

    if-ge p1, v0, :cond_1

    .line 51
    invoke-direct {p0, p3, p4, p5}, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->newLogUsage(Ljava/lang/String;IZ)V

    .line 53
    :cond_1
    return-void
.end method
