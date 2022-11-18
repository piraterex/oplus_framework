.class public Landroid/location/Country;
.super Ljava/lang/Object;
.source "Country.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o COUNTRY_SOURCE_LOCALE:I = 0x3

.field public static final greylist-max-o COUNTRY_SOURCE_LOCATION:I = 0x1

.field public static final greylist-max-o COUNTRY_SOURCE_NETWORK:I = 0x0

.field public static final greylist-max-o COUNTRY_SOURCE_SIM:I = 0x2

.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/Country;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mCountryIso:Ljava/lang/String;

.field private greylist-max-o mHashCode:I

.field private final greylist-max-o mSource:I

.field private final greylist-max-o mTimestamp:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 140
    new-instance v0, Landroid/location/Country$1;

    invoke-direct {v0}, Landroid/location/Country$1;-><init>()V

    sput-object v0, Landroid/location/Country;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/location/Country;)V
    .locals 2
    .param p1, "country"    # Landroid/location/Country;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iget-object v0, p1, Landroid/location/Country;->mCountryIso:Ljava/lang/String;

    iput-object v0, p0, Landroid/location/Country;->mCountryIso:Ljava/lang/String;

    .line 105
    iget v0, p1, Landroid/location/Country;->mSource:I

    iput v0, p0, Landroid/location/Country;->mSource:I

    .line 106
    iget-wide v0, p1, Landroid/location/Country;->mTimestamp:J

    iput-wide v0, p0, Landroid/location/Country;->mTimestamp:J

    .line 107
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "countryIso"    # Ljava/lang/String;
    .param p2, "source"    # I

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    .line 88
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/location/Country;->mCountryIso:Ljava/lang/String;

    .line 89
    iput p2, p0, Landroid/location/Country;->mSource:I

    .line 90
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/Country;->mTimestamp:J

    .line 91
    return-void

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;IJ)V
    .locals 1
    .param p1, "countryIso"    # Ljava/lang/String;
    .param p2, "source"    # I
    .param p3, "timestamp"    # J

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    .line 98
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/location/Country;->mCountryIso:Ljava/lang/String;

    .line 99
    iput p2, p0, Landroid/location/Country;->mSource:I

    .line 100
    iput-wide p3, p0, Landroid/location/Country;->mTimestamp:J

    .line 101
    return-void

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;IJLandroid/location/Country-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/location/Country;-><init>(Ljava/lang/String;IJ)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 167
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 168
    return v0

    .line 170
    :cond_0
    instance-of v1, p1, Landroid/location/Country;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 171
    move-object v1, p1

    check-cast v1, Landroid/location/Country;

    .line 173
    .local v1, "c":Landroid/location/Country;
    iget-object v3, p0, Landroid/location/Country;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/location/Country;->mSource:I

    invoke-virtual {v1}, Landroid/location/Country;->getSource()I

    move-result v4

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 175
    .end local v1    # "c":Landroid/location/Country;
    :cond_2
    return v2
.end method

.method public greylist-max-o equalsIgnoreSource(Landroid/location/Country;)Z
    .locals 2
    .param p1, "country"    # Landroid/location/Country;

    .line 199
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/location/Country;->mCountryIso:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final greylist getCountryIso()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Landroid/location/Country;->mCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method public final greylist getSource()I
    .locals 1

    .line 129
    iget v0, p0, Landroid/location/Country;->mSource:I

    return v0
.end method

.method public final greylist-max-o getTimestamp()J
    .locals 2

    .line 137
    iget-wide v0, p0, Landroid/location/Country;->mTimestamp:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 180
    iget v0, p0, Landroid/location/Country;->mHashCode:I

    .line 181
    .local v0, "hash":I
    if-nez v0, :cond_0

    .line 182
    const/16 v0, 0x11

    .line 183
    mul-int/lit8 v1, v0, 0xd

    iget-object v2, p0, Landroid/location/Country;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 184
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0xd

    iget v2, p0, Landroid/location/Country;->mSource:I

    add-int/2addr v0, v2

    .line 185
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    iput v0, p0, Landroid/location/Country;->mHashCode:I

    .line 187
    :cond_0
    iget v1, p0, Landroid/location/Country;->mHashCode:I

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Country {ISO="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/location/Country;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/location/Country;->mSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/Country;->mTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 155
    iget-object v0, p0, Landroid/location/Country;->mCountryIso:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget v0, p0, Landroid/location/Country;->mSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget-wide v0, p0, Landroid/location/Country;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 158
    return-void
.end method
