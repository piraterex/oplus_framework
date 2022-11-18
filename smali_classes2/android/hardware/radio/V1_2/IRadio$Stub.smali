.class public abstract Landroid/hardware/radio/V1_2/IRadio$Stub;
.super Landroid/os/HwBinder;
.source "IRadio.java"

# interfaces
.implements Landroid/hardware/radio/V1_2/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_2/IRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 2982
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 2985
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

    .line 3000
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 3039
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 3040
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 3041
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 3042
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 3043
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

    .line 3012
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

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

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x2bt
        0x5at
        -0x2t
        -0xat
        -0x72t
        0x3et
        0x2ft
        -0xft
        -0x26t
        -0x4at
        0x3et
        0x4ft
        0x2et
        -0x1bt
        0x73t
        0x37t
        -0x11t
        0x26t
        0x35t
        -0x14t
        -0x7ft
        0x2ft
        0x49t
        0x8t
        0xct
        -0x53t
        -0x4t
        -0x17t
        0x66t
        -0x2dt
        0x3bt
        0x52t
    .end array-data

    :array_1
    .array-data 1
        -0x7at
        -0x5t
        0x7t
        -0x66t
        0x60t
        0xbt
        0x23t
        0x1t
        -0x59t
        0x52t
        0x24t
        -0x63t
        -0x5t
        -0x4t
        0x53t
        -0x68t
        0x3at
        0x79t
        0x5dt
        0x75t
        0x2ft
        0x11t
        -0x56t
        -0x44t
        -0x4at
        -0x7dt
        0x15t
        -0x5ft
        -0x77t
        -0xat
        -0x37t
        -0x5et
    .end array-data

    :array_2
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

    :array_3
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
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2990
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.radio@1.2::IRadio"

    const-string v2, "android.hardware.radio@1.1::IRadio"

    const-string v3, "android.hardware.radio@1.0::IRadio"

    const-string v4, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 3006
    const-string v0, "android.hardware.radio@1.2::IRadio"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 3027
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .locals 0

    .line 3049
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 3051
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 22
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3079
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v0, "android.hardware.radio@1.2::IRadio"

    const-string v1, "android.hardware.radio@1.1::IRadio"

    const-string v2, "android.hidl.base@1.0::IBase"

    const/4 v3, 0x0

    const-string v4, "android.hardware.radio@1.0::IRadio"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 4633
    :sswitch_0
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4635
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->notifySyspropsChanged()V

    .line 4636
    goto/16 :goto_1

    .line 4622
    :sswitch_1
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4624
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 4625
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4626
    invoke-virtual {v0, v12}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4627
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4628
    goto/16 :goto_1

    .line 4612
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4614
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->ping()V

    .line 4615
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4616
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4617
    goto/16 :goto_1

    .line 4607
    :sswitch_3
    goto/16 :goto_1

    .line 4599
    :sswitch_4
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4601
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setHALInstrumentation()V

    .line 4602
    goto/16 :goto_1

    .line 4565
    :sswitch_5
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4567
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 4568
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4570
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 4572
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4573
    .local v2, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 4574
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 4575
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 4576
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 4578
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 4579
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 4581
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 4585
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 4586
    nop

    .line 4576
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4582
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 4589
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 4591
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 4593
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4594
    goto/16 :goto_1

    .line 4554
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4556
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 4557
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4558
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4559
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4560
    goto/16 :goto_1

    .line 4542
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4544
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 4545
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4546
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 4547
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4548
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4549
    goto/16 :goto_1

    .line 4531
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4533
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 4534
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4535
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 4536
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4537
    goto/16 :goto_1

    .line 4520
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4522
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4523
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4524
    .local v1, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4525
    .local v2, "reason":I
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->deactivateDataCall_1_2(III)V

    .line 4526
    goto/16 :goto_1

    .line 4502
    .end local v0    # "serial":I
    .end local v1    # "cid":I
    .end local v2    # "reason":I
    :sswitch_a
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4504
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 4505
    .local v13, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 4506
    .local v14, "accessNetwork":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v15, v0

    .line 4507
    .local v15, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v15, v11}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4508
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 4509
    .local v16, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 4510
    .local v17, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    .line 4511
    .local v18, "isRoaming":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 4512
    .local v19, "reason":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v20

    .line 4513
    .local v20, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v21

    .line 4514
    .local v21, "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    invoke-virtual/range {v0 .. v9}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setupDataCall_1_2(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 4515
    goto/16 :goto_1

    .line 4487
    .end local v13    # "serial":I
    .end local v14    # "accessNetwork":I
    .end local v15    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v16    # "modemCognitive":Z
    .end local v17    # "roamingAllowed":Z
    .end local v18    # "isRoaming":Z
    .end local v19    # "reason":I
    .end local v20    # "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_b
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4489
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 4490
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 4491
    .local v9, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 4492
    .local v13, "hysteresisDlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 4493
    .local v14, "hysteresisUlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v15

    .line 4494
    .local v15, "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v16

    .line 4495
    .local v16, "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 4496
    .local v17, "accessNetwork":I
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v13

    move v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setLinkCapacityReportingCriteria(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 4497
    goto/16 :goto_1

    .line 4474
    .end local v8    # "serial":I
    .end local v9    # "hysteresisMs":I
    .end local v13    # "hysteresisDlKbps":I
    .end local v14    # "hysteresisUlKbps":I
    .end local v15    # "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v16    # "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v17    # "accessNetwork":I
    :sswitch_c
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4476
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 4477
    .local v6, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 4478
    .local v7, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 4479
    .local v8, "hysteresisDb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v9

    .line 4480
    .local v9, "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 4481
    .local v13, "accessNetwork":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move v5, v13

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setSignalStrengthReportingCriteria(IIILjava/util/ArrayList;I)V

    .line 4482
    goto/16 :goto_1

    .line 4464
    .end local v6    # "serial":I
    .end local v7    # "hysteresisMs":I
    .end local v8    # "hysteresisDb":I
    .end local v9    # "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v13    # "accessNetwork":I
    :sswitch_d
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4466
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4467
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4468
    .local v1, "indicationFilter":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setIndicationFilter_1_2(II)V

    .line 4469
    goto/16 :goto_1

    .line 4453
    .end local v0    # "serial":I
    .end local v1    # "indicationFilter":I
    :sswitch_e
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4455
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4456
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v1}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    .line 4457
    .local v1, "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4458
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->startNetworkScan_1_2(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    .line 4459
    goto/16 :goto_1

    .line 4443
    .end local v0    # "serial":I
    .end local v1    # "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    :sswitch_f
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4445
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4446
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4447
    .local v1, "sessionHandle":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->stopKeepalive(II)V

    .line 4448
    goto/16 :goto_1

    .line 4432
    .end local v0    # "serial":I
    .end local v1    # "sessionHandle":I
    :sswitch_10
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4434
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4435
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_1/KeepaliveRequest;

    invoke-direct {v1}, Landroid/hardware/radio/V1_1/KeepaliveRequest;-><init>()V

    .line 4436
    .local v1, "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_1/KeepaliveRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4437
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->startKeepalive(ILandroid/hardware/radio/V1_1/KeepaliveRequest;)V

    .line 4438
    goto/16 :goto_1

    .line 4423
    .end local v0    # "serial":I
    .end local v1    # "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    :sswitch_11
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4425
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4426
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->stopNetworkScan(I)V

    .line 4427
    goto/16 :goto_1

    .line 4412
    .end local v0    # "serial":I
    :sswitch_12
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4414
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4415
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_1/NetworkScanRequest;

    invoke-direct {v1}, Landroid/hardware/radio/V1_1/NetworkScanRequest;-><init>()V

    .line 4416
    .local v1, "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_1/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4417
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->startNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanRequest;)V

    .line 4418
    goto/16 :goto_1

    .line 4402
    .end local v0    # "serial":I
    .end local v1    # "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    :sswitch_13
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4404
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4405
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4406
    .local v1, "powerUp":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setSimCardPower_1_1(II)V

    .line 4407
    goto/16 :goto_1

    .line 4391
    .end local v0    # "serial":I
    .end local v1    # "powerUp":I
    :sswitch_14
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4393
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4394
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;-><init>()V

    .line 4395
    .local v1, "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4396
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/V1_1/ImsiEncryptionInfo;)V

    .line 4397
    goto/16 :goto_1

    .line 4383
    .end local v0    # "serial":I
    .end local v1    # "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    :sswitch_15
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4385
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->responseAcknowledgement()V

    .line 4386
    goto/16 :goto_1

    .line 4373
    :sswitch_16
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4375
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4376
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4377
    .local v1, "powerUp":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setSimCardPower(IZ)V

    .line 4378
    goto/16 :goto_1

    .line 4363
    .end local v0    # "serial":I
    .end local v1    # "powerUp":Z
    :sswitch_17
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4365
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4366
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4367
    .local v1, "indicationFilter":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setIndicationFilter(II)V

    .line 4368
    goto/16 :goto_1

    .line 4352
    .end local v0    # "serial":I
    .end local v1    # "indicationFilter":I
    :sswitch_18
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4354
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4355
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4356
    .local v1, "deviceStateType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4357
    .local v2, "state":Z
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendDeviceState(IIZ)V

    .line 4358
    goto/16 :goto_1

    .line 4343
    .end local v0    # "serial":I
    .end local v1    # "deviceStateType":I
    .end local v2    # "state":Z
    :sswitch_19
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4345
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4346
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getAllowedCarriers(I)V

    .line 4347
    goto/16 :goto_1

    .line 4331
    .end local v0    # "serial":I
    :sswitch_1a
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4333
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4334
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4335
    .local v1, "allAllowed":Z
    new-instance v2, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 4336
    .local v2, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4337
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 4338
    goto/16 :goto_1

    .line 4322
    .end local v0    # "serial":I
    .end local v1    # "allAllowed":Z
    .end local v2    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :sswitch_1b
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4324
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4325
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getModemActivityInfo(I)V

    .line 4326
    goto/16 :goto_1

    .line 4313
    .end local v0    # "serial":I
    :sswitch_1c
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4315
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4316
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->pullLceData(I)V

    .line 4317
    goto/16 :goto_1

    .line 4304
    .end local v0    # "serial":I
    :sswitch_1d
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4306
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4307
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->stopLceService(I)V

    .line 4308
    goto/16 :goto_1

    .line 4293
    .end local v0    # "serial":I
    :sswitch_1e
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4295
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4296
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4297
    .local v1, "reportInterval":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4298
    .local v2, "pullMode":Z
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->startLceService(IIZ)V

    .line 4299
    goto/16 :goto_1

    .line 4282
    .end local v0    # "serial":I
    .end local v1    # "reportInterval":I
    .end local v2    # "pullMode":Z
    :sswitch_1f
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4284
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4285
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 4286
    .local v1, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4287
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 4288
    goto/16 :goto_1

    .line 4273
    .end local v0    # "serial":I
    .end local v1    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :sswitch_20
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4275
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4276
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getRadioCapability(I)V

    .line 4277
    goto/16 :goto_1

    .line 4264
    .end local v0    # "serial":I
    :sswitch_21
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4266
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4267
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->requestShutdown(I)V

    .line 4268
    goto/16 :goto_1

    .line 4253
    .end local v0    # "serial":I
    :sswitch_22
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4255
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4256
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4257
    .local v1, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4258
    .local v2, "isRoaming":Z
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setDataProfile(ILjava/util/ArrayList;Z)V

    .line 4259
    goto/16 :goto_1

    .line 4241
    .end local v0    # "serial":I
    .end local v1    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    .end local v2    # "isRoaming":Z
    :sswitch_23
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4243
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4244
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4245
    .local v1, "authContext":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4246
    .local v2, "authData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4247
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    .line 4248
    goto/16 :goto_1

    .line 4232
    .end local v0    # "serial":I
    .end local v1    # "authContext":I
    .end local v2    # "authData":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :sswitch_24
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4234
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4235
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getHardwareConfig(I)V

    .line 4236
    goto/16 :goto_1

    .line 4222
    .end local v0    # "serial":I
    :sswitch_25
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4224
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4225
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4226
    .local v1, "allow":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setDataAllowed(IZ)V

    .line 4227
    goto/16 :goto_1

    .line 4211
    .end local v0    # "serial":I
    .end local v1    # "allow":Z
    :sswitch_26
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4213
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4214
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    .line 4215
    .local v1, "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/SelectUiccSub;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4216
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V

    .line 4217
    goto/16 :goto_1

    .line 4201
    .end local v0    # "serial":I
    .end local v1    # "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    :sswitch_27
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4203
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4204
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4205
    .local v1, "resetType":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->nvResetConfig(II)V

    .line 4206
    goto/16 :goto_1

    .line 4191
    .end local v0    # "serial":I
    .end local v1    # "resetType":I
    :sswitch_28
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4193
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4194
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4195
    .local v1, "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    .line 4196
    goto/16 :goto_1

    .line 4180
    .end local v0    # "serial":I
    .end local v1    # "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_29
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4182
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4183
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    .line 4184
    .local v1, "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/NvWriteItem;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4185
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    .line 4186
    goto/16 :goto_1

    .line 4170
    .end local v0    # "serial":I
    .end local v1    # "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    :sswitch_2a
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4172
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4173
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4174
    .local v1, "itemId":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->nvReadItem(II)V

    .line 4175
    goto/16 :goto_1

    .line 4159
    .end local v0    # "serial":I
    .end local v1    # "itemId":I
    :sswitch_2b
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4161
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4162
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 4163
    .local v1, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4164
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 4165
    goto/16 :goto_1

    .line 4149
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :sswitch_2c
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4151
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4152
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4153
    .local v1, "channelId":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->iccCloseLogicalChannel(II)V

    .line 4154
    goto/16 :goto_1

    .line 4138
    .end local v0    # "serial":I
    .end local v1    # "channelId":I
    :sswitch_2d
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4140
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4141
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4142
    .local v1, "aid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4143
    .local v2, "p2":I
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    .line 4144
    goto/16 :goto_1

    .line 4127
    .end local v0    # "serial":I
    .end local v1    # "aid":Ljava/lang/String;
    .end local v2    # "p2":I
    :sswitch_2e
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4129
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4130
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 4131
    .local v1, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4132
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 4133
    goto/16 :goto_1

    .line 4116
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :sswitch_2f
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4118
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4119
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 4120
    .local v1, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4121
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 4122
    goto/16 :goto_1

    .line 4107
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :sswitch_30
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4109
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4110
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getImsRegistrationState(I)V

    .line 4111
    goto/16 :goto_1

    .line 4094
    .end local v0    # "serial":I
    :sswitch_31
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4096
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4097
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 4098
    .local v1, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4099
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4100
    .local v2, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4101
    .local v3, "isRoaming":Z
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    .line 4102
    goto/16 :goto_1

    .line 4084
    .end local v0    # "serial":I
    .end local v1    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v2    # "modemCognitive":Z
    .end local v3    # "isRoaming":Z
    :sswitch_32
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4086
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4087
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4088
    .local v1, "rate":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setCellInfoListRate(II)V

    .line 4089
    goto/16 :goto_1

    .line 4075
    .end local v0    # "serial":I
    .end local v1    # "rate":I
    :sswitch_33
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4077
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4078
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getCellInfoList(I)V

    .line 4079
    goto/16 :goto_1

    .line 4066
    .end local v0    # "serial":I
    :sswitch_34
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4068
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4069
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getVoiceRadioTechnology(I)V

    .line 4070
    goto/16 :goto_1

    .line 4056
    .end local v0    # "serial":I
    :sswitch_35
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4058
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4059
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4060
    .local v1, "contents":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    .line 4061
    goto/16 :goto_1

    .line 4045
    .end local v0    # "serial":I
    .end local v1    # "contents":Ljava/lang/String;
    :sswitch_36
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4047
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4048
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4049
    .local v1, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4050
    .local v2, "ackPdu":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    .line 4051
    goto/16 :goto_1

    .line 4035
    .end local v0    # "serial":I
    .end local v1    # "success":Z
    .end local v2    # "ackPdu":Ljava/lang/String;
    :sswitch_37
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4037
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4038
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4039
    .local v1, "challenge":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->requestIsimAuthentication(ILjava/lang/String;)V

    .line 4040
    goto/16 :goto_1

    .line 4026
    .end local v0    # "serial":I
    .end local v1    # "challenge":Ljava/lang/String;
    :sswitch_38
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4028
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4029
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getCdmaSubscriptionSource(I)V

    .line 4030
    goto/16 :goto_1

    .line 4017
    .end local v0    # "serial":I
    :sswitch_39
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4019
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4020
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->reportStkServiceIsRunning(I)V

    .line 4021
    goto/16 :goto_1

    .line 4007
    .end local v0    # "serial":I
    :sswitch_3a
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4009
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4010
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4011
    .local v1, "available":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->reportSmsMemoryStatus(IZ)V

    .line 4012
    goto/16 :goto_1

    .line 3997
    .end local v0    # "serial":I
    .end local v1    # "available":Z
    :sswitch_3b
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3999
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4000
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4001
    .local v1, "smsc":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setSmscAddress(ILjava/lang/String;)V

    .line 4002
    goto/16 :goto_1

    .line 3988
    .end local v0    # "serial":I
    .end local v1    # "smsc":Ljava/lang/String;
    :sswitch_3c
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3990
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3991
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getSmscAddress(I)V

    .line 3992
    goto/16 :goto_1

    .line 3979
    .end local v0    # "serial":I
    :sswitch_3d
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3981
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3982
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 3983
    goto/16 :goto_1

    .line 3970
    .end local v0    # "serial":I
    :sswitch_3e
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3972
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3973
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getDeviceIdentity(I)V

    .line 3974
    goto/16 :goto_1

    .line 3960
    .end local v0    # "serial":I
    :sswitch_3f
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3962
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3963
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3964
    .local v1, "index":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->deleteSmsOnRuim(II)V

    .line 3965
    goto/16 :goto_1

    .line 3949
    .end local v0    # "serial":I
    .end local v1    # "index":I
    :sswitch_40
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3951
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3952
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    .line 3953
    .local v1, "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3954
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    .line 3955
    goto/16 :goto_1

    .line 3940
    .end local v0    # "serial":I
    .end local v1    # "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    :sswitch_41
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3942
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3943
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getCDMASubscription(I)V

    .line 3944
    goto/16 :goto_1

    .line 3930
    .end local v0    # "serial":I
    :sswitch_42
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3932
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3933
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3934
    .local v1, "activate":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setCdmaBroadcastActivation(IZ)V

    .line 3935
    goto/16 :goto_1

    .line 3920
    .end local v0    # "serial":I
    .end local v1    # "activate":Z
    :sswitch_43
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3922
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3923
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3924
    .local v1, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V

    .line 3925
    goto/16 :goto_1

    .line 3911
    .end local v0    # "serial":I
    .end local v1    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :sswitch_44
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3913
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3914
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getCdmaBroadcastConfig(I)V

    .line 3915
    goto/16 :goto_1

    .line 3901
    .end local v0    # "serial":I
    :sswitch_45
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3903
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3904
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3905
    .local v1, "activate":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setGsmBroadcastActivation(IZ)V

    .line 3906
    goto/16 :goto_1

    .line 3891
    .end local v0    # "serial":I
    .end local v1    # "activate":Z
    :sswitch_46
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3893
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3894
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3895
    .local v1, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    .line 3896
    goto/16 :goto_1

    .line 3882
    .end local v0    # "serial":I
    .end local v1    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :sswitch_47
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3884
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3885
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getGsmBroadcastConfig(I)V

    .line 3886
    goto/16 :goto_1

    .line 3871
    .end local v0    # "serial":I
    :sswitch_48
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3873
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3874
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 3875
    .local v1, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3876
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 3877
    goto/16 :goto_1

    .line 3860
    .end local v0    # "serial":I
    .end local v1    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :sswitch_49
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3862
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3863
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 3864
    .local v1, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3865
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 3866
    goto/16 :goto_1

    .line 3848
    .end local v0    # "serial":I
    .end local v1    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :sswitch_4a
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3850
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3851
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3852
    .local v1, "dtmf":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3853
    .local v2, "on":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3854
    .local v3, "off":I
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    .line 3855
    goto/16 :goto_1

    .line 3838
    .end local v0    # "serial":I
    .end local v1    # "dtmf":Ljava/lang/String;
    .end local v2    # "on":I
    .end local v3    # "off":I
    :sswitch_4b
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3840
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3841
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3842
    .local v1, "featureCode":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendCDMAFeatureCode(ILjava/lang/String;)V

    .line 3843
    goto/16 :goto_1

    .line 3829
    .end local v0    # "serial":I
    .end local v1    # "featureCode":Ljava/lang/String;
    :sswitch_4c
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3831
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3832
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getPreferredVoicePrivacy(I)V

    .line 3833
    goto/16 :goto_1

    .line 3819
    .end local v0    # "serial":I
    :sswitch_4d
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3821
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3822
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3823
    .local v1, "enable":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setPreferredVoicePrivacy(IZ)V

    .line 3824
    goto/16 :goto_1

    .line 3810
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_4e
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3812
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3813
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getTTYMode(I)V

    .line 3814
    goto/16 :goto_1

    .line 3800
    .end local v0    # "serial":I
    :sswitch_4f
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3802
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3803
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3804
    .local v1, "mode":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setTTYMode(II)V

    .line 3805
    goto/16 :goto_1

    .line 3791
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_50
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3793
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3794
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getCdmaRoamingPreference(I)V

    .line 3795
    goto/16 :goto_1

    .line 3781
    .end local v0    # "serial":I
    :sswitch_51
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3783
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3784
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3785
    .local v1, "type":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setCdmaRoamingPreference(II)V

    .line 3786
    goto/16 :goto_1

    .line 3771
    .end local v0    # "serial":I
    .end local v1    # "type":I
    :sswitch_52
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3773
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3774
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3775
    .local v1, "cdmaSub":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setCdmaSubscriptionSource(II)V

    .line 3776
    goto/16 :goto_1

    .line 3761
    .end local v0    # "serial":I
    .end local v1    # "cdmaSub":I
    :sswitch_53
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3763
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3764
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3765
    .local v1, "enable":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setLocationUpdates(IZ)V

    .line 3766
    goto/16 :goto_1

    .line 3752
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_54
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3754
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3755
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getNeighboringCids(I)V

    .line 3756
    goto/16 :goto_1

    .line 3743
    .end local v0    # "serial":I
    :sswitch_55
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3745
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3746
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getPreferredNetworkType(I)V

    .line 3747
    goto/16 :goto_1

    .line 3733
    .end local v0    # "serial":I
    :sswitch_56
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3735
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3736
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3737
    .local v1, "nwType":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setPreferredNetworkType(II)V

    .line 3738
    goto/16 :goto_1

    .line 3724
    .end local v0    # "serial":I
    .end local v1    # "nwType":I
    :sswitch_57
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3726
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3727
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->explicitCallTransfer(I)V

    .line 3728
    goto/16 :goto_1

    .line 3714
    .end local v0    # "serial":I
    :sswitch_58
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3716
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3717
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3718
    .local v1, "accept":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    .line 3719
    goto/16 :goto_1

    .line 3704
    .end local v0    # "serial":I
    .end local v1    # "accept":Z
    :sswitch_59
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3706
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3707
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3708
    .local v1, "commandResponse":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    .line 3709
    goto/16 :goto_1

    .line 3694
    .end local v0    # "serial":I
    .end local v1    # "commandResponse":Ljava/lang/String;
    :sswitch_5a
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3696
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3697
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3698
    .local v1, "command":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendEnvelope(ILjava/lang/String;)V

    .line 3699
    goto/16 :goto_1

    .line 3685
    .end local v0    # "serial":I
    .end local v1    # "command":Ljava/lang/String;
    :sswitch_5b
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3687
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3688
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getAvailableBandModes(I)V

    .line 3689
    goto/16 :goto_1

    .line 3675
    .end local v0    # "serial":I
    :sswitch_5c
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3677
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3678
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3679
    .local v1, "mode":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setBandMode(II)V

    .line 3680
    goto/16 :goto_1

    .line 3665
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_5d
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3667
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3668
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3669
    .local v1, "index":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->deleteSmsOnSim(II)V

    .line 3670
    goto/16 :goto_1

    .line 3654
    .end local v0    # "serial":I
    .end local v1    # "index":I
    :sswitch_5e
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3656
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3657
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    .line 3658
    .local v1, "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3659
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    .line 3660
    goto/16 :goto_1

    .line 3644
    .end local v0    # "serial":I
    .end local v1    # "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    :sswitch_5f
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3646
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3647
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3648
    .local v1, "enable":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setSuppServiceNotifications(IZ)V

    .line 3649
    goto/16 :goto_1

    .line 3635
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_60
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3637
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3638
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getDataCallList(I)V

    .line 3639
    goto/16 :goto_1

    .line 3626
    .end local v0    # "serial":I
    :sswitch_61
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3628
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3629
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getClip(I)V

    .line 3630
    goto/16 :goto_1

    .line 3617
    .end local v0    # "serial":I
    :sswitch_62
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3619
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3620
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getMute(I)V

    .line 3621
    goto/16 :goto_1

    .line 3607
    .end local v0    # "serial":I
    :sswitch_63
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3609
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3610
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3611
    .restart local v1    # "enable":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setMute(IZ)V

    .line 3612
    goto/16 :goto_1

    .line 3597
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_64
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3599
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3600
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3601
    .local v1, "gsmIndex":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->separateConnection(II)V

    .line 3602
    goto/16 :goto_1

    .line 3588
    .end local v0    # "serial":I
    .end local v1    # "gsmIndex":I
    :sswitch_65
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3590
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3591
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getBasebandVersion(I)V

    .line 3592
    goto/16 :goto_1

    .line 3579
    .end local v0    # "serial":I
    :sswitch_66
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3581
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3582
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->stopDtmf(I)V

    .line 3583
    goto/16 :goto_1

    .line 3569
    .end local v0    # "serial":I
    :sswitch_67
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3571
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3572
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3573
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->startDtmf(ILjava/lang/String;)V

    .line 3574
    goto/16 :goto_1

    .line 3560
    .end local v0    # "serial":I
    .end local v1    # "s":Ljava/lang/String;
    :sswitch_68
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3562
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3563
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getAvailableNetworks(I)V

    .line 3564
    goto/16 :goto_1

    .line 3550
    .end local v0    # "serial":I
    :sswitch_69
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3552
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3553
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3554
    .local v1, "operatorNumeric":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    .line 3555
    goto/16 :goto_1

    .line 3541
    .end local v0    # "serial":I
    .end local v1    # "operatorNumeric":Ljava/lang/String;
    :sswitch_6a
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3543
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3544
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 3545
    goto/16 :goto_1

    .line 3532
    .end local v0    # "serial":I
    :sswitch_6b
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3534
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3535
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getNetworkSelectionMode(I)V

    .line 3536
    goto/16 :goto_1

    .line 3520
    .end local v0    # "serial":I
    :sswitch_6c
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3522
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3523
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3524
    .local v1, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3525
    .local v2, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3526
    .local v3, "newPassword":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3527
    goto/16 :goto_1

    .line 3506
    .end local v0    # "serial":I
    .end local v1    # "facility":Ljava/lang/String;
    .end local v2    # "oldPassword":Ljava/lang/String;
    .end local v3    # "newPassword":Ljava/lang/String;
    :sswitch_6d
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3508
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 3509
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 3510
    .local v8, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v9

    .line 3511
    .local v9, "lockState":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 3512
    .local v13, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 3513
    .local v14, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 3514
    .local v15, "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move v3, v9

    move-object v4, v13

    move v5, v14

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 3515
    goto/16 :goto_1

    .line 3493
    .end local v7    # "serial":I
    .end local v8    # "facility":Ljava/lang/String;
    .end local v9    # "lockState":Z
    .end local v13    # "password":Ljava/lang/String;
    .end local v14    # "serviceClass":I
    .end local v15    # "appId":Ljava/lang/String;
    :sswitch_6e
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3495
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 3496
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 3497
    .local v7, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 3498
    .local v8, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 3499
    .local v9, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 3500
    .local v13, "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 3501
    goto/16 :goto_1

    .line 3482
    .end local v6    # "serial":I
    .end local v7    # "facility":Ljava/lang/String;
    .end local v8    # "password":Ljava/lang/String;
    .end local v9    # "serviceClass":I
    .end local v13    # "appId":Ljava/lang/String;
    :sswitch_6f
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3484
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3485
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3486
    .local v1, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3487
    .local v2, "reasonRadioShutDown":Z
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->deactivateDataCall(IIZ)V

    .line 3488
    goto/16 :goto_1

    .line 3473
    .end local v0    # "serial":I
    .end local v1    # "cid":I
    .end local v2    # "reasonRadioShutDown":Z
    :sswitch_70
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3475
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3476
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->acceptCall(I)V

    .line 3477
    goto/16 :goto_1

    .line 3462
    .end local v0    # "serial":I
    :sswitch_71
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3464
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3465
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3466
    .local v1, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3467
    .local v2, "cause":I
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    .line 3468
    goto/16 :goto_1

    .line 3451
    .end local v0    # "serial":I
    .end local v1    # "success":Z
    .end local v2    # "cause":I
    :sswitch_72
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3453
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3454
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3455
    .local v1, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3456
    .local v2, "serviceClass":I
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setCallWaiting(IZI)V

    .line 3457
    goto/16 :goto_1

    .line 3441
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    .end local v2    # "serviceClass":I
    :sswitch_73
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3443
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3444
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3445
    .local v1, "serviceClass":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getCallWaiting(II)V

    .line 3446
    goto/16 :goto_1

    .line 3430
    .end local v0    # "serial":I
    .end local v1    # "serviceClass":I
    :sswitch_74
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3432
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3433
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 3434
    .local v1, "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3435
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 3436
    goto/16 :goto_1

    .line 3419
    .end local v0    # "serial":I
    .end local v1    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :sswitch_75
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3421
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3422
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 3423
    .restart local v1    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3424
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 3425
    goto/16 :goto_1

    .line 3409
    .end local v0    # "serial":I
    .end local v1    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :sswitch_76
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3411
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3412
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3413
    .local v1, "status":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setClir(II)V

    .line 3414
    goto/16 :goto_1

    .line 3400
    .end local v0    # "serial":I
    .end local v1    # "status":I
    :sswitch_77
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3402
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3403
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getClir(I)V

    .line 3404
    goto/16 :goto_1

    .line 3391
    .end local v0    # "serial":I
    :sswitch_78
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3393
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3394
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->cancelPendingUssd(I)V

    .line 3395
    goto/16 :goto_1

    .line 3381
    .end local v0    # "serial":I
    :sswitch_79
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3383
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3384
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3385
    .local v1, "ussd":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendUssd(ILjava/lang/String;)V

    .line 3386
    goto/16 :goto_1

    .line 3370
    .end local v0    # "serial":I
    .end local v1    # "ussd":Ljava/lang/String;
    :sswitch_7a
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3372
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3373
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    .line 3374
    .local v1, "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/IccIo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3375
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    .line 3376
    goto/16 :goto_1

    .line 3355
    .end local v0    # "serial":I
    .end local v1    # "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    :sswitch_7b
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3357
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 3358
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 3359
    .local v8, "radioTechnology":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v9, v0

    .line 3360
    .local v9, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v9, v11}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3361
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v13

    .line 3362
    .local v13, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v14

    .line 3363
    .local v14, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v15

    .line 3364
    .local v15, "isRoaming":Z
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move-object v3, v9

    move v4, v13

    move v5, v14

    move v6, v15

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    .line 3365
    goto/16 :goto_1

    .line 3344
    .end local v7    # "serial":I
    .end local v8    # "radioTechnology":I
    .end local v9    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v13    # "modemCognitive":Z
    .end local v14    # "roamingAllowed":Z
    .end local v15    # "isRoaming":Z
    :sswitch_7c
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3346
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3347
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 3348
    .local v1, "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3349
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 3350
    goto/16 :goto_1

    .line 3333
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :sswitch_7d
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3335
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3336
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 3337
    .restart local v1    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3338
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 3339
    goto/16 :goto_1

    .line 3323
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :sswitch_7e
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3325
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3326
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3327
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    .line 3328
    goto/16 :goto_1

    .line 3313
    .end local v0    # "serial":I
    .end local v1    # "s":Ljava/lang/String;
    :sswitch_7f
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3315
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3316
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3317
    .local v1, "on":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setRadioPower(IZ)V

    .line 3318
    goto/16 :goto_1

    .line 3304
    .end local v0    # "serial":I
    .end local v1    # "on":Z
    :sswitch_80
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3306
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3307
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getOperator(I)V

    .line 3308
    goto/16 :goto_1

    .line 3295
    .end local v0    # "serial":I
    :sswitch_81
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3297
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3298
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getDataRegistrationState(I)V

    .line 3299
    goto/16 :goto_1

    .line 3286
    .end local v0    # "serial":I
    :sswitch_82
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3288
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3289
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getVoiceRegistrationState(I)V

    .line 3290
    goto/16 :goto_1

    .line 3277
    .end local v0    # "serial":I
    :sswitch_83
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3279
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3280
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getSignalStrength(I)V

    .line 3281
    goto/16 :goto_1

    .line 3268
    .end local v0    # "serial":I
    :sswitch_84
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3270
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3271
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getLastCallFailCause(I)V

    .line 3272
    goto/16 :goto_1

    .line 3259
    .end local v0    # "serial":I
    :sswitch_85
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3261
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3262
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->rejectCall(I)V

    .line 3263
    goto/16 :goto_1

    .line 3250
    .end local v0    # "serial":I
    :sswitch_86
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3252
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3253
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->conference(I)V

    .line 3254
    goto/16 :goto_1

    .line 3241
    .end local v0    # "serial":I
    :sswitch_87
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3243
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3244
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    .line 3245
    goto/16 :goto_1

    .line 3232
    .end local v0    # "serial":I
    :sswitch_88
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3234
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3235
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->hangupForegroundResumeBackground(I)V

    .line 3236
    goto/16 :goto_1

    .line 3223
    .end local v0    # "serial":I
    :sswitch_89
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3225
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3226
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->hangupWaitingOrBackground(I)V

    .line 3227
    goto/16 :goto_1

    .line 3213
    .end local v0    # "serial":I
    :sswitch_8a
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3215
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3216
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3217
    .local v1, "gsmIndex":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->hangup(II)V

    .line 3218
    goto/16 :goto_1

    .line 3203
    .end local v0    # "serial":I
    .end local v1    # "gsmIndex":I
    :sswitch_8b
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3205
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3206
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3207
    .local v1, "aid":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getImsiForApp(ILjava/lang/String;)V

    .line 3208
    goto/16 :goto_1

    .line 3192
    .end local v0    # "serial":I
    .end local v1    # "aid":Ljava/lang/String;
    :sswitch_8c
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3194
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3195
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 3196
    .local v1, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3197
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 3198
    goto/16 :goto_1

    .line 3183
    .end local v0    # "serial":I
    .end local v1    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :sswitch_8d
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3185
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3186
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getCurrentCalls(I)V

    .line 3187
    goto/16 :goto_1

    .line 3173
    .end local v0    # "serial":I
    :sswitch_8e
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3175
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3176
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3177
    .local v1, "netPin":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    .line 3178
    goto/16 :goto_1

    .line 3161
    .end local v0    # "serial":I
    .end local v1    # "netPin":Ljava/lang/String;
    :sswitch_8f
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3163
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3164
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3165
    .local v1, "oldPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3166
    .local v2, "newPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3167
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3168
    goto/16 :goto_1

    .line 3149
    .end local v0    # "serial":I
    .end local v1    # "oldPin2":Ljava/lang/String;
    .end local v2    # "newPin2":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :sswitch_90
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3151
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3152
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3153
    .local v1, "oldPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3154
    .local v2, "newPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3155
    .restart local v3    # "aid":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3156
    goto/16 :goto_1

    .line 3137
    .end local v0    # "serial":I
    .end local v1    # "oldPin":Ljava/lang/String;
    .end local v2    # "newPin":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :sswitch_91
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3139
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3140
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3141
    .local v1, "puk2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3142
    .local v2, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3143
    .restart local v3    # "aid":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3144
    goto :goto_1

    .line 3126
    .end local v0    # "serial":I
    .end local v1    # "puk2":Ljava/lang/String;
    .end local v2    # "pin2":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :sswitch_92
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3128
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3129
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3130
    .local v1, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3131
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 3132
    goto :goto_1

    .line 3114
    .end local v0    # "serial":I
    .end local v1    # "pin2":Ljava/lang/String;
    .end local v2    # "aid":Ljava/lang/String;
    :sswitch_93
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3116
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3117
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3118
    .local v1, "puk":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3119
    .local v2, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3120
    .restart local v3    # "aid":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3121
    goto :goto_1

    .line 3103
    .end local v0    # "serial":I
    .end local v1    # "puk":Ljava/lang/String;
    .end local v2    # "pin":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :sswitch_94
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3105
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3106
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3107
    .local v1, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3108
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 3109
    goto :goto_1

    .line 3094
    .end local v0    # "serial":I
    .end local v1    # "pin":Ljava/lang/String;
    .end local v2    # "aid":Ljava/lang/String;
    :sswitch_95
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3096
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3097
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getIccCardStatus(I)V

    .line 3098
    goto :goto_1

    .line 3082
    .end local v0    # "serial":I
    :sswitch_96
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3084
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioResponse;

    move-result-object v0

    .line 3085
    .local v0, "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioIndication;

    move-result-object v1

    .line 3086
    .local v1, "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 3087
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3088
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3089
    nop

    .line 4645
    .end local v0    # "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    .end local v1    # "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_96
        0x2 -> :sswitch_95
        0x3 -> :sswitch_94
        0x4 -> :sswitch_93
        0x5 -> :sswitch_92
        0x6 -> :sswitch_91
        0x7 -> :sswitch_90
        0x8 -> :sswitch_8f
        0x9 -> :sswitch_8e
        0xa -> :sswitch_8d
        0xb -> :sswitch_8c
        0xc -> :sswitch_8b
        0xd -> :sswitch_8a
        0xe -> :sswitch_89
        0xf -> :sswitch_88
        0x10 -> :sswitch_87
        0x11 -> :sswitch_86
        0x12 -> :sswitch_85
        0x13 -> :sswitch_84
        0x14 -> :sswitch_83
        0x15 -> :sswitch_82
        0x16 -> :sswitch_81
        0x17 -> :sswitch_80
        0x18 -> :sswitch_7f
        0x19 -> :sswitch_7e
        0x1a -> :sswitch_7d
        0x1b -> :sswitch_7c
        0x1c -> :sswitch_7b
        0x1d -> :sswitch_7a
        0x1e -> :sswitch_79
        0x1f -> :sswitch_78
        0x20 -> :sswitch_77
        0x21 -> :sswitch_76
        0x22 -> :sswitch_75
        0x23 -> :sswitch_74
        0x24 -> :sswitch_73
        0x25 -> :sswitch_72
        0x26 -> :sswitch_71
        0x27 -> :sswitch_70
        0x28 -> :sswitch_6f
        0x29 -> :sswitch_6e
        0x2a -> :sswitch_6d
        0x2b -> :sswitch_6c
        0x2c -> :sswitch_6b
        0x2d -> :sswitch_6a
        0x2e -> :sswitch_69
        0x2f -> :sswitch_68
        0x30 -> :sswitch_67
        0x31 -> :sswitch_66
        0x32 -> :sswitch_65
        0x33 -> :sswitch_64
        0x34 -> :sswitch_63
        0x35 -> :sswitch_62
        0x36 -> :sswitch_61
        0x37 -> :sswitch_60
        0x38 -> :sswitch_5f
        0x39 -> :sswitch_5e
        0x3a -> :sswitch_5d
        0x3b -> :sswitch_5c
        0x3c -> :sswitch_5b
        0x3d -> :sswitch_5a
        0x3e -> :sswitch_59
        0x3f -> :sswitch_58
        0x40 -> :sswitch_57
        0x41 -> :sswitch_56
        0x42 -> :sswitch_55
        0x43 -> :sswitch_54
        0x44 -> :sswitch_53
        0x45 -> :sswitch_52
        0x46 -> :sswitch_51
        0x47 -> :sswitch_50
        0x48 -> :sswitch_4f
        0x49 -> :sswitch_4e
        0x4a -> :sswitch_4d
        0x4b -> :sswitch_4c
        0x4c -> :sswitch_4b
        0x4d -> :sswitch_4a
        0x4e -> :sswitch_49
        0x4f -> :sswitch_48
        0x50 -> :sswitch_47
        0x51 -> :sswitch_46
        0x52 -> :sswitch_45
        0x53 -> :sswitch_44
        0x54 -> :sswitch_43
        0x55 -> :sswitch_42
        0x56 -> :sswitch_41
        0x57 -> :sswitch_40
        0x58 -> :sswitch_3f
        0x59 -> :sswitch_3e
        0x5a -> :sswitch_3d
        0x5b -> :sswitch_3c
        0x5c -> :sswitch_3b
        0x5d -> :sswitch_3a
        0x5e -> :sswitch_39
        0x5f -> :sswitch_38
        0x60 -> :sswitch_37
        0x61 -> :sswitch_36
        0x62 -> :sswitch_35
        0x63 -> :sswitch_34
        0x64 -> :sswitch_33
        0x65 -> :sswitch_32
        0x66 -> :sswitch_31
        0x67 -> :sswitch_30
        0x68 -> :sswitch_2f
        0x69 -> :sswitch_2e
        0x6a -> :sswitch_2d
        0x6b -> :sswitch_2c
        0x6c -> :sswitch_2b
        0x6d -> :sswitch_2a
        0x6e -> :sswitch_29
        0x6f -> :sswitch_28
        0x70 -> :sswitch_27
        0x71 -> :sswitch_26
        0x72 -> :sswitch_25
        0x73 -> :sswitch_24
        0x74 -> :sswitch_23
        0x75 -> :sswitch_22
        0x76 -> :sswitch_21
        0x77 -> :sswitch_20
        0x78 -> :sswitch_1f
        0x79 -> :sswitch_1e
        0x7a -> :sswitch_1d
        0x7b -> :sswitch_1c
        0x7c -> :sswitch_1b
        0x7d -> :sswitch_1a
        0x7e -> :sswitch_19
        0x7f -> :sswitch_18
        0x80 -> :sswitch_17
        0x81 -> :sswitch_16
        0x82 -> :sswitch_15
        0x83 -> :sswitch_14
        0x84 -> :sswitch_13
        0x85 -> :sswitch_12
        0x86 -> :sswitch_11
        0x87 -> :sswitch_10
        0x88 -> :sswitch_f
        0x89 -> :sswitch_e
        0x8a -> :sswitch_d
        0x8b -> :sswitch_c
        0x8c -> :sswitch_b
        0x8d -> :sswitch_a
        0x8e -> :sswitch_9
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

    .line 3033
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 3061
    const-string v0, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3062
    return-object p0

    .line 3064
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

    .line 3068
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 3069
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .locals 0

    .line 3023
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 3073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 3055
    const/4 v0, 0x1

    return v0
.end method
