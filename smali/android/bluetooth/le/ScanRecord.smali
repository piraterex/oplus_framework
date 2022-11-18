.class public final Landroid/bluetooth/le/ScanRecord;
.super Ljava/lang/Object;
.source "ScanRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/ScanRecord$AdvertisingDataType;
    }
.end annotation


# static fields
.field public static final whitelist DATA_TYPE_3D_INFORMATION_DATA:I = 0x3d

.field public static final whitelist DATA_TYPE_ADVERTISING_INTERVAL:I = 0x1a

.field public static final whitelist DATA_TYPE_ADVERTISING_INTERVAL_LONG:I = 0x2f

.field public static final whitelist DATA_TYPE_APPEARANCE:I = 0x19

.field public static final whitelist DATA_TYPE_BIG_INFO:I = 0x2c

.field public static final whitelist DATA_TYPE_BROADCAST_CODE:I = 0x2d

.field public static final whitelist DATA_TYPE_CHANNEL_MAP_UPDATE_INDICATION:I = 0x28

.field public static final whitelist DATA_TYPE_CLASS_OF_DEVICE:I = 0xd

.field public static final whitelist DATA_TYPE_DEVICE_ID:I = 0x10

.field public static final whitelist DATA_TYPE_FLAGS:I = 0x1

.field public static blacklist DATA_TYPE_GROUP_AD_TYPE:I = 0x0

.field public static final whitelist DATA_TYPE_INDOOR_POSITIONING:I = 0x25

.field public static final whitelist DATA_TYPE_LE_BLUETOOTH_DEVICE_ADDRESS:I = 0x1b

.field public static final whitelist DATA_TYPE_LE_ROLE:I = 0x1c

.field public static final whitelist DATA_TYPE_LE_SECURE_CONNECTIONS_CONFIRMATION_VALUE:I = 0x22

.field public static final whitelist DATA_TYPE_LE_SECURE_CONNECTIONS_RANDOM_VALUE:I = 0x23

.field public static final whitelist DATA_TYPE_LE_SUPPORTED_FEATURES:I = 0x27

.field public static final whitelist DATA_TYPE_LOCAL_NAME_COMPLETE:I = 0x9

.field public static final whitelist DATA_TYPE_LOCAL_NAME_SHORT:I = 0x8

.field public static final whitelist DATA_TYPE_MANUFACTURER_SPECIFIC_DATA:I = 0xff

.field public static final whitelist DATA_TYPE_MESH_BEACON:I = 0x2b

.field public static final whitelist DATA_TYPE_MESH_MESSAGE:I = 0x2a

.field public static final whitelist DATA_TYPE_NONE:I = -0x1

.field public static final whitelist DATA_TYPE_PB_ADV:I = 0x29

.field public static final whitelist DATA_TYPE_PUBLIC_TARGET_ADDRESS:I = 0x17

.field public static final whitelist DATA_TYPE_RANDOM_TARGET_ADDRESS:I = 0x18

.field public static final whitelist DATA_TYPE_RESOLVABLE_SET_IDENTIFIER:I = 0x2e

.field public static final whitelist DATA_TYPE_SECURITY_MANAGER_OUT_OF_BAND_FLAGS:I = 0x11

.field public static final whitelist DATA_TYPE_SERVICE_DATA_128_BIT:I = 0x21

.field public static final whitelist DATA_TYPE_SERVICE_DATA_16_BIT:I = 0x16

.field public static final whitelist DATA_TYPE_SERVICE_DATA_32_BIT:I = 0x20

.field public static final whitelist DATA_TYPE_SERVICE_SOLICITATION_UUIDS_128_BIT:I = 0x15

.field public static final whitelist DATA_TYPE_SERVICE_SOLICITATION_UUIDS_16_BIT:I = 0x14

.field public static final whitelist DATA_TYPE_SERVICE_SOLICITATION_UUIDS_32_BIT:I = 0x1f

.field public static final whitelist DATA_TYPE_SERVICE_UUIDS_128_BIT_COMPLETE:I = 0x7

.field public static final whitelist DATA_TYPE_SERVICE_UUIDS_128_BIT_PARTIAL:I = 0x6

.field public static final whitelist DATA_TYPE_SERVICE_UUIDS_16_BIT_COMPLETE:I = 0x3

