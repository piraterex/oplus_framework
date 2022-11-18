.class Landroid/bluetooth/BluetoothCodecStatus$1;
.super Ljava/lang/Object;
.source "BluetoothCodecStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothCodecStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/BluetoothCodecStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothCodecStatus;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 175
    new-instance v0, Landroid/bluetooth/BluetoothCodecStatus;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/bluetooth/BluetoothCodecStatus;-><init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothCodecStatus-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 173
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothCodecStatus$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/bluetooth/BluetoothCodecStatus;
    .locals 1
    .param p1, "size"    # I

    .line 179
    new-array v0, p1, [Landroid/bluetooth/BluetoothCodecStatus;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 173
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothCodecStatus$1;->newArray(I)[Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object p1

    return-object p1
.end method
