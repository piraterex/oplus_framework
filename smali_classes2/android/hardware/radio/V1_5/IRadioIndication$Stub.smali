.class public abstract Landroid/hardware/radio/V1_5/IRadioIndication$Stub;
.super Landroid/os/HwBinder;
.source "IRadioIndication.java"

# interfaces
.implements Landroid/hardware/radio/V1_5/IRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_5/IRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 1600
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1603
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

    .line 1621
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1663
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1664
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1665
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1666
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1667
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

    .line 1633
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x7

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_2

    const/4 v4, 0x2

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_4

    const/4 v4, 0x4

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_5

    const/4 v4, 0x5

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x4t
        -0x45t
        0x7t
        0x42t
        -0x58t
        -0x7et
        0x15t
        -0x12t
        0x7at
        0x6dt
        0x7ct
        -0x20t
        -0x7et
        0x5dt
        0x25t
        0x3et
        -0x4et
        -0x4bt
        0x3t
        -0x6ft
        -0x4t
        0x6ct
        -0x74t
        0x48t
        0x66t
        0x7ft
        -0x61t
        -0x29t
        -0xat
        -0x2ct
        0x54t
        -0x62t
    .end array-data

    :array_1
    .array-data 1
        0x33t
        -0x27t
        -0x1at
        -0x77t
        0x5ct
        -0x36t
        -0x68t
        -0x56t
        0x56t
        0x29t
        0x6bt
        -0x50t
        0x17t
        0x20t
        -0x2ft
        -0x75t
        -0x76t
        -0x33t
        0xet
        0x4dt
        -0x1ct
        -0x6at
        0xbt
        -0x15t
        0x71t
        0x2et
        0x63t
        -0x53t
        0x14t
        0x74t
        0x38t
        -0x5bt
    .end array-data

    :array_2
    .array-data 1
        -0x17t
        -0x30t
        -0xft
        0x1at
        0x52t
        0x71t
        0x5ft
        0x5at
        0x29t
        -0x28t
        -0x62t
        0x2dt
        -0x72t
        0x2et
        0x21t
        -0x25t
        0x1et
        0x16t
        -0x5ct
        0x31t
        0x74t
        -0x51t
        0x6bt
        -0x63t
        0x51t
        -0x5at
        0x2dt
        0x70t
        0x5ct
        -0x26t
        0x14t
        0x55t
    .end array-data

    :array_3
    .array-data 1
        -0x33t
        -0x59t
        0x52t
        -0x52t
        -0x55t
        -0x56t
        -0x44t
        0x20t
        0x48t
        0x6at
        -0x7et
        -0x54t
        0x57t
        -0x5dt
        -0x23t
        0x10t
        0x77t
        -0x7bt
        -0x40t
        0x6t
        0x9t
        0x4at
        0x34t
        -0x65t
        -0x3bt
        -0x1et
        0x24t
        -0x18t
        -0x56t
        0x22t
        -0x5ft
        0x7ct
    .end array-data

    :array_4
    .array-data 1
        -0x4t
        -0x3bt
        -0x38t
        -0x38t
        -0x75t
        -0x7bt
        -0x57t
        -0xat
        0x3ft
        -0x46t
        0x67t
        -0x27t
        -0x1at
        0x74t
        -0x26t
        0x46t
        0x6ct
        0x72t
        -0x57t
        -0x74t
        -0x5et
        -0x79t
        -0xdt
        0x43t
        -0x5t
        0x57t
        0x21t
        -0x30t
        -0x68t
        0x71t
        0x3ft
        -0x7at
    .end array-data

    :array_5
    .array-data 1
        -0x77t
        -0x29t
        -0x71t
        -0x5ct
        -0x65t
        0x9t
        -0x1et
        -0xdt
        0x18t
        0x12t
        -0x45t
        0x63t
        -0x1ft
        -0x41t
        -0x54t
        0x2bt
        -0xdt
        0x18t
        -0x57t
        0x56t
        0x14t
        0x73t
        -0x3at
        -0x50t
        -0x13t
        0x69t
        0x4t
        -0x32t
        0x18t
        0x37t
        0x7dt
        0x54t
    .end array-data

    :array_6
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
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1608
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.radio@1.5::IRadioIndication"

    const-string v2, "android.hardware.radio@1.4::IRadioIndication"

    const-string v3, "android.hardware.radio@1.3::IRadioIndication"

    const-string v4, "android.hardware.radio@1.2::IRadioIndication"

    const-string v5, "android.hardware.radio@1.1::IRadioIndication"

    const-string v6, "android.hardware.radio@1.0::IRadioIndication"

    const-string v7, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1627
    const-string v0, "android.hardware.radio@1.5::IRadioIndication"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1651
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .locals 0

    .line 1673
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1675
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

    .line 1703
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v0, "android.hardware.radio@1.1::IRadioIndication"

    const-string v1, "android.hardware.radio@1.2::IRadioIndication"

    const-string v2, "android.hardware.radio@1.5::IRadioIndication"

    const-string v3, "android.hardware.radio@1.4::IRadioIndication"

    const/4 v4, 0x0

    const-string v5, "android.hidl.base@1.0::IBase"

    const-string v6, "android.hardware.radio@1.0::IRadioIndication"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 2475
    :sswitch_0
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2477
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->notifySyspropsChanged()V

    .line 2478
    goto/16 :goto_1

    .line 2464
    :sswitch_1
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2466
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 2467
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v9, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2468
    invoke-virtual {v0, v9}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2469
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2470
    goto/16 :goto_1

    .line 2454
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2456
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->ping()V

    .line 2457
    invoke-virtual {v9, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2458
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2459
    goto/16 :goto_1

    .line 2449
    :sswitch_3
    goto/16 :goto_1

    .line 2441
    :sswitch_4
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2443
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->setHALInstrumentation()V

    .line 2444
    goto/16 :goto_1

    .line 2407
    :sswitch_5
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2409
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2410
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v9, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2412
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 2414
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2415
    .local v2, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 2416
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2417
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 2418
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 2420
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 2421
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 2423
    .local v10, "_hidl_array_item_1":[B
    if-eqz v10, :cond_0

    array-length v11, v10

    const/16 v12, 0x20

    if-ne v11, v12, :cond_0

    .line 2427
    invoke-virtual {v3, v5, v6, v10}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2428
    nop

    .line 2418
    .end local v5    # "_hidl_array_offset_1":J
    .end local v10    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2424
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v10    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Array element is not of the expected length"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2431
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v10    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2433
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2435
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2436
    goto/16 :goto_1

    .line 2396
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2398
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 2399
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v9, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2400
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2401
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2402
    goto/16 :goto_1

    .line 2384
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2386
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 2387
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2388
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2389
    invoke-virtual {v9, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2390
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2391
    goto/16 :goto_1

    .line 2373
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2375
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2376
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2377
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2378
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2379
    goto/16 :goto_1

    .line 2363
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2365
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2366
    .local v0, "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_5/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2367
    .local v1, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/SetupDataCallResult;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->dataCallListChanged_1_5(ILjava/util/ArrayList;)V

    .line 2368
    goto/16 :goto_1

    .line 2352
    .end local v0    # "type":I
    .end local v1    # "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/SetupDataCallResult;>;"
    :sswitch_a
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2354
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2355
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_5/NetworkScanResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_5/NetworkScanResult;-><init>()V

    .line 2356
    .local v1, "result":Landroid/hardware/radio/V1_5/NetworkScanResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_5/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2357
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->networkScanResult_1_5(ILandroid/hardware/radio/V1_5/NetworkScanResult;)V

    .line 2358
    goto/16 :goto_1

    .line 2342
    .end local v0    # "type":I
    .end local v1    # "result":Landroid/hardware/radio/V1_5/NetworkScanResult;
    :sswitch_b
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2344
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2345
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_5/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2346
    .local v1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/CellInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->cellInfoList_1_5(ILjava/util/ArrayList;)V

    .line 2347
    goto/16 :goto_1

    .line 2330
    .end local v0    # "type":I
    .end local v1    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/CellInfo;>;"
    :sswitch_c
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2332
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2333
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_5/CellIdentity;

    invoke-direct {v1}, Landroid/hardware/radio/V1_5/CellIdentity;-><init>()V

    .line 2334
    .local v1, "cellIdentity":Landroid/hardware/radio/V1_5/CellIdentity;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_5/CellIdentity;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2335
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_5/BarringInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2336
    .local v2, "barringInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/BarringInfo;>;"
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->barringInfoChanged(ILandroid/hardware/radio/V1_5/CellIdentity;Ljava/util/ArrayList;)V

    .line 2337
    goto/16 :goto_1

    .line 2315
    .end local v0    # "type":I
    .end local v1    # "cellIdentity":Landroid/hardware/radio/V1_5/CellIdentity;
    .end local v2    # "barringInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/BarringInfo;>;"
    :sswitch_d
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2317
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 2318
    .local v10, "type":I
    new-instance v0, Landroid/hardware/radio/V1_5/CellIdentity;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/CellIdentity;-><init>()V

    move-object v11, v0

    .line 2319
    .local v11, "cellIdentity":Landroid/hardware/radio/V1_5/CellIdentity;
    invoke-virtual {v11, v8}, Landroid/hardware/radio/V1_5/CellIdentity;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2320
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 2321
    .local v12, "chosenPlmn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 2322
    .local v13, "domain":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 2323
    .local v14, "causeCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 2324
    .local v15, "additionalCauseCode":I
    move-object/from16 v0, p0

    move v1, v10

    move-object v2, v11

    move-object v3, v12

    move v4, v13

    move v5, v14

    move v6, v15

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->registrationFailed(ILandroid/hardware/radio/V1_5/CellIdentity;Ljava/lang/String;III)V

    .line 2325
    goto/16 :goto_1

    .line 2305
    .end local v10    # "type":I
    .end local v11    # "cellIdentity":Landroid/hardware/radio/V1_5/CellIdentity;
    .end local v12    # "chosenPlmn":Ljava/lang/String;
    .end local v13    # "domain":I
    .end local v14    # "causeCode":I
    .end local v15    # "additionalCauseCode":I
    :sswitch_e
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2307
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2308
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 2309
    .local v1, "enabled":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->uiccApplicationsEnablementChanged(IZ)V

    .line 2310
    goto/16 :goto_1

    .line 2294
    .end local v0    # "type":I
    .end local v1    # "enabled":Z
    :sswitch_f
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2296
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2297
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_4/SignalStrength;

    invoke-direct {v1}, Landroid/hardware/radio/V1_4/SignalStrength;-><init>()V

    .line 2298
    .local v1, "signalStrength":Landroid/hardware/radio/V1_4/SignalStrength;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_4/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2299
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->currentSignalStrength_1_4(ILandroid/hardware/radio/V1_4/SignalStrength;)V

    .line 2300
    goto/16 :goto_1

    .line 2284
    .end local v0    # "type":I
    .end local v1    # "signalStrength":Landroid/hardware/radio/V1_4/SignalStrength;
    :sswitch_10
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2286
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2287
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_4/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2288
    .local v1, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/SetupDataCallResult;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->dataCallListChanged_1_4(ILjava/util/ArrayList;)V

    .line 2289
    goto/16 :goto_1

    .line 2274
    .end local v0    # "type":I
    .end local v1    # "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/SetupDataCallResult;>;"
    :sswitch_11
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2276
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2277
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2278
    .local v1, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/PhysicalChannelConfig;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->currentPhysicalChannelConfigs_1_4(ILjava/util/ArrayList;)V

    .line 2279
    goto/16 :goto_1

    .line 2263
    .end local v0    # "type":I
    .end local v1    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/PhysicalChannelConfig;>;"
    :sswitch_12
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2265
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2266
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_4/NetworkScanResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_4/NetworkScanResult;-><init>()V

    .line 2267
    .local v1, "result":Landroid/hardware/radio/V1_4/NetworkScanResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_4/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2268
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->networkScanResult_1_4(ILandroid/hardware/radio/V1_4/NetworkScanResult;)V

    .line 2269
    goto/16 :goto_1

    .line 2253
    .end local v0    # "type":I
    .end local v1    # "result":Landroid/hardware/radio/V1_4/NetworkScanResult;
    :sswitch_13
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2255
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2256
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_4/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2257
    .local v1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/CellInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->cellInfoList_1_4(ILjava/util/ArrayList;)V

    .line 2258
    goto/16 :goto_1

    .line 2243
    .end local v0    # "type":I
    .end local v1    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/CellInfo;>;"
    :sswitch_14
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2245
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2246
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_4/EmergencyNumber;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2247
    .local v1, "emergencyNumberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/EmergencyNumber;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->currentEmergencyNumberList(ILjava/util/ArrayList;)V

    .line 2248
    goto/16 :goto_1

    .line 2232
    .end local v0    # "type":I
    .end local v1    # "emergencyNumberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/EmergencyNumber;>;"
    :sswitch_15
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2234
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2235
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_2/SignalStrength;

    invoke-direct {v1}, Landroid/hardware/radio/V1_2/SignalStrength;-><init>()V

    .line 2236
    .local v1, "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_2/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2237
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->currentSignalStrength_1_2(ILandroid/hardware/radio/V1_2/SignalStrength;)V

    .line 2238
    goto/16 :goto_1

    .line 2222
    .end local v0    # "type":I
    .end local v1    # "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    :sswitch_16
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2224
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2225
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_2/PhysicalChannelConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2226
    .local v1, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/PhysicalChannelConfig;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->currentPhysicalChannelConfigs(ILjava/util/ArrayList;)V

    .line 2227
    goto/16 :goto_1

    .line 2211
    .end local v0    # "type":I
    .end local v1    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/PhysicalChannelConfig;>;"
    :sswitch_17
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2213
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2214
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;

    invoke-direct {v1}, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;-><init>()V

    .line 2215
    .local v1, "lce":Landroid/hardware/radio/V1_2/LinkCapacityEstimate;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2216
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->currentLinkCapacityEstimate(ILandroid/hardware/radio/V1_2/LinkCapacityEstimate;)V

    .line 2217
    goto/16 :goto_1

    .line 2201
    .end local v0    # "type":I
    .end local v1    # "lce":Landroid/hardware/radio/V1_2/LinkCapacityEstimate;
    :sswitch_18
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2203
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2204
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_2/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2205
    .local v1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->cellInfoList_1_2(ILjava/util/ArrayList;)V

    .line 2206
    goto/16 :goto_1

    .line 2190
    .end local v0    # "type":I
    .end local v1    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    :sswitch_19
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2192
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2193
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_2/NetworkScanResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_2/NetworkScanResult;-><init>()V

    .line 2194
    .local v1, "result":Landroid/hardware/radio/V1_2/NetworkScanResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_2/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2195
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->networkScanResult_1_2(ILandroid/hardware/radio/V1_2/NetworkScanResult;)V

    .line 2196
    goto/16 :goto_1

    .line 2179
    .end local v0    # "type":I
    .end local v1    # "result":Landroid/hardware/radio/V1_2/NetworkScanResult;
    :sswitch_1a
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2181
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2182
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_1/KeepaliveStatus;

    invoke-direct {v1}, Landroid/hardware/radio/V1_1/KeepaliveStatus;-><init>()V

    .line 2183
    .local v1, "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_1/KeepaliveStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2184
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->keepaliveStatus(ILandroid/hardware/radio/V1_1/KeepaliveStatus;)V

    .line 2185
    goto/16 :goto_1

    .line 2168
    .end local v0    # "type":I
    .end local v1    # "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    :sswitch_1b
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2170
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2171
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_1/NetworkScanResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_1/NetworkScanResult;-><init>()V

    .line 2172
    .local v1, "result":Landroid/hardware/radio/V1_1/NetworkScanResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_1/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2173
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->networkScanResult(ILandroid/hardware/radio/V1_1/NetworkScanResult;)V

    .line 2174
    goto/16 :goto_1

    .line 2159
    .end local v0    # "type":I
    .end local v1    # "result":Landroid/hardware/radio/V1_1/NetworkScanResult;
    :sswitch_1c
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2161
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2162
    .local v0, "info":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->carrierInfoForImsiEncryption(I)V

    .line 2163
    goto/16 :goto_1

    .line 2149
    .end local v0    # "info":I
    :sswitch_1d
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2151
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2152
    .local v0, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2153
    .local v1, "reason":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->modemReset(ILjava/lang/String;)V

    .line 2154
    goto/16 :goto_1

    .line 2138
    .end local v0    # "type":I
    .end local v1    # "reason":Ljava/lang/String;
    :sswitch_1e
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2140
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2141
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/PcoDataInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/PcoDataInfo;-><init>()V

    .line 2142
    .local v1, "pco":Landroid/hardware/radio/V1_0/PcoDataInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/PcoDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2143
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->pcoData(ILandroid/hardware/radio/V1_0/PcoDataInfo;)V

    .line 2144
    goto/16 :goto_1

    .line 2127
    .end local v0    # "type":I
    .end local v1    # "pco":Landroid/hardware/radio/V1_0/PcoDataInfo;
    :sswitch_1f
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2129
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2130
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 2131
    .local v1, "lce":Landroid/hardware/radio/V1_0/LceDataInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2132
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->lceData(ILandroid/hardware/radio/V1_0/LceDataInfo;)V

    .line 2133
    goto/16 :goto_1

    .line 2117
    .end local v0    # "type":I
    .end local v1    # "lce":Landroid/hardware/radio/V1_0/LceDataInfo;
    :sswitch_20
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2119
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2120
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2121
    .local v1, "alpha":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->stkCallControlAlphaNotify(ILjava/lang/String;)V

    .line 2122
    goto/16 :goto_1

    .line 2106
    .end local v0    # "type":I
    .end local v1    # "alpha":Ljava/lang/String;
    :sswitch_21
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2108
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2109
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;-><init>()V

    .line 2110
    .local v1, "ss":Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2111
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->onSupplementaryServiceIndication(ILandroid/hardware/radio/V1_0/StkCcUnsolSsResult;)V

    .line 2112
    goto/16 :goto_1

    .line 2095
    .end local v0    # "type":I
    .end local v1    # "ss":Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;
    :sswitch_22
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2097
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2098
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 2099
    .local v1, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2100
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->radioCapabilityIndication(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 2101
    goto/16 :goto_1

    .line 2085
    .end local v0    # "type":I
    .end local v1    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :sswitch_23
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2087
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2088
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2089
    .local v1, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->hardwareConfigChanged(ILjava/util/ArrayList;)V

    .line 2090
    goto/16 :goto_1

    .line 2075
    .end local v0    # "type":I
    .end local v1    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    :sswitch_24
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2077
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2078
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2079
    .local v1, "state":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->srvccStateNotify(II)V

    .line 2080
    goto/16 :goto_1

    .line 2065
    .end local v0    # "type":I
    .end local v1    # "state":I
    :sswitch_25
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2067
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2068
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 2069
    .local v1, "activate":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->subscriptionStatusChanged(IZ)V

    .line 2070
    goto/16 :goto_1

    .line 2056
    .end local v0    # "type":I
    .end local v1    # "activate":Z
    :sswitch_26
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2058
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2059
    .restart local v0    # "type":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->imsNetworkStateChanged(I)V

    .line 2060
    goto/16 :goto_1

    .line 2046
    .end local v0    # "type":I
    :sswitch_27
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2048
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2049
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2050
    .local v1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->cellInfoList(ILjava/util/ArrayList;)V

    .line 2051
    goto/16 :goto_1

    .line 2036
    .end local v0    # "type":I
    .end local v1    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    :sswitch_28
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2038
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2039
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2040
    .local v1, "rat":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->voiceRadioTechChanged(II)V

    .line 2041
    goto/16 :goto_1

    .line 2027
    .end local v0    # "type":I
    .end local v1    # "rat":I
    :sswitch_29
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2029
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2030
    .restart local v0    # "type":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->rilConnected(I)V

    .line 2031
    goto/16 :goto_1

    .line 2018
    .end local v0    # "type":I
    :sswitch_2a
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2020
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2021
    .restart local v0    # "type":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->exitEmergencyCallbackMode(I)V

    .line 2022
    goto/16 :goto_1

    .line 2008
    .end local v0    # "type":I
    :sswitch_2b
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2010
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2011
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2012
    .local v1, "version":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->cdmaPrlChanged(II)V

    .line 2013
    goto/16 :goto_1

    .line 1998
    .end local v0    # "type":I
    .end local v1    # "version":I
    :sswitch_2c
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2000
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2001
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2002
    .local v1, "cdmaSource":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->cdmaSubscriptionSourceChanged(II)V

    .line 2003
    goto/16 :goto_1

    .line 1989
    .end local v0    # "type":I
    .end local v1    # "cdmaSource":I
    :sswitch_2d
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1991
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1992
    .restart local v0    # "type":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->resendIncallMute(I)V

    .line 1993
    goto/16 :goto_1

    .line 1979
    .end local v0    # "type":I
    :sswitch_2e
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1981
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1982
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 1983
    .local v1, "start":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->indicateRingbackTone(IZ)V

    .line 1984
    goto/16 :goto_1

    .line 1968
    .end local v0    # "type":I
    .end local v1    # "start":Z
    :sswitch_2f
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1970
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1971
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaInformationRecords;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;-><init>()V

    .line 1972
    .local v1, "records":Landroid/hardware/radio/V1_0/CdmaInformationRecords;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1973
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->cdmaInfoRec(ILandroid/hardware/radio/V1_0/CdmaInformationRecords;)V

    .line 1974
    goto/16 :goto_1

    .line 1958
    .end local v0    # "type":I
    .end local v1    # "records":Landroid/hardware/radio/V1_0/CdmaInformationRecords;
    :sswitch_30
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1960
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1961
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1962
    .local v1, "status":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->cdmaOtaProvisionStatus(II)V

    .line 1963
    goto/16 :goto_1

    .line 1947
    .end local v0    # "type":I
    .end local v1    # "status":I
    :sswitch_31
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1949
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1950
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaCallWaiting;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;-><init>()V

    .line 1951
    .local v1, "callWaitingRecord":Landroid/hardware/radio/V1_0/CdmaCallWaiting;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1952
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->cdmaCallWaiting(ILandroid/hardware/radio/V1_0/CdmaCallWaiting;)V

    .line 1953
    goto/16 :goto_1

    .line 1938
    .end local v0    # "type":I
    .end local v1    # "callWaitingRecord":Landroid/hardware/radio/V1_0/CdmaCallWaiting;
    :sswitch_32
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1940
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1941
    .restart local v0    # "type":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->enterEmergencyCallbackMode(I)V

    .line 1942
    goto/16 :goto_1

    .line 1928
    .end local v0    # "type":I
    :sswitch_33
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1930
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1931
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1932
    .local v1, "state":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->restrictedStateChanged(II)V

    .line 1933
    goto/16 :goto_1

    .line 1919
    .end local v0    # "type":I
    .end local v1    # "state":I
    :sswitch_34
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1921
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1922
    .restart local v0    # "type":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->cdmaRuimSmsStorageFull(I)V

    .line 1923
    goto/16 :goto_1

    .line 1909
    .end local v0    # "type":I
    :sswitch_35
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1911
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1912
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1913
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->newBroadcastSms(ILjava/util/ArrayList;)V

    .line 1914
    goto/16 :goto_1

    .line 1898
    .end local v0    # "type":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_36
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1900
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1901
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 1902
    .local v1, "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1903
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->cdmaNewSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 1904
    goto/16 :goto_1

    .line 1889
    .end local v0    # "type":I
    .end local v1    # "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :sswitch_37
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1891
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1892
    .restart local v0    # "type":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->simStatusChanged(I)V

    .line 1893
    goto/16 :goto_1

    .line 1877
    .end local v0    # "type":I
    :sswitch_38
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1879
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1880
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 1881
    .local v1, "isGsm":Z
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;-><init>()V

    .line 1882
    .local v2, "record":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1883
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->callRing(IZLandroid/hardware/radio/V1_0/CdmaSignalInfoRecord;)V

    .line 1884
    goto/16 :goto_1

    .line 1866
    .end local v0    # "type":I
    .end local v1    # "isGsm":Z
    .end local v2    # "record":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    :sswitch_39
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1868
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1869
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/SimRefreshResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SimRefreshResult;-><init>()V

    .line 1870
    .local v1, "refreshResult":Landroid/hardware/radio/V1_0/SimRefreshResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SimRefreshResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1871
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->simRefresh(ILandroid/hardware/radio/V1_0/SimRefreshResult;)V

    .line 1872
    goto/16 :goto_1

    .line 1857
    .end local v0    # "type":I
    .end local v1    # "refreshResult":Landroid/hardware/radio/V1_0/SimRefreshResult;
    :sswitch_3a
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1859
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1860
    .restart local v0    # "type":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->simSmsStorageFull(I)V

    .line 1861
    goto/16 :goto_1

    .line 1847
    .end local v0    # "type":I
    :sswitch_3b
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1849
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1850
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v1

    .line 1851
    .local v1, "timeout":J
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->stkCallSetup(IJ)V

    .line 1852
    goto/16 :goto_1

    .line 1837
    .end local v0    # "type":I
    .end local v1    # "timeout":J
    :sswitch_3c
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1839
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1840
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1841
    .local v1, "cmd":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->stkEventNotify(ILjava/lang/String;)V

    .line 1842
    goto/16 :goto_1

    .line 1827
    .end local v0    # "type":I
    .end local v1    # "cmd":Ljava/lang/String;
    :sswitch_3d
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1829
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1830
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1831
    .restart local v1    # "cmd":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->stkProactiveCommand(ILjava/lang/String;)V

    .line 1832
    goto/16 :goto_1

    .line 1818
    .end local v0    # "type":I
    .end local v1    # "cmd":Ljava/lang/String;
    :sswitch_3e
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1820
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1821
    .restart local v0    # "type":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->stkSessionEnd(I)V

    .line 1822
    goto/16 :goto_1

    .line 1807
    .end local v0    # "type":I
    :sswitch_3f
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1809
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1810
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/SuppSvcNotification;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SuppSvcNotification;-><init>()V

    .line 1811
    .local v1, "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SuppSvcNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1812
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->suppSvcNotify(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V

    .line 1813
    goto/16 :goto_1

    .line 1797
    .end local v0    # "type":I
    .end local v1    # "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    :sswitch_40
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1799
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1800
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1801
    .local v1, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->dataCallListChanged(ILjava/util/ArrayList;)V

    .line 1802
    goto/16 :goto_1

    .line 1786
    .end local v0    # "type":I
    .end local v1    # "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    :sswitch_41
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1788
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1789
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 1790
    .local v1, "signalStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1791
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->currentSignalStrength(ILandroid/hardware/radio/V1_0/SignalStrength;)V

    .line 1792
    goto/16 :goto_1

    .line 1775
    .end local v0    # "type":I
    .end local v1    # "signalStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    :sswitch_42
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1777
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1778
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1779
    .local v1, "nitzTime":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 1780
    .local v2, "receivedTime":J
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->nitzTimeReceived(ILjava/lang/String;J)V

    .line 1781
    goto :goto_1

    .line 1764
    .end local v0    # "type":I
    .end local v1    # "nitzTime":Ljava/lang/String;
    .end local v2    # "receivedTime":J
    :sswitch_43
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1766
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1767
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1768
    .local v1, "modeType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1769
    .local v2, "msg":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->onUssd(IILjava/lang/String;)V

    .line 1770
    goto :goto_1

    .line 1754
    .end local v0    # "type":I
    .end local v1    # "modeType":I
    .end local v2    # "msg":Ljava/lang/String;
    :sswitch_44
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1756
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1757
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1758
    .local v1, "recordNumber":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->newSmsOnSim(II)V

    .line 1759
    goto :goto_1

    .line 1744
    .end local v0    # "type":I
    .end local v1    # "recordNumber":I
    :sswitch_45
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1746
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1747
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1748
    .local v1, "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->newSmsStatusReport(ILjava/util/ArrayList;)V

    .line 1749
    goto :goto_1

    .line 1734
    .end local v0    # "type":I
    .end local v1    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_46
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1736
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1737
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1738
    .restart local v1    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->newSms(ILjava/util/ArrayList;)V

    .line 1739
    goto :goto_1

    .line 1725
    .end local v0    # "type":I
    .end local v1    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_47
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1727
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1728
    .restart local v0    # "type":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->networkStateChanged(I)V

    .line 1729
    goto :goto_1

    .line 1716
    .end local v0    # "type":I
    :sswitch_48
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1718
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1719
    .restart local v0    # "type":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->callStateChanged(I)V

    .line 1720
    goto :goto_1

    .line 1706
    .end local v0    # "type":I
    :sswitch_49
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1708
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1709
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1710
    .local v1, "radioState":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->radioStateChanged(II)V

    .line 1711
    nop

    .line 2487
    .end local v0    # "type":I
    .end local v1    # "radioState":I
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_49
        0x2 -> :sswitch_48
        0x3 -> :sswitch_47
        0x4 -> :sswitch_46
        0x5 -> :sswitch_45
        0x6 -> :sswitch_44
        0x7 -> :sswitch_43
        0x8 -> :sswitch_42
        0x9 -> :sswitch_41
        0xa -> :sswitch_40
        0xb -> :sswitch_3f
        0xc -> :sswitch_3e
        0xd -> :sswitch_3d
        0xe -> :sswitch_3c
        0xf -> :sswitch_3b
        0x10 -> :sswitch_3a
        0x11 -> :sswitch_39
        0x12 -> :sswitch_38
        0x13 -> :sswitch_37
        0x14 -> :sswitch_36
        0x15 -> :sswitch_35
        0x16 -> :sswitch_34
        0x17 -> :sswitch_33
        0x18 -> :sswitch_32
        0x19 -> :sswitch_31
        0x1a -> :sswitch_30
        0x1b -> :sswitch_2f
        0x1c -> :sswitch_2e
        0x1d -> :sswitch_2d
        0x1e -> :sswitch_2c
        0x1f -> :sswitch_2b
        0x20 -> :sswitch_2a
        0x21 -> :sswitch_29
        0x22 -> :sswitch_28
        0x23 -> :sswitch_27
        0x24 -> :sswitch_26
        0x25 -> :sswitch_25
        0x26 -> :sswitch_24
        0x27 -> :sswitch_23
        0x28 -> :sswitch_22
        0x29 -> :sswitch_21
        0x2a -> :sswitch_20
        0x2b -> :sswitch_1f
        0x2c -> :sswitch_1e
        0x2d -> :sswitch_1d
        0x2e -> :sswitch_1c
        0x2f -> :sswitch_1b
        0x30 -> :sswitch_1a
        0x31 -> :sswitch_19
        0x32 -> :sswitch_18
        0x33 -> :sswitch_17
        0x34 -> :sswitch_16
        0x35 -> :sswitch_15
        0x36 -> :sswitch_14
        0x37 -> :sswitch_13
        0x38 -> :sswitch_12
        0x39 -> :sswitch_11
        0x3a -> :sswitch_10
        0x3b -> :sswitch_f
        0x3c -> :sswitch_e
        0x3d -> :sswitch_d
        0x3e -> :sswitch_c
        0x3f -> :sswitch_b
        0x40 -> :sswitch_a
        0x41 -> :sswitch_9
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

    .line 1657
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1685
    const-string v0, "android.hardware.radio@1.5::IRadioIndication"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1686
    return-object p0

    .line 1688
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

    .line 1692
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 1693
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .locals 0

    .line 1647
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 1697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/IRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1679
    const/4 v0, 0x1

    return v0
.end method