.field public static final whitelist DATA_TYPE_SERVICE_UUIDS_16_BIT_PARTIAL:I = 0x2

.field public static final whitelist DATA_TYPE_SERVICE_UUIDS_32_BIT_COMPLETE:I = 0x5

.field public static final whitelist DATA_TYPE_SERVICE_UUIDS_32_BIT_PARTIAL:I = 0x4

.field public static final whitelist DATA_TYPE_SIMPLE_PAIRING_HASH_C:I = 0xe

.field public static final whitelist DATA_TYPE_SIMPLE_PAIRING_HASH_C_256:I = 0x1d

.field public static final whitelist DATA_TYPE_SIMPLE_PAIRING_RANDOMIZER_R:I = 0xf

.field public static final whitelist DATA_TYPE_SIMPLE_PAIRING_RANDOMIZER_R_256:I = 0x1e

.field public static final whitelist DATA_TYPE_SLAVE_CONNECTION_INTERVAL_RANGE:I = 0x12

.field public static final whitelist DATA_TYPE_TRANSPORT_DISCOVERY_DATA:I = 0x26

.field public static final whitelist DATA_TYPE_TX_POWER_LEVEL:I = 0xa

.field public static final whitelist DATA_TYPE_URI:I = 0x24

.field private static final blacklist TAG:Ljava/lang/String; = "ScanRecord"


# instance fields
.field private final blacklist mAdvertiseFlags:I

