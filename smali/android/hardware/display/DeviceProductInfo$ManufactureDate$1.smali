.class Landroid/hardware/display/DeviceProductInfo$ManufactureDate$1;
.super Ljava/lang/Object;
.source "DeviceProductInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DeviceProductInfo$ManufactureDate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/display/DeviceProductInfo$ManufactureDate;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/DeviceProductInfo$ManufactureDate;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 286
    new-instance v0, Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    invoke-direct {v0, p1}, Landroid/hardware/display/DeviceProductInfo$ManufactureDate;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 283
    invoke-virtual {p0, p1}, Landroid/hardware/display/DeviceProductInfo$ManufactureDate$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/display/DeviceProductInfo$ManufactureDate;
    .locals 1
    .param p1, "size"    # I

    .line 291
    new-array v0, p1, [Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 283
    invoke-virtual {p0, p1}, Landroid/hardware/display/DeviceProductInfo$ManufactureDate$1;->newArray(I)[Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    move-result-object p1

    return-object p1
.end method
