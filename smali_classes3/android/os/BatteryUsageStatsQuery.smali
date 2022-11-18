.class public final Landroid/os/BatteryUsageStatsQuery;
.super Ljava/lang/Object;
.source "BatteryUsageStatsQuery.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryUsageStatsQuery$Builder;,
        Landroid/os/BatteryUsageStatsQuery$BatteryUsageStatsFlags;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/BatteryUsageStatsQuery;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEFAULT:Landroid/os/BatteryUsageStatsQuery;

.field private static final blacklist DEFAULT_MAX_STATS_AGE_MS:J = 0x493e0L

.field public static final blacklist FLAG_BATTERY_USAGE_STATS_INCLUDE_HISTORY:I = 0x2

.field public static final blacklist FLAG_BATTERY_USAGE_STATS_INCLUDE_POWER_MODELS:I = 0x4

.field public static final blacklist FLAG_BATTERY_USAGE_STATS_INCLUDE_PROCESS_STATE_DATA:I = 0x8

.field public static final blacklist FLAG_BATTERY_USAGE_STATS_INCLUDE_VIRTUAL_UIDS:I = 0x10

.field public static final blacklist FLAG_BATTERY_USAGE_STATS_POWER_PROFILE_MODEL:I = 0x1


# instance fields
.field private final blacklist mFlags:I

.field private final blacklist mFromTimestamp:J

.field private final blacklist mMaxStatsAgeMs:J

.field private final blacklist mPowerComponents:[I

.field private final blacklist mToTimestamp:J

.field private final blacklist mUserIds:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 35
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v0

    sput-object v0, Landroid/os/BatteryUsageStatsQuery;->DEFAULT:Landroid/os/BatteryUsageStatsQuery;

    .line 183
    new-instance v0, Landroid/os/BatteryUsageStatsQuery$1;

    invoke-direct {v0}, Landroid/os/BatteryUsageStatsQuery$1;-><init>()V

    sput-object v0, Landroid/os/BatteryUsageStatsQuery;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/BatteryUsageStatsQuery$Builder;)V
    .locals 3
    .param p1, "builder"    # Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {p1}, Landroid/os/BatteryUsageStatsQuery$Builder;->-$$Nest$fgetmFlags(Landroid/os/BatteryUsageStatsQuery$Builder;)I

    move-result v0

    iput v0, p0, Landroid/os/BatteryUsageStatsQuery;->mFlags:I

    .line 87
    invoke-static {p1}, Landroid/os/BatteryUsageStatsQuery$Builder;->-$$Nest$fgetmUserIds(Landroid/os/BatteryUsageStatsQuery$Builder;)Landroid/util/IntArray;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/os/BatteryUsageStatsQuery$Builder;->-$$Nest$fgetmUserIds(Landroid/os/BatteryUsageStatsQuery$Builder;)Landroid/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    :goto_0
    iput-object v0, p0, Landroid/os/BatteryUsageStatsQuery;->mUserIds:[I

    .line 89
    invoke-static {p1}, Landroid/os/BatteryUsageStatsQuery$Builder;->-$$Nest$fgetmMaxStatsAgeMs(Landroid/os/BatteryUsageStatsQuery$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mMaxStatsAgeMs:J

    .line 90
    invoke-static {p1}, Landroid/os/BatteryUsageStatsQuery$Builder;->-$$Nest$fgetmFromTimestamp(Landroid/os/BatteryUsageStatsQuery$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mFromTimestamp:J

    .line 91
    invoke-static {p1}, Landroid/os/BatteryUsageStatsQuery$Builder;->-$$Nest$fgetmToTimestamp(Landroid/os/BatteryUsageStatsQuery$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mToTimestamp:J

    .line 92
    invoke-static {p1}, Landroid/os/BatteryUsageStatsQuery$Builder;->-$$Nest$fgetmPowerComponents(Landroid/os/BatteryUsageStatsQuery$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryUsageStatsQuery;->mPowerComponents:[I

    .line 93
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/BatteryUsageStatsQuery$Builder;Landroid/os/BatteryUsageStatsQuery-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/BatteryUsageStatsQuery;-><init>(Landroid/os/BatteryUsageStatsQuery$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryUsageStatsQuery;->mFlags:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/BatteryUsageStatsQuery;->mUserIds:[I

    .line 159
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mMaxStatsAgeMs:J

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mFromTimestamp:J

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mToTimestamp:J

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryUsageStatsQuery;->mPowerComponents:[I

    .line 164
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/os/BatteryUsageStatsQuery-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/BatteryUsageStatsQuery;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getFlags()I
    .locals 1

    .line 97
    iget v0, p0, Landroid/os/BatteryUsageStatsQuery;->mFlags:I

    return v0
.end method

.method public blacklist getFromTimestamp()J
    .locals 2

    .line 144
    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mFromTimestamp:J

    return-wide v0
.end method

.method public blacklist getMaxStatsAge()J
    .locals 2

    .line 136
    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mMaxStatsAgeMs:J

    return-wide v0
.end method

.method public blacklist getPowerComponents()[I
    .locals 1

    .line 128
    iget-object v0, p0, Landroid/os/BatteryUsageStatsQuery;->mPowerComponents:[I

    return-object v0
.end method

.method public blacklist getToTimestamp()J
    .locals 2

    .line 153
    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mToTimestamp:J

    return-wide v0
.end method

.method public blacklist getUserIds()[I
    .locals 1

    .line 108
    iget-object v0, p0, Landroid/os/BatteryUsageStatsQuery;->mUserIds:[I

    return-object v0
.end method

.method public blacklist isProcessStateDataNeeded()Z
    .locals 1

    .line 120
    iget v0, p0, Landroid/os/BatteryUsageStatsQuery;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist shouldForceUsePowerProfileModel()Z
    .locals 2

    .line 116
    iget v0, p0, Landroid/os/BatteryUsageStatsQuery;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 168
    iget v0, p0, Landroid/os/BatteryUsageStatsQuery;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-object v0, p0, Landroid/os/BatteryUsageStatsQuery;->mUserIds:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget-object v0, p0, Landroid/os/BatteryUsageStatsQuery;->mUserIds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 171
    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mMaxStatsAgeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 172
    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mFromTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 173
    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery;->mToTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 174
    iget-object v0, p0, Landroid/os/BatteryUsageStatsQuery;->mPowerComponents:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 175
    return-void
.end method
