.class public final Landroid/bluetooth/BluetoothClass;
.super Ljava/lang/Object;
.source "BluetoothClass.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothClass$Device;,
        Landroid/bluetooth/BluetoothClass$Service;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothClass;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist ERROR:I = -0x1000000

.field public static final whitelist PROFILE_A2DP:I = 0x1

.field public static final whitelist PROFILE_A2DP_SINK:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROFILE_HEADSET:I = 0x0

.field public static final whitelist PROFILE_HID:I = 0x3

.field public static final whitelist PROFILE_NAP:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROFILE_OPP:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROFILE_PANU:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final blacklist mClass:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 98
    new-instance v0, Landroid/bluetooth/BluetoothClass$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothClass$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothClass;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-p <init>(I)V
    .locals 0
    .param p1, "classInt"    # I

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    .line 73
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist doesClassMatch(I)Z
    .locals 4
    .param p1, "profile"    # I

    .line 356
    const/high16 v0, 0x40000

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 357
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    return v2

    .line 363
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 370
    return v1

    .line 368
    :sswitch_0
    return v2

    .line 372
    :cond_1
    const/4 v3, 0x6

    if-ne p1, v3, :cond_3

    .line 373
    const/high16 v0, 0x80000

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 374
    return v2

    .line 379
    :cond_2
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 385
    return v1

    .line 383
    :sswitch_1
    return v2

    .line 387
    :cond_3
    if-nez p1, :cond_5

    .line 390
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 391
    return v2

    .line 394
    :cond_4
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_2

    .line 400
    return v1

    .line 398
    :sswitch_2
    return v2

    .line 402
    :cond_5
    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    .line 403
    const/high16 v0, 0x100000

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 404
    return v2

    .line 407
    :cond_6
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_3

    .line 423
    return v1

    .line 421
    :sswitch_3
    return v2

    .line 425
    :cond_7
    const/4 v0, 0x3

    if-ne p1, v0, :cond_9

    .line 426
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v0

    const/16 v3, 0x500

    if-ne v0, v3, :cond_8

    move v1, v2

    :cond_8
    return v1

    .line 427
    :cond_9
    const/4 v0, 0x4

    if-eq p1, v0, :cond_b

    const/4 v0, 0x5

    if-ne p1, v0, :cond_a

    goto :goto_0

    .line 434
    :cond_a
    return v1

    .line 429
    :cond_b
    :goto_0
    const/high16 v0, 0x20000

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 430
    return v2

    .line 432
    :cond_c
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v0

    const/16 v3, 0x300

    if-ne v0, v3, :cond_d

    move v1, v2

    :cond_d
    return v1

    :sswitch_data_0
    .sparse-switch
        0x414 -> :sswitch_0
        0x418 -> :sswitch_0
        0x420 -> :sswitch_0
        0x428 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x424 -> :sswitch_1
        0x428 -> :sswitch_1
        0x42c -> :sswitch_1
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x404 -> :sswitch_2
        0x408 -> :sswitch_2
        0x420 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x100 -> :sswitch_3
        0x104 -> :sswitch_3
        0x108 -> :sswitch_3
        0x10c -> :sswitch_3
        0x110 -> :sswitch_3
        0x114 -> :sswitch_3
        0x118 -> :sswitch_3
        0x200 -> :sswitch_3
        0x204 -> :sswitch_3
        0x208 -> :sswitch_3
        0x20c -> :sswitch_3
        0x210 -> :sswitch_3
        0x214 -> :sswitch_3
    .end sparse-switch
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 77
    instance-of v0, p1, Landroid/bluetooth/BluetoothClass;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 78
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    move-object v2, p1

    check-cast v2, Landroid/bluetooth/BluetoothClass;

    iget v2, v2, Landroid/bluetooth/BluetoothClass;->mClass:I

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 80
    :cond_1
    return v1
.end method

.method public blacklist getClassOfDevice()I
    .locals 1

    .line 295
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    return v0
.end method

.method public blacklist getClassOfDeviceBytes()[B
    .locals 3

    .line 315
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 316
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    .line 317
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 321
    .local v0, "bytes":[B
    array-length v1, v0

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    return-object v1
.end method

.method public whitelist getDeviceClass()I
    .locals 1

    .line 279
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    and-int/lit16 v0, v0, 0x1ffc

    return v0
.end method

.method public whitelist getMajorDeviceClass()I
    .locals 1

    .line 266
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    and-int/lit16 v0, v0, 0x1f00

    return v0
.end method

.method public whitelist hasService(I)Z
    .locals 2
    .param p1, "service"    # I

    .line 150
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    const v1, 0xffe000

    and-int/2addr v0, v1

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 85
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 90
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 111
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    return-void
.end method
