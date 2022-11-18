.class Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RadioAccessTechnologyBatteryStats"
.end annotation


# instance fields
.field private blacklist mActive:Z

.field private blacklist mFrequencyRange:I

.field private blacklist mPerFrequencyRxDurationMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private blacklist mPerStateTxDurationMs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private blacklist mSignalStrength:I

.field public final blacklist perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetRxDurationCounter(Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;IZ)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getRxDurationCounter(IZ)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetTxDurationCounter(Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;IIZ)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getTxDurationCounter(IIZ)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object p0

    return-object p0
.end method

.method constructor blacklist <init>(ILcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .locals 11
    .param p1, "freqCount"    # I
    .param p2, "clock"    # Lcom/android/internal/os/Clock;
    .param p3, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 1023
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 998
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mActive:Z

    .line 1002
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    .line 1007
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    .line 1015
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 1020
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 1024
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    const/4 v3, 0x5

    aput v3, v1, v2

    aput p1, v1, v0

    const-class v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 1026
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 1027
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 1028
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, v0

    new-instance v10, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v4, v10

    move-object v5, p2

    move-object v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v10, v2, v1

    .line 1027
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1026
    .end local v1    # "j":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1031
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private blacklist getRxDurationCounter(IZ)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .locals 6
    .param p1, "frequencyRange"    # I
    .param p2, "make"    # Z

    .line 1258
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1259
    if-nez p2, :cond_0

    return-object v1

    .line 1261
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getFrequencyRangeCount()I

    move-result v0

    .line 1262
    .local v0, "freqCount":I
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 1263
    .local v2, "timeBase":Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    new-array v3, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 1264
    const/4 v3, 0x0

    .local v3, "freq":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 1265
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v5, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v5, v4, v3

    .line 1264
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1268
    .end local v0    # "freqCount":I
    .end local v2    # "timeBase":Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .end local v3    # "freq":I
    :cond_1
    if-ltz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getFrequencyRangeCount()I

    move-result v0

    if-lt p1, v0, :cond_2

    goto :goto_1

    .line 1273
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    return-object v0

    .line 1269
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected frequency range ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") requested in getRxDurationCounter"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BatteryStatsImpl"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    return-object v1
.end method

.method private blacklist getTxDurationCounter(IIZ)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .locals 9
    .param p1, "frequencyRange"    # I
    .param p2, "signalStrength"    # I
    .param p3, "make"    # Z

    .line 1230
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 1231
    if-nez p3, :cond_0

    return-object v1

    .line 1233
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getFrequencyRangeCount()I

    move-result v0

    .line 1234
    .local v0, "freqCount":I
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v2

    array-length v4, v3

    .line 1235
    .local v4, "signalStrengthCount":I
    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 1236
    .local v3, "timeBase":Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x1

    aput v4, v5, v6

    aput v0, v5, v2

    const-class v6, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 1237
    const/4 v5, 0x0

    .local v5, "freq":I
    :goto_0
    if-ge v5, v0, :cond_2

    .line 1238
    const/4 v6, 0x0

    .local v6, "strength":I
    :goto_1
    if-ge v6, v4, :cond_1

    .line 1239
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v7, v7, v5

    new-instance v8, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v8, v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v8, v7, v6

    .line 1238
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1237
    .end local v6    # "strength":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1243
    .end local v0    # "freqCount":I
    .end local v3    # "timeBase":Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .end local v4    # "signalStrengthCount":I
    .end local v5    # "freq":I
    :cond_2
    const-string v0, ") requested in getTxDurationCounter"

    const-string v3, "BatteryStatsImpl"

    if-ltz p1, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getFrequencyRangeCount()I

    move-result v4

    if-lt p1, v4, :cond_3

    goto :goto_3

    .line 1248
    :cond_3
    if-ltz p2, :cond_5

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v4, v2

    array-length v2, v2

    if-lt p2, v2, :cond_4

    goto :goto_2

    .line 1253
    :cond_4
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    return-object v0

    .line 1249
    :cond_5
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected signal strength ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    return-object v1

    .line 1244
    :cond_6
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected frequency range ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    return-object v1
.end method


# virtual methods
.method public blacklist getFrequencyRangeCount()I
    .locals 1

    .line 1106
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    array-length v0, v0

    return v0
.end method

.method public blacklist getTimeSinceMark(IIJ)J
    .locals 5
    .param p1, "frequencyRange"    # I
    .param p2, "signalStrength"    # I
    .param p3, "elapsedRealtimeMs"    # J

    .line 1086
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    const-wide/16 v1, 0x3e8

    mul-long v3, p3, v1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTimeSinceMarkLocked(J)J

    move-result-wide v3

    div-long/2addr v3, v1

    return-wide v3
.end method

.method public blacklist incrementRxDuration(IJ)V
    .locals 1
    .param p1, "frequencyRange"    # I
    .param p2, "durationMs"    # J

    .line 1122
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getRxDurationCounter(IZ)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 1123
    return-void
.end method

.method public blacklist incrementTxDuration(IIJ)V
    .locals 1
    .param p1, "frequencyRange"    # I
    .param p2, "signalStrength"    # I
    .param p3, "durationMs"    # J

    .line 1114
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getTxDurationCounter(IIZ)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 1115
    return-void
.end method

.method public blacklist noteActive(ZJ)V
    .locals 2
    .param p1, "active"    # Z
    .param p2, "elapsedRealtimeMs"    # J

    .line 1037
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mActive:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1038
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mActive:Z

    .line 1039
    if-eqz p1, :cond_1

    .line 1040
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    goto :goto_0

    .line 1043
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 1046
    :goto_0
    return-void
.end method

.method public blacklist noteFrequencyRange(IJ)V
    .locals 2
    .param p1, "frequencyRange"    # I
    .param p2, "elapsedRealtimeMs"    # J

    .line 1053
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1055
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mActive:Z

    if-nez v1, :cond_1

    .line 1057
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    .line 1058
    return-void

    .line 1060
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v1, v0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 1061
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 1062
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    .line 1063
    return-void
.end method

.method public blacklist noteSignalStrength(IJ)V
    .locals 3
    .param p1, "signalStrength"    # I
    .param p2, "elapsedRealtimeMs"    # J

    .line 1069
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1071
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mActive:Z

    if-nez v1, :cond_1

    .line 1073
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    .line 1074
    return-void

    .line 1076
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 1077
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    aget-object v0, v0, v1

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 1078
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    .line 1079
    return-void
.end method

.method public blacklist readSummaryFromParcel(Landroid/os/Parcel;)V
    .locals 17
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1179
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1180
    .local v2, "oldFreqCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1181
    .local v3, "oldSignalStrengthCount":I
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    array-length v4, v4

    .line 1182
    .local v4, "currFreqCount":I
    const/4 v5, 0x5

    .line 1184
    .local v5, "currSignalStrengthCount":I
    const/4 v6, 0x0

    .local v6, "freq":I
    :goto_0
    const/4 v7, 0x5

    if-ge v6, v2, :cond_3

    .line 1185
    const/4 v8, 0x0

    .local v8, "strength":I
    :goto_1
    if-ge v8, v3, :cond_2

    .line 1186
    if-ge v6, v4, :cond_1

    if-lt v8, v7, :cond_0

    goto :goto_2

    .line 1193
    :cond_0
    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v9, v9, v6

    aget-object v9, v9, v8

    invoke-virtual {v9, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    goto :goto_3

    .line 1188
    :cond_1
    :goto_2
    new-instance v9, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    new-instance v15, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v15}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    move-object v10, v9

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 1191
    .local v9, "temp":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    invoke-virtual {v9, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 1192
    .end local v9    # "temp":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    nop

    .line 1185
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1184
    .end local v8    # "strength":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1198
    .end local v6    # "freq":I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_7

    .line 1199
    const/4 v6, 0x0

    .restart local v6    # "freq":I
    :goto_4
    if-ge v6, v2, :cond_7

    .line 1200
    const/4 v9, 0x0

    .local v9, "strength":I
    :goto_5
    if-ge v9, v3, :cond_6

    .line 1201
    if-ge v6, v4, :cond_4

    if-lt v9, v7, :cond_5

    .line 1203
    :cond_4
    new-instance v16, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    new-instance v15, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v15}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    move-object/from16 v10, v16

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 1206
    .local v10, "temp":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    invoke-virtual {v10, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 1208
    .end local v10    # "temp":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_5
    invoke-direct {v0, v6, v9, v8}, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getTxDurationCounter(IIZ)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 1200
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 1199
    .end local v9    # "strength":I
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1213
    .end local v6    # "freq":I
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v8, :cond_9

    .line 1214
    const/4 v6, 0x0

    .restart local v6    # "freq":I
    :goto_6
    if-ge v6, v2, :cond_9

    .line 1215
    if-lt v6, v4, :cond_8

    .line 1218
    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    new-instance v14, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v14}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    move-object v9, v7

    invoke-direct/range {v9 .. v14}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 1220
    .local v7, "temp":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    invoke-virtual {v7, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 1221
    goto :goto_7

    .line 1223
    .end local v7    # "temp":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_8
    invoke-direct {v0, v6, v8}, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getRxDurationCounter(IZ)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 1214
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 1226
    .end local v6    # "freq":I
    :cond_9
    return-void
.end method

.method public blacklist reset(J)V
    .locals 5
    .param p1, "elapsedRealtimeUs"    # J

    .line 1129
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    array-length v0, v0

    .line 1130
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1131
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    const/4 v3, 0x5

    const/4 v4, 0x0

    if-ge v2, v3, :cond_1

    .line 1132
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    invoke-virtual {v3, v4, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(ZJ)Z

    .line 1133
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v3, :cond_0

    goto :goto_2

    .line 1134
    :cond_0
    aget-object v3, v3, v1

    aget-object v3, v3, v2

    invoke-virtual {v3, v4, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(ZJ)Z

    .line 1131
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1136
    .end local v2    # "j":I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v2, :cond_2

    goto :goto_3

    .line 1137
    :cond_2
    aget-object v2, v2, v1

    invoke-virtual {v2, v4, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(ZJ)Z

    .line 1130
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1139
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method public blacklist setMark(J)V
    .locals 4
    .param p1, "elapsedRealtimeMs"    # J

    .line 1094
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    array-length v0, v0

    .line 1095
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1096
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    .line 1097
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->setMark(J)V

    .line 1096
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1095
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1100
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public blacklist writeSummaryToParcel(Landroid/os/Parcel;J)V
    .locals 7
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .line 1145
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    array-length v0, v0

    .line 1146
    .local v0, "freqCount":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1147
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1148
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1149
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 1150
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v2

    aget-object v4, v4, v3

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 1149
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1148
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1154
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    .line 1155
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 1157
    :cond_2
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1158
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 1159
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    if-ge v5, v1, :cond_3

    .line 1160
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v6, v6, v2

    aget-object v6, v6, v5

    invoke-virtual {v6, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 1159
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1158
    .end local v5    # "j":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1165
    .end local v2    # "i":I
    :cond_4
    :goto_4
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v1, :cond_5

    .line 1166
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 1168
    :cond_5
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1169
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_6

    .line 1170
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 1169
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1173
    .end local v1    # "i":I
    :cond_6
    :goto_6
    return-void
.end method