.field private final blacklist mAdvertisingDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field private final blacklist mBytes:[B

.field private final blacklist mDeviceName:Ljava/lang/String;

.field private final blacklist mGroupIdentifierData:[B

.field private final blacklist mManufacturerSpecificData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation
.end field

.field private final blacklist mServiceData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation
.end field

.field private final blacklist mServiceSolicitationUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mServiceUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTDSData:[B

.field private final blacklist mTxPowerLevel:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 319
    const/4 v0, 0x0

    sput v0, Landroid/bluetooth/le/ScanRecord;->DATA_TYPE_GROUP_AD_TYPE:I

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;Ljava/util/HashMap;[B[B[B)V
    .locals 0
    .param p5, "advertiseFlags"    # I
    .param p6, "txPowerLevel"    # I
    .param p7, "localName"    # Ljava/lang/String;
    .param p9, "tdsData"    # [B
    .param p10, "groupIdentifierData"    # [B
    .param p11, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Landroid/util/SparseArray<",
            "[B>;",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;II",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[B>;[B[B[B)V"
        }
    .end annotation

    .line 493
    .local p1, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .local p2, "serviceSolicitationUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .local p3, "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .local p4, "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .local p8, "advertisingDataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 494
    iput-object p2, p0, Landroid/bluetooth/le/ScanRecord;->mServiceSolicitationUuids:Ljava/util/List;

    .line 495
    iput-object p1, p0, Landroid/bluetooth/le/ScanRecord;->mServiceUuids:Ljava/util/List;

    .line 496
    iput-object p3, p0, Landroid/bluetooth/le/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    .line 497
    iput-object p4, p0, Landroid/bluetooth/le/ScanRecord;->mServiceData:Ljava/util/Map;

    .line 498
    iput-object p7, p0, Landroid/bluetooth/le/ScanRecord;->mDeviceName:Ljava/lang/String;

    .line 499
    iput p5, p0, Landroid/bluetooth/le/ScanRecord;->mAdvertiseFlags:I

    .line 500
    iput p6, p0, Landroid/bluetooth/le/ScanRecord;->mTxPowerLevel:I

    .line 501
    iput-object p8, p0, Landroid/bluetooth/le/ScanRecord;->mAdvertisingDataMap:Ljava/util/HashMap;

    .line 502
    iput-object p9, p0, Landroid/bluetooth/le/ScanRecord;->mTDSData:[B

    .line 503
    iput-object p10, p0, Landroid/bluetooth/le/ScanRecord;->mGroupIdentifierData:[B

    .line 504
    iput-object p11, p0, Landroid/bluetooth/le/ScanRecord;->mBytes:[B

    .line 505
    return-void
.end method

.method public static greylist cloneAndUpateRecord(Landroid/bluetooth/le/ScanRecord;Landroid/util/SparseArray;Ljava/util/Map;)Landroid/bluetooth/le/ScanRecord;
    .locals 13
    .param p0, "record"    # Landroid/bluetooth/le/ScanRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/le/ScanRecord;",
            "Landroid/util/SparseArray<",
            "[B>;",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;)",
            "Landroid/bluetooth/le/ScanRecord;"
        }
    .end annotation

    .line 520
    .local p1, "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .local p2, "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    if-nez p0, :cond_0

    .line 521
    const/4 v0, 0x0

    return-object v0

    .line 523
    :cond_0
    new-instance v0, Landroid/bluetooth/le/ScanRecord;

    iget-object v2, p0, Landroid/bluetooth/le/ScanRecord;->mServiceUuids:Ljava/util/List;

    iget-object v3, p0, Landroid/bluetooth/le/ScanRecord;->mServiceSolicitationUuids:Ljava/util/List;

    iget v6, p0, Landroid/bluetooth/le/ScanRecord;->mAdvertiseFlags:I

    iget v7, p0, Landroid/bluetooth/le/ScanRecord;->mTxPowerLevel:I

    iget-object v8, p0, Landroid/bluetooth/le/ScanRecord;->mDeviceName:Ljava/lang/String;

    iget-object v9, p0, Landroid/bluetooth/le/ScanRecord;->mAdvertisingDataMap:Ljava/util/HashMap;

    iget-object v10, p0, Landroid/bluetooth/le/ScanRecord;->mTDSData:[B

    iget-object v11, p0, Landroid/bluetooth/le/ScanRecord;->mGroupIdentifierData:[B

    iget-object v12, p0, Landroid/bluetooth/le/ScanRecord;->mBytes:[B

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v12}, Landroid/bluetooth/le/ScanRecord;-><init>(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;Ljava/util/HashMap;[B[B[B)V

    return-object v0
.end method

.method private static blacklist extractBytes([BII)[B
    .locals 2
    .param p0, "scanRecord"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I

    .line 708
    new-array v0, p2, [B

    .line 709
    .local v0, "bytes":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 710
    return-object v0
.end method

.method public static greylist parseFromBytes([B)Landroid/bluetooth/le/ScanRecord;
    .locals 26
    .param p0, "scanRecord"    # [B

    .line 542
    move-object/from16 v13, p0

    const-string v14, "ScanRecord"

    if-nez v13, :cond_0

    .line 543
    const/4 v0, 0x0

    return-object v0

    .line 546
    :cond_0
    const/4 v0, 0x0

    .line 547
    .local v0, "currentPos":I
    const/4 v1, -0x1

    .line 548
    .local v1, "advertiseFlag":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 549
    .local v2, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v3

    .line 550
    .local v15, "serviceSolicitationUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    const/4 v3, 0x0

    .line 551
    .local v3, "localName":Ljava/lang/String;
    const/high16 v4, -0x80000000

    .line 553
    .local v4, "txPowerLevel":I
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    move-object v12, v5

    .line 554
    .local v12, "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    move-object v11, v5

    .line 555
    .local v11, "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v10, v5

    .line 557
    .local v10, "advertisingDataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[B>;"
    const/4 v5, 0x0

    .line 558
    .local v5, "tdsData":[B
    const/4 v6, 0x0

    move/from16 v16, v1

    move-object/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move v1, v0

    .line 561
    .end local v0    # "currentPos":I
    .end local v3    # "localName":Ljava/lang/String;
    .end local v4    # "txPowerLevel":I
    .end local v5    # "tdsData":[B
    .local v1, "currentPos":I
    .local v16, "advertiseFlag":I
    .local v17, "localName":Ljava/lang/String;
    .local v18, "txPowerLevel":I
    .local v19, "tdsData":[B
    .local v20, "groupIdentifierData":[B
    :goto_0
    :try_start_0
    array-length v0, v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    if-ge v1, v0, :cond_5

    .line 563
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "currentPos":I
    .local v3, "currentPos":I
    :try_start_1
    aget-byte v0, v13, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    and-int/lit16 v0, v0, 0xff

    .line 564
    .local v0, "length":I
    if-nez v0, :cond_1

    .line 565
    move/from16 v21, v3

    goto/16 :goto_4

    .line 568
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .line 570
    .local v1, "dataLength":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "currentPos":I
    .local v4, "currentPos":I
    :try_start_2
    aget-byte v3, v13, v3

    and-int/lit16 v3, v3, 0xff

    .line 571
    .local v3, "fieldType":I
    invoke-static {v13, v4, v1}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v5

    .line 572
    .local v5, "advertisingData":[B
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v10, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    const/16 v6, 0x10

    const/4 v7, 0x4

    const/4 v8, 0x2

    sparse-switch v3, :sswitch_data_0

    .line 644
    move/from16 v21, v0

    .end local v0    # "length":I
    .local v21, "length":I
    sget v0, Landroid/bluetooth/le/ScanRecord;->DATA_TYPE_GROUP_AD_TYPE:I

    goto/16 :goto_2

    .line 633
    .end local v21    # "length":I
    .restart local v0    # "length":I
    :sswitch_0
    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v13, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    aget-byte v7, v13, v4

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    .line 635
    .local v6, "manufacturerId":I
    add-int/lit8 v7, v4, 0x2

    add-int/lit8 v8, v1, -0x2

    invoke-static {v13, v7, v8}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v7

    .line 637
    .local v7, "manufacturerDataBytes":[B
    invoke-virtual {v12, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 638
    move/from16 v21, v0

    goto/16 :goto_3

    .line 640
    .end local v6    # "manufacturerId":I
    .end local v7    # "manufacturerDataBytes":[B
    :sswitch_1
    invoke-static {v13, v4, v1}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v6

    .line 641
    .end local v19    # "tdsData":[B
    .local v6, "tdsData":[B
    move/from16 v21, v0

    move-object/from16 v19, v6

    goto/16 :goto_3

    .line 597
    .end local v6    # "tdsData":[B
    .restart local v19    # "tdsData":[B
    :sswitch_2
    invoke-static {v13, v4, v1, v7, v15}, Landroid/bluetooth/le/ScanRecord;->parseServiceSolicitationUuid([BIIILjava/util/List;)I

    .line 599
    move/from16 v21, v0

    goto/16 :goto_3

    .line 615
    :sswitch_3
    const/4 v6, 0x2

    .line 616
    .local v6, "serviceUuidLength":I
    const/16 v7, 0x20

    if-ne v3, v7, :cond_2

    .line 617
    const/4 v6, 0x4

    goto :goto_1

    .line 618
    :cond_2
    const/16 v7, 0x21

    if-ne v3, v7, :cond_3

    .line 619
    const/16 v6, 0x10

    .line 622
    :cond_3
    :goto_1
    invoke-static {v13, v4, v6}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v7

    .line 624
    .local v7, "serviceDataUuidBytes":[B
    invoke-static {v7}, Landroid/bluetooth/BluetoothUuid;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v8

    .line 626
    .local v8, "serviceDataUuid":Landroid/os/ParcelUuid;
    add-int v9, v4, v6

    move/from16 v21, v0

    .end local v0    # "length":I
    .restart local v21    # "length":I
    sub-int v0, v1, v6

    invoke-static {v13, v9, v0}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v0

    .line 628
    .local v0, "serviceDataArray":[B
    invoke-interface {v11, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    goto :goto_3

    .line 601
    .end local v6    # "serviceUuidLength":I
    .end local v7    # "serviceDataUuidBytes":[B
    .end local v8    # "serviceDataUuid":Landroid/os/ParcelUuid;
    .end local v21    # "length":I
    .local v0, "length":I
    :sswitch_4
    move/from16 v21, v0

    .end local v0    # "length":I
    .restart local v21    # "length":I
    invoke-static {v13, v4, v1, v6, v15}, Landroid/bluetooth/le/ScanRecord;->parseServiceSolicitationUuid([BIIILjava/util/List;)I

    .line 603
    goto :goto_3

    .line 593
    .end local v21    # "length":I
    .restart local v0    # "length":I
    :sswitch_5
    move/from16 v21, v0

    .end local v0    # "length":I
    .restart local v21    # "length":I
    invoke-static {v13, v4, v1, v8, v15}, Landroid/bluetooth/le/ScanRecord;->parseServiceSolicitationUuid([BIIILjava/util/List;)I

    .line 595
    goto :goto_3

    .line 610
    .end local v21    # "length":I
    .restart local v0    # "length":I
    :sswitch_6
    move/from16 v21, v0

    .end local v0    # "length":I
    .restart local v21    # "length":I
    aget-byte v0, v13, v4

    .line 611
    .end local v18    # "txPowerLevel":I
    .local v0, "txPowerLevel":I
    move/from16 v18, v0

    goto :goto_3

    .line 606
    .end local v21    # "length":I
    .local v0, "length":I
    .restart local v18    # "txPowerLevel":I
    :sswitch_7
    move/from16 v21, v0

    .end local v0    # "length":I
    .restart local v21    # "length":I
    new-instance v0, Ljava/lang/String;

    .line 607
    invoke-static {v13, v4, v1}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    .line 608
    .end local v17    # "localName":Ljava/lang/String;
    .local v0, "localName":Ljava/lang/String;
    move-object/from16 v17, v0

    goto :goto_3

    .line 589
    .end local v21    # "length":I
    .local v0, "length":I
    .restart local v17    # "localName":Ljava/lang/String;
    :sswitch_8
    move/from16 v21, v0

    .end local v0    # "length":I
    .restart local v21    # "length":I
    invoke-static {v13, v4, v1, v6, v2}, Landroid/bluetooth/le/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    .line 591
    goto :goto_3

    .line 584
    .end local v21    # "length":I
    .restart local v0    # "length":I
    :sswitch_9
    move/from16 v21, v0

    .end local v0    # "length":I
    .restart local v21    # "length":I
    invoke-static {v13, v4, v1, v7, v2}, Landroid/bluetooth/le/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    .line 586
    goto :goto_3

    .line 579
    .end local v21    # "length":I
    .restart local v0    # "length":I
    :sswitch_a
    move/from16 v21, v0

    .end local v0    # "length":I
    .restart local v21    # "length":I
    invoke-static {v13, v4, v1, v8, v2}, Landroid/bluetooth/le/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    .line 581
    goto :goto_3

    .line 575
    .end local v21    # "length":I
    .restart local v0    # "length":I
    :sswitch_b
    move/from16 v21, v0

    .end local v0    # "length":I
    .restart local v21    # "length":I
    aget-byte v0, v13, v4

    and-int/lit16 v0, v0, 0xff

    .line 576
    .end local v16    # "advertiseFlag":I
    .local v0, "advertiseFlag":I
    move/from16 v16, v0

    goto :goto_3

    .line 644
    .end local v0    # "advertiseFlag":I
    .restart local v16    # "advertiseFlag":I
    :goto_2
    if-ne v3, v0, :cond_4

    .line 645
    const-string v0, "Parsing Group Identifier data"

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-static {v13, v4, v1}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v20, v0

    .line 650
    :cond_4
    :goto_3
    add-int/2addr v1, v4

    .line 651
    .end local v3    # "fieldType":I
    .end local v4    # "currentPos":I
    .end local v5    # "advertisingData":[B
    .end local v21    # "length":I
    .local v1, "currentPos":I
    goto/16 :goto_0

    .line 659
    .end local v1    # "currentPos":I
    .restart local v4    # "currentPos":I
    :catch_0
    move-exception v0

    move-object/from16 v22, v2

    move/from16 v21, v4

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    goto/16 :goto_6

    .end local v4    # "currentPos":I
    .local v3, "currentPos":I
    :catch_1
    move-exception v0

    move-object/from16 v22, v2

    move/from16 v21, v3

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    goto :goto_6

    .line 561
    .end local v3    # "currentPos":I
    .restart local v1    # "currentPos":I
    :cond_5
    move/from16 v21, v1

    .line 653
    .end local v1    # "currentPos":I
    .local v21, "currentPos":I
    :goto_4
    :try_start_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    if-eqz v0, :cond_6

    .line 654
    const/4 v2, 0x0

    move-object/from16 v22, v2

    goto :goto_5

    .line 653
    :cond_6
    move-object/from16 v22, v2

    .line 656
    .end local v2    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .local v22, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :goto_5
    :try_start_4
    new-instance v0, Landroid/bluetooth/le/ScanRecord;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object v1, v0

    move-object/from16 v2, v22

    move-object v3, v15

    move-object v4, v12

    move-object v5, v11

    move/from16 v6, v16

    move/from16 v7, v18

    move-object/from16 v8, v17

    move-object v9, v10

    move-object/from16 v23, v10

    .end local v10    # "advertisingDataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[B>;"
    .local v23, "advertisingDataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[B>;"
    move-object/from16 v10, v19

    move-object/from16 v24, v11

    .end local v11    # "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .local v24, "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    move-object/from16 v11, v20

    move-object/from16 v25, v12

    .end local v12    # "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .local v25, "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    move-object/from16 v12, p0

    :try_start_5
    invoke-direct/range {v1 .. v12}, Landroid/bluetooth/le/ScanRecord;-><init>(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;Ljava/util/HashMap;[B[B[B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    return-object v0

    .line 659
    :catch_2
    move-exception v0

    goto :goto_6

    .end local v23    # "advertisingDataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[B>;"
    .end local v24    # "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .end local v25    # "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .restart local v10    # "advertisingDataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[B>;"
    .restart local v11    # "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .restart local v12    # "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    :catch_3
    move-exception v0

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    .end local v10    # "advertisingDataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[B>;"
    .end local v11    # "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .end local v12    # "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .restart local v23    # "advertisingDataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[B>;"
    .restart local v24    # "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .restart local v25    # "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    goto :goto_6

    .end local v22    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .end local v23    # "advertisingDataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[B>;"
    .end local v24    # "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .end local v25    # "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .restart local v2    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .restart local v10    # "advertisingDataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[B>;"
    .restart local v11    # "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .restart local v12    # "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    :catch_4
    move-exception v0

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    move-object/from16 v22, v2

    .end local v10    # "advertisingDataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[B>;"
    .end local v11    # "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .end local v12    # "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .restart local v23    # "advertisingDataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[B>;"
    .restart local v24    # "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .restart local v25    # "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    goto :goto_6

    .end local v21    # "currentPos":I
    .end local v23    # "advertisingDataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[B>;"
    .end local v24    # "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .end local v25    # "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .restart local v1    # "currentPos":I
    .restart local v10    # "advertisingDataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[B>;"
    .restart local v11    # "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .restart local v12    # "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    :catch_5
    move-exception v0

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    move/from16 v21, v1

    move-object/from16 v22, v2

    .line 660
    .end local v1    # "currentPos":I
    .end local v2    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .end local v10    # "advertisingDataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[B>;"
    .end local v11    # "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .end local v12    # "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .local v0, "e":Ljava/lang/Exception;
    .restart local v21    # "currentPos":I
    .restart local v22    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .restart local v23    # "advertisingDataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[B>;"
    .restart local v24    # "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .restart local v25    # "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unable to parse scan record: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p0 .. p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    new-instance v14, Landroid/bluetooth/le/ScanRecord;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/high16 v7, -0x80000000

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v14

    move-object/from16 v9, v23

    move-object/from16 v12, p0

    invoke-direct/range {v1 .. v12}, Landroid/bluetooth/le/ScanRecord;-><init>(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;Ljava/util/HashMap;[B[B[B)V

    return-object v14

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_a
        0x3 -> :sswitch_a
        0x4 -> :sswitch_9
        0x5 -> :sswitch_9
        0x6 -> :sswitch_8
        0x7 -> :sswitch_8
        0x8 -> :sswitch_7
        0x9 -> :sswitch_7
        0xa -> :sswitch_6
        0x14 -> :sswitch_5
        0x15 -> :sswitch_4
        0x16 -> :sswitch_3
        0x1f -> :sswitch_2
        0x20 -> :sswitch_3
        0x21 -> :sswitch_3
        0x26 -> :sswitch_1
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method private static blacklist parseServiceSolicitationUuid([BIIILjava/util/List;)I
    .locals 2
    .param p0, "scanRecord"    # [B
    .param p1, "currentPos"    # I
    .param p2, "dataLength"    # I
    .param p3, "uuidLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIII",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;)I"
        }
    .end annotation

    .line 697
    .local p4, "serviceSolicitationUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :goto_0
    if-lez p2, :cond_0

    .line 698
    invoke-static {p0, p1, p3}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v0

    .line 699
    .local v0, "uuidBytes":[B
    invoke-static {v0}, Landroid/bluetooth/BluetoothUuid;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 700
    sub-int/2addr p2, p3

    .line 701
    add-int/2addr p1, p3

    .line 702
    .end local v0    # "uuidBytes":[B
    goto :goto_0

    .line 703
    :cond_0
    return p1
.end method

.method private static blacklist parseServiceUuid([BIIILjava/util/List;)I
    .locals 2
    .param p0, "scanRecord"    # [B
    .param p1, "currentPos"    # I
    .param p2, "dataLength"    # I
    .param p3, "uuidLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIII",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;)I"
        }
    .end annotation

    .line 682
    .local p4, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :goto_0
    if-lez p2, :cond_0

    .line 683
    invoke-static {p0, p1, p3}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v0

    .line 685
    .local v0, "uuidBytes":[B
    invoke-static {v0}, Landroid/bluetooth/BluetoothUuid;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    sub-int/2addr p2, p3

    .line 687
    add-int/2addr p1, p3

    .line 688
    .end local v0    # "uuidBytes":[B
    goto :goto_0

    .line 689
    :cond_0
    return p1
.end method


# virtual methods
.method public whitelist getAdvertiseFlags()I
    .locals 1

    .line 355
    iget v0, p0, Landroid/bluetooth/le/ScanRecord;->mAdvertiseFlags:I

    return v0
.end method

.method public whitelist getAdvertisingDataMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation

    .line 440
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mAdvertisingDataMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public whitelist getBytes()[B
    .locals 1

    .line 463
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mBytes:[B

    return-object v0
.end method

.method public whitelist getDeviceName()Ljava/lang/String;
    .locals 1

    .line 430
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getGroupIdentifierData()[B
    .locals 1

    .line 456
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mGroupIdentifierData:[B

    return-object v0
.end method

.method public whitelist getManufacturerSpecificData()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation

    .line 380
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    return-object v0
.end method

.method public whitelist getManufacturerSpecificData(I)[B
    .locals 1
    .param p1, "manufacturerId"    # I

    .line 389
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 390
    const/4 v0, 0x0

    return-object v0

    .line 392
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist getServiceData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation

    .line 399
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mServiceData:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist getServiceData(Landroid/os/ParcelUuid;)[B
    .locals 1
    .param p1, "serviceDataUuid"    # Landroid/os/ParcelUuid;

    .line 408
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mServiceData:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_0

    .line 411
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    .line 409
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getServiceSolicitationUuids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .line 372
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mServiceSolicitationUuids:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getServiceUuids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .line 363
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mServiceUuids:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getTDSData()[B
    .locals 1

    .line 448
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mTDSData:[B

    return-object v0
.end method

.method public whitelist getTxPowerLevel()I
    .locals 1

    .line 422
    iget v0, p0, Landroid/bluetooth/le/ScanRecord;->mTxPowerLevel:I

    return v0
.end method

.method public blacklist matchesAnyField(Ljava/util/function/Predicate;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "[B>;)Z"
        }
    .end annotation

    .line 473
    .local p1, "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<[B>;"
    const/4 v0, 0x0

    .line 474
    .local v0, "pos":I
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mBytes:[B

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 475
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    .line 476
    .local v2, "length":I
    if-nez v2, :cond_0

    .line 477
    goto :goto_1

    .line 479
    :cond_0
    add-int v3, v0, v2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-static {v1, v0, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 480
    return v4

    .line 482
    :cond_1
    add-int/lit8 v1, v2, 0x1

    add-int/2addr v0, v1

    .line 483
    .end local v2    # "length":I
    goto :goto_0

    .line 484
    :cond_2
    :goto_1
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScanRecord [mAdvertiseFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanRecord;->mAdvertiseFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceUuids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mServiceUuids:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceSolicitationUuids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mServiceSolicitationUuids:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mManufacturerSpecificData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    .line 672
    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeUtils;->toString(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mServiceData:Ljava/util/Map;

    .line 674
    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeUtils;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTxPowerLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanRecord;->mTxPowerLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTDSData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mTDSData:[B

    .line 676
    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeUtils;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 670
    return-object v0
.end method
