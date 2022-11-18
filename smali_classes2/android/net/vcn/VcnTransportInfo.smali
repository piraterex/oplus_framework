.class public Landroid/net/vcn/VcnTransportInfo;
.super Ljava/lang/Object;
.source "VcnTransportInfo.java"

# interfaces
.implements Landroid/net/TransportInfo;
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/vcn/VcnTransportInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mSubId:I

.field private final blacklist mWifiInfo:Landroid/net/wifi/WifiInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 145
    new-instance v0, Landroid/net/vcn/VcnTransportInfo$1;

    invoke-direct {v0}, Landroid/net/vcn/VcnTransportInfo$1;-><init>()V

    sput-object v0, Landroid/net/vcn/VcnTransportInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 1
    .param p1, "subId"    # I

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/net/vcn/VcnTransportInfo;-><init>(Landroid/net/wifi/WifiInfo;I)V

    .line 59
    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/wifi/WifiInfo;)V
    .locals 1
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;

    .line 54
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Landroid/net/vcn/VcnTransportInfo;-><init>(Landroid/net/wifi/WifiInfo;I)V

    .line 55
    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/wifi/WifiInfo;I)V
    .locals 0
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p2, "subId"    # I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroid/net/vcn/VcnTransportInfo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 63
    iput p2, p0, Landroid/net/vcn/VcnTransportInfo;->mSubId:I

    .line 64
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/WifiInfo;ILandroid/net/vcn/VcnTransportInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/net/vcn/VcnTransportInfo;-><init>(Landroid/net/wifi/WifiInfo;I)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 98
    instance-of v0, p1, Landroid/net/vcn/VcnTransportInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 99
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/net/vcn/VcnTransportInfo;

    .line 100
    .local v0, "that":Landroid/net/vcn/VcnTransportInfo;
    iget-object v2, p0, Landroid/net/vcn/VcnTransportInfo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v3, v0, Landroid/net/vcn/VcnTransportInfo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/net/vcn/VcnTransportInfo;->mSubId:I

    iget v3, v0, Landroid/net/vcn/VcnTransportInfo;->mSubId:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public blacklist getApplicableRedactions()J
    .locals 4

    .line 122
    const-wide/16 v0, 0x4

    .line 125
    .local v0, "redactions":J
    iget-object v2, p0, Landroid/net/vcn/VcnTransportInfo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_0

    .line 126
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getApplicableRedactions()J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 129
    :cond_0
    return-wide v0
.end method

.method public blacklist getSubId()I
    .locals 1

    .line 88
    iget v0, p0, Landroid/net/vcn/VcnTransportInfo;->mSubId:I

    return v0
.end method

.method public blacklist getWifiInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .line 75
    iget-object v0, p0, Landroid/net/vcn/VcnTransportInfo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 93
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/vcn/VcnTransportInfo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/vcn/VcnTransportInfo;->mSubId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist makeCopy(J)Landroid/net/TransportInfo;
    .locals 4
    .param p1, "redactions"    # J

    .line 112
    const-wide/16 v0, 0x4

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Landroid/net/vcn/VcnTransportInfo;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/net/vcn/VcnTransportInfo;-><init>(Landroid/net/wifi/WifiInfo;I)V

    return-object v0

    .line 116
    :cond_0
    new-instance v0, Landroid/net/vcn/VcnTransportInfo;

    .line 117
    iget-object v2, p0, Landroid/net/vcn/VcnTransportInfo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, p1, p2}, Landroid/net/wifi/WifiInfo;->makeCopy(J)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    :goto_0
    iget v2, p0, Landroid/net/vcn/VcnTransportInfo;->mSubId:I

    invoke-direct {v0, v1, v2}, Landroid/net/vcn/VcnTransportInfo;-><init>(Landroid/net/wifi/WifiInfo;I)V

    .line 116
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VcnTransportInfo { mWifiInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/vcn/VcnTransportInfo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSubId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/vcn/VcnTransportInfo;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 135
    iget v0, p0, Landroid/net/vcn/VcnTransportInfo;->mSubId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget-object v0, p0, Landroid/net/vcn/VcnTransportInfo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 137
    return-void
.end method
