.class Landroid/bluetooth/BluetoothLeAudioContentMetadata$1;
.super Ljava/lang/Object;
.source "BluetoothLeAudioContentMetadata.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeAudioContentMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/BluetoothLeAudioContentMetadata;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothLeAudioContentMetadata;
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "programInfo":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "language":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 139
    .local v2, "rawMetadataLength":I
    new-array v3, v2, [B

    .line 140
    .local v3, "rawMetadata":[B
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    .line 141
    new-instance v4, Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v1, v3, v5}, Landroid/bluetooth/BluetoothLeAudioContentMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;[BLandroid/bluetooth/BluetoothLeAudioContentMetadata-IA;)V

    return-object v4
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 133
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothLeAudioContentMetadata$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/bluetooth/BluetoothLeAudioContentMetadata;
    .locals 1
    .param p1, "size"    # I

    .line 145
    new-array v0, p1, [Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 133
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothLeAudioContentMetadata$1;->newArray(I)[Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    move-result-object p1

    return-object p1
.end method
