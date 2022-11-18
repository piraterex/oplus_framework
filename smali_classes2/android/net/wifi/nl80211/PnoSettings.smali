.class public final Landroid/net/wifi/nl80211/PnoSettings;
.super Ljava/lang/Object;
.source "PnoSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/nl80211/PnoSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mIntervalMs:J

.field private blacklist mMin2gRssi:I

.field private blacklist mMin5gRssi:I

.field private blacklist mMin6gRssi:I

.field private blacklist mPnoNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/nl80211/PnoNetwork;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPnoNetworks(Landroid/net/wifi/nl80211/PnoSettings;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mPnoNetworks:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIntervalMs(Landroid/net/wifi/nl80211/PnoSettings;J)V
    .locals 0

    iput-wide p1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mIntervalMs:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMin2gRssi(Landroid/net/wifi/nl80211/PnoSettings;I)V
    .locals 0

    iput p1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin2gRssi:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMin5gRssi(Landroid/net/wifi/nl80211/PnoSettings;I)V
    .locals 0

    iput p1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin5gRssi:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMin6gRssi(Landroid/net/wifi/nl80211/PnoSettings;I)V
    .locals 0

    iput p1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin6gRssi:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPnoNetworks(Landroid/net/wifi/nl80211/PnoSettings;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mPnoNetworks:Ljava/util/List;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 188
    new-instance v0, Landroid/net/wifi/nl80211/PnoSettings$1;

    invoke-direct {v0}, Landroid/net/wifi/nl80211/PnoSettings$1;-><init>()V

    sput-object v0, Landroid/net/wifi/nl80211/PnoSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "rhs"    # Ljava/lang/Object;

    .line 147
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 148
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/nl80211/PnoSettings;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 149
    return v2

    .line 151
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/nl80211/PnoSettings;

    .line 152
    .local v1, "settings":Landroid/net/wifi/nl80211/PnoSettings;
    if-nez v1, :cond_2

    .line 153
    return v2

    .line 155
    :cond_2
    iget-wide v3, p0, Landroid/net/wifi/nl80211/PnoSettings;->mIntervalMs:J

    iget-wide v5, v1, Landroid/net/wifi/nl80211/PnoSettings;->mIntervalMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget v3, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin2gRssi:I

    iget v4, v1, Landroid/net/wifi/nl80211/PnoSettings;->mMin2gRssi:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin5gRssi:I

    iget v4, v1, Landroid/net/wifi/nl80211/PnoSettings;->mMin5gRssi:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin6gRssi:I

    iget v4, v1, Landroid/net/wifi/nl80211/PnoSettings;->mMin6gRssi:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Landroid/net/wifi/nl80211/PnoSettings;->mPnoNetworks:Ljava/util/List;

    iget-object v4, v1, Landroid/net/wifi/nl80211/PnoSettings;->mPnoNetworks:Ljava/util/List;

    .line 159
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    .line 155
    :goto_0
    return v0
.end method

.method public whitelist getIntervalMillis()J
    .locals 2

    .line 52
    iget-wide v0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mIntervalMs:J

    return-wide v0
.end method

.method public whitelist getMin2gRssiDbm()I
    .locals 1

    .line 71
    iget v0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin2gRssi:I

    return v0
.end method

.method public whitelist getMin5gRssiDbm()I
    .locals 1

    .line 91
    iget v0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin5gRssi:I

    return v0
.end method

.method public whitelist getMin6gRssiDbm()I
    .locals 1

    .line 111
    iget v0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin6gRssi:I

    return v0
.end method

.method public whitelist getPnoNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/nl80211/PnoNetwork;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mPnoNetworks:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 165
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mIntervalMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin2gRssi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin5gRssi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin6gRssi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mPnoNetworks:Ljava/util/List;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist setIntervalMillis(J)V
    .locals 0
    .param p1, "intervalMillis"    # J

    .line 61
    iput-wide p1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mIntervalMs:J

    .line 62
    return-void
.end method

.method public whitelist setMin2gRssiDbm(I)V
    .locals 0
    .param p1, "min2gRssiDbm"    # I

    .line 81
    iput p1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin2gRssi:I

    .line 82
    return-void
.end method

.method public whitelist setMin5gRssiDbm(I)V
    .locals 0
    .param p1, "min5gRssiDbm"    # I

    .line 101
    iput p1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin5gRssi:I

    .line 102
    return-void
.end method

.method public whitelist setMin6gRssiDbm(I)V
    .locals 0
    .param p1, "min6gRssiDbm"    # I

    .line 121
    iput p1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin6gRssi:I

    .line 122
    return-void
.end method

.method public whitelist setPnoNetworks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/nl80211/PnoNetwork;",
            ">;)V"
        }
    .end annotation

    .line 141
    .local p1, "pnoNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/nl80211/PnoNetwork;>;"
    iput-object p1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mPnoNetworks:Ljava/util/List;

    .line 142
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 180
    iget-wide v0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mIntervalMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 181
    iget v0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin2gRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget v0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin5gRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget v0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin6gRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget-object v0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mPnoNetworks:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 185
    return-void
.end method
