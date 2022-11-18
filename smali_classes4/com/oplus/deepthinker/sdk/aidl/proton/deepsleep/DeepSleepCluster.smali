.class public Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;
.super Ljava/lang/Object;
.source "DeepSleepCluster.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final whitelist ANOMALY_TYPE:I = -0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_MAX_DISTANCE:D = 0.0

.field private static final blacklist TAG:Ljava/lang/String; = "DeepSleepCluster"


# instance fields
.field private blacklist mClusterId:I

.field private blacklist mClusterNum:I

.field private blacklist mMaxDistance:D

.field private blacklist mSleepMaxValue:D

.field private blacklist mSleepMinValue:D

.field private blacklist mSleepTimePeriod:D

.field private blacklist mWakeMaxValue:D

.field private blacklist mWakeMinValue:D

.field private blacklist mWakeTimePeriod:D


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmClusterId(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;I)V
    .locals 0

    iput p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mClusterId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmClusterNum(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;I)V
    .locals 0

    iput p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mClusterNum:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMaxDistance(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;D)V
    .locals 0

    iput-wide p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mMaxDistance:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSleepMaxValue(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;D)V
    .locals 0

    iput-wide p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mSleepMaxValue:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSleepMinValue(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;D)V
    .locals 0

    iput-wide p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mSleepMinValue:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSleepTimePeriod(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;D)V
    .locals 0

    iput-wide p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mSleepTimePeriod:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWakeMaxValue(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;D)V
    .locals 0

    iput-wide p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mWakeMaxValue:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWakeMinValue(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;D)V
    .locals 0

    iput-wide p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mWakeMinValue:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWakeTimePeriod(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;D)V
    .locals 0

    iput-wide p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mWakeTimePeriod:D

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 165
    new-instance v0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster$1;

    invoke-direct {v0}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster$1;-><init>()V

    sput-object v0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(DD)V
    .locals 3
    .param p1, "sleep"    # D
    .param p3, "wake"    # D

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mSleepTimePeriod:D

    .line 38
    iput-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mWakeTimePeriod:D

    .line 40
    iput-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mMaxDistance:D

    .line 42
    iput-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mSleepMinValue:D

    .line 44
    iput-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mSleepMaxValue:D

    .line 46
    iput-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mWakeMinValue:D

    .line 48
    iput-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mWakeMaxValue:D

    .line 50
    const/4 v2, -0x1

    iput v2, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mClusterId:I

    .line 52
    const/4 v2, 0x0

    iput v2, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mClusterNum:I

    .line 55
    iput-wide p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mSleepTimePeriod:D

    .line 56
    iput-wide p3, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mWakeTimePeriod:D

    .line 57
    iput-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mMaxDistance:D

    .line 58
    return-void
.end method

.method public constructor whitelist <init>(DDD)V
    .locals 2
    .param p1, "sleep"    # D
    .param p3, "wake"    # D
    .param p5, "maxDistance"    # D

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mSleepTimePeriod:D

    .line 38
    iput-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mWakeTimePeriod:D

    .line 40
    iput-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mMaxDistance:D

    .line 42
    iput-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mSleepMinValue:D

    .line 44
    iput-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mSleepMaxValue:D

    .line 46
    iput-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mWakeMinValue:D

    .line 48
    iput-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mWakeMaxValue:D

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mClusterId:I

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mClusterNum:I

    .line 72
    iput-wide p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mSleepTimePeriod:D

    .line 73
    iput-wide p3, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mWakeTimePeriod:D

    .line 74
    iput-wide p5, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mMaxDistance:D

    .line 75
    return-void
.end method

.method public constructor whitelist <init>(DDDDDD)V
    .locals 3
    .param p1, "sleepTimePeriod"    # D
    .param p3, "wakeTimePeriod"    # D
    .param p5, "sleepMinValue"    # D
    .param p7, "sleepMaxValue"    # D
    .param p9, "wakeMinValue"    # D
    .param p11, "wakeMaxValue"    # D

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mSleepTimePeriod:D

    .line 38
    iput-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mWakeTimePeriod:D

    .line 40
    iput-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mMaxDistance:D

    .line 42
    iput-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mSleepMinValue:D

    .line 44
    iput-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mSleepMaxValue:D

    .line 46
    iput-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mWakeMinValue:D

    .line 48
    iput-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mWakeMaxValue:D

    .line 50
    const/4 v2, -0x1

    iput v2, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mClusterId:I

    .line 52
    const/4 v2, 0x0

    iput v2, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mClusterNum:I

    .line 62
    iput-wide p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mSleepTimePeriod:D

    .line 63
    iput-wide p3, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mWakeTimePeriod:D

    .line 64
    iput-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mMaxDistance:D

    .line 65
    iput-wide p5, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mSleepMinValue:D

    .line 66
    iput-wide p7, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mSleepMaxValue:D

    .line 67
    iput-wide p9, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mWakeMinValue:D

    .line 68
    iput-wide p11, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mWakeMaxValue:D

    .line 69
    return-void
