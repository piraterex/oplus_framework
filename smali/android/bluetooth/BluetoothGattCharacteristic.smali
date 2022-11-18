.class public Landroid/bluetooth/BluetoothGattCharacteristic;
.super Ljava/lang/Object;
.source "BluetoothGattCharacteristic.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothGattCharacteristic$WriteType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FORMAT_FLOAT:I = 0x34

.field public static final whitelist FORMAT_SFLOAT:I = 0x32

.field public static final whitelist FORMAT_SINT16:I = 0x22

.field public static final whitelist FORMAT_SINT32:I = 0x24

.field public static final whitelist FORMAT_SINT8:I = 0x21

.field public static final whitelist FORMAT_UINT16:I = 0x12

.field public static final whitelist FORMAT_UINT32:I = 0x14

.field public static final whitelist FORMAT_UINT8:I = 0x11

.field public static final whitelist PERMISSION_READ:I = 0x1

.field public static final whitelist PERMISSION_READ_ENCRYPTED:I = 0x2

.field public static final whitelist PERMISSION_READ_ENCRYPTED_MITM:I = 0x4

.field public static final whitelist PERMISSION_WRITE:I = 0x10

.field public static final whitelist PERMISSION_WRITE_ENCRYPTED:I = 0x20

.field public static final whitelist PERMISSION_WRITE_ENCRYPTED_MITM:I = 0x40

.field public static final whitelist PERMISSION_WRITE_SIGNED:I = 0x80

.field public static final whitelist PERMISSION_WRITE_SIGNED_MITM:I = 0x100

.field public static final whitelist PROPERTY_BROADCAST:I = 0x1

.field public static final whitelist PROPERTY_EXTENDED_PROPS:I = 0x80

.field public static final whitelist PROPERTY_INDICATE:I = 0x20

.field public static final whitelist PROPERTY_NOTIFY:I = 0x10

.field public static final whitelist PROPERTY_READ:I = 0x2

.field public static final whitelist PROPERTY_SIGNED_WRITE:I = 0x40

.field public static final whitelist PROPERTY_WRITE:I = 0x8

.field public static final whitelist PROPERTY_WRITE_NO_RESPONSE:I = 0x4

.field public static final whitelist WRITE_TYPE_DEFAULT:I = 0x2

.field public static final whitelist WRITE_TYPE_NO_RESPONSE:I = 0x1

.field public static final whitelist WRITE_TYPE_SIGNED:I = 0x4


# instance fields
.field protected whitelist mDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field protected greylist mInstance:I

.field protected blacklist mKeySize:I

.field protected blacklist mPermissions:I

.field protected blacklist mProperties:I

.field protected greylist mService:Landroid/bluetooth/BluetoothGattService;

.field protected blacklist mUuid:Ljava/util/UUID;

.field protected blacklist mValue:[B

.field protected blacklist mWriteType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 316
    new-instance v0, Landroid/bluetooth/BluetoothGattCharacteristic$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothGattCharacteristic$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothGattCharacteristic;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;III)V
    .locals 1
    .param p1, "service"    # Landroid/bluetooth/BluetoothGattService;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "instanceId"    # I
    .param p4, "properties"    # I
    .param p5, "permissions"    # I

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/16 v0, 0x10

    iput v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mKeySize:I

    .line 269
    invoke-direct/range {p0 .. p5}, Landroid/bluetooth/BluetoothGattCharacteristic;->initCharacteristic(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;III)V

    .line 270
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/16 v0, 0x10

    iput v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mKeySize:I

    .line 328
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mUuid:Ljava/util/UUID;

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mInstance:I

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mProperties:I

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mPermissions:I

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mKeySize:I

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mWriteType:I

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mDescriptors:Ljava/util/List;

    .line 337
    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 338
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 339
    .local v0, "descs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothGattDescriptor;>;"
    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattDescriptor;

    .line 341
    .local v2, "desc":Landroid/bluetooth/BluetoothGattDescriptor;
    invoke-virtual {v2, p0}, Landroid/bluetooth/BluetoothGattDescriptor;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 342
    iget-object v3, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mDescriptors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    .end local v2    # "desc":Landroid/bluetooth/BluetoothGattDescriptor;
    goto :goto_0

    .line 345
    :cond_0
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothGattCharacteristic-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/UUID;II)V
    .locals 7
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "properties"    # I
    .param p3, "permissions"    # I

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/16 v0, 0x10

    iput v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mKeySize:I

    .line 258
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/bluetooth/BluetoothGattCharacteristic;->initCharacteristic(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;III)V

    .line 259
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/UUID;III)V
    .locals 7
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "instanceId"    # I
    .param p3, "properties"    # I
    .param p4, "permissions"    # I

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/16 v0, 0x10

    iput v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mKeySize:I

    .line 279
    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/bluetooth/BluetoothGattCharacteristic;->initCharacteristic(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;III)V

    .line 280
    return-void
