.class Landroid/bluetooth/BluetoothHeadsetClientCall$1;
.super Ljava/lang/Object;
.source "BluetoothHeadsetClientCall.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHeadsetClientCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/BluetoothHeadsetClientCall;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothHeadsetClientCall;
    .locals 12
    .param p1, "in"    # Landroid/os/Parcel;

    .line 295
    new-instance v9, Landroid/bluetooth/BluetoothHeadsetClientCall;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_0

    move v8, v7

    goto :goto_0

    :cond_0
    move v8, v6

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v7, :cond_1

    move v10, v7

    goto :goto_1

    :cond_1
    move v10, v6

    .line 298
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v7, :cond_2

    move v11, v7

    goto :goto_2

    :cond_2
    move v11, v6

    :goto_2
    move-object v0, v9

    move v6, v8

    move v7, v10

    move v8, v11

    invoke-direct/range {v0 .. v8}, Landroid/bluetooth/BluetoothHeadsetClientCall;-><init>(Landroid/bluetooth/BluetoothDevice;ILjava/util/UUID;ILjava/lang/String;ZZZ)V

    .line 295
    return-object v9
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 292
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClientCall$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/bluetooth/BluetoothHeadsetClientCall;
    .locals 1
    .param p1, "size"    # I

    .line 303
    new-array v0, p1, [Landroid/bluetooth/BluetoothHeadsetClientCall;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 292
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClientCall$1;->newArray(I)[Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object p1

    return-object p1
.end method
