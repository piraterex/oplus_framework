.class Landroid/net/lowpan/LowpanChannelInfo$1;
.super Ljava/lang/Object;
.source "LowpanChannelInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/LowpanChannelInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/lowpan/LowpanChannelInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/lowpan/LowpanChannelInfo;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 200
    new-instance v0, Landroid/net/lowpan/LowpanChannelInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/lowpan/LowpanChannelInfo;-><init>(Landroid/net/lowpan/LowpanChannelInfo-IA;)V

    .line 202
    .local v0, "info":Landroid/net/lowpan/LowpanChannelInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanChannelInfo;->-$$Nest$fputmIndex(Landroid/net/lowpan/LowpanChannelInfo;I)V

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanChannelInfo;->-$$Nest$fputmName(Landroid/net/lowpan/LowpanChannelInfo;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanChannelInfo;->-$$Nest$fputmSpectrumCenterFrequency(Landroid/net/lowpan/LowpanChannelInfo;F)V

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanChannelInfo;->-$$Nest$fputmSpectrumBandwidth(Landroid/net/lowpan/LowpanChannelInfo;F)V

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanChannelInfo;->-$$Nest$fputmMaxTransmitPower(Landroid/net/lowpan/LowpanChannelInfo;I)V

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanChannelInfo;->-$$Nest$fputmIsMaskedByRegulatoryDomain(Landroid/net/lowpan/LowpanChannelInfo;Z)V

    .line 209
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 197
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanChannelInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/lowpan/LowpanChannelInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/lowpan/LowpanChannelInfo;
    .locals 1
    .param p1, "size"    # I

    .line 213
    new-array v0, p1, [Landroid/net/lowpan/LowpanChannelInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 197
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanChannelInfo$1;->newArray(I)[Landroid/net/lowpan/LowpanChannelInfo;

    move-result-object p1

    return-object p1
.end method
