.class Landroid/hardware/usb/UsbAccessory$2;
.super Ljava/lang/Object;
.source "UsbAccessory.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/UsbAccessory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/usb/UsbAccessory;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/UsbAccessory;
    .locals 14
    .param p1, "in"    # Landroid/os/Parcel;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 224
    .local v7, "manufacturer":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 225
    .local v8, "model":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 226
    .local v9, "description":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 227
    .local v10, "version":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 228
    .local v11, "uri":Ljava/lang/String;
    nop

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 228
    invoke-static {v0}, Landroid/hardware/usb/IUsbSerialReader$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbSerialReader;

    move-result-object v12

    .line 231
    .local v12, "serialNumberReader":Landroid/hardware/usb/IUsbSerialReader;
    new-instance v13, Landroid/hardware/usb/UsbAccessory;

    move-object v0, v13

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Landroid/hardware/usb/UsbAccessory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/usb/IUsbSerialReader;)V

    return-object v13
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 221
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbAccessory$2;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/UsbAccessory;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/usb/UsbAccessory;
    .locals 1
    .param p1, "size"    # I

    .line 236
    new-array v0, p1, [Landroid/hardware/usb/UsbAccessory;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 221
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbAccessory$2;->newArray(I)[Landroid/hardware/usb/UsbAccessory;

    move-result-object p1

    return-object p1
.end method
