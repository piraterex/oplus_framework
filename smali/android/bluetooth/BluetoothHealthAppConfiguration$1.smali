.class Landroid/bluetooth/BluetoothHealthAppConfiguration$1;
.super Ljava/lang/Object;
.source "BluetoothHealthAppConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHealthAppConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/BluetoothHealthAppConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 104
    new-instance v0, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothHealthAppConfiguration;-><init>()V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 101
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHealthAppConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .locals 1
    .param p1, "size"    # I

    .line 109
    new-array v0, p1, [Landroid/bluetooth/BluetoothHealthAppConfiguration;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 101
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHealthAppConfiguration$1;->newArray(I)[Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object p1

    return-object p1
.end method
