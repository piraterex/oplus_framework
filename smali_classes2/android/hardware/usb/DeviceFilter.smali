.class public Landroid/hardware/usb/DeviceFilter;
.super Ljava/lang/Object;
.source "DeviceFilter.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String;


# instance fields
.field public final greylist-max-o mClass:I

.field public final greylist-max-o mManufacturerName:Ljava/lang/String;

.field public final greylist-max-o mProductId:I

.field public final greylist-max-o mProductName:Ljava/lang/String;

.field public final greylist-max-o mProtocol:I

.field public final greylist-max-o mSerialNumber:Ljava/lang/String;

.field public final greylist-max-o mSubclass:I

.field public final greylist-max-o mVendorId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 42
    const-class v0, Landroid/hardware/usb/DeviceFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/usb/DeviceFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "vid"    # I
    .param p2, "pid"    # I
    .param p3, "clasz"    # I
    .param p4, "subclass"    # I
    .param p5, "protocol"    # I
    .param p6, "manufacturer"    # Ljava/lang/String;
    .param p7, "product"    # Ljava/lang/String;
    .param p8, "serialnum"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    .line 64
    iput p2, p0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    .line 65
    iput p3, p0, Landroid/hardware/usb/DeviceFilter;->mClass:I

    .line 66
    iput p4, p0, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    .line 67
    iput p5, p0, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    .line 68
    iput-object p6, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    .line 69
    iput-object p7, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    .line 70
    iput-object p8, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/usb/DeviceFilter;)V
    .locals 1
    .param p1, "filter"    # Landroid/hardware/usb/DeviceFilter;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iget v0, p1, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    iput v0, p0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    .line 86
    iget v0, p1, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    iput v0, p0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    .line 87
    iget v0, p1, Landroid/hardware/usb/DeviceFilter;->mClass:I

    iput v0, p0, Landroid/hardware/usb/DeviceFilter;->mClass:I

    .line 88
    iget v0, p1, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    iput v0, p0, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    .line 89
    iget v0, p1, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    iput v0, p0, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    .line 90
    iget-object v0, p1, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    .line 91
    iget-object v0, p1, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    .line 92
    iget-object v0, p1, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 1
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    iput v0, p0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    .line 75
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v0

    iput v0, p0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    .line 76
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v0

    iput v0, p0, Landroid/hardware/usb/DeviceFilter;->mClass:I

    .line 77
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v0

    iput v0, p0, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    .line 78
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v0

    iput v0, p0, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    .line 79
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    .line 82
    return-void
.end method

