.class public Landroid/bluetooth/BluetoothGattDescriptor;
.super Ljava/lang/Object;
.source "BluetoothGattDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothGattDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DISABLE_NOTIFICATION_VALUE:[B

.field public static final whitelist ENABLE_INDICATION_VALUE:[B

.field public static final whitelist ENABLE_NOTIFICATION_VALUE:[B

.field public static final whitelist PERMISSION_READ:I = 0x1

.field public static final whitelist PERMISSION_READ_ENCRYPTED:I = 0x2

.field public static final whitelist PERMISSION_READ_ENCRYPTED_MITM:I = 0x4

.field public static final whitelist PERMISSION_WRITE:I = 0x10

.field public static final whitelist PERMISSION_WRITE_ENCRYPTED:I = 0x20

.field public static final whitelist PERMISSION_WRITE_ENCRYPTED_MITM:I = 0x40

.field public static final whitelist PERMISSION_WRITE_SIGNED:I = 0x80

.field public static final whitelist PERMISSION_WRITE_SIGNED_MITM:I = 0x100


# instance fields
.field protected greylist mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field protected greylist mInstance:I

.field protected blacklist mPermissions:I

.field protected blacklist mUuid:Ljava/util/UUID;

.field protected blacklist mValue:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 38
    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    .line 43
    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    .line 48
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    .line 178
    new-instance v0, Landroid/bluetooth/BluetoothGattDescriptor$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothGattDescriptor$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_0
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method constructor blacklist <init>(Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/util/UUID;II)V
    .locals 0
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "instance"    # I
    .param p4, "permissions"    # I

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothGattDescriptor;->initDescriptor(Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/util/UUID;II)V

    .line 149
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mUuid:Ljava/util/UUID;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mInstance:I

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mPermissions:I

    .line 193
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothGattDescriptor-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGattDescriptor;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/UUID;I)V
    .locals 2
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "permissions"    # I

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Landroid/bluetooth/BluetoothGattDescriptor;->initDescriptor(Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/util/UUID;II)V

    .line 137
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/UUID;II)V
    .locals 1
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "instance"    # I
    .param p3, "permissions"    # I

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattDescriptor;->initDescriptor(Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/util/UUID;II)V

    .line 156
    return-void
.end method

.method private blacklist initDescriptor(Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/util/UUID;II)V
    .locals 0
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "instance"    # I
    .param p4, "permissions"    # I

    .line 160
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 161
    iput-object p2, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mUuid:Ljava/util/UUID;

    .line 162
    iput p3, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mInstance:I

    .line 163
    iput p4, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mPermissions:I

    .line 164
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1

    .line 201
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method public blacklist getInstanceId()I
    .locals 1

    .line 233
    iget v0, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mInstance:I

    return v0
.end method

.method public whitelist getPermissions()I
    .locals 1

    .line 251
    iget v0, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mPermissions:I

    return v0
.end method

.method public whitelist getUuid()Ljava/util/UUID;
    .locals 1

    .line 220
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public whitelist getValue()[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 268
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mValue:[B

    return-object v0
.end method

.method greylist setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 211
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 212
    return-void
.end method

.method public blacklist setInstanceId(I)V
    .locals 0
    .param p1, "instanceId"    # I

    .line 242
    iput p1, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mInstance:I

    .line 243
    return-void
.end method

.method public whitelist setValue([B)Z
    .locals 1
    .param p1, "value"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 288
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mValue:[B

    .line 289
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 173
    new-instance v0, Landroid/os/ParcelUuid;

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mUuid:Ljava/util/UUID;

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 174
    iget v0, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mInstance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget v0, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mPermissions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    return-void
.end method
