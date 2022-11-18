.class Landroid/hardware/usb/UsbDevice$1;
.super Ljava/lang/Object;
.source "UsbDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/UsbDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/usb/UsbDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/UsbDevice;
    .locals 30
    .param p1, "in"    # Landroid/os/Parcel;

    .line 350
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 351
    .local v18, "name":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 352
    .local v19, "vendorId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 353
    .local v20, "productId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 354
    .local v21, "clasz":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 355
    .local v22, "subClass":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 356
    .local v23, "protocol":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 357
    .local v24, "manufacturerName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 358
    .local v25, "productName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 359
    .local v26, "version":Ljava/lang/String;
    nop

    .line 360
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/usb/IUsbSerialReader$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbSerialReader;

    move-result-object v27

    .line 361
    .local v27, "serialNumberReader":Landroid/hardware/usb/IUsbSerialReader;
    const-class v0, Landroid/hardware/usb/UsbConfiguration;

    .line 362
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/hardware/usb/UsbConfiguration;

    .line 361
    move-object/from16 v11, p1

    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v28, v0

    check-cast v28, [Landroid/hardware/usb/UsbConfiguration;

    .line 364
    .local v28, "configurations":[Landroid/hardware/usb/UsbConfiguration;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v12, v2

    goto :goto_0

    :cond_0
    move v12, v1

    .line 365
    .local v12, "hasAudioPlayback":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v13, v2

    goto :goto_1

    :cond_1
    move v13, v1

    .line 366
    .local v13, "hasAudioCapture":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v14, v2

    goto :goto_2

    :cond_2
    move v14, v1

    .line 367
    .local v14, "hasMidi":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_3

    move v15, v2

    goto :goto_3

    :cond_3
    move v15, v1

    .line 368
    .local v15, "hasVideoPlayback":Z
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_4

    move/from16 v16, v2

    goto :goto_4

    :cond_4
    move/from16 v16, v1

    .line 369
    .local v16, "hasVideoCapture":Z
    :goto_4
    new-instance v29, Landroid/hardware/usb/UsbDevice;

    move-object/from16 v0, v29

    const/16 v17, 0x0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    move/from16 v5, v22

    move/from16 v6, v23

    move-object/from16 v7, v24

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    move-object/from16 v10, v28

    move-object/from16 v11, v27

    invoke-direct/range {v0 .. v17}, Landroid/hardware/usb/UsbDevice;-><init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/hardware/usb/UsbConfiguration;Landroid/hardware/usb/IUsbSerialReader;ZZZZZLandroid/hardware/usb/UsbDevice-IA;)V

    .line 374
    .local v0, "device":Landroid/hardware/usb/UsbDevice;
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 348
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbDevice$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/UsbDevice;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/usb/UsbDevice;
    .locals 1
    .param p1, "size"    # I

    .line 378
    new-array v0, p1, [Landroid/hardware/usb/UsbDevice;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 348
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbDevice$1;->newArray(I)[Landroid/hardware/usb/UsbDevice;

    move-result-object p1

    return-object p1
.end method
