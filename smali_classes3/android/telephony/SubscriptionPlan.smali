.class public final Landroid/telephony/SubscriptionPlan;
.super Ljava/lang/Object;
.source "SubscriptionPlan.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SubscriptionPlan$Builder;,
        Landroid/telephony/SubscriptionPlan$LimitBehavior;
    }
.end annotation


# static fields
.field public static final whitelist BYTES_UNKNOWN:J = -0x1L

.field public static final whitelist BYTES_UNLIMITED:J = 0x7fffffffffffffffL

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/SubscriptionPlan;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist LIMIT_BEHAVIOR_BILLED:I = 0x1

.field public static final whitelist LIMIT_BEHAVIOR_DISABLED:I = 0x0

.field public static final whitelist LIMIT_BEHAVIOR_THROTTLED:I = 0x2

.field public static final whitelist LIMIT_BEHAVIOR_UNKNOWN:I = -0x1

.field public static final whitelist TIME_UNKNOWN:J = -0x1L


# instance fields
.field private final greylist-max-o cycleRule:Landroid/util/RecurrenceRule;

.field private greylist-max-o dataLimitBehavior:I

.field private greylist-max-o dataLimitBytes:J

.field private greylist-max-o dataUsageBytes:J

.field private greylist-max-o dataUsageTime:J