.end method

.method public constructor whitelist <init>(IDDD)V
    .locals 2
    .param p1, "clusterId"    # I
    .param p2, "sleep"    # D
    .param p4, "wake"    # D
    .param p6, "maxDistance"    # D

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mSleepTimePeriod:D

    .line 38
    iput-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mWakeTimePeriod:D

    .line 40
    iput-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mMaxDistance:D

    .line 42
    iput-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mSleepMinValue:D

    .line 44
    iput-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mSleepMaxValue:D

    .line 46
    iput-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mWakeMinValue:D

    .line 48
    iput-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mWakeMaxValue:D

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mClusterId:I

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mClusterNum:I

    .line 78
    iput-wide p2, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mSleepTimePeriod:D

    .line 79
    iput-wide p4, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mWakeTimePeriod:D

    .line 80
    iput-wide p6, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mMaxDistance:D

    .line 81
    iput p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mClusterId:I

    .line 82
    return-void
.end method


# virtual methods
.method public whitelist clone()Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;
    .locals 4

    .line 190
    const/4 v0, 0x0

    .line 192
    .local v0, "clone":Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 195
    goto :goto_0

    .line 193
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeepSleepCluster"

    invoke-static {v3, v2}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .end local v1    # "e":Ljava/lang/CloneNotSupportedException;
    :goto_0
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->clone()Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getClusterId()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mClusterId:I

    return v0
.end method

.method public whitelist getClusterNum()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mClusterNum:I

    return v0
.end method

.method public whitelist getMaxDistance()D
    .locals 2

    .line 93
    iget-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mMaxDistance:D

    return-wide v0
.end method

.method public whitelist getSleepMaxValue()D
    .locals 2

    .line 130
    iget-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mSleepMaxValue:D

    return-wide v0
.end method

.method public whitelist getSleepMinValue()D
    .locals 2

    .line 126
    iget-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mSleepMinValue:D

    return-wide v0
.end method

.method public whitelist getSleepTimePeriod()D
    .locals 2

    .line 85
    iget-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mSleepTimePeriod:D

    return-wide v0
.end method

.method public whitelist getWakeMaxValue()D
    .locals 2

    .line 138
    iget-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mWakeMaxValue:D

    return-wide v0
.end method

.method public whitelist getWakeMinValue()D
    .locals 2

    .line 134
    iget-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mWakeMinValue:D

    return-wide v0
.end method

.method public whitelist getWakeTimePeriod()D
    .locals 2

    .line 89
    iget-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mWakeTimePeriod:D

    return-wide v0
.end method

.method public whitelist setClusterId(I)V
    .locals 0
    .param p1, "clusterId"    # I

    .line 105
    iput p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mClusterId:I

    .line 106
    return-void
.end method

.method public whitelist setClusterNum(I)V
    .locals 0
    .param p1, "num"    # I

    .line 113
    iput p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mClusterNum:I

    .line 114
    return-void
.end method

.method public whitelist setMaxDistance(D)V
    .locals 0
    .param p1, "maxDistance"    # D

    .line 109
    iput-wide p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mMaxDistance:D

    .line 110
    return-void
.end method

.method public whitelist setSleepTimePeriod(D)V
    .locals 0
    .param p1, "sleepTimePeriod"    # D

    .line 118
    iput-wide p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mSleepTimePeriod:D

    .line 119
    return-void
.end method

.method public whitelist setWakeTimePeriod(D)V
    .locals 0
    .param p1, "wakeTimePeriod"    # D

    .line 122
    iput-wide p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mWakeTimePeriod:D

    .line 123
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 142
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mClusterId:I

    .line 143
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mSleepTimePeriod:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mWakeTimePeriod:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mClusterNum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mMaxDistance:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 142
    const-string v1, "DeepSleepCluster:clusterId=%d sleep=%.2f wake=%.2f clusterNum=%d maxDistance=%.2f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 154
    iget-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mSleepTimePeriod:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 155
    iget-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mWakeTimePeriod:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 156
    iget-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mMaxDistance:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 157
    iget v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mClusterId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mClusterNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mSleepMinValue:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 160
    iget-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mSleepMaxValue:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 161
    iget-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mWakeMinValue:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 162
    iget-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->mWakeMaxValue:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 163
    return-void
.end method
