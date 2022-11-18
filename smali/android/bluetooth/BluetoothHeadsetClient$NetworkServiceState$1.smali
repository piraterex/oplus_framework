.class Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState$1;
.super Ljava/lang/Object;
.source "BluetoothHeadsetClient.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 1852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;
    .locals 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1854
    new-instance v6, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1855
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v3, :cond_1

    move v8, v3

    goto :goto_1

    :cond_1
    move v8, v2

    :goto_1
    move-object v0, v6

    move v2, v4

    move-object v3, v5

    move v4, v7

    move v5, v8

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;-><init>(Landroid/bluetooth/BluetoothDevice;ZLjava/lang/String;IZ)V

    .line 1854
    return-object v6
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1852
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;
    .locals 1
    .param p1, "size"    # I

    .line 1859
    new-array v0, p1, [Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1852
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState$1;->newArray(I)[Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;

    move-result-object p1

    return-object p1
.end method
