.class public final Landroid/os/BatteryUsageStats;
.super Ljava/lang/Object;
.source "BatteryUsageStats.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryUsageStats$Builder;,
        Landroid/os/BatteryUsageStats$AggregateBatteryConsumerScope;
    }
.end annotation


# static fields
.field public static final blacklist AGGREGATE_BATTERY_CONSUMER_SCOPE_ALL_APPS:I = 0x1

.field public static final blacklist AGGREGATE_BATTERY_CONSUMER_SCOPE_COUNT:I = 0x2

.field public static final blacklist AGGREGATE_BATTERY_CONSUMER_SCOPE_DEVICE:I = 0x0

.field private static final blacklist BATTERY_CONSUMER_CURSOR_WINDOW_SIZE:J = 0x3567e0L

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/BatteryUsageStats;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist STATSD_PULL_ATOM_MAX_BYTES:I = 0xafc8

.field private static final blacklist WEIGHT_BACKGROUND_STATE:D = 8.333333333333333E-5

.field private static final blacklist WEIGHT_CONSUMED_POWER:D = 1.0

.field private static final blacklist WEIGHT_FOREGROUND_STATE:D = 2.777777777777778E-5

.field static final blacklist XML_ATTR_BATTERY_CAPACITY:Ljava/lang/String; = "battery_capacity"

.field static final blacklist XML_ATTR_BATTERY_REMAINING:Ljava/lang/String; = "battery_remaining"

.field static final blacklist XML_ATTR_CHARGE_REMAINING:Ljava/lang/String; = "charge_remaining"

.field static final blacklist XML_ATTR_DISCHARGE_DURATION:Ljava/lang/String; = "discharge_duration"

.field static final blacklist XML_ATTR_DISCHARGE_LOWER:Ljava/lang/String; = "discharge_lower"

.field static final blacklist XML_ATTR_DISCHARGE_PERCENT:Ljava/lang/String; = "discharge_pct"

.field static final blacklist XML_ATTR_DISCHARGE_UPPER:Ljava/lang/String; = "discharge_upper"

.field static final blacklist XML_ATTR_DURATION:Ljava/lang/String; = "duration"

.field static final blacklist XML_ATTR_END_TIMESTAMP:Ljava/lang/String; = "end_timestamp"

.field static final blacklist XML_ATTR_HIGHEST_DRAIN_PACKAGE:Ljava/lang/String; = "highest_drain_package"

.field static final blacklist XML_ATTR_ID:Ljava/lang/String; = "id"

.field static final blacklist XML_ATTR_MODEL:Ljava/lang/String; = "model"

.field static final blacklist XML_ATTR_POWER:Ljava/lang/String; = "power"

.field static final blacklist XML_ATTR_PREFIX_CUSTOM_COMPONENT:Ljava/lang/String; = "custom_component_"

.field static final blacklist XML_ATTR_PREFIX_INCLUDES_PROC_STATE_DATA:Ljava/lang/String; = "includes_proc_state_data"

.field static final blacklist XML_ATTR_PROCESS_STATE:Ljava/lang/String; = "process_state"

.field static final blacklist XML_ATTR_SCOPE:Ljava/lang/String; = "scope"

.field static final blacklist XML_ATTR_START_TIMESTAMP:Ljava/lang/String; = "start_timestamp"

.field static final blacklist XML_ATTR_TIME_IN_BACKGROUND:Ljava/lang/String; = "time_in_background"

.field static final blacklist XML_ATTR_TIME_IN_FOREGROUND:Ljava/lang/String; = "time_in_foreground"

.field static final blacklist XML_ATTR_UID:Ljava/lang/String; = "uid"

.field static final blacklist XML_ATTR_USER_ID:Ljava/lang/String; = "user_id"

.field static final blacklist XML_TAG_AGGREGATE:Ljava/lang/String; = "aggregate"

.field static final blacklist XML_TAG_BATTERY_USAGE_STATS:Ljava/lang/String; = "battery_usage_stats"

.field static final blacklist XML_TAG_COMPONENT:Ljava/lang/String; = "component"

.field static final blacklist XML_TAG_CUSTOM_COMPONENT:Ljava/lang/String; = "custom_component"

.field static final blacklist XML_TAG_POWER_COMPONENTS:Ljava/lang/String; = "power_components"

.field static final blacklist XML_TAG_UID:Ljava/lang/String; = "uid"

.field static final blacklist XML_TAG_USER:Ljava/lang/String; = "user"


