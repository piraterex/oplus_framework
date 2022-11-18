.class Landroid/media/BluetoothProfileConnectionInfo$1;
.super Ljava/lang/Object;
.source "BluetoothProfileConnectionInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/BluetoothProfileConnectionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/BluetoothProfileConnectionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/BluetoothProfileConnectionInfo;
    .locals 7
    .param p1, "source"    # Landroid/os/Parcel;

    .line 55
    new-instance v6, Landroid/media/BluetoothProfileConnectionInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/media/BluetoothProfileConnectionInfo;-><init>(IZIZLandroid/media/BluetoothProfileConnectionInfo-IA;)V

    .line 55
    return-object v6
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Landroid/media/BluetoothProfileConnectionInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/BluetoothProfileConnectionInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/BluetoothProfileConnectionInfo;
    .locals 1
    .param p1, "size"    # I

    .line 61
    new-array v0, p1, [Landroid/media/BluetoothProfileConnectionInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Landroid/media/BluetoothProfileConnectionInfo$1;->newArray(I)[Landroid/media/BluetoothProfileConnectionInfo;

    move-result-object p1

    return-object p1
.end method
