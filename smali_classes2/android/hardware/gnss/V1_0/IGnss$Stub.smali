.class public abstract Landroid/hardware/gnss/V1_0/IGnss$Stub;
.super Landroid/os/HwBinder;
.source "IGnss.java"

# interfaces
.implements Landroid/hardware/gnss/V1_0/IGnss;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IGnss;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 1142
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1145
    return-object p0
.end method

.method public blacklist debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "fd"    # Landroid/os/NativeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1158
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1195
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1196
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1197
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1198
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1199
    return-object v0
.end method

.method public final blacklist getHashChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 1170
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x13t
        -0x1at
        -0x69t
        0x10t
        -0x3dt
        -0x57t
        0x5ct
        0x2ct
        -0x42t
        -0x7ft
        -0x72t
        0x6ct
        -0x75t
        -0x49t
        0x2ct
        0x78t
        0x16t
        -0x7et
        0x3ft
        -0x54t
        -0x1bt
        -0x4t
        0x21t
        -0x3ft
        0x77t
        0x31t
        -0x4et
        0x6ft
        0x41t
        -0x27t
        0x4dt
        0x65t
    .end array-data

    :array_1
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final blacklist interfaceChain()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1150
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.gnss@1.0::IGnss"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1164
    const-string v0, "android.hardware.gnss@1.0::IGnss"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1183
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .locals 0

    .line 1205
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1207
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 15
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1235
    move-object v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    const-string v0, "android.hidl.base@1.0::IBase"

    const/4 v1, 0x0

    const-string v2, "android.hardware.gnss@1.0::IGnss"

    const/4 v9, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_b

    .line 1549
    :sswitch_0
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1551
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->notifySyspropsChanged()V

    .line 1552
    goto/16 :goto_b

    .line 1538
    :sswitch_1
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1540
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1541
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1542
    invoke-virtual {v0, v8}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1543
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1544
    goto/16 :goto_b

    .line 1528
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1530
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->ping()V

    .line 1531
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1532
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1533
    goto/16 :goto_b

    .line 1523
    :sswitch_3
    goto/16 :goto_b

    .line 1515
    :sswitch_4
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1517
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->setHALInstrumentation()V

    .line 1518
    goto/16 :goto_b

    .line 1481
    :sswitch_5
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1483
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1484
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1486
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1488
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1489
    .local v2, "_hidl_vec_size":I
    const-wide/16 v3, 0x8

    invoke-virtual {v1, v3, v4, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1490
    const-wide/16 v3, 0xc

    invoke-virtual {v1, v3, v4, v9}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1491
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1492
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 1494
    mul-int/lit8 v5, v4, 0x20

    int-to-long v9, v5

    .line 1495
    .local v9, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 1497
    .local v5, "_hidl_array_item_1":[B
    if-eqz v5, :cond_0

    array-length v11, v5

    const/16 v12, 0x20

    if-ne v11, v12, :cond_0

    .line 1501
    invoke-virtual {v3, v9, v10, v5}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1502
    nop

    .line 1492
    .end local v5    # "_hidl_array_item_1":[B
    .end local v9    # "_hidl_array_offset_1":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1498
    .restart local v5    # "_hidl_array_item_1":[B
    .restart local v9    # "_hidl_array_offset_1":J
    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Array element is not of the expected length"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1505
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_item_1":[B
    .end local v9    # "_hidl_array_offset_1":J
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1507
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1509
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1510
    goto/16 :goto_b

    .line 1470
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1472
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1473
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1474
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1475
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1476
    goto/16 :goto_b

    .line 1458
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1460
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1461
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1462
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1463
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1464
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1465
    goto/16 :goto_b

    .line 1447
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1449
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1450
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1451
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1452
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1453
    goto/16 :goto_b

    .line 1436
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1438
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->getExtensionGnssBatching()Landroid/hardware/gnss/V1_0/IGnssBatching;

    move-result-object v0

    .line 1439
    .local v0, "_hidl_out_batchingIface":Landroid/hardware/gnss/V1_0/IGnssBatching;
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1440
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IGnssBatching;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_1
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1441
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1442
    goto/16 :goto_b

    .line 1425
    .end local v0    # "_hidl_out_batchingIface":Landroid/hardware/gnss/V1_0/IGnssBatching;
    :sswitch_a
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1427
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->getExtensionGnssDebug()Landroid/hardware/gnss/V1_0/IGnssDebug;

    move-result-object v0

    .line 1428
    .local v0, "_hidl_out_debugIface":Landroid/hardware/gnss/V1_0/IGnssDebug;
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1429
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IGnssDebug;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_2
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1430
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1431
    goto/16 :goto_b

    .line 1414
    .end local v0    # "_hidl_out_debugIface":Landroid/hardware/gnss/V1_0/IGnssDebug;
    :sswitch_b
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1416
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->getExtensionGnssConfiguration()Landroid/hardware/gnss/V1_0/IGnssConfiguration;

    move-result-object v0

    .line 1417
    .local v0, "_hidl_out_gnssConfigIface":Landroid/hardware/gnss/V1_0/IGnssConfiguration;
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1418
    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IGnssConfiguration;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_3
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1419
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1420
    goto/16 :goto_b

    .line 1403
    .end local v0    # "_hidl_out_gnssConfigIface":Landroid/hardware/gnss/V1_0/IGnssConfiguration;
    :sswitch_c
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1405
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->getExtensionXtra()Landroid/hardware/gnss/V1_0/IGnssXtra;

    move-result-object v0

    .line 1406
    .local v0, "_hidl_out_xtraIface":Landroid/hardware/gnss/V1_0/IGnssXtra;
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1407
    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IGnssXtra;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_4
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1408
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1409
    goto/16 :goto_b

    .line 1392
    .end local v0    # "_hidl_out_xtraIface":Landroid/hardware/gnss/V1_0/IGnssXtra;
    :sswitch_d
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1394
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->getExtensionGnssNavigationMessage()Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;

    move-result-object v0

    .line 1395
    .local v0, "_hidl_out_gnssNavigationIface":Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1396
    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_5
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1397
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1398
    goto/16 :goto_b

    .line 1381
    .end local v0    # "_hidl_out_gnssNavigationIface":Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;
    :sswitch_e
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1383
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->getExtensionGnssMeasurement()Landroid/hardware/gnss/V1_0/IGnssMeasurement;

    move-result-object v0

    .line 1384
    .local v0, "_hidl_out_gnssMeasurementIface":Landroid/hardware/gnss/V1_0/IGnssMeasurement;
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1385
    if-nez v0, :cond_7

    goto :goto_6

    :cond_7
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IGnssMeasurement;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_6
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1386
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1387
    goto/16 :goto_b

    .line 1370
    .end local v0    # "_hidl_out_gnssMeasurementIface":Landroid/hardware/gnss/V1_0/IGnssMeasurement;
    :sswitch_f
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1372
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->getExtensionGnssNi()Landroid/hardware/gnss/V1_0/IGnssNi;

    move-result-object v0

    .line 1373
    .local v0, "_hidl_out_gnssNiIface":Landroid/hardware/gnss/V1_0/IGnssNi;
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1374
    if-nez v0, :cond_8

    goto :goto_7

    :cond_8
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IGnssNi;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_7
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1375
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1376
    goto/16 :goto_b

    .line 1359
    .end local v0    # "_hidl_out_gnssNiIface":Landroid/hardware/gnss/V1_0/IGnssNi;
    :sswitch_10
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1361
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->getExtensionAGnss()Landroid/hardware/gnss/V1_0/IAGnss;

    move-result-object v0

    .line 1362
    .local v0, "_hidl_out_aGnssIface":Landroid/hardware/gnss/V1_0/IAGnss;
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1363
    if-nez v0, :cond_9

    goto :goto_8

    :cond_9
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IAGnss;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_8
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1364
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1365
    goto/16 :goto_b

    .line 1348
    .end local v0    # "_hidl_out_aGnssIface":Landroid/hardware/gnss/V1_0/IAGnss;
    :sswitch_11
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1350
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->getExtensionGnssGeofencing()Landroid/hardware/gnss/V1_0/IGnssGeofencing;

    move-result-object v0

    .line 1351
    .local v0, "_hidl_out_gnssGeofencingIface":Landroid/hardware/gnss/V1_0/IGnssGeofencing;
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1352
    if-nez v0, :cond_a

    goto :goto_9

    :cond_a
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IGnssGeofencing;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_9
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1353
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1354
    goto/16 :goto_b

    .line 1337
    .end local v0    # "_hidl_out_gnssGeofencingIface":Landroid/hardware/gnss/V1_0/IGnssGeofencing;
    :sswitch_12
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1339
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->getExtensionAGnssRil()Landroid/hardware/gnss/V1_0/IAGnssRil;

    move-result-object v0

    .line 1340
    .local v0, "_hidl_out_aGnssRilIface":Landroid/hardware/gnss/V1_0/IAGnssRil;
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1341
    if-nez v0, :cond_b

    goto :goto_a

    :cond_b
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IAGnssRil;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_a
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1342
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1343
    goto/16 :goto_b

    .line 1321
    .end local v0    # "_hidl_out_aGnssRilIface":Landroid/hardware/gnss/V1_0/IAGnssRil;
    :sswitch_13
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1323
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v10

    .line 1324
    .local v10, "mode":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 1325
    .local v11, "recurrence":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 1326
    .local v12, "minIntervalMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 1327
    .local v13, "preferredAccuracyMeters":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 1328
    .local v14, "preferredTimeMs":I
    move-object v0, p0

    move v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->setPositionMode(BIIII)Z

    move-result v0

    .line 1329
    .local v0, "_hidl_out_success":Z
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1330
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1331
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1332
    goto/16 :goto_b

    .line 1310
    .end local v0    # "_hidl_out_success":Z
    .end local v10    # "mode":B
    .end local v11    # "recurrence":I
    .end local v12    # "minIntervalMs":I
    .end local v13    # "preferredAccuracyMeters":I
    .end local v14    # "preferredTimeMs":I
    :sswitch_14
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1312
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1313
    .local v0, "aidingDataFlags":S
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->deleteAidingData(S)V

    .line 1314
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1315
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1316
    goto/16 :goto_b

    .line 1296
    .end local v0    # "aidingDataFlags":S
    :sswitch_15
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1298
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v10

    .line 1299
    .local v10, "latitudeDegrees":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v12

    .line 1300
    .local v12, "longitudeDegrees":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readFloat()F

    move-result v14

    .line 1301
    .local v14, "accuracyMeters":F
    move-object v0, p0

    move-wide v1, v10

    move-wide v3, v12

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->injectLocation(DDF)Z

    move-result v0

    .line 1302
    .local v0, "_hidl_out_success":Z
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1303
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1304
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1305
    goto :goto_b

    .line 1282
    .end local v0    # "_hidl_out_success":Z
    .end local v10    # "latitudeDegrees":D
    .end local v12    # "longitudeDegrees":D
    .end local v14    # "accuracyMeters":F
    :sswitch_16
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1284
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v10

    .line 1285
    .local v10, "timeMs":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v12

    .line 1286
    .local v12, "timeReferenceMs":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 1287
    .local v14, "uncertaintyMs":I
    move-object v0, p0

    move-wide v1, v10

    move-wide v3, v12

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->injectTime(JJI)Z

    move-result v0

    .line 1288
    .restart local v0    # "_hidl_out_success":Z
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1289
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1290
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1291
    goto :goto_b

    .line 1272
    .end local v0    # "_hidl_out_success":Z
    .end local v10    # "timeMs":J
    .end local v12    # "timeReferenceMs":J
    .end local v14    # "uncertaintyMs":I
    :sswitch_17
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1274
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->cleanup()V

    .line 1275
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1276
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1277
    goto :goto_b

    .line 1261
    :sswitch_18
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1263
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->stop()Z

    move-result v0

    .line 1264
    .restart local v0    # "_hidl_out_success":Z
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1265
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1266
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1267
    goto :goto_b

    .line 1250
    .end local v0    # "_hidl_out_success":Z
    :sswitch_19
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1252
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->start()Z

    move-result v0

    .line 1253
    .restart local v0    # "_hidl_out_success":Z
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1254
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1255
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1256
    goto :goto_b

    .line 1238
    .end local v0    # "_hidl_out_success":Z
    :sswitch_1a
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1240
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V1_0/IGnssCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IGnssCallback;

    move-result-object v0

    .line 1241
    .local v0, "callback":Landroid/hardware/gnss/V1_0/IGnssCallback;
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->setCallback(Landroid/hardware/gnss/V1_0/IGnssCallback;)Z

    move-result v1

    .line 1242
    .local v1, "_hidl_out_success":Z
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1243
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1244
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1245
    nop

    .line 1561
    .end local v0    # "callback":Landroid/hardware/gnss/V1_0/IGnssCallback;
    .end local v1    # "_hidl_out_success":Z
    :goto_b
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1a
        0x2 -> :sswitch_19
        0x3 -> :sswitch_18
        0x4 -> :sswitch_17
        0x5 -> :sswitch_16
        0x6 -> :sswitch_15
        0x7 -> :sswitch_14
        0x8 -> :sswitch_13
        0x9 -> :sswitch_12
        0xa -> :sswitch_11
        0xb -> :sswitch_10
        0xc -> :sswitch_f
        0xd -> :sswitch_e
        0xe -> :sswitch_d
        0xf -> :sswitch_c
        0x10 -> :sswitch_b
        0x11 -> :sswitch_a
        0x12 -> :sswitch_9
        0xf43484e -> :sswitch_8
        0xf444247 -> :sswitch_7
        0xf445343 -> :sswitch_6
        0xf485348 -> :sswitch_5
        0xf494e54 -> :sswitch_4
        0xf4c5444 -> :sswitch_3
        0xf504e47 -> :sswitch_2
        0xf524546 -> :sswitch_1
        0xf535953 -> :sswitch_0
    .end sparse-switch
.end method

.method public final blacklist ping()V
    .locals 0

    .line 1189
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1217
    const-string v0, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1218
    return-object p0

    .line 1220
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist registerAsService(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1224
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->registerService(Ljava/lang/String;)V

    .line 1225
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .locals 0

    .line 1179
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 1229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 1211
    const/4 v0, 0x1

    return v0
.end method
