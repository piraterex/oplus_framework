.class public Landroid/net/RssiCurve;
.super Ljava/lang/Object;
.source "RssiCurve.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/RssiCurve;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEFAULT_ACTIVE_NETWORK_RSSI_BOOST:I = 0x19


# instance fields
.field public final whitelist activeNetworkRssiBoost:I

.field public final whitelist bucketWidth:I

.field public final whitelist rssiBuckets:[B

.field public final whitelist start:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 217
    new-instance v0, Landroid/net/RssiCurve$1;

    invoke-direct {v0}, Landroid/net/RssiCurve$1;-><init>()V

    sput-object v0, Landroid/net/RssiCurve;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(II[B)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "bucketWidth"    # I
    .param p3, "rssiBuckets"    # [B

    .line 87
    const/16 v0, 0x19

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/RssiCurve;-><init>(II[BI)V

    .line 88
    return-void
.end method

.method public constructor whitelist <init>(II[BI)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "bucketWidth"    # I
    .param p3, "rssiBuckets"    # [B
    .param p4, "activeNetworkRssiBoost"    # I

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput p1, p0, Landroid/net/RssiCurve;->start:I

    .line 100
    iput p2, p0, Landroid/net/RssiCurve;->bucketWidth:I

    .line 101
    if-eqz p3, :cond_0

    array-length v0, p3

    if-eqz v0, :cond_0

    .line 104
    iput-object p3, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    .line 105
    iput p4, p0, Landroid/net/RssiCurve;->activeNetworkRssiBoost:I

    .line 106
    return-void

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rssiBuckets must be at least one element large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/RssiCurve;->start:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/RssiCurve;->bucketWidth:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 112
    .local v0, "bucketCount":I
    new-array v1, v0, [B

    iput-object v1, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    .line 113
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/net/RssiCurve;->activeNetworkRssiBoost:I

    .line 115
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/RssiCurve-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/RssiCurve;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 178
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 179
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 181
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/net/RssiCurve;

    .line 183
    .local v2, "rssiCurve":Landroid/net/RssiCurve;
    iget v3, p0, Landroid/net/RssiCurve;->start:I

    iget v4, v2, Landroid/net/RssiCurve;->start:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/net/RssiCurve;->bucketWidth:I

    iget v4, v2, Landroid/net/RssiCurve;->bucketWidth:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    iget-object v4, v2, Landroid/net/RssiCurve;->rssiBuckets:[B

    .line 185
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/net/RssiCurve;->activeNetworkRssiBoost:I

    iget v4, v2, Landroid/net/RssiCurve;->activeNetworkRssiBoost:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 183
    :goto_0
    return v0

    .line 179
    .end local v2    # "rssiCurve":Landroid/net/RssiCurve;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 191
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/net/RssiCurve;->start:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/RssiCurve;->bucketWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/RssiCurve;->activeNetworkRssiBoost:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist lookupScore(I)B
    .locals 1
    .param p1, "rssi"    # I

    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/RssiCurve;->lookupScore(IZ)B

    move-result v0

    return v0
.end method

.method public whitelist lookupScore(IZ)B
    .locals 3
    .param p1, "rssi"    # I
    .param p2, "isActiveNetwork"    # Z

    .line 153
    if-eqz p2, :cond_0

    .line 154
    iget v0, p0, Landroid/net/RssiCurve;->activeNetworkRssiBoost:I

    add-int/2addr p1, v0

    .line 157
    :cond_0
    iget v0, p0, Landroid/net/RssiCurve;->start:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/net/RssiCurve;->bucketWidth:I

    div-int/2addr v0, v1

    .line 160
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 161
    const/4 v0, 0x0

    goto :goto_0

    .line 162
    :cond_1
    iget-object v1, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_2

    .line 163
    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .line 166
    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    aget-byte v1, v1, v0

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "RssiCurve[start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/RssiCurve;->start:I

    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 200
    const-string v2, ",bucketWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/RssiCurve;->bucketWidth:I

    .line 201
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 202
    const-string v2, ",activeNetworkRssiBoost="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/RssiCurve;->activeNetworkRssiBoost:I

    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    const-string v1, ",buckets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 207
    aget-byte v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    iget-object v2, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 209
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    .end local v1    # "i":I
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 124
    iget v0, p0, Landroid/net/RssiCurve;->start:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget v0, p0, Landroid/net/RssiCurve;->bucketWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-object v0, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget-object v0, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 128
    iget v0, p0, Landroid/net/RssiCurve;->activeNetworkRssiBoost:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    return-void
.end method
