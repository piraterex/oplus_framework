.class Landroid/telephony/SmsCbEtwsInfo$1;
.super Ljava/lang/Object;
.source "SmsCbEtwsInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SmsCbEtwsInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/SmsCbEtwsInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SmsCbEtwsInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 257
    new-instance v0, Landroid/telephony/SmsCbEtwsInfo;

    invoke-direct {v0, p1}, Landroid/telephony/SmsCbEtwsInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 254
    invoke-virtual {p0, p1}, Landroid/telephony/SmsCbEtwsInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SmsCbEtwsInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telephony/SmsCbEtwsInfo;
    .locals 1
    .param p1, "size"    # I

    .line 262
    new-array v0, p1, [Landroid/telephony/SmsCbEtwsInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 254
    invoke-virtual {p0, p1}, Landroid/telephony/SmsCbEtwsInfo$1;->newArray(I)[Landroid/telephony/SmsCbEtwsInfo;

    move-result-object p1

    return-object p1
.end method