# instance fields
.field private final blacklist mAggregateBatteryConsumers:[Landroid/os/AggregateBatteryConsumer;

.field private final blacklist mBatteryCapacityMah:D

.field private blacklist mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

.field private final blacklist mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

.field private final blacklist mBatteryTimeRemainingMs:J

.field private final blacklist mChargeTimeRemainingMs:J

.field private final blacklist mCustomPowerComponentNames:[Ljava/lang/String;

.field private final blacklist mDischargeDurationMs:J

.field private final blacklist mDischargePercentage:I

.field private final blacklist mDischargedPowerLowerBound:D

.field private final blacklist mDischargedPowerUpperBound:D

.field private final blacklist mIncludesPowerModels:Z

.field private final blacklist mIncludesProcessStateData:Z

.field private final blacklist mStatsDurationMs:J

.field private final blacklist mStatsEndTimestampMs:J

.field private final blacklist mStatsStartTimestampMs:J

.field private final blacklist mUidBatteryConsumers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/UidBatteryConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUserBatteryConsumers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/UserBatteryConsumer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$iHc59tAqNHluaadYKPULBGG7APs(Landroid/os/BatteryUsageStats;Landroid/os/UidBatteryConsumer;)D
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumerWeight(Landroid/os/UidBatteryConsumer;)D

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAggregateBatteryConsumers(Landroid/os/BatteryUsageStats;)[Landroid/os/AggregateBatteryConsumer;
    .locals 0

    iget-object p0, p0, Landroid/os/BatteryUsageStats;->mAggregateBatteryConsumers:[Landroid/os/AggregateBatteryConsumer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBatteryCapacityMah(Landroid/os/BatteryUsageStats;)D
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mBatteryCapacityMah:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBatteryTimeRemainingMs(Landroid/os/BatteryUsageStats;)J
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mBatteryTimeRemainingMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChargeTimeRemainingMs(Landroid/os/BatteryUsageStats;)J
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mChargeTimeRemainingMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCustomPowerComponentNames(Landroid/os/BatteryUsageStats;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/os/BatteryUsageStats;->mCustomPowerComponentNames:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDischargeDurationMs(Landroid/os/BatteryUsageStats;)J
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargeDurationMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDischargePercentage(Landroid/os/BatteryUsageStats;)I
    .locals 0

    iget p0, p0, Landroid/os/BatteryUsageStats;->mDischargePercentage:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDischargedPowerLowerBound(Landroid/os/BatteryUsageStats;)D
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargedPowerLowerBound:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDischargedPowerUpperBound(Landroid/os/BatteryUsageStats;)D
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargedPowerUpperBound:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIncludesProcessStateData(Landroid/os/BatteryUsageStats;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/os/BatteryUsageStats;->mIncludesProcessStateData:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatsEndTimestampMs(Landroid/os/BatteryUsageStats;)J
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsEndTimestampMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatsStartTimestampMs(Landroid/os/BatteryUsageStats;)J
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsStartTimestampMs:J

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 410
    new-instance v0, Landroid/os/BatteryUsageStats$1;

    invoke-direct {v0}, Landroid/os/BatteryUsageStats$1;-><init>()V

    sput-object v0, Landroid/os/BatteryUsageStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/BatteryUsageStats$Builder;)V
    .locals 8
    .param p1, "builder"    # Landroid/os/BatteryUsageStats$Builder;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmStatsStartTimestampMs(Landroid/os/BatteryUsageStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsStartTimestampMs:J

    .line 145
    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmStatsEndTimestampMs(Landroid/os/BatteryUsageStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsEndTimestampMs:J

    .line 146
    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$mgetStatsDuration(Landroid/os/BatteryUsageStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsDurationMs:J

    .line 147
    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmBatteryCapacityMah(Landroid/os/BatteryUsageStats$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mBatteryCapacityMah:D

    .line 148
    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmDischargePercentage(Landroid/os/BatteryUsageStats$Builder;)I

    move-result v0

    iput v0, p0, Landroid/os/BatteryUsageStats;->mDischargePercentage:I

    .line 149
    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmDischargedPowerLowerBoundMah(Landroid/os/BatteryUsageStats$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargedPowerLowerBound:D

    .line 150
    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmDischargedPowerUpperBoundMah(Landroid/os/BatteryUsageStats$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargedPowerUpperBound:D

    .line 151
    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmDischargeDurationMs(Landroid/os/BatteryUsageStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargeDurationMs:J

    .line 152
    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmBatteryStatsHistory(Landroid/os/BatteryUsageStats$Builder;)Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryUsageStats;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 153
    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmBatteryTimeRemainingMs(Landroid/os/BatteryUsageStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mBatteryTimeRemainingMs:J

    .line 154
    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmChargeTimeRemainingMs(Landroid/os/BatteryUsageStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mChargeTimeRemainingMs:J

    .line 155
    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmCustomPowerComponentNames(Landroid/os/BatteryUsageStats$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryUsageStats;->mCustomPowerComponentNames:[Ljava/lang/String;

    .line 156
    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmIncludePowerModels(Landroid/os/BatteryUsageStats$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatteryUsageStats;->mIncludesPowerModels:Z

    .line 157
    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmIncludesProcessStateData(Landroid/os/BatteryUsageStats$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatteryUsageStats;->mIncludesProcessStateData:Z

    .line 158
    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmBatteryConsumersCursorWindow(Landroid/os/BatteryUsageStats$Builder;)Landroid/database/CursorWindow;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryUsageStats;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    .line 160
    const-wide/16 v0, 0x0

    .line 161
    .local v0, "totalPowerMah":D
    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmUidBatteryConsumerBuilders(Landroid/os/BatteryUsageStats$Builder;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 162
    .local v2, "uidBatteryConsumerCount":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Landroid/os/BatteryUsageStats;->mUidBatteryConsumers:Ljava/util/List;

    .line 163
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 164
    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmUidBatteryConsumerBuilders(Landroid/os/BatteryUsageStats$Builder;)Landroid/util/SparseArray;

    move-result-object v4

    .line 165
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UidBatteryConsumer$Builder;

    .line 166
    .local v4, "uidBatteryConsumerBuilder":Landroid/os/UidBatteryConsumer$Builder;
    invoke-virtual {v4}, Landroid/os/UidBatteryConsumer$Builder;->isExcludedFromBatteryUsageStats()Z

    move-result v5

    if-nez v5, :cond_0

    .line 167
    invoke-virtual {v4}, Landroid/os/UidBatteryConsumer$Builder;->build()Landroid/os/UidBatteryConsumer;

    move-result-object v5

    .line 168
    .local v5, "consumer":Landroid/os/UidBatteryConsumer;
    invoke-virtual {v5}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    move-result-wide v6

    add-double/2addr v0, v6

    .line 169
    iget-object v6, p0, Landroid/os/BatteryUsageStats;->mUidBatteryConsumers:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    .end local v4    # "uidBatteryConsumerBuilder":Landroid/os/UidBatteryConsumer$Builder;
    .end local v5    # "consumer":Landroid/os/UidBatteryConsumer;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 173
    .end local v3    # "i":I
    :cond_1
    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmUserBatteryConsumerBuilders(Landroid/os/BatteryUsageStats$Builder;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 174
    .local v3, "userBatteryConsumerCount":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Landroid/os/BatteryUsageStats;->mUserBatteryConsumers:Ljava/util/List;

    .line 175
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 176
    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmUserBatteryConsumerBuilders(Landroid/os/BatteryUsageStats$Builder;)Landroid/util/SparseArray;

    move-result-object v5

    .line 177
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserBatteryConsumer$Builder;

    invoke-virtual {v5}, Landroid/os/UserBatteryConsumer$Builder;->build()Landroid/os/UserBatteryConsumer;

    move-result-object v5

    .line 178
    .local v5, "consumer":Landroid/os/UserBatteryConsumer;
    invoke-virtual {v5}, Landroid/os/UserBatteryConsumer;->getConsumedPower()D

    move-result-wide v6

    add-double/2addr v0, v6

    .line 179
    iget-object v6, p0, Landroid/os/BatteryUsageStats;->mUserBatteryConsumers:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    .end local v5    # "consumer":Landroid/os/UserBatteryConsumer;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 182
    .end local v4    # "i":I
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v4

    .line 183
    invoke-virtual {v4, v0, v1}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(D)Landroid/os/AggregateBatteryConsumer$Builder;

    .line 185
    const/4 v4, 0x2

    new-array v5, v4, [Landroid/os/AggregateBatteryConsumer;

    iput-object v5, p0, Landroid/os/BatteryUsageStats;->mAggregateBatteryConsumers:[Landroid/os/AggregateBatteryConsumer;

    .line 187
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v4, :cond_3

    .line 188
    iget-object v6, p0, Landroid/os/BatteryUsageStats;->mAggregateBatteryConsumers:[Landroid/os/AggregateBatteryConsumer;

    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmAggregateBatteryConsumersBuilders(Landroid/os/BatteryUsageStats$Builder;)[Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-virtual {v7}, Landroid/os/AggregateBatteryConsumer$Builder;->build()Landroid/os/AggregateBatteryConsumer;

    move-result-object v7

    aput-object v7, v6, v5

    .line 187
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 190
    .end local v5    # "i":I
    :cond_3
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryUsageStats-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/BatteryUsageStats;-><init>(Landroid/os/BatteryUsageStats$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "source"    # Landroid/os/Parcel;

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsStartTimestampMs:J

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsEndTimestampMs:J

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsDurationMs:J

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mBatteryCapacityMah:D

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryUsageStats;->mDischargePercentage:I

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargedPowerLowerBound:D

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargedPowerUpperBound:D

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargeDurationMs:J

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mBatteryTimeRemainingMs:J

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mChargeTimeRemainingMs:J

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryUsageStats;->mCustomPowerComponentNames:[Ljava/lang/String;

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/os/BatteryUsageStats;->mIncludesPowerModels:Z

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/os/BatteryUsageStats;->mIncludesProcessStateData:Z

    .line 341
    invoke-static {p1}, Landroid/database/CursorWindow;->newFromParcel(Landroid/os/Parcel;)Landroid/database/CursorWindow;

    move-result-object v3

    iput-object v3, p0, Landroid/os/BatteryUsageStats;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    .line 342
    nop

    .line 343
    invoke-static {v0, v1, v2}, Landroid/os/BatteryConsumer;->createBatteryConsumerDataLayout([Ljava/lang/String;ZZ)Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    move-result-object v0

    .line 346
    .local v0, "dataLayout":Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;
    iget-object v1, p0, Landroid/os/BatteryUsageStats;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v1

    .line 348
    .local v1, "numRows":I
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/os/AggregateBatteryConsumer;

    iput-object v2, p0, Landroid/os/BatteryUsageStats;->mAggregateBatteryConsumers:[Landroid/os/AggregateBatteryConsumer;

    .line 350
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/os/BatteryUsageStats;->mUidBatteryConsumers:Ljava/util/List;

    .line 351
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/os/BatteryUsageStats;->mUserBatteryConsumers:Ljava/util/List;

    .line 353
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 354
    new-instance v3, Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v4, p0, Landroid/os/BatteryUsageStats;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    invoke-direct {v3, v4, v2, v0}, Landroid/os/BatteryConsumer$BatteryConsumerData;-><init>(Landroid/database/CursorWindow;ILandroid/os/BatteryConsumer$BatteryConsumerDataLayout;)V

    .line 358
    .local v3, "data":Landroid/os/BatteryConsumer$BatteryConsumerData;
    iget-object v4, p0, Landroid/os/BatteryUsageStats;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/database/CursorWindow;->getInt(II)I

    move-result v4

    .line 360
    .local v4, "consumerType":I
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 371
    :pswitch_0
    iget-object v5, p0, Landroid/os/BatteryUsageStats;->mUserBatteryConsumers:Ljava/util/List;

    new-instance v6, Landroid/os/UserBatteryConsumer;

    invoke-direct {v6, v3}, Landroid/os/UserBatteryConsumer;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 367
    :pswitch_1
    iget-object v5, p0, Landroid/os/BatteryUsageStats;->mUidBatteryConsumers:Ljava/util/List;

    new-instance v6, Landroid/os/UidBatteryConsumer;

    invoke-direct {v6, v3}, Landroid/os/UidBatteryConsumer;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    goto :goto_1

    .line 362
    :pswitch_2
    new-instance v5, Landroid/os/AggregateBatteryConsumer;

    invoke-direct {v5, v3}, Landroid/os/AggregateBatteryConsumer;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;)V

    .line 363
    .local v5, "consumer":Landroid/os/AggregateBatteryConsumer;
    iget-object v6, p0, Landroid/os/BatteryUsageStats;->mAggregateBatteryConsumers:[Landroid/os/AggregateBatteryConsumer;

    invoke-virtual {v5}, Landroid/os/AggregateBatteryConsumer;->getScope()I

    move-result v7

    aput-object v5, v6, v7

    .line 364
    nop

    .line 353
    .end local v3    # "data":Landroid/os/BatteryConsumer$BatteryConsumerData;
    .end local v4    # "consumerType":I
    .end local v5    # "consumer":Landroid/os/AggregateBatteryConsumer;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 376
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 377
    invoke-static {p1}, Lcom/android/internal/os/BatteryStatsHistory;->createFromBatteryUsageStatsParcel(Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object v2

    iput-object v2, p0, Landroid/os/BatteryUsageStats;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    goto :goto_2

    .line 379
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/os/BatteryUsageStats;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 381
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/os/BatteryUsageStats-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/BatteryUsageStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist createFromXml(Landroid/util/TypedXmlPullParser;)Landroid/os/BatteryUsageStats;
    .locals 14
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 676
    const/4 v0, 0x0

    .line 677
    .local v0, "builder":Landroid/os/BatteryUsageStats$Builder;
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v1

    .line 678
    .local v1, "eventType":I
    :goto_0
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v1, v5, :cond_2

    .line 679
    if-ne v1, v4, :cond_1

    .line 680
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "battery_usage_stats"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 681
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 682
    .local v6, "customComponentNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 684
    .local v7, "i":I
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "custom_component_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {p0, v9, v8}, Landroid/util/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 686
    .local v8, "index":I
    if-ne v8, v2, :cond_0

    .line 687
    nop

    .line 693
    .end local v8    # "index":I
    const-string/jumbo v8, "includes_proc_state_data"

    invoke-interface {p0, v9, v8, v3}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 696
    .local v8, "includesProcStateData":Z
    new-instance v10, Landroid/os/BatteryUsageStats$Builder;

    new-array v11, v3, [Ljava/lang/String;

    invoke-interface {v6, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    invoke-direct {v10, v11, v5, v8}, Landroid/os/BatteryUsageStats$Builder;-><init>([Ljava/lang/String;ZZ)V

    move-object v0, v10

    .line 699
    nop

    .line 700
    const-string/jumbo v10, "start_timestamp"

    invoke-interface {p0, v9, v10}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v10

    .line 699
    invoke-virtual {v0, v10, v11}, Landroid/os/BatteryUsageStats$Builder;->setStatsStartTimestamp(J)Landroid/os/BatteryUsageStats$Builder;

    .line 701
    nop

    .line 702
    const-string v10, "end_timestamp"

    invoke-interface {p0, v9, v10}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v10

    .line 701
    invoke-virtual {v0, v10, v11}, Landroid/os/BatteryUsageStats$Builder;->setStatsEndTimestamp(J)Landroid/os/BatteryUsageStats$Builder;

    .line 703
    nop

    .line 704
    const-string v10, "duration"

    invoke-interface {p0, v9, v10}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v10

    .line 703
    invoke-virtual {v0, v10, v11}, Landroid/os/BatteryUsageStats$Builder;->setStatsDuration(J)Landroid/os/BatteryUsageStats$Builder;

    .line 705
    nop

    .line 706
    const-string v10, "battery_capacity"

    invoke-interface {p0, v9, v10}, Landroid/util/TypedXmlPullParser;->getAttributeDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v10

    .line 705
    invoke-virtual {v0, v10, v11}, Landroid/os/BatteryUsageStats$Builder;->setBatteryCapacity(D)Landroid/os/BatteryUsageStats$Builder;

    .line 707
    nop

    .line 708
    const-string v10, "discharge_pct"

    invoke-interface {p0, v9, v10}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 707
    invoke-virtual {v0, v10}, Landroid/os/BatteryUsageStats$Builder;->setDischargePercentage(I)Landroid/os/BatteryUsageStats$Builder;

    .line 709
    nop

    .line 710
    const-string v10, "discharge_lower"

    invoke-interface {p0, v9, v10}, Landroid/util/TypedXmlPullParser;->getAttributeDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v10

    .line 711
    const-string v12, "discharge_upper"

    invoke-interface {p0, v9, v12}, Landroid/util/TypedXmlPullParser;->getAttributeDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v12

    .line 709
    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/os/BatteryUsageStats$Builder;->setDischargedPowerRange(DD)Landroid/os/BatteryUsageStats$Builder;

    .line 712
    nop

    .line 713
    const-string v10, "discharge_duration"

    invoke-interface {p0, v9, v10}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v10

    .line 712
    invoke-virtual {v0, v10, v11}, Landroid/os/BatteryUsageStats$Builder;->setDischargeDurationMs(J)Landroid/os/BatteryUsageStats$Builder;

    .line 714
    nop

    .line 715
    const-string v10, "battery_remaining"

    invoke-interface {p0, v9, v10}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v10

    .line 714
    invoke-virtual {v0, v10, v11}, Landroid/os/BatteryUsageStats$Builder;->setBatteryTimeRemainingMs(J)Landroid/os/BatteryUsageStats$Builder;

    .line 716
    nop

    .line 717
    const-string v10, "charge_remaining"

    invoke-interface {p0, v9, v10}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v9

    .line 716
    invoke-virtual {v0, v9, v10}, Landroid/os/BatteryUsageStats$Builder;->setChargeTimeRemainingMs(J)Landroid/os/BatteryUsageStats$Builder;

    .line 719
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    .line 720
    goto :goto_2

    .line 689
    .local v8, "index":I
    :cond_0
    invoke-interface {p0, v8}, Landroid/util/TypedXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    nop

    .end local v8    # "index":I
    add-int/lit8 v7, v7, 0x1

    .line 691
    goto/16 :goto_1

    .line 722
    .end local v6    # "customComponentNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "i":I
    :cond_1
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    goto/16 :goto_0

    .line 725
    :cond_2
    :goto_2
    if-eqz v0, :cond_6

    .line 729
    :goto_3
    if-eq v1, v5, :cond_5

    .line 730
    if-ne v1, v4, :cond_4

    .line 731
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_3
    goto :goto_4

    :sswitch_0
    const-string v7, "aggregate"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v3

    goto :goto_5

    :sswitch_1
    const-string/jumbo v7, "user"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v4

    goto :goto_5

    :sswitch_2
    const-string/jumbo v7, "uid"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v5

    goto :goto_5

    :goto_4
    move v6, v2

    :goto_5
    packed-switch v6, :pswitch_data_0

    goto :goto_6

    .line 739
    :pswitch_0
    invoke-static {p0, v0}, Landroid/os/UserBatteryConsumer;->createFromXml(Landroid/util/TypedXmlPullParser;Landroid/os/BatteryUsageStats$Builder;)V

    goto :goto_6

    .line 736
    :pswitch_1
    invoke-static {p0, v0}, Landroid/os/UidBatteryConsumer;->createFromXml(Landroid/util/TypedXmlPullParser;Landroid/os/BatteryUsageStats$Builder;)V

    .line 737
    goto :goto_6

    .line 733
    :pswitch_2
    invoke-static {p0, v0}, Landroid/os/AggregateBatteryConsumer;->parseXml(Landroid/util/TypedXmlPullParser;Landroid/os/BatteryUsageStats$Builder;)V

    .line 743
    :cond_4
    :goto_6
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    goto :goto_3

    .line 746
    :cond_5
    invoke-virtual {v0}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    move-result-object v2

    return-object v2

    .line 726
    :cond_6
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No root element"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1c450 -> :sswitch_2
        0x36ebcb -> :sswitch_1
        0xa70fdbf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist dumpSortedBatteryConsumers(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Landroid/os/BatteryConsumer;",
            ">;)V"
        }
    .end annotation

    .line 625
    .local p3, "batteryConsumers":Ljava/util/List;, "Ljava/util/List<+Landroid/os/BatteryConsumer;>;"
    new-instance v0, Landroid/os/BatteryUsageStats$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/os/BatteryUsageStats$$ExternalSyntheticLambda0;-><init>()V

    .line 626
    invoke-static {v0}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v0

    .line 627
    invoke-interface {v0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v0

    .line 625
    invoke-interface {p3, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 628
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryConsumer;

    .line 629
    .local v1, "consumer":Landroid/os/BatteryConsumer;
    invoke-virtual {v1}, Landroid/os/BatteryConsumer;->getConsumedPower()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 630
    goto :goto_0

    .line 632
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 633
    const-string v2, "    "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 634
    invoke-virtual {v1, p1}, Landroid/os/BatteryConsumer;->dump(Ljava/io/PrintWriter;)V

    .line 635
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 636
    .end local v1    # "consumer":Landroid/os/BatteryConsumer;
    goto :goto_0

    .line 637
    :cond_1
    return-void
.end method

.method private blacklist getUidBatteryConsumerWeight(Landroid/os/UidBatteryConsumer;)D
    .locals 12
    .param p1, "uidBatteryConsumer"    # Landroid/os/UidBatteryConsumer;

    .line 524
    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    move-result-wide v0

    .line 525
    .local v0, "consumedPower":D
    nop

    .line 526
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/UidBatteryConsumer;->getTimeInStateMs(I)J

    move-result-wide v2

    .line 527
    .local v2, "timeInForeground":J
    nop

    .line 528
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/os/UidBatteryConsumer;->getTimeInStateMs(I)J

    move-result-wide v4

    .line 529
    .local v4, "timeInBackground":J
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v6, v0

    long-to-double v8, v2

    const-wide v10, 0x3efd208a5a912e32L    # 2.777777777777778E-5

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    long-to-double v8, v4

    const-wide v10, 0x3f15d867c3ece2a5L    # 8.333333333333333E-5

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    return-wide v6
.end method

.method private blacklist printPowerComponent(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DDIJ)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "devicePowerMah"    # D
    .param p6, "appsPowerMah"    # D
    .param p8, "powerModel"    # I
    .param p9, "durationMs"    # J

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 606
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "      "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 607
    invoke-static {p4, p5}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    if-eqz p8, :cond_0

    const/4 v1, 0x1

    if-eq p8, v1, :cond_0

    .line 610
    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    invoke-static {p8}, Landroid/os/BatteryConsumer;->powerModelToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    :cond_0
    const-string v1, " apps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p6, p7}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    const-wide/16 v1, 0x0

    cmp-long v1, p9, v1

    if-eqz v1, :cond_1

    .line 616
    const-string v1, " duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    invoke-static {v0, p9, p10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 620
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 621
    return-void
.end method

.method private blacklist writeStatsProto(Landroid/util/proto/ProtoOutputStream;I)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "maxRawSize"    # I

    .line 454
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/BatteryUsageStats;->getAggregateBatteryConsumer(I)Landroid/os/BatteryConsumer;

    move-result-object v0

    .line 457
    .local v0, "deviceBatteryConsumer":Landroid/os/BatteryConsumer;
    invoke-virtual {p0}, Landroid/os/BatteryUsageStats;->getStatsStartTimestamp()J

    move-result-wide v1

    const-wide v3, 0x10300000001L

    invoke-virtual {p1, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 458
    invoke-virtual {p0}, Landroid/os/BatteryUsageStats;->getStatsEndTimestamp()J

    move-result-wide v1

    const-wide v3, 0x10300000002L

    invoke-virtual {p1, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 459
    invoke-virtual {p0}, Landroid/os/BatteryUsageStats;->getStatsDuration()J

    move-result-wide v1

    const-wide v3, 0x10300000003L

    invoke-virtual {p1, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 460
    nop

    .line 461
    invoke-virtual {p0}, Landroid/os/BatteryUsageStats;->getDischargePercentage()I

    move-result v1

    .line 460
    const-wide v2, 0x10500000006L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 462
    nop

    .line 463
    invoke-virtual {p0}, Landroid/os/BatteryUsageStats;->getDischargeDurationMs()J

    move-result-wide v1

    .line 462
    const-wide v3, 0x10300000007L

    invoke-virtual {p1, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 464
    const-wide v1, 0x10b00000004L

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/BatteryConsumer;->writeStatsProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 466
    invoke-direct {p0, p1, p2}, Landroid/os/BatteryUsageStats;->writeUidBatteryConsumersProto(Landroid/util/proto/ProtoOutputStream;I)V

    .line 467
    return-void
.end method

.method private blacklist writeUidBatteryConsumersProto(Landroid/util/proto/ProtoOutputStream;I)V
    .locals 16
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "maxRawSize"    # I

    .line 474
    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v1

    .line 476
    .local v1, "consumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    new-instance v2, Landroid/os/BatteryUsageStats$$ExternalSyntheticLambda1;

    move-object/from16 v3, p0

    invoke-direct {v2, v3}, Landroid/os/BatteryUsageStats$$ExternalSyntheticLambda1;-><init>(Landroid/os/BatteryUsageStats;)V

    invoke-static {v2}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 478
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 479
    .local v2, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_3

    .line 480
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UidBatteryConsumer;

    .line 482
    .local v5, "consumer":Landroid/os/UidBatteryConsumer;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/UidBatteryConsumer;->getTimeInStateMs(I)J

    move-result-wide v6

    .line 483
    .local v6, "fgMs":J
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/os/UidBatteryConsumer;->getTimeInStateMs(I)J

    move-result-wide v8

    .line 484
    .local v8, "bgMs":J
    invoke-virtual {v5}, Landroid/os/UidBatteryConsumer;->hasStatsProtoData()Z

    move-result v10

    .line 486
    .local v10, "hasBaseData":Z
    const-wide/16 v11, 0x0

    cmp-long v13, v6, v11

    if-nez v13, :cond_0

    cmp-long v11, v8, v11

    if-nez v11, :cond_0

    if-nez v10, :cond_0

    .line 487
    move/from16 v14, p2

    goto :goto_1

    .line 490
    :cond_0
    const-wide v11, 0x20b00000005L

    invoke-virtual {v0, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 491
    .local v11, "token":J
    const-wide v13, 0x10500000001L

    .line 493
    invoke-virtual {v5}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v15

    .line 491
    invoke-virtual {v0, v13, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 494
    if-eqz v10, :cond_1

    .line 495
    const-wide v13, 0x10b00000002L

    invoke-virtual {v5, v0, v13, v14}, Landroid/os/UidBatteryConsumer;->writeStatsProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 498
    :cond_1
    const-wide v13, 0x10300000003L

    invoke-virtual {v0, v13, v14, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 501
    const-wide v13, 0x10300000004L

    invoke-virtual {v0, v13, v14, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 504
    invoke-virtual {v0, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 506
    invoke-virtual/range {p1 .. p1}, Landroid/util/proto/ProtoOutputStream;->getRawSize()I

    move-result v13

    move/from16 v14, p2

    if-lt v13, v14, :cond_2

    .line 507
    goto :goto_2

    .line 479
    .end local v5    # "consumer":Landroid/os/UidBatteryConsumer;
    .end local v6    # "fgMs":J
    .end local v8    # "bgMs":J
    .end local v10    # "hasBaseData":Z
    .end local v11    # "token":J
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move/from16 v14, p2

    .line 510
    .end local v4    # "i":I
    :goto_2
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 751
    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->close()V

    .line 752
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/BatteryUsageStats;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    .line 753
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 32
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 538
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 539
    const-string v0, "  Estimated power use (mAh):"

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 540
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 541
    const-string v0, "    Capacity: "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 542
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryUsageStats;->getBatteryCapacity()D

    move-result-wide v0

    invoke-static {v12, v0, v1}, Lcom/android/internal/os/PowerCalculator;->printPowerMah(Ljava/io/PrintWriter;D)V

    .line 543
    const-string v0, ", Computed drain: "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 544
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryUsageStats;->getConsumedPower()D

    move-result-wide v0

    invoke-static {v12, v0, v1}, Lcom/android/internal/os/PowerCalculator;->printPowerMah(Ljava/io/PrintWriter;D)V

    .line 545
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryUsageStats;->getDischargedPowerRange()Landroid/util/Range;

    move-result-object v14

    .line 546
    .local v14, "dischargedPowerRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Double;>;"
    const-string v0, ", actual drain: "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 547
    invoke-virtual {v14}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v12, v0, v1}, Lcom/android/internal/os/PowerCalculator;->printPowerMah(Ljava/io/PrintWriter;D)V

    .line 548
    invoke-virtual {v14}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v14}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 549
    const-string v0, "-"

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 550
    invoke-virtual {v14}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v12, v0, v1}, Lcom/android/internal/os/PowerCalculator;->printPowerMah(Ljava/io/PrintWriter;D)V

    .line 552
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 554
    const-string v0, "    Global"

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 555
    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Landroid/os/BatteryUsageStats;->getAggregateBatteryConsumer(I)Landroid/os/BatteryConsumer;

    move-result-object v9

    .line 557
    .local v9, "deviceConsumer":Landroid/os/BatteryConsumer;
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/os/BatteryUsageStats;->getAggregateBatteryConsumer(I)Landroid/os/BatteryConsumer;

    move-result-object v10

    .line 560
    .local v10, "appsConsumer":Landroid/os/BatteryConsumer;
    const/4 v0, 0x0

    move v8, v0

    .local v8, "componentId":I
    :goto_0
    const/16 v0, 0x12

    const-wide/16 v16, 0x0

    if-ge v8, v0, :cond_4

    .line 562
    invoke-virtual {v9, v8}, Landroid/os/BatteryConsumer;->getKeys(I)[Landroid/os/BatteryConsumer$Key;

    move-result-object v6

    array-length v7, v6

    move v4, v15

    :goto_1
    if-ge v4, v7, :cond_3

    aget-object v5, v6, v4

    .line 563
    .local v5, "key":Landroid/os/BatteryConsumer$Key;
    invoke-virtual {v9, v5}, Landroid/os/BatteryConsumer;->getConsumedPower(Landroid/os/BatteryConsumer$Key;)D

    move-result-wide v18

    .line 564
    .local v18, "devicePowerMah":D
    invoke-virtual {v10, v5}, Landroid/os/BatteryConsumer;->getConsumedPower(Landroid/os/BatteryConsumer$Key;)D

    move-result-wide v20

    .line 565
    .local v20, "appsPowerMah":D
    cmpl-double v0, v18, v16

    if-nez v0, :cond_1

    cmpl-double v0, v20, v16

    if-nez v0, :cond_1

    .line 566
    move/from16 v26, v4

    move-object/from16 v28, v6

    move/from16 v29, v7

    move/from16 v30, v8

    move-object v15, v9

    move-object/from16 v31, v14

    move-object v14, v10

    goto :goto_3

    .line 569
    :cond_1
    invoke-static {v8}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, "label":Ljava/lang/String;
    iget v1, v5, Landroid/os/BatteryConsumer$Key;->processState:I

    if-eqz v1, :cond_2

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v5, Landroid/os/BatteryConsumer$Key;->processState:I

    .line 572
    invoke-static {v2}, Landroid/os/BatteryConsumer;->processStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v22, v0

    goto :goto_2

    .line 570
    :cond_2
    move-object/from16 v22, v0

    .line 574
    .end local v0    # "label":Ljava/lang/String;
    .local v22, "label":Ljava/lang/String;
    :goto_2
    nop

    .line 575
    invoke-virtual {v9, v5}, Landroid/os/BatteryConsumer;->getPowerModel(Landroid/os/BatteryConsumer$Key;)I

    move-result v23

    .line 576
    invoke-virtual {v9, v5}, Landroid/os/BatteryConsumer;->getUsageDurationMillis(Landroid/os/BatteryConsumer$Key;)J

    move-result-wide v24

    .line 574
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v22

    move/from16 v26, v4

    move-object/from16 v27, v5

    .end local v5    # "key":Landroid/os/BatteryConsumer$Key;
    .local v27, "key":Landroid/os/BatteryConsumer$Key;
    move-wide/from16 v4, v18

    move-object/from16 v28, v6

    move/from16 v29, v7

    move-wide/from16 v6, v20

    move/from16 v30, v8

    .end local v8    # "componentId":I
    .local v30, "componentId":I
    move/from16 v8, v23

    move-object v15, v9

    move-object/from16 v31, v14

    move-object v14, v10

    .end local v9    # "deviceConsumer":Landroid/os/BatteryConsumer;
    .end local v10    # "appsConsumer":Landroid/os/BatteryConsumer;
    .local v14, "appsConsumer":Landroid/os/BatteryConsumer;
    .local v15, "deviceConsumer":Landroid/os/BatteryConsumer;
    .local v31, "dischargedPowerRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Double;>;"
    move-wide/from16 v9, v24

    invoke-direct/range {v0 .. v10}, Landroid/os/BatteryUsageStats;->printPowerComponent(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DDIJ)V

    .line 562
    .end local v18    # "devicePowerMah":D
    .end local v20    # "appsPowerMah":D
    .end local v22    # "label":Ljava/lang/String;
    .end local v27    # "key":Landroid/os/BatteryConsumer$Key;
    :goto_3
    add-int/lit8 v4, v26, 0x1

    move-object v10, v14

    move-object v9, v15

    move-object/from16 v6, v28

    move/from16 v7, v29

    move/from16 v8, v30

    move-object/from16 v14, v31

    const/4 v15, 0x0

    goto/16 :goto_1

    .line 561
    .end local v15    # "deviceConsumer":Landroid/os/BatteryConsumer;
    .end local v30    # "componentId":I
    .end local v31    # "dischargedPowerRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Double;>;"
    .restart local v8    # "componentId":I
    .restart local v9    # "deviceConsumer":Landroid/os/BatteryConsumer;
    .restart local v10    # "appsConsumer":Landroid/os/BatteryConsumer;
    .local v14, "dischargedPowerRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Double;>;"
    :cond_3
    move/from16 v30, v8

    move-object v15, v9

    move-object/from16 v31, v14

    move-object v14, v10

    .end local v8    # "componentId":I
    .end local v9    # "deviceConsumer":Landroid/os/BatteryConsumer;
    .end local v10    # "appsConsumer":Landroid/os/BatteryConsumer;
    .local v14, "appsConsumer":Landroid/os/BatteryConsumer;
    .restart local v15    # "deviceConsumer":Landroid/os/BatteryConsumer;
    .restart local v30    # "componentId":I
    .restart local v31    # "dischargedPowerRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Double;>;"
    add-int/lit8 v8, v30, 0x1

    move-object/from16 v14, v31

    const/4 v15, 0x0

    .end local v30    # "componentId":I
    .restart local v8    # "componentId":I
    goto/16 :goto_0

    .line 560
    .end local v15    # "deviceConsumer":Landroid/os/BatteryConsumer;
    .end local v31    # "dischargedPowerRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Double;>;"
    .restart local v9    # "deviceConsumer":Landroid/os/BatteryConsumer;
    .restart local v10    # "appsConsumer":Landroid/os/BatteryConsumer;
    .local v14, "dischargedPowerRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Double;>;"
    :cond_4
    move/from16 v30, v8

    move-object v15, v9

    move-object/from16 v31, v14

    move-object v14, v10

    .line 580
    .end local v8    # "componentId":I
    .end local v9    # "deviceConsumer":Landroid/os/BatteryConsumer;
    .end local v10    # "appsConsumer":Landroid/os/BatteryConsumer;
    .local v14, "appsConsumer":Landroid/os/BatteryConsumer;
    .restart local v15    # "deviceConsumer":Landroid/os/BatteryConsumer;
    .restart local v31    # "dischargedPowerRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Double;>;"
    const/16 v0, 0x3e8

    move v9, v0

    .line 581
    .local v9, "componentId":I
    :goto_4
    iget-object v0, v11, Landroid/os/BatteryUsageStats;->mCustomPowerComponentNames:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit16 v0, v0, 0x3e8

    if-ge v9, v0, :cond_6

    .line 584
    nop

    .line 585
    invoke-virtual {v15, v9}, Landroid/os/BatteryConsumer;->getConsumedPowerForCustomComponent(I)D

    move-result-wide v18

    .line 586
    .restart local v18    # "devicePowerMah":D
    nop

    .line 587
    invoke-virtual {v14, v9}, Landroid/os/BatteryConsumer;->getConsumedPowerForCustomComponent(I)D

    move-result-wide v20

    .line 588
    .restart local v20    # "appsPowerMah":D
    cmpl-double v0, v18, v16

    if-nez v0, :cond_5

    cmpl-double v0, v20, v16

    if-nez v0, :cond_5

    .line 589
    move/from16 v24, v9

    goto :goto_5

    .line 592
    :cond_5
    invoke-virtual {v15, v9}, Landroid/os/BatteryConsumer;->getCustomPowerComponentName(I)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    .line 595
    invoke-virtual {v15, v9}, Landroid/os/BatteryConsumer;->getUsageDurationForCustomComponentMillis(I)J

    move-result-wide v22

    .line 592
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v4, v18

    move-wide/from16 v6, v20

    move/from16 v24, v9

    .end local v9    # "componentId":I
    .local v24, "componentId":I
    move-wide/from16 v9, v22

    invoke-direct/range {v0 .. v10}, Landroid/os/BatteryUsageStats;->printPowerComponent(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DDIJ)V

    .line 583
    .end local v18    # "devicePowerMah":D
    .end local v20    # "appsPowerMah":D
    :goto_5
    add-int/lit8 v9, v24, 0x1

    .end local v24    # "componentId":I
    .restart local v9    # "componentId":I
    goto :goto_4

    .line 598
    .end local v9    # "componentId":I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v0

    invoke-direct {v11, v12, v13, v0}, Landroid/os/BatteryUsageStats;->dumpSortedBatteryConsumers(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;)V

    .line 599
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryUsageStats;->getUserBatteryConsumers()Ljava/util/List;

    move-result-object v0

    invoke-direct {v11, v12, v13, v0}, Landroid/os/BatteryUsageStats;->dumpSortedBatteryConsumers(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;)V

    .line 600
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 601
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 757
    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_0

    .line 758
    invoke-virtual {v0}, Landroid/database/CursorWindow;->close()V

    .line 760
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 761
    return-void
.end method

.method public blacklist getAggregateBatteryConsumer(I)Landroid/os/BatteryConsumer;
    .locals 1
    .param p1, "scope"    # I

    .line 282
    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mAggregateBatteryConsumers:[Landroid/os/AggregateBatteryConsumer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public blacklist getBatteryCapacity()D
    .locals 2

    .line 231
    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mBatteryCapacityMah:D

    return-wide v0
.end method

.method public blacklist getBatteryTimeRemainingMs()J
    .locals 2

    .line 265
    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mBatteryTimeRemainingMs:J

    return-wide v0
.end method

.method public blacklist getChargeTimeRemainingMs()J
    .locals 2

    .line 274
    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mChargeTimeRemainingMs:J

    return-wide v0
.end method

.method public blacklist getConsumedPower()D
    .locals 2

    .line 223
    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mAggregateBatteryConsumers:[Landroid/os/AggregateBatteryConsumer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 224
    invoke-virtual {v0}, Landroid/os/AggregateBatteryConsumer;->getConsumedPower()D

    move-result-wide v0

    .line 223
    return-wide v0
.end method

.method public blacklist getCustomPowerComponentNames()[Ljava/lang/String;
    .locals 1

    .line 302
    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mCustomPowerComponentNames:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDischargeDurationMs()J
    .locals 2

    .line 255
    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargeDurationMs:J

    return-wide v0
.end method

.method public blacklist getDischargePercentage()I
    .locals 1

    .line 240
    iget v0, p0, Landroid/os/BatteryUsageStats;->mDischargePercentage:I

    return v0
.end method

.method public blacklist getDischargedPowerRange()Landroid/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 248
    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargedPowerLowerBound:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/BatteryUsageStats;->mDischargedPowerUpperBound:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStatsDuration()J
    .locals 2

    .line 215
    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsDurationMs:J

    return-wide v0
.end method

.method public blacklist getStatsEndTimestamp()J
    .locals 2

    .line 205
    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsEndTimestampMs:J

    return-wide v0
.end method

.method public blacklist getStatsProto()[B
    .locals 10

    .line 425
    const v0, 0x1339e

    .line 427
    .local v0, "maxRawSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    const v3, 0xafc8

    if-ge v1, v2, :cond_1

    .line 428
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 429
    .local v2, "proto":Landroid/util/proto/ProtoOutputStream;
    invoke-direct {p0, v2, v0}, Landroid/os/BatteryUsageStats;->writeStatsProto(Landroid/util/proto/ProtoOutputStream;I)V

    .line 431
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->getRawSize()I

    move-result v4

    .line 432
    .local v4, "rawSize":I
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v5

    .line 434
    .local v5, "protoOutput":[B
    array-length v6, v5

    if-gt v6, v3, :cond_0

    .line 435
    return-object v5

    .line 439
    :cond_0
    const-wide/32 v6, 0xafc8

    int-to-long v8, v4

    mul-long/2addr v8, v6

    array-length v3, v5

    int-to-long v6, v3

    div-long/2addr v8, v6

    const-wide/16 v6, 0x400

    sub-long/2addr v8, v6

    long-to-int v0, v8

    .line 427
    .end local v2    # "proto":Landroid/util/proto/ProtoOutputStream;
    .end local v4    # "rawSize":I
    .end local v5    # "protoOutput":[B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 447
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 448
    .local v1, "proto":Landroid/util/proto/ProtoOutputStream;
    invoke-direct {p0, v1, v3}, Landroid/os/BatteryUsageStats;->writeStatsProto(Landroid/util/proto/ProtoOutputStream;I)V

    .line 449
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v2

    return-object v2
.end method

.method public blacklist getStatsStartTimestamp()J
    .locals 2

    .line 197
    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsStartTimestampMs:J

    return-wide v0
.end method

.method public blacklist getUidBatteryConsumers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/UidBatteryConsumer;",
            ">;"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mUidBatteryConsumers:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getUserBatteryConsumers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/UserBatteryConsumer;",
            ">;"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mUserBatteryConsumers:Ljava/util/List;

    return-object v0
.end method

.method public blacklist isProcessStateDataIncluded()Z
    .locals 1

    .line 306
    iget-boolean v0, p0, Landroid/os/BatteryUsageStats;->mIncludesProcessStateData:Z

    return v0
.end method

.method public blacklist iterateBatteryStatsHistory()Lcom/android/internal/os/BatteryStatsHistoryIterator;
    .locals 2

    .line 314
    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    if-eqz v0, :cond_0

    .line 318
    new-instance v1, Lcom/android/internal/os/BatteryStatsHistoryIterator;

    invoke-direct {v1, v0}, Lcom/android/internal/os/BatteryStatsHistoryIterator;-><init>(Lcom/android/internal/os/BatteryStatsHistory;)V

    return-object v1

    .line 315
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Battery history was not requested in the BatteryUsageStatsQuery"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 385
    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsStartTimestampMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 386
    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsEndTimestampMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 387
    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsDurationMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 388
    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mBatteryCapacityMah:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 389
    iget v0, p0, Landroid/os/BatteryUsageStats;->mDischargePercentage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargedPowerLowerBound:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 391
    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargedPowerUpperBound:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 392
    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargeDurationMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 393
    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mBatteryTimeRemainingMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 394
    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mChargeTimeRemainingMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 395
    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mCustomPowerComponentNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 396
    iget-boolean v0, p0, Landroid/os/BatteryUsageStats;->mIncludesPowerModels:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 397
    iget-boolean v0, p0, Landroid/os/BatteryUsageStats;->mIncludesProcessStateData:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 399
    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0, p1, p2}, Landroid/database/CursorWindow;->writeToParcel(Landroid/os/Parcel;I)V

    .line 401
    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    if-eqz v0, :cond_0

    .line 402
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 403
    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->writeToBatteryUsageStatsParcel(Landroid/os/Parcel;)V

    goto :goto_0

    .line 405
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 407
    :goto_0
    return-void
.end method

.method public blacklist writeXml(Landroid/util/TypedXmlSerializer;)V
    .locals 5
    .param p1, "serializer"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 641
    const/4 v0, 0x0

    const-string v1, "battery_usage_stats"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 643
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/os/BatteryUsageStats;->mCustomPowerComponentNames:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 644
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "custom_component_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/os/BatteryUsageStats;->mCustomPowerComponentNames:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {p1, v0, v3, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 643
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 647
    .end local v2    # "i":I
    :cond_0
    iget-boolean v2, p0, Landroid/os/BatteryUsageStats;->mIncludesProcessStateData:Z

    const-string/jumbo v3, "includes_proc_state_data"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 649
    iget-wide v2, p0, Landroid/os/BatteryUsageStats;->mStatsStartTimestampMs:J

    const-string/jumbo v4, "start_timestamp"

    invoke-interface {p1, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 650
    iget-wide v2, p0, Landroid/os/BatteryUsageStats;->mStatsEndTimestampMs:J

    const-string v4, "end_timestamp"

    invoke-interface {p1, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 651
    iget-wide v2, p0, Landroid/os/BatteryUsageStats;->mStatsDurationMs:J

    const-string v4, "duration"

    invoke-interface {p1, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 652
    iget-wide v2, p0, Landroid/os/BatteryUsageStats;->mBatteryCapacityMah:D

    const-string v4, "battery_capacity"

    invoke-interface {p1, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeDouble(Ljava/lang/String;Ljava/lang/String;D)Lorg/xmlpull/v1/XmlSerializer;

    .line 653
    iget v2, p0, Landroid/os/BatteryUsageStats;->mDischargePercentage:I

    const-string v3, "discharge_pct"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 654
    iget-wide v2, p0, Landroid/os/BatteryUsageStats;->mDischargedPowerLowerBound:D

    const-string v4, "discharge_lower"

    invoke-interface {p1, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeDouble(Ljava/lang/String;Ljava/lang/String;D)Lorg/xmlpull/v1/XmlSerializer;

    .line 655
    iget-wide v2, p0, Landroid/os/BatteryUsageStats;->mDischargedPowerUpperBound:D

    const-string v4, "discharge_upper"

    invoke-interface {p1, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeDouble(Ljava/lang/String;Ljava/lang/String;D)Lorg/xmlpull/v1/XmlSerializer;

    .line 656
    iget-wide v2, p0, Landroid/os/BatteryUsageStats;->mDischargeDurationMs:J

    const-string v4, "discharge_duration"

    invoke-interface {p1, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 657
    iget-wide v2, p0, Landroid/os/BatteryUsageStats;->mBatteryTimeRemainingMs:J

    const-string v4, "battery_remaining"

    invoke-interface {p1, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 658
    iget-wide v2, p0, Landroid/os/BatteryUsageStats;->mChargeTimeRemainingMs:J

    const-string v4, "charge_remaining"

    invoke-interface {p1, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 660
    const/4 v2, 0x0

    .local v2, "scope":I
    :goto_1
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 662
    iget-object v3, p0, Landroid/os/BatteryUsageStats;->mAggregateBatteryConsumers:[Landroid/os/AggregateBatteryConsumer;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, v2}, Landroid/os/AggregateBatteryConsumer;->writeToXml(Landroid/util/TypedXmlSerializer;I)V

    .line 661
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 664
    .end local v2    # "scope":I
    :cond_1
    iget-object v2, p0, Landroid/os/BatteryUsageStats;->mUidBatteryConsumers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UidBatteryConsumer;

    .line 665
    .local v3, "consumer":Landroid/os/UidBatteryConsumer;
    invoke-virtual {v3, p1}, Landroid/os/UidBatteryConsumer;->writeToXml(Landroid/util/TypedXmlSerializer;)V

    .line 666
    .end local v3    # "consumer":Landroid/os/UidBatteryConsumer;
    goto :goto_2

    .line 667
    :cond_2
    iget-object v2, p0, Landroid/os/BatteryUsageStats;->mUserBatteryConsumers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserBatteryConsumer;

    .line 668
    .local v3, "consumer":Landroid/os/UserBatteryConsumer;
    invoke-virtual {v3, p1}, Landroid/os/UserBatteryConsumer;->writeToXml(Landroid/util/TypedXmlSerializer;)V

    .line 669
    .end local v3    # "consumer":Landroid/os/UserBatteryConsumer;
    goto :goto_3

    .line 670
    :cond_3
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 671
    return-void
.end method