.method private greylist-max-o matches(III)Z
    .locals 2
    .param p1, "clasz"    # I
    .param p2, "subclass"    # I
    .param p3, "protocol"    # I

    .line 180
    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mClass:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-ne p1, v0, :cond_2

    :cond_0
    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    if-eq v0, v1, :cond_1

    if-ne p2, v0, :cond_2

    :cond_1
    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    if-eq v0, v1, :cond_3

    if-ne p3, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static greylist-max-o read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/DeviceFilter;
    .locals 21
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    move-object/from16 v1, p0

    const/4 v0, -0x1

    .line 98
    .local v0, "vendorId":I
    const/4 v2, -0x1

    .line 99
    .local v2, "productId":I
    const/4 v3, -0x1

    .line 100
    .local v3, "deviceClass":I
    const/4 v4, -0x1

    .line 101
    .local v4, "deviceSubclass":I
    const/4 v5, -0x1

    .line 102
    .local v5, "deviceProtocol":I
    const/4 v6, 0x0

    .line 103
    .local v6, "manufacturerName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 104
    .local v7, "productName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 106
    .local v8, "serialNumber":Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v9

    .line 107
    .local v9, "count":I
    const/4 v10, 0x0

    move v11, v10

    move-object v10, v8

    move-object v8, v7

    move-object v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    .end local v0    # "vendorId":I
    .local v2, "vendorId":I
    .local v3, "productId":I
    .local v4, "deviceClass":I
    .local v5, "deviceSubclass":I
    .local v6, "deviceProtocol":I
    .local v7, "manufacturerName":Ljava/lang/String;
    .local v8, "productName":Ljava/lang/String;
    .local v10, "serialNumber":Ljava/lang/String;
    .local v11, "i":I
    :goto_0
    if-ge v11, v9, :cond_a

    .line 108
    invoke-interface {v1, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v12

    .line 109
    .local v12, "name":Ljava/lang/String;
    invoke-interface {v1, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "value":Ljava/lang/String;
    const-string v13, "manufacturer-name"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 112
    move-object v7, v0

    move/from16 v20, v9

    goto/16 :goto_2

    .line 113
    :cond_0
    const-string v13, "product-name"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 114
    move-object v8, v0

    move/from16 v20, v9

    goto/16 :goto_2

    .line 115
    :cond_1
    const-string v13, "serial-number"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 116
    move-object v10, v0

    move/from16 v20, v9

    goto/16 :goto_2

    .line 119
    :cond_2
    const/16 v13, 0xa

    .line 120
    .local v13, "radix":I
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x2

    if-le v14, v15, :cond_4

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x30

    if-ne v14, v15, :cond_4

    .line 121
    const/4 v14, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v14, 0x78

    if-eq v15, v14, :cond_3

    const/4 v14, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x58

    if-ne v14, v15, :cond_4

    .line 123
    :cond_3
    const/16 v13, 0x10

    .line 124
    const/4 v14, 0x2

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move v14, v13

    move-object v13, v0

    goto :goto_1

    .line 127
    :cond_4
    move v14, v13

    move-object v13, v0

    .end local v0    # "value":Ljava/lang/String;
    .local v13, "value":Ljava/lang/String;
    .local v14, "radix":I
    :goto_1
    :try_start_0
    invoke-static {v13, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .local v0, "intValue":I
    nop

    .line 132
    const-string/jumbo v15, "vendor-id"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 133
    move v2, v0

    move/from16 v20, v9

    goto :goto_2

    .line 134
    :cond_5
    const-string v15, "product-id"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 135
    move v3, v0

    move/from16 v20, v9

    goto :goto_2

    .line 136
    :cond_6
    const-string v15, "class"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 137
    move v4, v0

    move/from16 v20, v9

    goto :goto_2

    .line 138
    :cond_7
    const-string v15, "subclass"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 139
    move v5, v0

    move/from16 v20, v9

    goto :goto_2

    .line 140
    :cond_8
    const-string v15, "protocol"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 141
    move v6, v0

    move/from16 v20, v9

    goto :goto_2

    .line 140
    :cond_9
    move/from16 v20, v9

    goto :goto_2

    .line 128
    .end local v0    # "intValue":I
    :catch_0
    move-exception v0

    move-object v15, v0

    move-object v0, v15

    .line 129
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v15, Landroid/hardware/usb/DeviceFilter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v9

    .end local v9    # "count":I
    .local v20, "count":I
    const-string v9, "invalid number for field "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    nop

    .line 107
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    .end local v14    # "radix":I
    :goto_2
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p0

    move/from16 v9, v20

    goto/16 :goto_0

    .line 145
    .end local v11    # "i":I
    .end local v20    # "count":I
    .restart local v9    # "count":I
    :cond_a
    new-instance v0, Landroid/hardware/usb/DeviceFilter;

    move-object v11, v0

    move v12, v2

    move v13, v3

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Landroid/hardware/usb/DeviceFilter;-><init>(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public greylist-max-o contains(Landroid/hardware/usb/DeviceFilter;)Z
    .locals 4
    .param p1, "device"    # Landroid/hardware/usb/DeviceFilter;

    .line 223
    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget v3, p1, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    if-eq v3, v0, :cond_0

    return v2

    .line 224
    :cond_0
    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    if-eq v0, v1, :cond_1

    iget v1, p1, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    if-eq v1, v0, :cond_1

    return v2

    .line 225
    :cond_1
    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p1, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 227
    return v2

    .line 229
    :cond_2
    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v1, p1, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 230
    return v2

    .line 232
    :cond_3
    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v1, p1, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    .line 233
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 234
    return v2

    .line 238
    :cond_4
    iget v0, p1, Landroid/hardware/usb/DeviceFilter;->mClass:I

    iget v1, p1, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    iget v2, p1, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/usb/DeviceFilter;->matches(III)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .locals 6
    .param p1, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J

    .line 334
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 336
    .local v0, "token":J
    iget v2, p0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    const-string/jumbo v3, "vendor_id"

    const-wide v4, 0x10500000001L

    invoke-virtual {p1, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 337
    iget v2, p0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    const-string v3, "product_id"

    const-wide v4, 0x10500000002L

    invoke-virtual {p1, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 338
    iget v2, p0, Landroid/hardware/usb/DeviceFilter;->mClass:I

    const-string v3, "class"

    const-wide v4, 0x10500000003L

    invoke-virtual {p1, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 339
    iget v2, p0, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    const-string v3, "subclass"

    const-wide v4, 0x10500000004L

    invoke-virtual {p1, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 340
    iget v2, p0, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    const-string v3, "protocol"

    const-wide v4, 0x10500000005L

    invoke-virtual {p1, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 341
    iget-object v2, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    const-string v3, "manufacturer_name"

    const-wide v4, 0x10900000006L

    invoke-virtual {p1, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 342
    iget-object v2, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    const-string v3, "product_name"

    const-wide v4, 0x10900000007L

    invoke-virtual {p1, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 343
    iget-object v2, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    const-string v3, "serial_number"

    const-wide v4, 0x10900000008L

    invoke-virtual {p1, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 345
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 346
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 244
    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1d

    iget v3, p0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    if-eq v3, v1, :cond_1d

    iget v4, p0, Landroid/hardware/usb/DeviceFilter;->mClass:I

    if-eq v4, v1, :cond_1d

    iget v5, p0, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    if-eq v5, v1, :cond_1d

    iget v6, p0, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    if-ne v6, v1, :cond_0

    goto/16 :goto_2

    .line 248
    :cond_0
    instance-of v1, p1, Landroid/hardware/usb/DeviceFilter;

    const/4 v7, 0x1

    if-eqz v1, :cond_e

    .line 249
    move-object v1, p1

    check-cast v1, Landroid/hardware/usb/DeviceFilter;

    .line 251
    .local v1, "filter":Landroid/hardware/usb/DeviceFilter;
    iget v8, v1, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    if-ne v8, v0, :cond_d

    iget v0, v1, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    if-ne v0, v3, :cond_d

    iget v0, v1, Landroid/hardware/usb/DeviceFilter;->mClass:I

    if-ne v0, v4, :cond_d

    iget v0, v1, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    if-ne v0, v5, :cond_d

    iget v0, v1, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    if-eq v0, v6, :cond_1

    goto :goto_0

    .line 258
    :cond_1
    iget-object v0, v1, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v3, :cond_7

    :cond_2
    if-nez v0, :cond_3

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-nez v3, :cond_7

    :cond_3
    iget-object v3, v1, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v4, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v4, :cond_7

    :cond_4
    if-nez v3, :cond_5

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-nez v3, :cond_7

    :cond_5
    iget-object v3, v1, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v4, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v4, :cond_7

    :cond_6
    if-nez v3, :cond_8

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 270
    :cond_7
    return v2

    .line 272
    :cond_8
    if-eqz v0, :cond_9

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 274
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_9
    iget-object v0, v1, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 277
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    iget-object v0, v1, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 280
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 281
    :cond_b
    return v2

    .line 283
    :cond_c
    return v7

    .line 256
    :cond_d
    :goto_0
    return v2

    .line 285
    .end local v1    # "filter":Landroid/hardware/usb/DeviceFilter;
    :cond_e
    instance-of v0, p1, Landroid/hardware/usb/UsbDevice;

    if-eqz v0, :cond_1c

    .line 286
    move-object v0, p1

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 287
    .local v0, "device":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v1

    iget v3, p0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    if-ne v1, v3, :cond_1b

    .line 288
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v1

    iget v3, p0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    if-ne v1, v3, :cond_1b

    .line 289
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v1

    iget v3, p0, Landroid/hardware/usb/DeviceFilter;->mClass:I

    if-ne v1, v3, :cond_1b

    .line 290
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v1

    iget v3, p0, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    if-ne v1, v3, :cond_1b

    .line 291
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v1

    iget v3, p0, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    if-eq v1, v3, :cond_f

    goto/16 :goto_1

    .line 294
    :cond_f
    iget-object v1, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    :cond_10
    iget-object v1, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-nez v1, :cond_11

    .line 295
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_15

    :cond_11
    iget-object v1, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 296
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    :cond_12
    iget-object v1, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-nez v1, :cond_13

    .line 297
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_15

    :cond_13
    iget-object v1, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 298
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    :cond_14
    iget-object v1, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-nez v1, :cond_16

    .line 299
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 300
    :cond_15
    return v2

    .line 302
    :cond_16
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    .line 303
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 304
    :cond_17
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    .line 305
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 306
    :cond_18
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    .line 307
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 308
    :cond_19
    return v2

    .line 310
    :cond_1a
    return v7

    .line 292
    :cond_1b
    :goto_1
    return v2

    .line 312
    .end local v0    # "device":Landroid/hardware/usb/UsbDevice;
    :cond_1c
    return v2

    .line 246
    :cond_1d
    :goto_2
    return v2
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 317
    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/hardware/usb/DeviceFilter;->mClass:I

    shl-int/lit8 v1, v1, 0x10

    iget v2, p0, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget v2, p0, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public greylist-max-o matches(Landroid/hardware/usb/UsbDevice;)Z
    .locals 8
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .line 186
    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    iget v3, p0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    if-eq v0, v3, :cond_0

    return v2

    .line 187
    :cond_0
    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v0

    iget v1, p0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    if-eq v0, v1, :cond_1

    return v2

    .line 188
    :cond_1
    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    return v2

    .line 189
    :cond_2
    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    return v2

    .line 190
    :cond_3
    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    return v2

    .line 191
    :cond_4
    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return v2

    .line 193
    :cond_5
    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    return v2

    .line 195
    :cond_6
    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return v2

    .line 199
    :cond_7
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v1

    .line 200
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v3

    .line 199
    invoke-direct {p0, v0, v1, v3}, Landroid/hardware/usb/DeviceFilter;->matches(III)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 200
    return v1

    .line 203
    :cond_8
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v0

    .line 204
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_a

    .line 205
    invoke-virtual {p1, v3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v4

    .line 206
    .local v4, "intf":Landroid/hardware/usb/UsbInterface;
    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v5

    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v6

    .line 207
    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v7

    .line 206
    invoke-direct {p0, v5, v6, v7}, Landroid/hardware/usb/DeviceFilter;->matches(III)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 207
    return v1

    .line 204
    .end local v4    # "intf":Landroid/hardware/usb/UsbInterface;
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 210
    .end local v3    # "i":I
    :cond_a
    return v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceFilter[mVendorId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mProductId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/DeviceFilter;->mClass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mSubclass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mProtocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mManufacturerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mProductName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mSerialNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o write(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    const/4 v0, 0x0

    const-string/jumbo v1, "usb-device"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 152
    iget v2, p0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 153
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "vendor-id"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 155
    :cond_0
    iget v2, p0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    if-eq v2, v3, :cond_1

    .line 156
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "product-id"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 158
    :cond_1
    iget v2, p0, Landroid/hardware/usb/DeviceFilter;->mClass:I

    if-eq v2, v3, :cond_2

    .line 159
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "class"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 161
    :cond_2
    iget v2, p0, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    if-eq v2, v3, :cond_3

    .line 162
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "subclass"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 164
    :cond_3
    iget v2, p0, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    if-eq v2, v3, :cond_4

    .line 165
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "protocol"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 167
    :cond_4
    iget-object v2, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 168
    const-string v3, "manufacturer-name"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 170
    :cond_5
    iget-object v2, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 171
    const-string v3, "product-name"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 173
    :cond_6
    iget-object v2, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 174
    const-string v3, "serial-number"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 176
    :cond_7
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 177
    return-void
.end method