.end method

.method private blacklist bytesToFloat(BB)F
    .locals 8
    .param p1, "b0"    # B
    .param p2, "b1"    # B

    .line 782
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v0

    .line 783
    invoke-direct {p0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v1

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 782
    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedToSigned(II)I

    move-result v0

    .line 784
    .local v0, "mantissa":I
    invoke-direct {p0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v1

    const/4 v2, 0x4

    shr-int/2addr v1, v2

    invoke-direct {p0, v1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedToSigned(II)I

    move-result v1

    .line 785
    .local v1, "exponent":I
    int-to-double v2, v0

    int-to-double v4, v1

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    return v2
.end method

.method private blacklist bytesToFloat(BBBB)F
    .locals 7
    .param p1, "b0"    # B
    .param p2, "b1"    # B
    .param p3, "b2"    # B
    .param p4, "b3"    # B

    .line 792
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v0

    .line 793
    invoke-direct {p0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 794
    invoke-direct {p0, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    .line 792
    const/16 v1, 0x18

    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedToSigned(II)I

    move-result v0

    .line 795
    .local v0, "mantissa":I
    int-to-double v1, v0

    int-to-double v3, p4

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-float v1, v1

    return v1
.end method

.method private blacklist getTypeLen(I)I
    .locals 1
    .param p1, "formatType"    # I

    .line 753
    and-int/lit8 v0, p1, 0xf

    return v0
.end method

.method private blacklist initCharacteristic(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;III)V
    .locals 1
    .param p1, "service"    # Landroid/bluetooth/BluetoothGattService;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "instanceId"    # I
    .param p4, "properties"    # I
    .param p5, "permissions"    # I

    .line 285
    iput-object p2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mUuid:Ljava/util/UUID;

    .line 286
    iput p3, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mInstance:I

    .line 287
    iput p4, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mProperties:I

    .line 288
    iput p5, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mPermissions:I

    .line 289
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mService:Landroid/bluetooth/BluetoothGattService;

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mDescriptors:Ljava/util/List;

    .line 293
    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mProperties:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 294
    const/4 v0, 0x1

    iput v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mWriteType:I

    goto :goto_0

    .line 296
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mWriteType:I

    .line 298
    :goto_0
    return-void
.end method

.method private blacklist intToSignedBits(II)I
    .locals 3
    .param p1, "i"    # I
    .param p2, "size"    # I

    .line 813
    if-gez p1, :cond_0

    .line 814
    add-int/lit8 v0, p2, -0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    add-int/lit8 v2, p2, -0x1

    shl-int v2, v1, v2

    sub-int/2addr v2, v1

    and-int v1, p1, v2

    add-int p1, v0, v1

    .line 816
    :cond_0
    return p1
.end method

.method private blacklist unsignedByteToInt(B)I
    .locals 1
    .param p1, "b"    # B

    .line 760
    and-int/lit16 v0, p1, 0xff

    return v0
.end method

.method private blacklist unsignedBytesToInt(BB)I
    .locals 2
    .param p1, "b0"    # B
    .param p2, "b1"    # B

    .line 767
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v0

    invoke-direct {p0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    return v0
.end method

.method private blacklist unsignedBytesToInt(BBBB)I
    .locals 2
    .param p1, "b0"    # B
    .param p2, "b1"    # B
    .param p3, "b2"    # B
    .param p4, "b3"    # B

    .line 774
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v0

    invoke-direct {p0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 775
    invoke-direct {p0, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    invoke-direct {p0, p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    .line 774
    return v0
.end method

.method private blacklist unsignedToSigned(II)I
    .locals 3
    .param p1, "unsigned"    # I
    .param p2, "size"    # I

    .line 803
    add-int/lit8 v0, p2, -0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 804
    add-int/lit8 v0, p2, -0x1

    shl-int v0, v1, v0

    add-int/lit8 v2, p2, -0x1

    shl-int v2, v1, v2

    sub-int/2addr v2, v1

    and-int v1, p1, v2

    sub-int/2addr v0, v1

    mul-int/lit8 p1, v0, -0x1

    .line 806
    :cond_0
    return p1
.end method


# virtual methods
.method public whitelist addDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .locals 1
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;

    .line 363
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mDescriptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    invoke-virtual {p1, p0}, Landroid/bluetooth/BluetoothGattDescriptor;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 365
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;
    .locals 3
    .param p1, "uuid"    # Ljava/util/UUID;

    .line 502
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mDescriptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattDescriptor;

    .line 503
    .local v1, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 504
    return-object v1

    .line 506
    .end local v1    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    :cond_0
    goto :goto_0

    .line 507
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist getDescriptor(Ljava/util/UUID;I)Landroid/bluetooth/BluetoothGattDescriptor;
    .locals 3
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "instanceId"    # I

    .line 374
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mDescriptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattDescriptor;

    .line 375
    .local v1, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 376
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattDescriptor;->getInstanceId()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 377
    return-object v1

    .line 379
    .end local v1    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    :cond_0
    goto :goto_0

    .line 380
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDescriptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattDescriptor;",
            ">;"
        }
    .end annotation

    .line 492
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mDescriptors:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getFloatValue(II)Ljava/lang/Float;
    .locals 5
    .param p1, "formatType"    # I
    .param p2, "offset"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 586
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getTypeLen(I)I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-le v0, v2, :cond_0

    return-object v3

    .line 588
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 597
    :pswitch_0
    return-object v3

    .line 593
    :pswitch_1
    aget-byte v0, v1, p2

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x3

    aget-byte v1, v1, v4

    invoke-direct {p0, v0, v2, v3, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->bytesToFloat(BBBB)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 590
    :pswitch_2
    aget-byte v0, v1, p2

    add-int/lit8 v2, p2, 0x1

    aget-byte v1, v1, v2

    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->bytesToFloat(BB)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist getInstanceId()I
    .locals 1

    .line 420
    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mInstance:I

    return v0
.end method

.method public whitelist getIntValue(II)Ljava/lang/Integer;
    .locals 5
    .param p1, "formatType"    # I
    .param p2, "offset"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 545
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getTypeLen(I)I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-le v0, v2, :cond_0

    return-object v3

    .line 547
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 569
    return-object v3

    .line 565
    :sswitch_0
    aget-byte v0, v1, p2

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x3

    aget-byte v1, v1, v4

    invoke-direct {p0, v0, v2, v3, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedBytesToInt(BBBB)I

    move-result v0

    const/16 v1, 0x20

    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedToSigned(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 561
    :sswitch_1
    aget-byte v0, v1, p2

    add-int/lit8 v2, p2, 0x1

    aget-byte v1, v1, v2

    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedBytesToInt(BB)I

    move-result v0

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedToSigned(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 558
    :sswitch_2
    aget-byte v0, v1, p2

    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v0

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedToSigned(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 555
    :sswitch_3
    aget-byte v0, v1, p2

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x3

    aget-byte v1, v1, v4

    invoke-direct {p0, v0, v2, v3, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedBytesToInt(BBBB)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 552
    :sswitch_4
    aget-byte v0, v1, p2

    add-int/lit8 v2, p2, 0x1

    aget-byte v1, v1, v2

    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedBytesToInt(BB)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 549
    :sswitch_5
    aget-byte v0, v1, p2

    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_5
        0x12 -> :sswitch_4
        0x14 -> :sswitch_3
        0x21 -> :sswitch_2
        0x22 -> :sswitch_1
        0x24 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist getKeySize()I
    .locals 1

    .line 353
    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mKeySize:I

    return v0
.end method

.method public whitelist getPermissions()I
    .locals 1

    .line 450
    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mPermissions:I

    return v0
.end method

.method public whitelist getProperties()I
    .locals 1

    .line 441
    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mProperties:I

    return v0
.end method

.method public whitelist getService()Landroid/bluetooth/BluetoothGattService;
    .locals 1

    .line 389
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mService:Landroid/bluetooth/BluetoothGattService;

    return-object v0
.end method

.method public whitelist getStringValue(I)Ljava/lang/String;
    .locals 4
    .param p1, "offset"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 612
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    if-eqz v0, :cond_2

    array-length v1, v0

    if-le p1, v1, :cond_0

    goto :goto_1

    .line 613
    :cond_0
    array-length v0, v0

    sub-int/2addr v0, p1

    new-array v0, v0, [B

    .line 614
    .local v0, "strBytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    array-length v3, v2

    sub-int/2addr v3, p1

    if-eq v1, v3, :cond_1

    add-int v3, p1, v1

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 615
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1

    .line 612
    .end local v0    # "strBytes":[B
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getUuid()Ljava/util/UUID;
    .locals 1

    .line 408
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public whitelist getValue()[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 524
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    return-object v0
.end method

.method public whitelist getWriteType()I
    .locals 1

    .line 459
    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mWriteType:I

    return v0
.end method

.method public blacklist setInstanceId(I)V
    .locals 0
    .param p1, "instanceId"    # I

    .line 429
    iput p1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mInstance:I

    .line 430
    return-void
.end method

.method public greylist setKeySize(I)V
    .locals 0
    .param p1, "keySize"    # I

    .line 483
    iput p1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mKeySize:I

    .line 484
    return-void
.end method

.method greylist setService(Landroid/bluetooth/BluetoothGattService;)V
    .locals 0
    .param p1, "service"    # Landroid/bluetooth/BluetoothGattService;

    .line 399
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mService:Landroid/bluetooth/BluetoothGattService;

    .line 400
    return-void
.end method

.method public whitelist setValue(III)Z
    .locals 4
    .param p1, "value"    # I
    .param p2, "formatType"    # I
    .param p3, "offset"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 653
    invoke-direct {p0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getTypeLen(I)I

    move-result v0

    add-int/2addr v0, p3

    .line 654
    .local v0, "len":I
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    if-nez v1, :cond_0

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    .line 655
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    return v2

    .line 657
    :cond_1
    sparse-switch p2, :sswitch_data_0

    .line 684
    return v2

    .line 674
    :sswitch_0
    const/16 v1, 0x20

    invoke-direct {p0, p1, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->intToSignedBits(II)I

    move-result p1

    goto :goto_0

    .line 666
    :sswitch_1
    const/16 v1, 0x10

    invoke-direct {p0, p1, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->intToSignedBits(II)I

    move-result p1

    goto :goto_1

    .line 659
    :sswitch_2
    const/16 v1, 0x8

    invoke-direct {p0, p1, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->intToSignedBits(II)I

    move-result p1

    goto :goto_2

    .line 677
    :goto_0
    :sswitch_3
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v2, p3, 0x1

    .end local p3    # "offset":I
    .local v2, "offset":I
    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, p3

    .line 678
    add-int/lit8 p3, v2, 0x1

    .end local v2    # "offset":I
    .restart local p3    # "offset":I
    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 679
    add-int/lit8 v2, p3, 0x1

    .end local p3    # "offset":I
    .restart local v2    # "offset":I
    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, p3

    .line 680
    shr-int/lit8 p3, p1, 0x18

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    aput-byte p3, v1, v2

    .line 681
    move p3, v2

    goto :goto_3

    .line 669
    .end local v2    # "offset":I
    .restart local p3    # "offset":I
    :goto_1
    :sswitch_4
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v2, p3, 0x1

    .end local p3    # "offset":I
    .restart local v2    # "offset":I
    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, p3

    .line 670
    shr-int/lit8 p3, p1, 0x8

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    aput-byte p3, v1, v2

    .line 671
    move p3, v2

    goto :goto_3

    .line 662
    .end local v2    # "offset":I
    .restart local p3    # "offset":I
    :goto_2
    :sswitch_5
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, p3

    .line 663
    nop

    .line 686
    :goto_3
    const/4 v1, 0x1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_5
        0x12 -> :sswitch_4
        0x14 -> :sswitch_3
        0x21 -> :sswitch_2
        0x22 -> :sswitch_1
        0x24 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist setValue(IIII)Z
    .locals 5
    .param p1, "mantissa"    # I
    .param p2, "exponent"    # I
    .param p3, "formatType"    # I
    .param p4, "offset"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 704
    invoke-direct {p0, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getTypeLen(I)I

    move-result v0

    add-int/2addr v0, p4

    .line 705
    .local v0, "len":I
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    if-nez v1, :cond_0

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    .line 706
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    return v2

    .line 708
    :cond_1
    packed-switch p3, :pswitch_data_0

    .line 727
    :pswitch_0
    return v2

    .line 718
    :pswitch_1
    const/16 v1, 0x18

    invoke-direct {p0, p1, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->intToSignedBits(II)I

    move-result p1

    .line 719
    const/16 v1, 0x8

    invoke-direct {p0, p2, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->intToSignedBits(II)I

    move-result p2

    .line 720
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v2, p4, 0x1

    .end local p4    # "offset":I
    .local v2, "offset":I
    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, p4

    .line 721
    add-int/lit8 p4, v2, 0x1

    .end local v2    # "offset":I
    .restart local p4    # "offset":I
    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 722
    add-int/lit8 v2, p4, 0x1

    .end local p4    # "offset":I
    .restart local v2    # "offset":I
    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, p4

    .line 723
    aget-byte p4, v1, v2

    and-int/lit16 v3, p2, 0xff

    int-to-byte v3, v3

    add-int/2addr p4, v3

    int-to-byte p4, p4

    aput-byte p4, v1, v2

    .line 724
    goto :goto_0

    .line 710
    .end local v2    # "offset":I
    .restart local p4    # "offset":I
    :pswitch_2
    const/16 v1, 0xc

    invoke-direct {p0, p1, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->intToSignedBits(II)I

    move-result p1

    .line 711
    const/4 v1, 0x4

    invoke-direct {p0, p2, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->intToSignedBits(II)I

    move-result p2

    .line 712
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v3, p4, 0x1

    .end local p4    # "offset":I
    .local v3, "offset":I
    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, p4

    .line 713
    shr-int/lit8 p4, p1, 0x8

    and-int/lit8 p4, p4, 0xf

    int-to-byte p4, p4

    aput-byte p4, v2, v3

    .line 714
    and-int/lit8 v4, p2, 0xf

    shl-int/lit8 v1, v4, 0x4

    int-to-byte v1, v1

    add-int/2addr p4, v1

    int-to-byte p4, p4

    aput-byte p4, v2, v3

    .line 715
    move v2, v3

    .line 730
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    :goto_0
    const/4 p4, 0x1

    return p4

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist setValue(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 745
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    .line 746
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist setValue([B)Z
    .locals 1
    .param p1, "value"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 635
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    .line 636
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist setWriteType(I)V
    .locals 0
    .param p1, "writeType"    # I

    .line 473
    iput p1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mWriteType:I

    .line 474
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 307
    new-instance v0, Landroid/os/ParcelUuid;

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mUuid:Ljava/util/UUID;

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 308
    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mInstance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mProperties:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mPermissions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mKeySize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mWriteType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mDescriptors:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 314
    return-void
.end method
