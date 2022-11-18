.class Landroid/telephony/cdma/CdmaSmsCbProgramData$1;
.super Ljava/lang/Object;
.source "CdmaSmsCbProgramData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/cdma/CdmaSmsCbProgramData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/cdma/CdmaSmsCbProgramData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telephony/cdma/CdmaSmsCbProgramData;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 272
    new-instance v0, Landroid/telephony/cdma/CdmaSmsCbProgramData;

    invoke-direct {v0, p1}, Landroid/telephony/cdma/CdmaSmsCbProgramData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 269
    invoke-virtual {p0, p1}, Landroid/telephony/cdma/CdmaSmsCbProgramData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/cdma/CdmaSmsCbProgramData;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telephony/cdma/CdmaSmsCbProgramData;
    .locals 1
    .param p1, "size"    # I

    .line 277
    new-array v0, p1, [Landroid/telephony/cdma/CdmaSmsCbProgramData;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 269
    invoke-virtual {p0, p1}, Landroid/telephony/cdma/CdmaSmsCbProgramData$1;->newArray(I)[Landroid/telephony/cdma/CdmaSmsCbProgramData;

    move-result-object p1

    return-object p1
.end method
