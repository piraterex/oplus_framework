.class Landroid/bluetooth/BluetoothHidDeviceAppQosSettings$1;
.super Ljava/lang/Object;
.source "BluetoothHidDeviceAppQosSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 107
    new-instance v7, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;-><init>(IIIIII)V

    .line 107
    return-object v7
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .locals 1
    .param p1, "size"    # I

    .line 118
    new-array v0, p1, [Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings$1;->newArray(I)[Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

    move-result-object p1

    return-object p1
.end method
