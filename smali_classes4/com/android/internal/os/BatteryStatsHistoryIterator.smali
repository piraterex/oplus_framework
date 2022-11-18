.class public Lcom/android/internal/os/BatteryStatsHistoryIterator;
.super Ljava/lang/Object;
.source "BatteryStatsHistoryIterator.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "BatteryStatsHistoryItr"


# instance fields
.field private final blacklist mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

.field private final blacklist mHistoryTags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/BatteryStats$HistoryTag;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsHistory;)V
    .locals 1
    .param p1, "history"    # Lcom/android/internal/os/BatteryStatsHistory;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryTags:Landroid/util/SparseArray;

    .line 38
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 39
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHistory;->startIteratingHistory()Z

    .line 40
    return-void
.end method

.method private static blacklist readBatteryLevelInt(ILandroid/os/BatteryStats$HistoryItem;)V
    .locals 1
    .param p0, "batteryLevelInt"    # I
    .param p1, "out"    # Landroid/os/BatteryStats$HistoryItem;

    .line 230
    const/high16 v0, -0x2000000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x19

    int-to-byte v0, v0

    iput-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 231
    const v0, 0x1ff8000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0xf

    int-to-short v0, v0

    iput-short v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 232
    and-int/lit16 v0, p0, 0x7ffe

    ushr-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    iput-char v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 233
    return-void
.end method

.method private blacklist readHistoryTag(Landroid/os/Parcel;ILandroid/os/BatteryStats$HistoryTag;)Z
    .locals 3
    .param p1, "src"    # Landroid/os/Parcel;
    .param p2, "index"    # I
    .param p3, "outTag"    # Landroid/os/BatteryStats$HistoryTag;

    .line 205
    const/4 v0, 0x0

    const v1, 0xffff

    if-ne p2, v1, :cond_0

    .line 206
    return v0

    .line 209
    :cond_0
    const v1, 0x8000

    and-int/2addr v1, p2

    if-eqz v1, :cond_1

    .line 210
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    .line 211
    .local v0, "tag":Landroid/os/BatteryStats$HistoryTag;
    invoke-virtual {v0, p1}, Landroid/os/BatteryStats$HistoryTag;->readFromParcel(Landroid/os/Parcel;)V

    .line 212
    const v1, -0x8001

    and-int/2addr v1, p2

    iput v1, v0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 213
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryTags:Landroid/util/SparseArray;

    iget v2, v0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 215
    invoke-virtual {p3, v0}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 216
    .end local v0    # "tag":Landroid/os/BatteryStats$HistoryTag;
    goto :goto_1

    .line 217
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryTags:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$HistoryTag;

    .line 218
    .local v1, "historyTag":Landroid/os/BatteryStats$HistoryTag;
    if-eqz v1, :cond_2

    .line 219
    invoke-virtual {p3, v1}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    goto :goto_0

    .line 221
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 222
    iput v0, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 224
    :goto_0
    iput p2, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 226
    .end local v1    # "historyTag":Landroid/os/BatteryStats$HistoryTag;
    :goto_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public blacklist next(Landroid/os/BatteryStats$HistoryItem;)Z
    .locals 7
    .param p1, "out"    # Landroid/os/BatteryStats$HistoryItem;

    .line 47
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->getNextParcel(Landroid/os/BatteryStats$HistoryItem;)Landroid/os/Parcel;

    move-result-object v0

    .line 48
    .local v0, "p":Landroid/os/Parcel;
    if-nez v0, :cond_0

    .line 49
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHistory;->finishIteratingHistory()V

    .line 50
    const/4 v1, 0x0

    return v1

    .line 53
    :cond_0
    iget-wide v1, p1, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 54
    .local v1, "lastRealtimeMs":J
    iget-wide v3, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 55
    .local v3, "lastWalltimeMs":J
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;)V

    .line 56
    iget-byte v5, p1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x5

    if-eq v5, v6, :cond_1

    iget-byte v5, p1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x7

    if-eq v5, v6, :cond_1

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_1

    .line 58
    iget-wide v5, p1, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long/2addr v5, v1

    add-long/2addr v5, v3

    iput-wide v5, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 60
    :cond_1
    const/4 v5, 0x1

    return v5
.end method