.field private blacklist networkTypes:[I

.field private greylist-max-o summary:Ljava/lang/CharSequence;

.field private greylist-max-o title:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputdataLimitBehavior(Landroid/telephony/SubscriptionPlan;I)V
    .locals 0

    iput p1, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBehavior:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputdataLimitBytes(Landroid/telephony/SubscriptionPlan;J)V
    .locals 0

    iput-wide p1, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBytes:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputdataUsageBytes(Landroid/telephony/SubscriptionPlan;J)V
    .locals 0

    iput-wide p1, p0, Landroid/telephony/SubscriptionPlan;->dataUsageBytes:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputdataUsageTime(Landroid/telephony/SubscriptionPlan;J)V
    .locals 0

    iput-wide p1, p0, Landroid/telephony/SubscriptionPlan;->dataUsageTime:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputnetworkTypes(Landroid/telephony/SubscriptionPlan;[I)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/SubscriptionPlan;->networkTypes:[I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputsummary(Landroid/telephony/SubscriptionPlan;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/SubscriptionPlan;->summary:Ljava/lang/CharSequence;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputtitle(Landroid/telephony/SubscriptionPlan;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/SubscriptionPlan;->title:Ljava/lang/CharSequence;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 165
    new-instance v0, Landroid/telephony/SubscriptionPlan$1;

    invoke-direct {v0}, Landroid/telephony/SubscriptionPlan$1;-><init>()V

    sput-object v0, Landroid/telephony/SubscriptionPlan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBytes:J

    .line 90
    const/4 v2, -0x1

    iput v2, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBehavior:I

    .line 91
    iput-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataUsageBytes:J

    .line 92
    iput-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataUsageTime:J

    .line 102
    const-class v0, Landroid/util/RecurrenceRule;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/RecurrenceRule;

    iput-object v0, p0, Landroid/telephony/SubscriptionPlan;->cycleRule:Landroid/util/RecurrenceRule;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionPlan;->title:Ljava/lang/CharSequence;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionPlan;->summary:Ljava/lang/CharSequence;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBytes:J

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBehavior:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataUsageBytes:J

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataUsageTime:J

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionPlan;->networkTypes:[I

    .line 110
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/SubscriptionPlan-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/SubscriptionPlan;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/util/RecurrenceRule;)V
    .locals 3
    .param p1, "cycleRule"    # Landroid/util/RecurrenceRule;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBytes:J

    .line 90
    const/4 v2, -0x1

    iput v2, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBehavior:I

    .line 91
    iput-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataUsageBytes:J

    .line 92
    iput-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataUsageTime:J

    .line 96
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/RecurrenceRule;

    iput-object v0, p0, Landroid/telephony/SubscriptionPlan;->cycleRule:Landroid/util/RecurrenceRule;

    .line 97
    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    move-result-object v0

    .line 98
    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    move-result-object v1

    array-length v1, v1

    .line 97
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionPlan;->networkTypes:[I

    .line 99
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/util/RecurrenceRule;Landroid/telephony/SubscriptionPlan-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/SubscriptionPlan;-><init>(Landroid/util/RecurrenceRule;)V

    return-void
.end method


# virtual methods
.method public whitelist cycleIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/util/Range<",
            "Ljava/time/ZonedDateTime;",
            ">;>;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan;->cycleRule:Landroid/util/RecurrenceRule;

    invoke-virtual {v0}, Landroid/util/RecurrenceRule;->cycleIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 151
    instance-of v0, p1, Landroid/telephony/SubscriptionPlan;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 152
    move-object v0, p1

    check-cast v0, Landroid/telephony/SubscriptionPlan;

    .line 153
    .local v0, "other":Landroid/telephony/SubscriptionPlan;
    iget-object v2, p0, Landroid/telephony/SubscriptionPlan;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v3, v0, Landroid/telephony/SubscriptionPlan;->cycleRule:Landroid/util/RecurrenceRule;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telephony/SubscriptionPlan;->title:Ljava/lang/CharSequence;

    iget-object v3, v0, Landroid/telephony/SubscriptionPlan;->title:Ljava/lang/CharSequence;

    .line 154
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telephony/SubscriptionPlan;->summary:Ljava/lang/CharSequence;

    iget-object v3, v0, Landroid/telephony/SubscriptionPlan;->summary:Ljava/lang/CharSequence;

    .line 155
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBytes:J

    iget-wide v4, v0, Landroid/telephony/SubscriptionPlan;->dataLimitBytes:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBehavior:I

    iget v3, v0, Landroid/telephony/SubscriptionPlan;->dataLimitBehavior:I

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Landroid/telephony/SubscriptionPlan;->dataUsageBytes:J

    iget-wide v4, v0, Landroid/telephony/SubscriptionPlan;->dataUsageBytes:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Landroid/telephony/SubscriptionPlan;->dataUsageTime:J

    iget-wide v4, v0, Landroid/telephony/SubscriptionPlan;->dataUsageTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/telephony/SubscriptionPlan;->networkTypes:[I

    iget-object v3, v0, Landroid/telephony/SubscriptionPlan;->networkTypes:[I

    .line 160
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 153
    :goto_0
    return v1

    .line 162
    .end local v0    # "other":Landroid/telephony/SubscriptionPlan;
    :cond_1
    return v1
.end method

.method public greylist-max-o getCycleRule()Landroid/util/RecurrenceRule;
    .locals 1

    .line 179
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan;->cycleRule:Landroid/util/RecurrenceRule;

    return-object v0
.end method

.method public whitelist getDataLimitBehavior()I
    .locals 1

    .line 205
    iget v0, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBehavior:I

    return v0
.end method

.method public whitelist getDataLimitBytes()J
    .locals 2

    .line 197
    iget-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBytes:J

    return-wide v0
.end method

.method public whitelist getDataUsageBytes()J
    .locals 2

    .line 213
    iget-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataUsageBytes:J

    return-wide v0
.end method

.method public whitelist getDataUsageTime()J
    .locals 2

    .line 220
    iget-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataUsageTime:J

    return-wide v0
.end method

.method public whitelist getNetworkTypes()[I
    .locals 2

    .line 228
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan;->networkTypes:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 189
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan;->summary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 184
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 145
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/telephony/SubscriptionPlan;->cycleRule:Landroid/util/RecurrenceRule;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/SubscriptionPlan;->title:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/SubscriptionPlan;->summary:Ljava/lang/CharSequence;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBytes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBehavior:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/telephony/SubscriptionPlan;->dataUsageBytes:J

    .line 146
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/telephony/SubscriptionPlan;->dataUsageTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/SubscriptionPlan;->networkTypes:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 145
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SubscriptionPlan{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    const-string v1, "cycleRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SubscriptionPlan;->cycleRule:Landroid/util/RecurrenceRule;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    const-string v1, " title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SubscriptionPlan;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 134
    const-string v1, " summary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SubscriptionPlan;->summary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 135
    const-string v1, " dataLimitBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    const-string v1, " dataLimitBehavior="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBehavior:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 137
    const-string v1, " dataUsageBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/SubscriptionPlan;->dataUsageBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 138
    const-string v1, " dataUsageTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/SubscriptionPlan;->dataUsageTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 139
    const-string v1, " networkTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SubscriptionPlan;->networkTypes:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 140
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 119
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan;->cycleRule:Landroid/util/RecurrenceRule;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 120
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan;->summary:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 122
    iget-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 123
    iget v0, p0, Landroid/telephony/SubscriptionPlan;->dataLimitBehavior:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataUsageBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 125
    iget-wide v0, p0, Landroid/telephony/SubscriptionPlan;->dataUsageTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 126
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan;->networkTypes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 127
    return-void
.end method
