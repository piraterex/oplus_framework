.class Landroid/hardware/usb/ParcelableUsbPort$1;
.super Ljava/lang/Object;
.source "ParcelableUsbPort.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/ParcelableUsbPort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/usb/ParcelableUsbPort;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/ParcelableUsbPort;
    .locals 13
    .param p1, "in"    # Landroid/os/Parcel;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 97
    .local v7, "id":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 98
    .local v8, "supportedModes":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 99
    .local v9, "supportedContaminantProtectionModes":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 100
    .local v10, "supportsEnableContaminantPresenceProtection":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    .line 102
    .local v11, "supportsEnableContaminantPresenceDetection":Z
    new-instance v12, Landroid/hardware/usb/ParcelableUsbPort;

    const/4 v6, 0x0

    move-object v0, v12

    move-object v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    invoke-direct/range {v0 .. v6}, Landroid/hardware/usb/ParcelableUsbPort;-><init>(Ljava/lang/String;IIZZLandroid/hardware/usb/ParcelableUsbPort-IA;)V

    return-object v12
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Landroid/hardware/usb/ParcelableUsbPort$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/ParcelableUsbPort;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/usb/ParcelableUsbPort;
    .locals 1
    .param p1, "size"    # I

    .line 110
    new-array v0, p1, [Landroid/hardware/usb/ParcelableUsbPort;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Landroid/hardware/usb/ParcelableUsbPort$1;->newArray(I)[Landroid/hardware/usb/ParcelableUsbPort;

    move-result-object p1

    return-object p1
.end method