.method blacklist readHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;)V
    .locals 11
    .param p1, "src"    # Landroid/os/Parcel;
    .param p2, "cur"    # Landroid/os/BatteryStats$HistoryItem;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 65
    .local v0, "firstToken":I
    const v1, 0x7ffff

    and-int/2addr v1, v0

    .line 66
    .local v1, "deltaTimeToken":I
    const/4 v2, 0x0

    iput-byte v2, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 67
    const/4 v3, 0x1

    iput v3, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 73
    const/4 v4, 0x2

    const v5, 0x7fffd

    if-ge v1, v5, :cond_0

    .line 74
    iget-wide v5, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    int-to-long v7, v1

    add-long/2addr v5, v7

    iput-wide v5, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    goto :goto_0

    .line 75
    :cond_0
    if-ne v1, v5, :cond_1

    .line 76
    invoke-virtual {p2, p1}, Landroid/os/BatteryStats$HistoryItem;->readFromParcel(Landroid/os/Parcel;)V

    .line 78
    return-void

    .line 79
    :cond_1
    const v5, 0x7fffe

    if-ne v1, v5, :cond_2

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 81
    .local v5, "delta":I
    iget-wide v6, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 82
    iget v6, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v6, v3

    iput v6, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 84
    .end local v5    # "delta":I
    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 87
    .local v5, "delta":J
    iget-wide v7, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    add-long/2addr v7, v5

    iput-wide v7, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 88
    iget v7, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v7, v4

    iput v7, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 92
    .end local v5    # "delta":J
    :goto_0
    const/high16 v5, 0x80000

    and-int/2addr v5, v0

    if-eqz v5, :cond_3

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 94
    .local v5, "batteryLevelInt":I
    invoke-static {v5, p2}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readBatteryLevelInt(ILandroid/os/BatteryStats$HistoryItem;)V

    .line 95
    iget v6, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v6, v3

    iput v6, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    goto :goto_1

    .line 104
    .end local v5    # "batteryLevelInt":I
    :cond_3
    const/4 v5, 0x0

    .line 107
    .restart local v5    # "batteryLevelInt":I
    :goto_1
    const/high16 v6, 0x100000

    and-int/2addr v6, v0

    const v7, 0xffffff

    const/high16 v8, -0x2000000

    if-eqz v6, :cond_4

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 109
    .local v6, "stateInt":I
    and-int/2addr v8, v0

    and-int/2addr v7, v6

    or-int/2addr v7, v8

    iput v7, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 111
    shr-int/lit8 v7, v6, 0x1d

    and-int/lit8 v7, v7, 0x7

    int-to-byte v7, v7

    iput-byte v7, p2, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 113
    shr-int/lit8 v7, v6, 0x1a

    and-int/lit8 v7, v7, 0x7

    int-to-byte v7, v7

    iput-byte v7, p2, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 115
    shr-int/lit8 v7, v6, 0x18

    and-int/lit8 v7, v7, 0x3

    int-to-byte v7, v7

    iput-byte v7, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 117
    iget-byte v7, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    packed-switch v7, :pswitch_data_0

    goto :goto_2

    .line 125
    :pswitch_0
    const/4 v4, 0x4

    iput-byte v4, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    goto :goto_2

    .line 122
    :pswitch_1
    iput-byte v4, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 123
    goto :goto_2

    .line 119
    :pswitch_2
    iput-byte v3, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 120
    nop

    .line 128
    :goto_2
    iget v4, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v4, v3

    iput v4, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 137
    .end local v6    # "stateInt":I
    goto :goto_3

    .line 138
    :cond_4
    and-int v4, v0, v8

    iget v6, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/2addr v6, v7

    or-int/2addr v4, v6

    iput v4, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 142
    :goto_3
    const/high16 v4, 0x200000

    and-int/2addr v4, v0

    if-eqz v4, :cond_5

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 150
    :cond_5
    const/high16 v4, 0x400000

    and-int/2addr v4, v0

    const v6, 0xffff

    const/4 v7, 0x0

    if-eqz v4, :cond_8

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 152
    .local v4, "indexes":I
    and-int v8, v4, v6

    .line 153
    .local v8, "wakeLockIndex":I
    shr-int/lit8 v9, v4, 0x10

    and-int/2addr v9, v6

    .line 154
    .local v9, "wakeReasonIndex":I
    iget-object v10, p2, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {p0, p1, v8, v10}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readHistoryTag(Landroid/os/Parcel;ILandroid/os/BatteryStats$HistoryTag;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 155
    iget-object v10, p2, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v10, p2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    goto :goto_4

    .line 157
    :cond_6
    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 159
    :goto_4
    iget-object v10, p2, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {p0, p1, v9, v10}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readHistoryTag(Landroid/os/Parcel;ILandroid/os/BatteryStats$HistoryTag;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 160
    iget-object v10, p2, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v10, p2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    goto :goto_5

    .line 162
    :cond_7
    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 164
    :goto_5
    iget v10, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v10, v3

    iput v10, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 165
    .end local v4    # "indexes":I
    .end local v8    # "wakeLockIndex":I
    .end local v9    # "wakeReasonIndex":I
    goto :goto_6

    .line 166
    :cond_8
    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 167
    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 170
    :goto_6
    const/high16 v4, 0x800000

    and-int/2addr v4, v0

    if-eqz v4, :cond_a

    .line 171
    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 173
    .local v2, "codeAndIndex":I
    and-int v4, v2, v6

    iput v4, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 174
    shr-int/lit8 v4, v2, 0x10

    and-int/2addr v4, v6

    .line 175
    .local v4, "index":I
    iget-object v6, p2, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {p0, p1, v4, v6}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readHistoryTag(Landroid/os/Parcel;ILandroid/os/BatteryStats$HistoryTag;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 176
    iget-object v6, p2, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v6, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    goto :goto_7

    .line 178
    :cond_9
    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 180
    :goto_7
    iget v6, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v6, v3

    iput v6, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 186
    .end local v2    # "codeAndIndex":I
    .end local v4    # "index":I
    goto :goto_8

    .line 187
    :cond_a
    iput v2, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 190
    :goto_8
    and-int/lit8 v2, v5, 0x1

    if-eqz v2, :cond_b

    .line 191
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iput-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 192
    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-virtual {v2, p1}, Landroid/os/BatteryStats$HistoryStepDetails;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_9

    .line 194
    :cond_b
    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 197
    :goto_9
    const/high16 v2, 0x1000000

    and-int/2addr v2, v0

    if-eqz v2, :cond_c

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p2, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    .line 200
    :cond_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p2, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p2, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    .line 202
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
