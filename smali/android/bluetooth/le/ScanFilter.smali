.class public final Landroid/bluetooth/le/ScanFilter;
.super Ljava/lang/Object;
.source "ScanFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/ScanFilter$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EMPTY:Landroid/bluetooth/le/ScanFilter;

.field private static final blacklist GROUP_DATA_LEN:I = 0x6

.field public static final blacklist WIFI_ALLIANCE_ORG_ID:I = 0x2


# instance fields
.field private final blacklist mAddressType:I

.field private final blacklist mAdvertisingData:[B

.field private final blacklist mAdvertisingDataMask:[B

.field private blacklist mAdvertisingDataType:I

.field private final blacklist mDeviceAddress:Ljava/lang/String;

.field private final blacklist mDeviceName:Ljava/lang/String;

.field private final blacklist mGroupBasedFiltering:Z

.field private final blacklist mIrk:[B

.field private final blacklist mManufacturerData:[B

.field private final blacklist mManufacturerDataMask:[B

.field private final blacklist mManufacturerId:I

.field private final blacklist mOrgId:I

.field private final blacklist mServiceData:[B

.field private final blacklist mServiceDataMask:[B

.field private final blacklist mServiceDataUuid:Landroid/os/ParcelUuid;

.field private final blacklist mServiceSolicitationUuid:Landroid/os/ParcelUuid;

.field private final blacklist mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

.field private final blacklist mServiceUuid:Landroid/os/ParcelUuid;

.field private final blacklist mServiceUuidMask:Landroid/os/ParcelUuid;

.field private final blacklist mTDSFlags:I

.field private final blacklist mTDSFlagsMask:I

.field private final blacklist mWifiNANHash:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 110
    new-instance v0, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/le/ScanFilter;->EMPTY:Landroid/bluetooth/le/ScanFilter;

    .line 243
    new-instance v0, Landroid/bluetooth/le/ScanFilter$1;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanFilter$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/ScanFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[BI[BI[B[BIII[BZ)V
    .locals 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "deviceAddress"    # Ljava/lang/String;
    .param p3, "uuid"    # Landroid/os/ParcelUuid;
    .param p4, "uuidMask"    # Landroid/os/ParcelUuid;
    .param p5, "solicitationUuid"    # Landroid/os/ParcelUuid;
    .param p6, "solicitationUuidMask"    # Landroid/os/ParcelUuid;
    .param p7, "serviceDataUuid"    # Landroid/os/ParcelUuid;
    .param p8, "serviceData"    # [B
    .param p9, "serviceDataMask"    # [B
    .param p10, "manufacturerId"    # I
    .param p11, "manufacturerData"    # [B
    .param p12, "manufacturerDataMask"    # [B
    .param p13, "addressType"    # I
    .param p14, "irk"    # [B
    .param p15, "advertisingDataType"    # I
    .param p16, "advertisingData"    # [B
    .param p17, "advertisingDataMask"    # [B
    .param p18, "orgId"    # I
    .param p19, "TDSFlags"    # I
    .param p20, "TDSFlagsMask"    # I
    .param p21, "wifiNANHash"    # [B
    .param p22, "groupBasedFiltering"    # Z

    .line 119
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v1, -0x1

    iput v1, v0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingDataType:I

    .line 120
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    .line 121
    move-object/from16 v2, p3

    iput-object v2, v0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    .line 122
    move-object/from16 v3, p4

    iput-object v3, v0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    .line 123
    move-object/from16 v4, p5

    iput-object v4, v0, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    .line 124
    move-object/from16 v5, p6

    iput-object v5, v0, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    .line 125
    move-object/from16 v6, p2

    iput-object v6, v0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    .line 126
    move-object/from16 v7, p7

    iput-object v7, v0, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    .line 127
    move-object/from16 v8, p8

    iput-object v8, v0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    .line 128
    move-object/from16 v9, p9

    iput-object v9, v0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    .line 129
    move/from16 v10, p10

    iput v10, v0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    .line 130
    move-object/from16 v11, p11

    iput-object v11, v0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    .line 131
    move-object/from16 v12, p12

    iput-object v12, v0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    .line 132
    move/from16 v13, p13

    iput v13, v0, Landroid/bluetooth/le/ScanFilter;->mAddressType:I

    .line 133
    move-object/from16 v14, p14

    iput-object v14, v0, Landroid/bluetooth/le/ScanFilter;->mIrk:[B

    .line 134
    move/from16 v15, p15

    iput v15, v0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingDataType:I

    .line 135
    move-object/from16 v1, p16

    iput-object v1, v0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingData:[B

    .line 136
    move-object/from16 v1, p17

    iput-object v1, v0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingDataMask:[B

    .line 137
    move/from16 v1, p18

    iput v1, v0, Landroid/bluetooth/le/ScanFilter;->mOrgId:I

    .line 138
    move/from16 v1, p19

    iput v1, v0, Landroid/bluetooth/le/ScanFilter;->mTDSFlags:I

    .line 139
    move/from16 v1, p20

    iput v1, v0, Landroid/bluetooth/le/ScanFilter;->mTDSFlagsMask:I

    .line 140
    move-object/from16 v1, p21

    iput-object v1, v0, Landroid/bluetooth/le/ScanFilter;->mWifiNANHash:[B

    .line 141
    move/from16 v1, p22

    iput-boolean v1, v0, Landroid/bluetooth/le/ScanFilter;->mGroupBasedFiltering:Z

    .line 142
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[BI[BI[B[BIII[BZLandroid/bluetooth/le/ScanFilter-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p22}, Landroid/bluetooth/le/ScanFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[BI[BI[B[BIII[BZ)V

    return-void
.end method

.method private blacklist matchesPartialData([B[B[B)Z
    .locals 6
    .param p1, "data"    # [B
    .param p2, "dataMask"    # [B
    .param p3, "parsedData"    # [B

    .line 675
    const/4 v0, 0x0

    if-eqz p3, :cond_6

    array-length v1, p3

    array-length v2, p1

    if-ge v1, v2, :cond_0

    goto :goto_2

    .line 678
    :cond_0
    const/4 v1, 0x1

    if-nez p2, :cond_3

    .line 679
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 680
    aget-byte v3, p3, v2

    aget-byte v4, p1, v2

    if-eq v3, v4, :cond_1

    .line 681
    return v0

    .line 679
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 684
    .end local v2    # "i":I
    :cond_2
    return v1

    .line 686
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_5

    .line 687
    aget-byte v3, p2, v2

    aget-byte v4, p3, v2

    and-int/2addr v3, v4

    aget-byte v4, p2, v2

    aget-byte v5, p1, v2

    and-int/2addr v4, v5

    if-eq v3, v4, :cond_4

    .line 688
    return v0

    .line 686
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 691
    .end local v2    # "i":I
    :cond_5
    return v1

    .line 676
    :cond_6
    :goto_2
    return v0
.end method

.method private static blacklist matchesServiceSolicitationUuid(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z
    .locals 1
    .param p0, "solicitationUuid"    # Ljava/util/UUID;
    .param p1, "solicitationUuidMask"    # Ljava/util/UUID;
    .param p2, "data"    # Ljava/util/UUID;

    .line 670
    invoke-static {p2, p0, p1}, Landroid/bluetooth/le/BluetoothLeUtils;->maskedEquals(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method private static blacklist matchesServiceSolicitationUuids(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Ljava/util/List;)Z
    .locals 7
    .param p0, "solicitationUuid"    # Landroid/os/ParcelUuid;
    .param p1, "parcelSolicitationUuidMask"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelUuid;",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;)Z"
        }
    .end annotation

    .line 649
    .local p2, "solicitationUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 650
    return v0

    .line 652
    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 653
    return v1

    .line 656
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 657
    .local v3, "parcelSolicitationUuid":Landroid/os/ParcelUuid;
    if-nez p1, :cond_2

    .line 658
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    .line 659
    .local v4, "solicitationUuidMask":Ljava/util/UUID;
    :goto_1
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    .line 660
    invoke-virtual {v3}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v6

    .line 659
    invoke-static {v5, v4, v6}, Landroid/bluetooth/le/ScanFilter;->matchesServiceUuid(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 661
    return v0

    .line 663
    .end local v3    # "parcelSolicitationUuid":Landroid/os/ParcelUuid;
    .end local v4    # "solicitationUuidMask":Ljava/util/UUID;
    :cond_3
    goto :goto_0

    .line 664
    :cond_4
    return v1
.end method

.method private static blacklist matchesServiceUuid(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z
    .locals 1
    .param p0, "uuid"    # Ljava/util/UUID;
    .param p1, "mask"    # Ljava/util/UUID;
    .param p2, "data"    # Ljava/util/UUID;

    .line 640
    invoke-static {p2, p0, p1}, Landroid/bluetooth/le/BluetoothLeUtils;->maskedEquals(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public static blacklist matchesServiceUuids(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Ljava/util/List;)Z
    .locals 7
    .param p0, "uuid"    # Landroid/os/ParcelUuid;
    .param p1, "parcelUuidMask"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelUuid;",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;)Z"
        }
    .end annotation

    .line 622
    .local p2, "uuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 623
    return v0

    .line 625
    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 626
    return v1

    .line 629
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 630
    .local v3, "parcelUuid":Landroid/os/ParcelUuid;
    if-nez p1, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    .line 631
    .local v4, "uuidMask":Ljava/util/UUID;
    :goto_1
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-static {v5, v4, v6}, Landroid/bluetooth/le/ScanFilter;->matchesServiceUuid(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 632
    return v0

    .line 634
    .end local v3    # "parcelUuid":Landroid/os/ParcelUuid;
    .end local v4    # "uuidMask":Ljava/util/UUID;
    :cond_3
    goto :goto_0

    .line 635
    :cond_4
    return v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 734
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 735
    return v0

    .line 737
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 740
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/bluetooth/le/ScanFilter;

    .line 741
    .local v2, "other":Landroid/bluetooth/le/ScanFilter;
    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    iget-object v4, v2, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    iget-object v4, v2, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    .line 742
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    iget v4, v2, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    iget-object v4, v2, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    .line 744
    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    iget-object v4, v2, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    .line 745
    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    iget-object v4, v2, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    .line 746
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    iget-object v4, v2, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    .line 747
    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    iget-object v4, v2, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    .line 748
    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    iget-object v4, v2, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    .line 749
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    iget-object v4, v2, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    .line 750
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    iget-object v4, v2, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    .line 751
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    iget-object v4, v2, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    .line 752
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingDataType:I

    iget v4, v2, Landroid/bluetooth/le/ScanFilter;->mAdvertisingDataType:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingData:[B

    iget-object v4, v2, Landroid/bluetooth/le/ScanFilter;->mAdvertisingData:[B

    .line 755
    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingDataMask:[B

    iget-object v4, v2, Landroid/bluetooth/le/ScanFilter;->mAdvertisingDataMask:[B

    .line 756
    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/bluetooth/le/ScanFilter;->mOrgId:I

    iget v4, v2, Landroid/bluetooth/le/ScanFilter;->mOrgId:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/bluetooth/le/ScanFilter;->mTDSFlags:I

    iget v4, v2, Landroid/bluetooth/le/ScanFilter;->mTDSFlags:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/bluetooth/le/ScanFilter;->mTDSFlagsMask:I

    iget v4, v2, Landroid/bluetooth/le/ScanFilter;->mTDSFlagsMask:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mWifiNANHash:[B

    iget-object v4, v2, Landroid/bluetooth/le/ScanFilter;->mWifiNANHash:[B

    .line 760
    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/bluetooth/le/ScanFilter;->mGroupBasedFiltering:Z

    iget-boolean v4, v2, Landroid/bluetooth/le/ScanFilter;->mGroupBasedFiltering:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 741
    :goto_0
    return v0

    .line 738
    .end local v2    # "other":Landroid/bluetooth/le/ScanFilter;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getAddressType()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 416
    iget v0, p0, Landroid/bluetooth/le/ScanFilter;->mAddressType:I

    return v0
.end method

.method public whitelist getAdvertisingData()[B
    .locals 1

    .line 514
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingData:[B

    return-object v0
.end method

.method public whitelist getAdvertisingDataMask()[B
    .locals 1

    .line 521
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingDataMask:[B

    return-object v0
.end method

.method public whitelist getAdvertisingDataType()I
    .locals 1

    .line 507
    iget v0, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingDataType:I

    return v0
.end method

.method public whitelist getDeviceAddress()Ljava/lang/String;
    .locals 1

    .line 408
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDeviceName()Ljava/lang/String;
    .locals 1

    .line 374
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getGroupFilteringValue()Z
    .locals 1

    .line 496
    iget-boolean v0, p0, Landroid/bluetooth/le/ScanFilter;->mGroupBasedFiltering:Z

    return v0
.end method

.method public whitelist getIrk()[B
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 425
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mIrk:[B

    return-object v0
.end method

.method public whitelist getManufacturerData()[B
    .locals 1

    .line 452
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    return-object v0
.end method

.method public whitelist getManufacturerDataMask()[B
    .locals 1

    .line 457
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    return-object v0
.end method

.method public whitelist getManufacturerId()I
    .locals 1

    .line 447
    iget v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    return v0
.end method

.method public blacklist getOrgId()I
    .locals 1

    .line 465
    iget v0, p0, Landroid/bluetooth/le/ScanFilter;->mOrgId:I

    return v0
.end method

.method public whitelist getServiceData()[B
    .locals 1

    .line 430
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    return-object v0
.end method

.method public whitelist getServiceDataMask()[B
    .locals 1

    .line 435
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    return-object v0
.end method

.method public whitelist getServiceDataUuid()Landroid/os/ParcelUuid;
    .locals 1

    .line 440
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public whitelist getServiceSolicitationUuid()Landroid/os/ParcelUuid;
    .locals 1

    .line 395
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public whitelist getServiceSolicitationUuidMask()Landroid/os/ParcelUuid;
    .locals 1

    .line 403
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public whitelist getServiceUuid()Landroid/os/ParcelUuid;
    .locals 1

    .line 382
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public whitelist getServiceUuidMask()Landroid/os/ParcelUuid;
    .locals 1

    .line 387
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public blacklist getTDSFlags()I
    .locals 1

    .line 473
    iget v0, p0, Landroid/bluetooth/le/ScanFilter;->mTDSFlags:I

    return v0
.end method

.method public blacklist getTDSFlagsMask()I
    .locals 1

    .line 481
    iget v0, p0, Landroid/bluetooth/le/ScanFilter;->mTDSFlagsMask:I

    return v0
.end method

.method public blacklist getWifiNANHash()[B
    .locals 1

    .line 488
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mWifiNANHash:[B

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 716
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    .line 717
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    .line 718
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    .line 720
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    .line 721
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingDataType:I

    .line 724
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingData:[B

    .line 725
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingDataMask:[B

    .line 726
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/le/ScanFilter;->mOrgId:I

    .line 728
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/le/ScanFilter;->mTDSFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/le/ScanFilter;->mTDSFlagsMask:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mWifiNANHash:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/bluetooth/le/ScanFilter;->mGroupBasedFiltering:Z

    .line 729
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 716
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isAllFieldsEmpty()Z
    .locals 1

    .line 770
    sget-object v0, Landroid/bluetooth/le/ScanFilter;->EMPTY:Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {v0, p0}, Landroid/bluetooth/le/ScanFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist matches(Landroid/bluetooth/le/ScanResult;)Z
    .locals 8
    .param p1, "scanResult"    # Landroid/bluetooth/le/ScanResult;

    .line 529
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 530
    return v0

    .line 532
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 534
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    .line 535
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 536
    :cond_1
    return v0

    .line 539
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v2

    .line 542
    .local v2, "scanRecord":Landroid/bluetooth/le/ScanRecord;
    if-nez v2, :cond_4

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingData:[B

    if-eqz v3, :cond_4

    .line 546
    :cond_3
    return v0

    .line 550
    :cond_4
    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Landroid/bluetooth/le/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 551
    return v0

    .line 555
    :cond_5
    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    if-eqz v3, :cond_6

    iget-object v4, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    .line 556
    invoke-virtual {v2}, Landroid/bluetooth/le/ScanRecord;->getServiceUuids()Ljava/util/List;

    move-result-object v5

    .line 555
    invoke-static {v3, v4, v5}, Landroid/bluetooth/le/ScanFilter;->matchesServiceUuids(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 557
    return v0

    .line 561
    :cond_6
    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    if-eqz v3, :cond_7

    iget-object v4, p0, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    .line 563
    invoke-virtual {v2}, Landroid/bluetooth/le/ScanRecord;->getServiceSolicitationUuids()Ljava/util/List;

    move-result-object v5

    .line 561
    invoke-static {v3, v4, v5}, Landroid/bluetooth/le/ScanFilter;->matchesServiceSolicitationUuids(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 564
    return v0

    .line 568
    :cond_7
    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-eqz v3, :cond_8

    .line 569
    iget-object v4, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    iget-object v5, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    .line 570
    invoke-virtual {v2, v3}, Landroid/bluetooth/le/ScanRecord;->getServiceData(Landroid/os/ParcelUuid;)[B

    move-result-object v3

    .line 569
    invoke-direct {p0, v4, v5, v3}, Landroid/bluetooth/le/ScanFilter;->matchesPartialData([B[B[B)Z

    move-result v3

    if-nez v3, :cond_8

    .line 571
    return v0

    .line 576
    :cond_8
    iget v3, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    if-ltz v3, :cond_9

    .line 577
    iget-object v4, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    iget-object v5, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    .line 578
    invoke-virtual {v2, v3}, Landroid/bluetooth/le/ScanRecord;->getManufacturerSpecificData(I)[B

    move-result-object v3

    .line 577
    invoke-direct {p0, v4, v5, v3}, Landroid/bluetooth/le/ScanFilter;->matchesPartialData([B[B[B)Z

    move-result v3

    if-nez v3, :cond_9

    .line 579
    return v0

    .line 584
    :cond_9
    iget v3, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingDataType:I

    if-lez v3, :cond_b

    .line 585
    invoke-virtual {v2}, Landroid/bluetooth/le/ScanRecord;->getAdvertisingDataMap()Ljava/util/Map;

    move-result-object v3

    iget v4, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingDataType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 586
    .local v3, "advertisingData":[B
    if-eqz v3, :cond_a

    iget-object v4, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingData:[B

    iget-object v5, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingDataMask:[B

    invoke-direct {p0, v4, v5, v3}, Landroid/bluetooth/le/ScanFilter;->matchesPartialData([B[B[B)Z

    move-result v4

    if-nez v4, :cond_b

    .line 588
    :cond_a
    return v0

    .line 593
    .end local v3    # "advertisingData":[B
    :cond_b
    iget v3, p0, Landroid/bluetooth/le/ScanFilter;->mOrgId:I

    const/4 v4, 0x1

    if-ltz v3, :cond_d

    .line 594
    invoke-virtual {v2}, Landroid/bluetooth/le/ScanRecord;->getTDSData()[B

    move-result-object v3

    .line 595
    .local v3, "tdsData":[B
    if-eqz v3, :cond_d

    array-length v5, v3

    if-lez v5, :cond_d

    .line 596
    iget v5, p0, Landroid/bluetooth/le/ScanFilter;->mOrgId:I

    aget-byte v6, v3, v0

    if-ne v5, v6, :cond_c

    iget v5, p0, Landroid/bluetooth/le/ScanFilter;->mTDSFlags:I

    iget v6, p0, Landroid/bluetooth/le/ScanFilter;->mTDSFlagsMask:I

    and-int/2addr v5, v6

    aget-byte v7, v3, v4

    and-int/2addr v6, v7

    if-eq v5, v6, :cond_d

    .line 598
    :cond_c
    return v0

    .line 604
    .end local v3    # "tdsData":[B
    :cond_d
    iget-boolean v3, p0, Landroid/bluetooth/le/ScanFilter;->mGroupBasedFiltering:Z

    if-eqz v3, :cond_e

    .line 605
    invoke-virtual {v2}, Landroid/bluetooth/le/ScanRecord;->getGroupIdentifierData()[B

    move-result-object v3

    .line 606
    .local v3, "groupIdData":[B
    if-eqz v3, :cond_e

    array-length v5, v3

    const/4 v6, 0x6

    if-eq v5, v6, :cond_e

    .line 607
    return v0

    .line 612
    .end local v3    # "groupIdData":[B
    :cond_e
    return v4
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothLeScanFilter [mDeviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeviceAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUuidMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceSolicitationUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceSolicitationUuidMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceDataUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    .line 700
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    .line 701
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceDataMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    .line 702
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mManufacturerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mManufacturerData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    .line 703
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mManufacturerDataMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    .line 704
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdvertisingDataType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingDataType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdvertisingData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingData:[B

    .line 706
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdvertisingDataMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingDataMask:[B

    .line 707
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOrganizationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanFilter;->mOrgId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTDSFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanFilter;->mTDSFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTDSFlagsMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanFilter;->mTDSFlagsMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWifiNANHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mWifiNANHash:[B

    .line 710
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], mGroupBasedFiltering="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/bluetooth/le/ScanFilter;->mGroupBasedFiltering:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 696
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 151
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    :cond_1
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 157
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    :cond_3
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_6

    .line 161
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 162
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v2

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_6

    .line 164
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 167
    :cond_6
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_4

    :cond_7
    move v0, v2

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_9

    .line 169
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 170
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    if-nez v0, :cond_8

    move v0, v1

    goto :goto_5

    :cond_8
    move v0, v2

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_9

    .line 172
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 175
    :cond_9
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-nez v0, :cond_a

    move v0, v1

    goto :goto_6

    :cond_a
    move v0, v2

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_d

    .line 177
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 178
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    if-nez v0, :cond_b

    move v0, v1

    goto :goto_7

    :cond_b
    move v0, v2

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    if-eqz v0, :cond_d

    .line 180
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 183
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    if-nez v0, :cond_c

    move v0, v1

    goto :goto_8

    :cond_c
    move v0, v2

    :goto_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    if-eqz v0, :cond_d

    .line 185
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 190
    :cond_d
    iget v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    if-nez v0, :cond_e

    move v0, v1

    goto :goto_9

    :cond_e
    move v0, v2

    :goto_9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    if-eqz v0, :cond_10

    .line 193
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 196
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    if-nez v0, :cond_f

    move v0, v1

    goto :goto_a

    :cond_f
    move v0, v2

    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    if-eqz v0, :cond_10

    .line 198
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 204
    :cond_10
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 205
    iget v0, p0, Landroid/bluetooth/le/ScanFilter;->mAddressType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mIrk:[B

    if-nez v0, :cond_11

    move v0, v1

    goto :goto_b

    :cond_11
    move v0, v2

    :goto_b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mIrk:[B

    if-eqz v0, :cond_12

    .line 208
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 213
    :cond_12
    iget v0, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingDataType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingData:[B

    if-nez v0, :cond_13

    move v0, v1

    goto :goto_c

    :cond_13
    move v0, v2

    :goto_c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingData:[B

    if-eqz v0, :cond_15

    .line 216
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 219
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingDataMask:[B

    if-nez v0, :cond_14

    move v0, v1

    goto :goto_d

    :cond_14
    move v0, v2

    :goto_d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingDataMask:[B

    if-eqz v0, :cond_15

    .line 221
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mAdvertisingDataMask:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 226
    :cond_15
    iget v0, p0, Landroid/bluetooth/le/ScanFilter;->mOrgId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    iget v0, p0, Landroid/bluetooth/le/ScanFilter;->mOrgId:I

    if-gez v0, :cond_16

    move v0, v1

    goto :goto_e

    :cond_16
    move v0, v2

    :goto_e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    iget v0, p0, Landroid/bluetooth/le/ScanFilter;->mOrgId:I

    if-ltz v0, :cond_18

    .line 229
    iget v0, p0, Landroid/bluetooth/le/ScanFilter;->mTDSFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget v0, p0, Landroid/bluetooth/le/ScanFilter;->mTDSFlagsMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mWifiNANHash:[B

    if-nez v0, :cond_17

    goto :goto_f

    :cond_17
    move v1, v2

    :goto_f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mWifiNANHash:[B

    if-eqz v0, :cond_18

    .line 233
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mWifiNANHash:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 237
    :cond_18
    iget-boolean v0, p0, Landroid/bluetooth/le/ScanFilter;->mGroupBasedFiltering:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 238
    return-void
.end method
