.class public abstract Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;
.super Landroid/os/HwBinder;
.source "IOplusProject.java"

# interfaces
.implements Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 1090
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1093
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

    .line 1106
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1143
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1144
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1145
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1146
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1147
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

    .line 1118
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
        -0x16t
        -0x10t
        -0x19t
        0x3bt
        0x17t
        0x18t
        -0x22t
        -0x40t
        0x79t
        0x71t
        0x8t
        0x6ft
        0x78t
        -0x21t
        -0x3at
        0x48t
        0x5t
        0x68t
        0x27t
        -0x5dt
        -0x2bt
        0x56t
        -0x44t
        0x18t
        0x10t
        -0x67t
        -0x53t
        0x43t
        0x3ct
        -0x67t
        -0x5t
        0x2dt
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

    .line 1098
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.oplus.hardware.stability.oplus_project@1.0::IOplusProject"

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

    .line 1112
    const-string v0, "vendor.oplus.hardware.stability.oplus_project@1.0::IOplusProject"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1131
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .locals 0

    .line 1153
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1155
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 10
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1183
    const-string v0, "android.hidl.base@1.0::IBase"

    const-string v1, "vendor.oplus.hardware.stability.oplus_project@1.0::IOplusProject"

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 1653
    :sswitch_0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1655
    invoke-virtual {p0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->notifySyspropsChanged()V

    .line 1656
    goto/16 :goto_1

    .line 1642
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1644
    invoke-virtual {p0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1645
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1646
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1647
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1648
    goto/16 :goto_1

    .line 1632
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1634
    invoke-virtual {p0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->ping()V

    .line 1635
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1636
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1637
    goto/16 :goto_1

    .line 1627
    :sswitch_3
    goto/16 :goto_1

    .line 1619
    :sswitch_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1621
    invoke-virtual {p0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->setHALInstrumentation()V

    .line 1622
    goto/16 :goto_1

    .line 1585
    :sswitch_5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1587
    invoke-virtual {p0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1588
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1590
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 1592
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1593
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1594
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1595
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v2, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1596
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 1598
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 1599
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1601
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 1605
    invoke-virtual {v2, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1606
    nop

    .line 1596
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1602
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1609
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1611
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1613
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1614
    goto/16 :goto_1

    .line 1574
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1576
    invoke-virtual {p0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1577
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1578
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1579
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1580
    goto/16 :goto_1

    .line 1562
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1564
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1565
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1566
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1567
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1568
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1569
    goto/16 :goto_1

    .line 1551
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1553
    invoke-virtual {p0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1554
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1555
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1556
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1557
    goto/16 :goto_1

    .line 1540
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1542
    invoke-virtual {p0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->get_pmic_info()Ljava/lang/String;

    move-result-object v0

    .line 1543
    .local v0, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1544
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1545
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1546
    goto/16 :goto_1

    .line 1529
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_a
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1531
    invoke-virtual {p0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->miscModuleBlocklist()Ljava/lang/String;

    move-result-object v0

    .line 1532
    .restart local v0    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1533
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1534
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1535
    goto/16 :goto_1

    .line 1518
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1520
    invoke-virtual {p0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->miscModule2Load()Ljava/lang/String;

    move-result-object v0

    .line 1521
    .restart local v0    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1522
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1523
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1524
    goto/16 :goto_1

    .line 1507
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1509
    invoke-virtual {p0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->miscReadLinkedModules()Ljava/lang/String;

    move-result-object v0

    .line 1510
    .restart local v0    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1511
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1512
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1513
    goto/16 :goto_1

    .line 1493
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_d
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1495
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1496
    .local v0, "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1497
    .local v1, "saveAgingData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1498
    .local v3, "length":I
    invoke-virtual {p0, v0, v1, v3}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->saveAgingData(ILjava/util/ArrayList;I)Z

    move-result v4

    .line 1499
    .local v4, "_hidl_out_data":Z
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1500
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1501
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1502
    goto/16 :goto_1

    .line 1481
    .end local v0    # "type":I
    .end local v1    # "saveAgingData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v3    # "length":I
    .end local v4    # "_hidl_out_data":Z
    :sswitch_e
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1483
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1484
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->readAgingData(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1485
    .local v1, "_hidl_out_data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1486
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 1487
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1488
    goto/16 :goto_1

    .line 1468
    .end local v0    # "type":I
    .end local v1    # "_hidl_out_data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_f
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1470
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1471
    .local v0, "theia_node_id":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1472
    .local v1, "theia_data":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->write_theia_node(ILjava/lang/String;)Z

    move-result v3

    .line 1473
    .local v3, "_hidl_out_success":Z
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1474
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1475
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1476
    goto/16 :goto_1

    .line 1456
    .end local v0    # "theia_node_id":I
    .end local v1    # "theia_data":Ljava/lang/String;
    .end local v3    # "_hidl_out_success":Z
    :sswitch_10
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1458
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1459
    .restart local v0    # "theia_node_id":I
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->read_theia_node(I)Ljava/lang/String;

    move-result-object v1

    .line 1460
    .local v1, "_hidl_out_theia_data":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1461
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1462
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1463
    goto/16 :goto_1

    .line 1445
    .end local v0    # "theia_node_id":I
    .end local v1    # "_hidl_out_theia_data":Ljava/lang/String;
    :sswitch_11
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1447
    invoke-virtual {p0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->is_ufs_devices()Z

    move-result v0

    .line 1448
    .local v0, "_hidl_out_success":Z
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1449
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1450
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1451
    goto/16 :goto_1

    .line 1434
    .end local v0    # "_hidl_out_success":Z
    :sswitch_12
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1436
    invoke-virtual {p0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->get_sau()I

    move-result v0

    .line 1437
    .local v0, "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1438
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1439
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1440
    goto/16 :goto_1

    .line 1423
    .end local v0    # "_hidl_out_result":I
    :sswitch_13
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1425
    invoke-virtual {p0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->get_ocp()Ljava/lang/String;

    move-result-object v0

    .line 1426
    .local v0, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1427
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1428
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1429
    goto/16 :goto_1

    .line 1412
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_14
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1414
    invoke-virtual {p0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->get_pon_reason()Ljava/lang/String;

    move-result-object v0

    .line 1415
    .restart local v0    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1416
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1417
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1418
    goto/16 :goto_1

    .line 1401
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_15
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1403
    invoke-virtual {p0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->get_poff_reason()Ljava/lang/String;

    move-result-object v0

    .line 1404
    .restart local v0    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1405
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1406
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1407
    goto/16 :goto_1

    .line 1389
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_16
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1391
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1392
    .local v0, "shutdown_detect_vaule":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->set_shutdown_detect(Ljava/lang/String;)Z

    move-result v1

    .line 1393
    .local v1, "_hidl_out_success":Z
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1394
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1395
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1396
    goto/16 :goto_1

    .line 1378
    .end local v0    # "shutdown_detect_vaule":Ljava/lang/String;
    .end local v1    # "_hidl_out_success":Z
    :sswitch_17
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1380
    invoke-virtual {p0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->get_shutdown_detect()Ljava/lang/String;

    move-result-object v0

    .line 1381
    .local v0, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1382
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1383
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1384
    goto/16 :goto_1

    .line 1366
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_18
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1368
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1369
    .local v0, "monitoting_command":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->set_phoenix(Ljava/lang/String;)Z

    move-result v1

    .line 1370
    .restart local v1    # "_hidl_out_success":Z
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1371
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1372
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1373
    goto/16 :goto_1

    .line 1355
    .end local v0    # "monitoting_command":Ljava/lang/String;
    .end local v1    # "_hidl_out_success":Z
    :sswitch_19
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1357
    invoke-virtual {p0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->get_phoenix()Ljava/lang/String;

    move-result-object v0

    .line 1358
    .local v0, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1359
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1360
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1361
    goto/16 :goto_1

    .line 1343
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1345
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1346
    .local v0, "pmic_id":I
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->get_oplusocp_status(I)Ljava/lang/String;

    move-result-object v1

    .line 1347
    .local v1, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1348
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1349
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1350
    goto/16 :goto_1

    .line 1331
    .end local v0    # "pmic_id":I
    .end local v1    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1333
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1334
    .restart local v0    # "pmic_id":I
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->get_opluspon_reason(I)Ljava/lang/String;

    move-result-object v1

    .line 1335
    .restart local v1    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1336
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1337
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1338
    goto/16 :goto_1

    .line 1319
    .end local v0    # "pmic_id":I
    .end local v1    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1321
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1322
    .restart local v0    # "pmic_id":I
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->get_opluspoff_reason(I)Ljava/lang/String;

    move-result-object v1

    .line 1323
    .restart local v1    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1324
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1325
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1326
    goto/16 :goto_1

    .line 1307
    .end local v0    # "pmic_id":I
    .end local v1    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1309
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1310
    .local v0, "opboot":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->set_opboot(Ljava/lang/String;)Z

    move-result v1

    .line 1311
    .local v1, "_hidl_out_success":Z
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1312
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1313
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1314
    goto/16 :goto_1

    .line 1296
    .end local v0    # "opboot":Ljava/lang/String;
    .end local v1    # "_hidl_out_success":Z
    :sswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1298
    invoke-virtual {p0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->get_opboot()Ljava/lang/String;

    move-result-object v0

    .line 1299
    .local v0, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1300
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1301
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1302
    goto/16 :goto_1

    .line 1285
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1287
    invoke-virtual {p0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->get_mt_gpio()Ljava/lang/String;

    move-result-object v0

    .line 1288
    .restart local v0    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1289
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1290
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1291
    goto/16 :goto_1

    .line 1274
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_20
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1276
    invoke-virtual {p0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->get_ftmmode()I

    move-result v0

    .line 1277
    .local v0, "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1278
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1279
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1280
    goto/16 :goto_1

    .line 1263
    .end local v0    # "_hidl_out_result":I
    :sswitch_21
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1265
    invoke-virtual {p0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->get_force_reboot()Ljava/lang/String;

    move-result-object v0

    .line 1266
    .local v0, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1267
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1268
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1269
    goto/16 :goto_1

    .line 1252
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_22
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1254
    invoke-virtual {p0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->get_hungtask()Ljava/lang/String;

    move-result-object v0

    .line 1255
    .restart local v0    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1256
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1257
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1258
    goto :goto_1

    .line 1241
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_23
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1243
    invoke-virtual {p0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->get_eng_version()I

    move-result v0

    .line 1244
    .local v0, "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1245
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1246
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1247
    goto :goto_1

    .line 1230
    .end local v0    # "_hidl_out_result":I
    :sswitch_24
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1232
    invoke-virtual {p0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->get_rf_type()I

    move-result v0

    .line 1233
    .restart local v0    # "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1234
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1235
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1236
    goto :goto_1

    .line 1219
    .end local v0    # "_hidl_out_result":I
    :sswitch_25
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1221
    invoke-virtual {p0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->get_operator_name()I

    move-result v0

    .line 1222
    .restart local v0    # "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1223
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1224
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1225
    goto :goto_1

    .line 1208
    .end local v0    # "_hidl_out_result":I
    :sswitch_26
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1210
    invoke-virtual {p0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->get_serial_ID()Ljava/lang/String;

    move-result-object v0

    .line 1211
    .local v0, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1212
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1213
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1214
    goto :goto_1

    .line 1197
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_27
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1199
    invoke-virtual {p0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->get_pcb_version()I

    move-result v0

    .line 1200
    .local v0, "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1201
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1202
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1203
    goto :goto_1

    .line 1186
    .end local v0    # "_hidl_out_result":I
    :sswitch_28
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1188
    invoke-virtual {p0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->get_project()I

    move-result v0

    .line 1189
    .restart local v0    # "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1190
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1191
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1192
    nop

    .line 1665
    .end local v0    # "_hidl_out_result":I
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_28
        0x2 -> :sswitch_27
        0x3 -> :sswitch_26
        0x4 -> :sswitch_25
        0x5 -> :sswitch_24
        0x6 -> :sswitch_23
        0x7 -> :sswitch_22
        0x8 -> :sswitch_21
        0x9 -> :sswitch_20
        0xa -> :sswitch_1f
        0xb -> :sswitch_1e
        0xc -> :sswitch_1d
        0xd -> :sswitch_1c
        0xe -> :sswitch_1b
        0xf -> :sswitch_1a
        0x10 -> :sswitch_19
        0x11 -> :sswitch_18
        0x12 -> :sswitch_17
        0x13 -> :sswitch_16
        0x14 -> :sswitch_15
        0x15 -> :sswitch_14
        0x16 -> :sswitch_13
        0x17 -> :sswitch_12
        0x18 -> :sswitch_11
        0x19 -> :sswitch_10
        0x1a -> :sswitch_f
        0x1b -> :sswitch_e
        0x1c -> :sswitch_d
        0x1d -> :sswitch_c
        0x1e -> :sswitch_b
        0x1f -> :sswitch_a
        0x20 -> :sswitch_9
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

    .line 1137
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1165
    const-string v0, "vendor.oplus.hardware.stability.oplus_project@1.0::IOplusProject"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1166
    return-object p0

    .line 1168
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

    .line 1172
    invoke-virtual {p0, p1}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->registerService(Ljava/lang/String;)V

    .line 1173
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .locals 0

    .line 1127
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 1177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1159
    const/4 v0, 0x1

    return v0
.end method
