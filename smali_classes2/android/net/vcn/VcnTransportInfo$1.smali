.class Landroid/net/vcn/VcnTransportInfo$1;
.super Ljava/lang/Object;
.source "VcnTransportInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/VcnTransportInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/vcn/VcnTransportInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/vcn/VcnTransportInfo;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 149
    .local v0, "subId":I
    const-class v1, Landroid/net/wifi/WifiInfo;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiInfo;

    .line 154
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 155
    return-object v2

    .line 158
    :cond_0
    new-instance v3, Landroid/net/vcn/VcnTransportInfo;

    invoke-direct {v3, v1, v0, v2}, Landroid/net/vcn/VcnTransportInfo;-><init>(Landroid/net/wifi/WifiInfo;ILandroid/net/vcn/VcnTransportInfo-IA;)V

    return-object v3
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Landroid/net/vcn/VcnTransportInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/vcn/VcnTransportInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/vcn/VcnTransportInfo;
    .locals 1
    .param p1, "size"    # I

    .line 162
    new-array v0, p1, [Landroid/net/vcn/VcnTransportInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Landroid/net/vcn/VcnTransportInfo$1;->newArray(I)[Landroid/net/vcn/VcnTransportInfo;

    move-result-object p1

    return-object p1
.end method
