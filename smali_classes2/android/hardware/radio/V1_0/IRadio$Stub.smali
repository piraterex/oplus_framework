.class public abstract Landroid/hardware/radio/V1_0/IRadio$Stub;
.super Landroid/os/HwBinder;
.source "IRadio.java"

# interfaces
.implements Landroid/hardware/radio/V1_0/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_0/IRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 4158
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 4161
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

    .line 4174
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 4211
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 4212
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 4213
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 4214
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 4215
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

    .line 4186
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
        -0x31t
        -0x56t
        -0x50t
        -0x1ct
        0x5ct
        0x5dt
        0x7bt
        0x35t
        -0x6bt
        0x3t
        0x2dt
        0x64t
        -0x63t
        -0x5et
        -0x62t
        -0x29t
        0x12t
        -0x17t
        0x20t
        -0x7t
        0x56t
        -0x3ft
        0x36t
        0x71t
        -0x11t
        -0x2dt
        0x56t
        0x2t
        -0x6t
        -0x7ft
        -0x37t
        0x23t
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

    .line 4166
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.radio@1.0::IRadio"

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

    .line 4180
    const-string v0, "android.hardware.radio@1.0::IRadio"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 4199
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .locals 0

    .line 4221
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 4223
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 16
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4251
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v0, "android.hidl.base@1.0::IBase"

    const/4 v1, 0x0

    const-string v2, "android.hardware.radio@1.0::IRadio"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 5665
    :sswitch_0
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5667
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->notifySyspropsChanged()V

    .line 5668
    goto/16 :goto_1

    .line 5654
    :sswitch_1
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5656
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 5657
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5658
    invoke-virtual {v0, v9}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 5659
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5660
    goto/16 :goto_1

    .line 5644
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5646
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->ping()V

    .line 5647
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5648
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5649
    goto/16 :goto_1

    .line 5639
    :sswitch_3
    goto/16 :goto_1

    .line 5631
    :sswitch_4
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5633
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setHALInstrumentation()V

    .line 5634
    goto/16 :goto_1

    .line 5597
    :sswitch_5
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5599
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 5600
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5602
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 5604
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5605
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 5606
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 5607
    new-instance v1, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 5608
    .local v1, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 5610
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 5611
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 5613
    .local v10, "_hidl_array_item_1":[B
    if-eqz v10, :cond_0

    array-length v11, v10

    const/16 v12, 0x20

    if-ne v11, v12, :cond_0

    .line 5617
    invoke-virtual {v1, v5, v6, v10}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 5618
    nop

    .line 5608
    .end local v5    # "_hidl_array_offset_1":J
    .end local v10    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5614
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v10    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Array element is not of the expected length"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 5621
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v10    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 5623
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 5625
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5626
    goto/16 :goto_1

    .line 5586
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5588
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 5589
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5590
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5591
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5592
    goto/16 :goto_1

    .line 5574
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5576
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 5577
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 5578
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7, v0, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 5579
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5580
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5581
    goto/16 :goto_1

    .line 5563
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5565
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 5566
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5567
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 5568
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5569
    goto/16 :goto_1

    .line 5555
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5557
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->responseAcknowledgement()V

    .line 5558
    goto/16 :goto_1

    .line 5545
    :sswitch_a
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5547
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5548
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5549
    .local v1, "powerUp":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setSimCardPower(IZ)V

    .line 5550
    goto/16 :goto_1

    .line 5535
    .end local v0    # "serial":I
    .end local v1    # "powerUp":Z
    :sswitch_b
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5537
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5538
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5539
    .local v1, "indicationFilter":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setIndicationFilter(II)V

    .line 5540
    goto/16 :goto_1

    .line 5524
    .end local v0    # "serial":I
    .end local v1    # "indicationFilter":I
    :sswitch_c
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5526
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5527
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5528
    .local v1, "deviceStateType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5529
    .local v2, "state":Z
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendDeviceState(IIZ)V

    .line 5530
    goto/16 :goto_1

    .line 5515
    .end local v0    # "serial":I
    .end local v1    # "deviceStateType":I
    .end local v2    # "state":Z
    :sswitch_d
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5517
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5518
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getAllowedCarriers(I)V

    .line 5519
    goto/16 :goto_1

    .line 5503
    .end local v0    # "serial":I
    :sswitch_e
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5505
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5506
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5507
    .local v1, "allAllowed":Z
    new-instance v2, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 5508
    .local v2, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5509
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 5510
    goto/16 :goto_1

    .line 5494
    .end local v0    # "serial":I
    .end local v1    # "allAllowed":Z
    .end local v2    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :sswitch_f
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5496
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5497
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getModemActivityInfo(I)V

    .line 5498
    goto/16 :goto_1

    .line 5485
    .end local v0    # "serial":I
    :sswitch_10
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5487
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5488
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->pullLceData(I)V

    .line 5489
    goto/16 :goto_1

    .line 5476
    .end local v0    # "serial":I
    :sswitch_11
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5478
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5479
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->stopLceService(I)V

    .line 5480
    goto/16 :goto_1

    .line 5465
    .end local v0    # "serial":I
    :sswitch_12
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5467
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5468
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5469
    .local v1, "reportInterval":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5470
    .local v2, "pullMode":Z
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->startLceService(IIZ)V

    .line 5471
    goto/16 :goto_1

    .line 5454
    .end local v0    # "serial":I
    .end local v1    # "reportInterval":I
    .end local v2    # "pullMode":Z
    :sswitch_13
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5456
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5457
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 5458
    .local v1, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5459
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 5460
    goto/16 :goto_1

    .line 5445
    .end local v0    # "serial":I
    .end local v1    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :sswitch_14
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5447
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5448
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getRadioCapability(I)V

    .line 5449
    goto/16 :goto_1

    .line 5436
    .end local v0    # "serial":I
    :sswitch_15
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5438
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5439
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->requestShutdown(I)V

    .line 5440
    goto/16 :goto_1

    .line 5425
    .end local v0    # "serial":I
    :sswitch_16
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5427
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5428
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5429
    .local v1, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5430
    .local v2, "isRoaming":Z
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setDataProfile(ILjava/util/ArrayList;Z)V

    .line 5431
    goto/16 :goto_1

    .line 5413
    .end local v0    # "serial":I
    .end local v1    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    .end local v2    # "isRoaming":Z
    :sswitch_17
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5415
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5416
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5417
    .local v1, "authContext":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5418
    .local v2, "authData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5419
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    .line 5420
    goto/16 :goto_1

    .line 5404
    .end local v0    # "serial":I
    .end local v1    # "authContext":I
    .end local v2    # "authData":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :sswitch_18
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5406
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5407
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getHardwareConfig(I)V

    .line 5408
    goto/16 :goto_1

    .line 5394
    .end local v0    # "serial":I
    :sswitch_19
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5396
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5397
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5398
    .local v1, "allow":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setDataAllowed(IZ)V

    .line 5399
    goto/16 :goto_1

    .line 5383
    .end local v0    # "serial":I
    .end local v1    # "allow":Z
    :sswitch_1a
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5385
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5386
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    .line 5387
    .local v1, "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SelectUiccSub;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5388
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V

    .line 5389
    goto/16 :goto_1

    .line 5373
    .end local v0    # "serial":I
    .end local v1    # "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    :sswitch_1b
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5375
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5376
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5377
    .local v1, "resetType":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->nvResetConfig(II)V

    .line 5378
    goto/16 :goto_1

    .line 5363
    .end local v0    # "serial":I
    .end local v1    # "resetType":I
    :sswitch_1c
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5365
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5366
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 5367
    .local v1, "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    .line 5368
    goto/16 :goto_1

    .line 5352
    .end local v0    # "serial":I
    .end local v1    # "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_1d
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5354
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5355
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    .line 5356
    .local v1, "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/NvWriteItem;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5357
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    .line 5358
    goto/16 :goto_1

    .line 5342
    .end local v0    # "serial":I
    .end local v1    # "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    :sswitch_1e
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5344
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5345
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5346
    .local v1, "itemId":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->nvReadItem(II)V

    .line 5347
    goto/16 :goto_1

    .line 5331
    .end local v0    # "serial":I
    .end local v1    # "itemId":I
    :sswitch_1f
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5333
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5334
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 5335
    .local v1, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5336
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 5337
    goto/16 :goto_1

    .line 5321
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :sswitch_20
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5323
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5324
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5325
    .local v1, "channelId":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->iccCloseLogicalChannel(II)V

    .line 5326
    goto/16 :goto_1

    .line 5310
    .end local v0    # "serial":I
    .end local v1    # "channelId":I
    :sswitch_21
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5312
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5313
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5314
    .local v1, "aid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5315
    .local v2, "p2":I
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    .line 5316
    goto/16 :goto_1

    .line 5299
    .end local v0    # "serial":I
    .end local v1    # "aid":Ljava/lang/String;
    .end local v2    # "p2":I
    :sswitch_22
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5301
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5302
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 5303
    .local v1, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5304
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 5305
    goto/16 :goto_1

    .line 5288
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :sswitch_23
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5290
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5291
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 5292
    .local v1, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5293
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 5294
    goto/16 :goto_1

    .line 5279
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :sswitch_24
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5281
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5282
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getImsRegistrationState(I)V

    .line 5283
    goto/16 :goto_1

    .line 5266
    .end local v0    # "serial":I
    :sswitch_25
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5268
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5269
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 5270
    .local v1, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5271
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5272
    .local v2, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 5273
    .local v3, "isRoaming":Z
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    .line 5274
    goto/16 :goto_1

    .line 5256
    .end local v0    # "serial":I
    .end local v1    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v2    # "modemCognitive":Z
    .end local v3    # "isRoaming":Z
    :sswitch_26
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5258
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5259
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5260
    .local v1, "rate":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCellInfoListRate(II)V

    .line 5261
    goto/16 :goto_1

    .line 5247
    .end local v0    # "serial":I
    .end local v1    # "rate":I
    :sswitch_27
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5249
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5250
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCellInfoList(I)V

    .line 5251
    goto/16 :goto_1

    .line 5238
    .end local v0    # "serial":I
    :sswitch_28
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5240
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5241
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getVoiceRadioTechnology(I)V

    .line 5242
    goto/16 :goto_1

    .line 5228
    .end local v0    # "serial":I
    :sswitch_29
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5230
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5231
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5232
    .local v1, "contents":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    .line 5233
    goto/16 :goto_1

    .line 5217
    .end local v0    # "serial":I
    .end local v1    # "contents":Ljava/lang/String;
    :sswitch_2a
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5219
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5220
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5221
    .local v1, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5222
    .local v2, "ackPdu":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    .line 5223
    goto/16 :goto_1

    .line 5207
    .end local v0    # "serial":I
    .end local v1    # "success":Z
    .end local v2    # "ackPdu":Ljava/lang/String;
    :sswitch_2b
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5209
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5210
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5211
    .local v1, "challenge":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->requestIsimAuthentication(ILjava/lang/String;)V

    .line 5212
    goto/16 :goto_1

    .line 5198
    .end local v0    # "serial":I
    .end local v1    # "challenge":Ljava/lang/String;
    :sswitch_2c
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5200
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5201
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCdmaSubscriptionSource(I)V

    .line 5202
    goto/16 :goto_1

    .line 5189
    .end local v0    # "serial":I
    :sswitch_2d
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5191
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5192
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->reportStkServiceIsRunning(I)V

    .line 5193
    goto/16 :goto_1

    .line 5179
    .end local v0    # "serial":I
    :sswitch_2e
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5181
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5182
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5183
    .local v1, "available":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->reportSmsMemoryStatus(IZ)V

    .line 5184
    goto/16 :goto_1

    .line 5169
    .end local v0    # "serial":I
    .end local v1    # "available":Z
    :sswitch_2f
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5171
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5172
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5173
    .local v1, "smsc":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setSmscAddress(ILjava/lang/String;)V

    .line 5174
    goto/16 :goto_1

    .line 5160
    .end local v0    # "serial":I
    .end local v1    # "smsc":Ljava/lang/String;
    :sswitch_30
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5162
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5163
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getSmscAddress(I)V

    .line 5164
    goto/16 :goto_1

    .line 5151
    .end local v0    # "serial":I
    :sswitch_31
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5153
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5154
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 5155
    goto/16 :goto_1

    .line 5142
    .end local v0    # "serial":I
    :sswitch_32
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5144
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5145
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getDeviceIdentity(I)V

    .line 5146
    goto/16 :goto_1

    .line 5132
    .end local v0    # "serial":I
    :sswitch_33
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5134
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5135
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5136
    .local v1, "index":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->deleteSmsOnRuim(II)V

    .line 5137
    goto/16 :goto_1

    .line 5121
    .end local v0    # "serial":I
    .end local v1    # "index":I
    :sswitch_34
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5123
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5124
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    .line 5125
    .local v1, "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5126
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    .line 5127
    goto/16 :goto_1

    .line 5112
    .end local v0    # "serial":I
    .end local v1    # "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    :sswitch_35
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5114
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5115
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCDMASubscription(I)V

    .line 5116
    goto/16 :goto_1

    .line 5102
    .end local v0    # "serial":I
    :sswitch_36
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5104
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5105
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5106
    .local v1, "activate":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCdmaBroadcastActivation(IZ)V

    .line 5107
    goto/16 :goto_1

    .line 5092
    .end local v0    # "serial":I
    .end local v1    # "activate":Z
    :sswitch_37
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5094
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5095
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5096
    .local v1, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V

    .line 5097
    goto/16 :goto_1

    .line 5083
    .end local v0    # "serial":I
    .end local v1    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :sswitch_38
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5085
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5086
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCdmaBroadcastConfig(I)V

    .line 5087
    goto/16 :goto_1

    .line 5073
    .end local v0    # "serial":I
    :sswitch_39
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5075
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5076
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5077
    .local v1, "activate":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setGsmBroadcastActivation(IZ)V

    .line 5078
    goto/16 :goto_1

    .line 5063
    .end local v0    # "serial":I
    .end local v1    # "activate":Z
    :sswitch_3a
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5065
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5066
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5067
    .local v1, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    .line 5068
    goto/16 :goto_1

    .line 5054
    .end local v0    # "serial":I
    .end local v1    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :sswitch_3b
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5056
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5057
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getGsmBroadcastConfig(I)V

    .line 5058
    goto/16 :goto_1

    .line 5043
    .end local v0    # "serial":I
    :sswitch_3c
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5045
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5046
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 5047
    .local v1, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5048
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 5049
    goto/16 :goto_1

    .line 5032
    .end local v0    # "serial":I
    .end local v1    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :sswitch_3d
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5034
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5035
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 5036
    .local v1, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5037
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 5038
    goto/16 :goto_1

    .line 5020
    .end local v0    # "serial":I
    .end local v1    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :sswitch_3e
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5022
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5023
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5024
    .local v1, "dtmf":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5025
    .local v2, "on":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5026
    .local v3, "off":I
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    .line 5027
    goto/16 :goto_1

    .line 5010
    .end local v0    # "serial":I
    .end local v1    # "dtmf":Ljava/lang/String;
    .end local v2    # "on":I
    .end local v3    # "off":I
    :sswitch_3f
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5012
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5013
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5014
    .local v1, "featureCode":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendCDMAFeatureCode(ILjava/lang/String;)V

    .line 5015
    goto/16 :goto_1

    .line 5001
    .end local v0    # "serial":I
    .end local v1    # "featureCode":Ljava/lang/String;
    :sswitch_40
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5003
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5004
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getPreferredVoicePrivacy(I)V

    .line 5005
    goto/16 :goto_1

    .line 4991
    .end local v0    # "serial":I
    :sswitch_41
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4993
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4994
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4995
    .local v1, "enable":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setPreferredVoicePrivacy(IZ)V

    .line 4996
    goto/16 :goto_1

    .line 4982
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_42
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4984
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4985
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getTTYMode(I)V

    .line 4986
    goto/16 :goto_1

    .line 4972
    .end local v0    # "serial":I
    :sswitch_43
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4974
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4975
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4976
    .local v1, "mode":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setTTYMode(II)V

    .line 4977
    goto/16 :goto_1

    .line 4963
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_44
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4965
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4966
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCdmaRoamingPreference(I)V

    .line 4967
    goto/16 :goto_1

    .line 4953
    .end local v0    # "serial":I
    :sswitch_45
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4955
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4956
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4957
    .local v1, "type":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCdmaRoamingPreference(II)V

    .line 4958
    goto/16 :goto_1

    .line 4943
    .end local v0    # "serial":I
    .end local v1    # "type":I
    :sswitch_46
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4945
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4946
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4947
    .local v1, "cdmaSub":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCdmaSubscriptionSource(II)V

    .line 4948
    goto/16 :goto_1

    .line 4933
    .end local v0    # "serial":I
    .end local v1    # "cdmaSub":I
    :sswitch_47
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4935
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4936
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4937
    .local v1, "enable":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setLocationUpdates(IZ)V

    .line 4938
    goto/16 :goto_1

    .line 4924
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_48
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4926
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4927
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getNeighboringCids(I)V

    .line 4928
    goto/16 :goto_1

    .line 4915
    .end local v0    # "serial":I
    :sswitch_49
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4917
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4918
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getPreferredNetworkType(I)V

    .line 4919
    goto/16 :goto_1

    .line 4905
    .end local v0    # "serial":I
    :sswitch_4a
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4907
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4908
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4909
    .local v1, "nwType":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setPreferredNetworkType(II)V

    .line 4910
    goto/16 :goto_1

    .line 4896
    .end local v0    # "serial":I
    .end local v1    # "nwType":I
    :sswitch_4b
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4898
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4899
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->explicitCallTransfer(I)V

    .line 4900
    goto/16 :goto_1

    .line 4886
    .end local v0    # "serial":I
    :sswitch_4c
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4888
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4889
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4890
    .local v1, "accept":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    .line 4891
    goto/16 :goto_1

    .line 4876
    .end local v0    # "serial":I
    .end local v1    # "accept":Z
    :sswitch_4d
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4878
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4879
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4880
    .local v1, "commandResponse":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    .line 4881
    goto/16 :goto_1

    .line 4866
    .end local v0    # "serial":I
    .end local v1    # "commandResponse":Ljava/lang/String;
    :sswitch_4e
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4868
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4869
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4870
    .local v1, "command":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendEnvelope(ILjava/lang/String;)V

    .line 4871
    goto/16 :goto_1

    .line 4857
    .end local v0    # "serial":I
    .end local v1    # "command":Ljava/lang/String;
    :sswitch_4f
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4859
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4860
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getAvailableBandModes(I)V

    .line 4861
    goto/16 :goto_1

    .line 4847
    .end local v0    # "serial":I
    :sswitch_50
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4849
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4850
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4851
    .local v1, "mode":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setBandMode(II)V

    .line 4852
    goto/16 :goto_1

    .line 4837
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_51
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4839
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4840
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4841
    .local v1, "index":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->deleteSmsOnSim(II)V

    .line 4842
    goto/16 :goto_1

    .line 4826
    .end local v0    # "serial":I
    .end local v1    # "index":I
    :sswitch_52
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4828
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4829
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    .line 4830
    .local v1, "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4831
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    .line 4832
    goto/16 :goto_1

    .line 4816
    .end local v0    # "serial":I
    .end local v1    # "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    :sswitch_53
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4818
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4819
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4820
    .local v1, "enable":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setSuppServiceNotifications(IZ)V

    .line 4821
    goto/16 :goto_1

    .line 4807
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_54
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4809
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4810
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getDataCallList(I)V

    .line 4811
    goto/16 :goto_1

    .line 4798
    .end local v0    # "serial":I
    :sswitch_55
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4800
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4801
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getClip(I)V

    .line 4802
    goto/16 :goto_1

    .line 4789
    .end local v0    # "serial":I
    :sswitch_56
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4791
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4792
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getMute(I)V

    .line 4793
    goto/16 :goto_1

    .line 4779
    .end local v0    # "serial":I
    :sswitch_57
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4781
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4782
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4783
    .restart local v1    # "enable":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setMute(IZ)V

    .line 4784
    goto/16 :goto_1

    .line 4769
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_58
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4771
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4772
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4773
    .local v1, "gsmIndex":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->separateConnection(II)V

    .line 4774
    goto/16 :goto_1

    .line 4760
    .end local v0    # "serial":I
    .end local v1    # "gsmIndex":I
    :sswitch_59
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4762
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4763
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getBasebandVersion(I)V

    .line 4764
    goto/16 :goto_1

    .line 4751
    .end local v0    # "serial":I
    :sswitch_5a
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4753
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4754
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->stopDtmf(I)V

    .line 4755
    goto/16 :goto_1

    .line 4741
    .end local v0    # "serial":I
    :sswitch_5b
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4743
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4744
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4745
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->startDtmf(ILjava/lang/String;)V

    .line 4746
    goto/16 :goto_1

    .line 4732
    .end local v0    # "serial":I
    .end local v1    # "s":Ljava/lang/String;
    :sswitch_5c
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4734
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4735
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getAvailableNetworks(I)V

    .line 4736
    goto/16 :goto_1

    .line 4722
    .end local v0    # "serial":I
    :sswitch_5d
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4724
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4725
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4726
    .local v1, "operatorNumeric":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    .line 4727
    goto/16 :goto_1

    .line 4713
    .end local v0    # "serial":I
    .end local v1    # "operatorNumeric":Ljava/lang/String;
    :sswitch_5e
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4715
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4716
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 4717
    goto/16 :goto_1

    .line 4704
    .end local v0    # "serial":I
    :sswitch_5f
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4706
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4707
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getNetworkSelectionMode(I)V

    .line 4708
    goto/16 :goto_1

    .line 4692
    .end local v0    # "serial":I
    :sswitch_60
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4694
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4695
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4696
    .local v1, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4697
    .local v2, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4698
    .local v3, "newPassword":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4699
    goto/16 :goto_1

    .line 4678
    .end local v0    # "serial":I
    .end local v1    # "facility":Ljava/lang/String;
    .end local v2    # "oldPassword":Ljava/lang/String;
    .end local v3    # "newPassword":Ljava/lang/String;
    :sswitch_61
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4680
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 4681
    .local v10, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 4682
    .local v11, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v12

    .line 4683
    .local v12, "lockState":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 4684
    .local v13, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 4685
    .local v14, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 4686
    .local v15, "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v10

    move-object v2, v11

    move v3, v12

    move-object v4, v13

    move v5, v14

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 4687
    goto/16 :goto_1

    .line 4665
    .end local v10    # "serial":I
    .end local v11    # "facility":Ljava/lang/String;
    .end local v12    # "lockState":Z
    .end local v13    # "password":Ljava/lang/String;
    .end local v14    # "serviceClass":I
    .end local v15    # "appId":Ljava/lang/String;
    :sswitch_62
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4667
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 4668
    .local v6, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 4669
    .local v10, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 4670
    .local v11, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 4671
    .local v12, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 4672
    .local v13, "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v10

    move-object v3, v11

    move v4, v12

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 4673
    goto/16 :goto_1

    .line 4654
    .end local v6    # "serial":I
    .end local v10    # "facility":Ljava/lang/String;
    .end local v11    # "password":Ljava/lang/String;
    .end local v12    # "serviceClass":I
    .end local v13    # "appId":Ljava/lang/String;
    :sswitch_63
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4656
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4657
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4658
    .local v1, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4659
    .local v2, "reasonRadioShutDown":Z
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->deactivateDataCall(IIZ)V

    .line 4660
    goto/16 :goto_1

    .line 4645
    .end local v0    # "serial":I
    .end local v1    # "cid":I
    .end local v2    # "reasonRadioShutDown":Z
    :sswitch_64
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4647
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4648
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->acceptCall(I)V

    .line 4649
    goto/16 :goto_1

    .line 4634
    .end local v0    # "serial":I
    :sswitch_65
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4636
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4637
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4638
    .local v1, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4639
    .local v2, "cause":I
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    .line 4640
    goto/16 :goto_1

    .line 4623
    .end local v0    # "serial":I
    .end local v1    # "success":Z
    .end local v2    # "cause":I
    :sswitch_66
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4625
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4626
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4627
    .local v1, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4628
    .local v2, "serviceClass":I
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCallWaiting(IZI)V

    .line 4629
    goto/16 :goto_1

    .line 4613
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    .end local v2    # "serviceClass":I
    :sswitch_67
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4615
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4616
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4617
    .local v1, "serviceClass":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCallWaiting(II)V

    .line 4618
    goto/16 :goto_1

    .line 4602
    .end local v0    # "serial":I
    .end local v1    # "serviceClass":I
    :sswitch_68
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4604
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4605
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 4606
    .local v1, "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4607
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 4608
    goto/16 :goto_1

    .line 4591
    .end local v0    # "serial":I
    .end local v1    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :sswitch_69
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4593
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4594
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 4595
    .restart local v1    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4596
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 4597
    goto/16 :goto_1

    .line 4581
    .end local v0    # "serial":I
    .end local v1    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :sswitch_6a
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4583
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4584
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4585
    .local v1, "status":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setClir(II)V

    .line 4586
    goto/16 :goto_1

    .line 4572
    .end local v0    # "serial":I
    .end local v1    # "status":I
    :sswitch_6b
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4574
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4575
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getClir(I)V

    .line 4576
    goto/16 :goto_1

    .line 4563
    .end local v0    # "serial":I
    :sswitch_6c
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4565
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4566
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->cancelPendingUssd(I)V

    .line 4567
    goto/16 :goto_1

    .line 4553
    .end local v0    # "serial":I
    :sswitch_6d
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4555
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4556
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4557
    .local v1, "ussd":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendUssd(ILjava/lang/String;)V

    .line 4558
    goto/16 :goto_1

    .line 4542
    .end local v0    # "serial":I
    .end local v1    # "ussd":Ljava/lang/String;
    :sswitch_6e
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4544
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4545
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    .line 4546
    .local v1, "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/IccIo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4547
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    .line 4548
    goto/16 :goto_1

    .line 4527
    .end local v0    # "serial":I
    .end local v1    # "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    :sswitch_6f
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4529
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 4530
    .local v10, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 4531
    .local v11, "radioTechnology":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v12, v0

    .line 4532
    .local v12, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v12, v8}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4533
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v13

    .line 4534
    .local v13, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v14

    .line 4535
    .local v14, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v15

    .line 4536
    .local v15, "isRoaming":Z
    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move-object v3, v12

    move v4, v13

    move v5, v14

    move v6, v15

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    .line 4537
    goto/16 :goto_1

    .line 4516
    .end local v10    # "serial":I
    .end local v11    # "radioTechnology":I
    .end local v12    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v13    # "modemCognitive":Z
    .end local v14    # "roamingAllowed":Z
    .end local v15    # "isRoaming":Z
    :sswitch_70
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4518
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4519
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 4520
    .local v1, "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4521
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 4522
    goto/16 :goto_1

    .line 4505
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :sswitch_71
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4507
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4508
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 4509
    .restart local v1    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4510
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 4511
    goto/16 :goto_1

    .line 4495
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :sswitch_72
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4497
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4498
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4499
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    .line 4500
    goto/16 :goto_1

    .line 4485
    .end local v0    # "serial":I
    .end local v1    # "s":Ljava/lang/String;
    :sswitch_73
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4487
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4488
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4489
    .local v1, "on":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setRadioPower(IZ)V

    .line 4490
    goto/16 :goto_1

    .line 4476
    .end local v0    # "serial":I
    .end local v1    # "on":Z
    :sswitch_74
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4478
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4479
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getOperator(I)V

    .line 4480
    goto/16 :goto_1

    .line 4467
    .end local v0    # "serial":I
    :sswitch_75
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4469
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4470
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getDataRegistrationState(I)V

    .line 4471
    goto/16 :goto_1

    .line 4458
    .end local v0    # "serial":I
    :sswitch_76
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4460
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4461
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getVoiceRegistrationState(I)V

    .line 4462
    goto/16 :goto_1

    .line 4449
    .end local v0    # "serial":I
    :sswitch_77
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4451
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4452
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getSignalStrength(I)V

    .line 4453
    goto/16 :goto_1

    .line 4440
    .end local v0    # "serial":I
    :sswitch_78
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4442
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4443
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getLastCallFailCause(I)V

    .line 4444
    goto/16 :goto_1

    .line 4431
    .end local v0    # "serial":I
    :sswitch_79
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4433
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4434
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->rejectCall(I)V

    .line 4435
    goto/16 :goto_1

    .line 4422
    .end local v0    # "serial":I
    :sswitch_7a
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4424
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4425
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->conference(I)V

    .line 4426
    goto/16 :goto_1

    .line 4413
    .end local v0    # "serial":I
    :sswitch_7b
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4415
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4416
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    .line 4417
    goto/16 :goto_1

    .line 4404
    .end local v0    # "serial":I
    :sswitch_7c
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4406
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4407
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->hangupForegroundResumeBackground(I)V

    .line 4408
    goto/16 :goto_1

    .line 4395
    .end local v0    # "serial":I
    :sswitch_7d
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4397
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4398
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->hangupWaitingOrBackground(I)V

    .line 4399
    goto/16 :goto_1

    .line 4385
    .end local v0    # "serial":I
    :sswitch_7e
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4387
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4388
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4389
    .local v1, "gsmIndex":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->hangup(II)V

    .line 4390
    goto/16 :goto_1

    .line 4375
    .end local v0    # "serial":I
    .end local v1    # "gsmIndex":I
    :sswitch_7f
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4377
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4378
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4379
    .local v1, "aid":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getImsiForApp(ILjava/lang/String;)V

    .line 4380
    goto/16 :goto_1

    .line 4364
    .end local v0    # "serial":I
    .end local v1    # "aid":Ljava/lang/String;
    :sswitch_80
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4366
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4367
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 4368
    .local v1, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4369
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 4370
    goto/16 :goto_1

    .line 4355
    .end local v0    # "serial":I
    .end local v1    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :sswitch_81
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4357
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4358
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCurrentCalls(I)V

    .line 4359
    goto/16 :goto_1

    .line 4345
    .end local v0    # "serial":I
    :sswitch_82
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4347
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4348
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4349
    .local v1, "netPin":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    .line 4350
    goto/16 :goto_1

    .line 4333
    .end local v0    # "serial":I
    .end local v1    # "netPin":Ljava/lang/String;
    :sswitch_83
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4335
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4336
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4337
    .local v1, "oldPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4338
    .local v2, "newPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4339
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4340
    goto/16 :goto_1

    .line 4321
    .end local v0    # "serial":I
    .end local v1    # "oldPin2":Ljava/lang/String;
    .end local v2    # "newPin2":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :sswitch_84
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4323
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4324
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4325
    .local v1, "oldPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4326
    .local v2, "newPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4327
    .restart local v3    # "aid":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4328
    goto/16 :goto_1

    .line 4309
    .end local v0    # "serial":I
    .end local v1    # "oldPin":Ljava/lang/String;
    .end local v2    # "newPin":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :sswitch_85
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4311
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4312
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4313
    .local v1, "puk2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4314
    .local v2, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4315
    .restart local v3    # "aid":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4316
    goto :goto_1

    .line 4298
    .end local v0    # "serial":I
    .end local v1    # "puk2":Ljava/lang/String;
    .end local v2    # "pin2":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :sswitch_86
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4300
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4301
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4302
    .local v1, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4303
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 4304
    goto :goto_1

    .line 4286
    .end local v0    # "serial":I
    .end local v1    # "pin2":Ljava/lang/String;
    .end local v2    # "aid":Ljava/lang/String;
    :sswitch_87
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4288
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4289
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4290
    .local v1, "puk":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4291
    .local v2, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4292
    .restart local v3    # "aid":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4293
    goto :goto_1

    .line 4275
    .end local v0    # "serial":I
    .end local v1    # "puk":Ljava/lang/String;
    .end local v2    # "pin":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :sswitch_88
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4277
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4278
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4279
    .local v1, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4280
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 4281
    goto :goto_1

    .line 4266
    .end local v0    # "serial":I
    .end local v1    # "pin":Ljava/lang/String;
    .end local v2    # "aid":Ljava/lang/String;
    :sswitch_89
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4268
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4269
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getIccCardStatus(I)V

    .line 4270
    goto :goto_1

    .line 4254
    .end local v0    # "serial":I
    :sswitch_8a
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4256
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioResponse;

    move-result-object v0

    .line 4257
    .local v0, "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioIndication;

    move-result-object v2

    .line 4258
    .local v2, "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    invoke-virtual {v7, v0, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 4259
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4260
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4261
    nop

    .line 5677
    .end local v0    # "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    .end local v2    # "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8a
        0x2 -> :sswitch_89
        0x3 -> :sswitch_88
        0x4 -> :sswitch_87
        0x5 -> :sswitch_86
        0x6 -> :sswitch_85
        0x7 -> :sswitch_84
        0x8 -> :sswitch_83
        0x9 -> :sswitch_82
        0xa -> :sswitch_81
        0xb -> :sswitch_80
        0xc -> :sswitch_7f
        0xd -> :sswitch_7e
        0xe -> :sswitch_7d
        0xf -> :sswitch_7c
        0x10 -> :sswitch_7b
        0x11 -> :sswitch_7a
        0x12 -> :sswitch_79
        0x13 -> :sswitch_78
        0x14 -> :sswitch_77
        0x15 -> :sswitch_76
        0x16 -> :sswitch_75
        0x17 -> :sswitch_74
        0x18 -> :sswitch_73
        0x19 -> :sswitch_72
        0x1a -> :sswitch_71
        0x1b -> :sswitch_70
        0x1c -> :sswitch_6f
        0x1d -> :sswitch_6e
        0x1e -> :sswitch_6d
        0x1f -> :sswitch_6c
        0x20 -> :sswitch_6b
        0x21 -> :sswitch_6a
        0x22 -> :sswitch_69
        0x23 -> :sswitch_68
        0x24 -> :sswitch_67
        0x25 -> :sswitch_66
        0x26 -> :sswitch_65
        0x27 -> :sswitch_64
        0x28 -> :sswitch_63
        0x29 -> :sswitch_62
        0x2a -> :sswitch_61
        0x2b -> :sswitch_60
        0x2c -> :sswitch_5f
        0x2d -> :sswitch_5e
        0x2e -> :sswitch_5d
        0x2f -> :sswitch_5c
        0x30 -> :sswitch_5b
        0x31 -> :sswitch_5a
        0x32 -> :sswitch_59
        0x33 -> :sswitch_58
        0x34 -> :sswitch_57
        0x35 -> :sswitch_56
        0x36 -> :sswitch_55
        0x37 -> :sswitch_54
        0x38 -> :sswitch_53
        0x39 -> :sswitch_52
        0x3a -> :sswitch_51
        0x3b -> :sswitch_50
        0x3c -> :sswitch_4f
        0x3d -> :sswitch_4e
        0x3e -> :sswitch_4d
        0x3f -> :sswitch_4c
        0x40 -> :sswitch_4b
        0x41 -> :sswitch_4a
        0x42 -> :sswitch_49
        0x43 -> :sswitch_48
        0x44 -> :sswitch_47
        0x45 -> :sswitch_46
        0x46 -> :sswitch_45
        0x47 -> :sswitch_44
        0x48 -> :sswitch_43
        0x49 -> :sswitch_42
        0x4a -> :sswitch_41
        0x4b -> :sswitch_40
        0x4c -> :sswitch_3f
        0x4d -> :sswitch_3e
        0x4e -> :sswitch_3d
        0x4f -> :sswitch_3c
        0x50 -> :sswitch_3b
        0x51 -> :sswitch_3a
        0x52 -> :sswitch_39
        0x53 -> :sswitch_38
        0x54 -> :sswitch_37
        0x55 -> :sswitch_36
        0x56 -> :sswitch_35
        0x57 -> :sswitch_34
        0x58 -> :sswitch_33
        0x59 -> :sswitch_32
        0x5a -> :sswitch_31
        0x5b -> :sswitch_30
        0x5c -> :sswitch_2f
        0x5d -> :sswitch_2e
        0x5e -> :sswitch_2d
        0x5f -> :sswitch_2c
        0x60 -> :sswitch_2b
        0x61 -> :sswitch_2a
        0x62 -> :sswitch_29
        0x63 -> :sswitch_28
        0x64 -> :sswitch_27
        0x65 -> :sswitch_26
        0x66 -> :sswitch_25
        0x67 -> :sswitch_24
        0x68 -> :sswitch_23
        0x69 -> :sswitch_22
        0x6a -> :sswitch_21
        0x6b -> :sswitch_20
        0x6c -> :sswitch_1f
        0x6d -> :sswitch_1e
        0x6e -> :sswitch_1d
        0x6f -> :sswitch_1c
        0x70 -> :sswitch_1b
        0x71 -> :sswitch_1a
        0x72 -> :sswitch_19
        0x73 -> :sswitch_18
        0x74 -> :sswitch_17
        0x75 -> :sswitch_16
        0x76 -> :sswitch_15
        0x77 -> :sswitch_14
        0x78 -> :sswitch_13
        0x79 -> :sswitch_12
        0x7a -> :sswitch_11
        0x7b -> :sswitch_10
        0x7c -> :sswitch_f
        0x7d -> :sswitch_e
        0x7e -> :sswitch_d
        0x7f -> :sswitch_c
        0x80 -> :sswitch_b
        0x81 -> :sswitch_a
        0x82 -> :sswitch_9
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

    .line 4205
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 4233
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4234
    return-object p0

    .line 4236
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

    .line 4240
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 4241
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .locals 0

    .line 4195
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 4245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 4227
    const/4 v0, 0x1

    return v0
.end method
