.class public final Landroid/bluetooth/le/ScanFilter$Builder;
.super Ljava/lang/Object;
.source "ScanFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/ScanFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field public static final whitelist LEN_IRK_OCTETS:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private blacklist mAddressType:I

.field private blacklist mAdvertisingData:[B

.field private blacklist mAdvertisingDataMask:[B

.field private blacklist mAdvertisingDataType:I

.field private blacklist mDeviceAddress:Ljava/lang/String;

.field private blacklist mDeviceName:Ljava/lang/String;

.field private blacklist mGroupBasedFiltering:Z

.field private blacklist mIrk:[B

.field private blacklist mManufacturerData:[B

.field private blacklist mManufacturerDataMask:[B

.field private blacklist mManufacturerId:I

.field private blacklist mOrgId:I

.field private blacklist mServiceData:[B

.field private blacklist mServiceDataMask:[B

.field private blacklist mServiceDataUuid:Landroid/os/ParcelUuid;

.field private blacklist mServiceSolicitationUuid:Landroid/os/ParcelUuid;

.field private blacklist mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

.field private blacklist mServiceUuid:Landroid/os/ParcelUuid;

.field private blacklist mTDSFlags:I

.field private blacklist mTDSFlagsMask:I

.field private blacklist mUuidMask:Landroid/os/ParcelUuid;

.field private blacklist mWifiNANHash:[B


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 786
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mAddressType:I

    .line 799
    const/4 v0, -0x1

    iput v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerId:I

    .line 803
    iput v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mAdvertisingDataType:I

    .line 807
    iput v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mOrgId:I

    .line 808
    iput v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mTDSFlags:I

    .line 809
    iput v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mTDSFlagsMask:I

    return-void
.end method

.method private blacklist setDeviceAddressInternal(Ljava/lang/String;I[B)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 3
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "addressType"    # I
    .param p3, "irk"    # [B

    .line 926
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 932
    if-ltz p2, :cond_2

    const/4 v0, 0x1

    if-gt p2, v0, :cond_2

    .line 938
    if-ne p2, v0, :cond_1

    .line 940
    if-eqz p3, :cond_1

    .line 943
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->isAddressRandomStatic(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 944
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid combination: IRK requires either a PUBLIC or RANDOM (STATIC) Address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 954
    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mDeviceAddress:Ljava/lang/String;

    .line 955
    iput p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mAddressType:I

    .line 956
    iput-object p3, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mIrk:[B

    .line 957
    return-object p0

    .line 934
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'addressType\' is invalid!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 928
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid device address "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/bluetooth/le/ScanFilter;
    .locals 27

    .line 1214
    move-object/from16 v0, p0

    new-instance v25, Landroid/bluetooth/le/ScanFilter;

    move-object/from16 v1, v25

    iget-object v2, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mDeviceName:Ljava/lang/String;

    iget-object v3, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mDeviceAddress:Ljava/lang/String;

    iget-object v4, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    iget-object v5, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mUuidMask:Landroid/os/ParcelUuid;

    iget-object v6, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    iget-object v7, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    iget-object v8, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    iget-object v9, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceData:[B

    iget-object v10, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataMask:[B

    iget v11, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerId:I

    iget-object v12, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerData:[B

    iget-object v13, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerDataMask:[B

    iget v14, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mAddressType:I

    iget-object v15, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mIrk:[B

    move-object/from16 v26, v1

    iget v1, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mAdvertisingDataType:I

    move/from16 v16, v1

    iget-object v1, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mAdvertisingData:[B

    move-object/from16 v17, v1

    iget-object v1, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mAdvertisingDataMask:[B

    move-object/from16 v18, v1

    iget v1, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mOrgId:I

    move/from16 v19, v1

    iget v1, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mTDSFlags:I

    move/from16 v20, v1

    iget v1, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mTDSFlagsMask:I

    move/from16 v21, v1

    iget-object v1, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mWifiNANHash:[B

    move-object/from16 v22, v1

    iget-boolean v1, v0, Landroid/bluetooth/le/ScanFilter$Builder;->mGroupBasedFiltering:Z

    move/from16 v23, v1

    const/16 v24, 0x0

    move-object/from16 v1, v26

    invoke-direct/range {v1 .. v24}, Landroid/bluetooth/le/ScanFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[BI[BI[B[BIII[BZLandroid/bluetooth/le/ScanFilter-IA;)V

    return-object v25
.end method

.method public whitelist setAdvertisingDataType(I)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 2
    .param p1, "advertisingDataType"    # I

    .line 1201
    if-ltz p1, :cond_0

    .line 1204
    iput p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mAdvertisingDataType:I

    .line 1205
    return-object p0

    .line 1202
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid advertising data type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAdvertisingDataTypeWithData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 2
    .param p1, "advertisingDataType"    # I
    .param p2, "advertisingData"    # [B
    .param p3, "advertisingDataMask"    # [B

    .line 1169
    if-ltz p1, :cond_3

    .line 1172
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mAdvertisingDataMask:[B

    if-eqz v0, :cond_2

    .line 1173
    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mAdvertisingData:[B

    if-eqz v1, :cond_1

    .line 1179
    array-length v1, v1

    array-length v0, v0

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 1180
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size mismatch for mAdvertisingData and mAdvertisingDataMask"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1174
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "mAdvertisingData is null while mAdvertisingDataMask is not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1184
    :cond_2
    :goto_0
    iput p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mAdvertisingDataType:I

    .line 1185
    iput-object p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mAdvertisingData:[B

    .line 1186
    iput-object p3, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mAdvertisingDataMask:[B

    .line 1187
    return-object p0

    .line 1170
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid advertising data type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDeviceAddress(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 1
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 834
    if-nez p1, :cond_0

    .line 835
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mDeviceAddress:Ljava/lang/String;

    .line 836
    return-object p0

    .line 838
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;I)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setDeviceAddress(Ljava/lang/String;I)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 1
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "addressType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 863
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceAddressInternal(Ljava/lang/String;I[B)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setDeviceAddress(Ljava/lang/String;I[B)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "addressType"    # I
    .param p3, "irk"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 894
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    array-length v0, p3

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 898
    invoke-direct {p0, p1, p2, p3}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceAddressInternal(Ljava/lang/String;I[B)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v0

    return-object v0

    .line 896
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'irk\' is invalid length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDeviceName(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 0
    .param p1, "deviceName"    # Ljava/lang/String;

    .line 818
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mDeviceName:Ljava/lang/String;

    .line 819
    return-object p0
.end method

.method public blacklist setGroupBasedFiltering(Z)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 0
    .param p1, "enable"    # Z

    .line 1148
    iput-boolean p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mGroupBasedFiltering:Z

    .line 1149
    return-object p0
.end method

.method public whitelist setManufacturerData(I[B)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 2
    .param p1, "manufacturerId"    # I
    .param p2, "manufacturerData"    # [B

    .line 1078
    if-eqz p2, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    .line 1079
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid manufacture id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1081
    :cond_1
    :goto_0
    iput p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerId:I

    .line 1082
    iput-object p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerData:[B

    .line 1083
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerDataMask:[B

    .line 1084
    return-object p0
.end method

.method public whitelist setManufacturerData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 2
    .param p1, "manufacturerId"    # I
    .param p2, "manufacturerData"    # [B
    .param p3, "manufacturerDataMask"    # [B

    .line 1099
    if-eqz p2, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    .line 1100
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid manufacture id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1102
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerDataMask:[B

    if-eqz v0, :cond_4

    .line 1103
    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerData:[B

    if-eqz v1, :cond_3

    .line 1109
    array-length v1, v1

    array-length v0, v0

    if-ne v1, v0, :cond_2

    goto :goto_1

    .line 1110
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size mismatch for manufacturerData and manufacturerDataMask"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1104
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "manufacturerData is null while manufacturerDataMask is not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1114
    :cond_4
    :goto_1
    iput p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerId:I

    .line 1115
    iput-object p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerData:[B

    .line 1116
    iput-object p3, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mManufacturerDataMask:[B

    .line 1117
    return-object p0
.end method

.method public whitelist setServiceData(Landroid/os/ParcelUuid;[B)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 2
    .param p1, "serviceDataUuid"    # Landroid/os/ParcelUuid;
    .param p2, "serviceData"    # [B

    .line 1030
    if-eqz p1, :cond_0

    .line 1033
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    .line 1034
    iput-object p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceData:[B

    .line 1035
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataMask:[B

    .line 1036
    return-object p0

    .line 1031
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "serviceDataUuid is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setServiceData(Landroid/os/ParcelUuid;[B[B)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 2
    .param p1, "serviceDataUuid"    # Landroid/os/ParcelUuid;
    .param p2, "serviceData"    # [B
    .param p3, "serviceDataMask"    # [B

    .line 1051
    if-eqz p1, :cond_3

    .line 1054
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataMask:[B

    if-eqz v0, :cond_2

    .line 1055
    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceData:[B

    if-eqz v1, :cond_1

    .line 1061
    array-length v1, v1

    array-length v0, v0

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 1062
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size mismatch for service data and service data mask"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1056
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "serviceData is null while serviceDataMask is not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1066
    :cond_2
    :goto_0
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    .line 1067
    iput-object p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceData:[B

    .line 1068
    iput-object p3, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceDataMask:[B

    .line 1069
    return-object p0

    .line 1052
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "serviceDataUuid is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setServiceSolicitationUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 1
    .param p1, "serviceSolicitationUuid"    # Landroid/os/ParcelUuid;

    .line 992
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    .line 993
    if-nez p1, :cond_0

    .line 994
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    .line 996
    :cond_0
    return-object p0
.end method

.method public whitelist setServiceSolicitationUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 2
    .param p1, "serviceSolicitationUuid"    # Landroid/os/ParcelUuid;
    .param p2, "solicitationUuidMask"    # Landroid/os/ParcelUuid;

    .line 1015
    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1016
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SolicitationUuid is null while SolicitationUuidMask is not null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1019
    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    .line 1020
    iput-object p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    .line 1021
    return-object p0
.end method

.method public whitelist setServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 1
    .param p1, "serviceUuid"    # Landroid/os/ParcelUuid;

    .line 964
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    .line 965
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mUuidMask:Landroid/os/ParcelUuid;

    .line 966
    return-object p0
.end method

.method public whitelist setServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 2
    .param p1, "serviceUuid"    # Landroid/os/ParcelUuid;
    .param p2, "uuidMask"    # Landroid/os/ParcelUuid;

    .line 978
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mUuidMask:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 979
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uuid is null while uuidMask is not null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 981
    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    .line 982
    iput-object p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mUuidMask:Landroid/os/ParcelUuid;

    .line 983
    return-object p0
.end method

.method public blacklist setTransportDiscoveryData(III[B)Landroid/bluetooth/le/ScanFilter$Builder;
    .locals 2
    .param p1, "orgId"    # I
    .param p2, "TDSFlags"    # I
    .param p3, "TDSFlagsMask"    # I
    .param p4, "wifiNANHash"    # [B

    .line 1129
    if-ltz p1, :cond_2

    .line 1132
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 1133
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wifi NAN Hash is not null for non-Wifi Org Id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1135
    :cond_1
    :goto_0
    iput p1, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mOrgId:I

    .line 1136
    iput p2, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mTDSFlags:I

    .line 1137
    iput p3, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mTDSFlagsMask:I

    .line 1138
    iput-object p4, p0, Landroid/bluetooth/le/ScanFilter$Builder;->mWifiNANHash:[B

    .line 1139
    return-object p0

    .line 1130
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid organization id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
