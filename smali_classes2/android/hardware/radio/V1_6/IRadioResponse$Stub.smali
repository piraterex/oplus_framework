.class public abstract Landroid/hardware/radio/V1_6/IRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "IRadioResponse.java"

# interfaces
.implements Landroid/hardware/radio/V1_6/IRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_6/IRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 4276
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 4279
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

    .line 4298
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 4341
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 4342
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 4343
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 4344
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 4345
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

    .line 4310
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

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

    new-array v3, v2, [B

    fill-array-data v3, :array_6

    const/4 v4, 0x6

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :array_0
    .array-data 1
        0x44t
        0x43t
        -0xbt
        -0x3bt
        -0x9t
        -0x77t
        -0x29t
        0x7at
        -0x4ct
        -0x6ft
        -0x56t
        -0x2ct
        -0x31t
        0x46t
        0x73t
        -0x2ft
        0x31t
        -0x45t
        -0x5ct
        0x50t
        0x14t
        -0x2at
        -0x45t
        0x48t
        0x16t
        -0x78t
        -0x74t
        -0x46t
        -0x3dt
        0x7at
        -0x58t
        -0x3ft
    .end array-data

    :array_1
    .array-data 1
        -0x48t
        0x9t
        0x19t
        0x39t
        0x70t
        -0x57t
        0x1ct
        -0x5at
        0x37t
        -0x5ct
        -0x50t
        0x18t
        0x47t
        0x67t
        0x31t
        0x56t
        0x1t
        -0x2dt
        0x2et
        0x3et
        -0xdt
        -0x2bt
        -0x67t
        0x2ft
        -0x5t
        -0x39t
        -0x58t
        -0x2ft
        0x4at
        0x14t
        -0x10t
        0x15t
    .end array-data

    :array_2
    .array-data 1
        0xct
        -0x40t
        -0x23t
        -0x79t
        -0x3at
        0x34t
        -0x56t
        -0x2dt
        0x6dt
        0x7dt
        -0xet
        0x2bt
        0x28t
        0x32t
        -0x7dt
        -0x62t
        -0x9t
        -0x22t
        -0x29t
        0x19t
        0x9t
        -0x25t
        -0x33t
        -0x1ft
        0x1ct
        -0x3t
        -0x2at
        -0x63t
        -0x40t
        -0x24t
        0x52t
        -0x48t
    .end array-data

    :array_3
    .array-data 1
        -0xbt
        -0x5t
        -0x1ct
        -0xet
        -0x76t
        -0x62t
        0x34t
        0x6bt
        -0x1dt
        0x60t
        0x63t
        -0x14t
        -0x5ct
        -0x1at
        -0x38t
        0x64t
        0x11t
        0x4at
        0x1at
        0x6ft
        -0x4at
        0x48t
        -0x7ct
        -0x25t
        0x3t
        -0x3t
        -0x28t
        0x25t
        0x79t
        0x1at
        -0x27t
        -0x48t
    .end array-data

    :array_4
    .array-data 1
        -0x26t
        -0x74t
        0x6at
        -0x17t
        -0x6ft
        -0x3at
        -0x5ct
        -0x4et
        -0x7ct
        -0x34t
        0x6et
        0x44t
        0x53t
        0x32t
        -0x20t
        0x64t
        -0x1et
        -0x72t
        -0x18t
        -0x60t
        -0x6ct
        -0x7et
        -0x13t
        0x5at
        -0x1t
        -0x7t
        -0x2ft
        0x59t
        -0x14t
        0x66t
        -0x6ct
        -0x49t
    .end array-data

    :array_5
    .array-data 1
        0x0t
        0x36t
        0x6bt
        0x2ft
        -0x78t
        -0x7t
        -0x14t
        0x24t
        0x58t
        0x1t
        0x49t
        0x72t
        -0x6dt
        -0x7et
        0x70t
        -0x38t
        0x41t
        0x3dt
        0x4at
        -0x4dt
        0x3t
        0x21t
        -0x72t
        0x37t
        -0x41t
        0x3at
        -0x23t
        0x2bt
        -0x72t
        0x6bt
        -0x7et
        -0x66t
    .end array-data

    :array_6
    .array-data 1
        -0x44t
        0x3ct
        -0x74t
        0x23t
        0x30t
        -0x7bt
        -0x4t
        -0x5dt
        -0x79t
        -0x63t
        -0x39t
        0x4bt
        0x49t
        0xbt
        -0x62t
        0x5bt
        -0x3ft
        0x6t
        0x32t
        0x58t
        0x47t
        0xdt
        0x3bt
        0x4ct
        0x12t
        -0x9t
        -0x59t
        0x4bt
        -0xet
        0x15t
        -0x35t
        -0x43t
    .end array-data

    :array_7
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
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4284
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.radio@1.6::IRadioResponse"

    const-string v2, "android.hardware.radio@1.5::IRadioResponse"

    const-string v3, "android.hardware.radio@1.4::IRadioResponse"

    const-string v4, "android.hardware.radio@1.3::IRadioResponse"

    const-string v5, "android.hardware.radio@1.2::IRadioResponse"

    const-string v6, "android.hardware.radio@1.1::IRadioResponse"

    const-string v7, "android.hardware.radio@1.0::IRadioResponse"

    const-string v8, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 4304
    const-string v0, "android.hardware.radio@1.6::IRadioResponse"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 4329
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .locals 0

    .line 4351
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 4353
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

    .line 4381
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v0, "android.hardware.radio@1.3::IRadioResponse"

    const-string v1, "android.hardware.radio@1.1::IRadioResponse"

    const/4 v2, 0x0

    const-string v3, "android.hidl.base@1.0::IBase"

    const-string v4, "android.hardware.radio@1.2::IRadioResponse"

    const-string v5, "android.hardware.radio@1.4::IRadioResponse"

    const-string v6, "android.hardware.radio@1.5::IRadioResponse"

    const-string v10, "android.hardware.radio@1.6::IRadioResponse"

    const-string v11, "android.hardware.radio@1.0::IRadioResponse"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 6710
    :sswitch_0
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6712
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->notifySyspropsChanged()V

    .line 6713
    goto/16 :goto_1

    .line 6699
    :sswitch_1
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6701
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 6702
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6703
    invoke-virtual {v0, v9}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 6704
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6705
    goto/16 :goto_1

    .line 6689
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6691
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->ping()V

    .line 6692
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6693
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6694
    goto/16 :goto_1

    .line 6684
    :sswitch_3
    goto/16 :goto_1

    .line 6676
    :sswitch_4
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6678
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setHALInstrumentation()V

    .line 6679
    goto/16 :goto_1

    .line 6642
    :sswitch_5
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6644
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 6645
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6647
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 6649
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6650
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 6651
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 6652
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v2, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 6653
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 6655
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 6656
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 6658
    .local v10, "_hidl_array_item_1":[B
    if-eqz v10, :cond_0

    array-length v11, v10

    const/16 v12, 0x20

    if-ne v11, v12, :cond_0

    .line 6662
    invoke-virtual {v2, v5, v6, v10}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 6663
    nop

    .line 6653
    .end local v5    # "_hidl_array_offset_1":J
    .end local v10    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6659
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v10    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Array element is not of the expected length"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 6666
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v10    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 6668
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 6670
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6671
    goto/16 :goto_1

    .line 6631
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6633
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 6634
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6635
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 6636
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6637
    goto/16 :goto_1

    .line 6619
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6621
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 6622
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 6623
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 6624
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6625
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6626
    goto/16 :goto_1

    .line 6608
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6610
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 6611
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6612
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 6613
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6614
    goto/16 :goto_1

    .line 6597
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6599
    new-instance v0, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6600
    .local v0, "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6601
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6602
    .local v1, "updatedRecordIndex":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->updateSimPhonebookRecordsResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;I)V

    .line 6603
    goto/16 :goto_1

    .line 6585
    .end local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    .end local v1    # "updatedRecordIndex":I
    :sswitch_a
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6587
    new-instance v0, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6588
    .restart local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6589
    new-instance v1, Landroid/hardware/radio/V1_6/PhonebookCapacity;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/PhonebookCapacity;-><init>()V

    .line 6590
    .local v1, "capacity":Landroid/hardware/radio/V1_6/PhonebookCapacity;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_6/PhonebookCapacity;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6591
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getSimPhonebookCapacityResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_6/PhonebookCapacity;)V

    .line 6592
    goto/16 :goto_1

    .line 6575
    .end local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    .end local v1    # "capacity":Landroid/hardware/radio/V1_6/PhonebookCapacity;
    :sswitch_b
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6577
    new-instance v0, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6578
    .restart local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6579
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getSimPhonebookRecordsResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V

    .line 6580
    goto/16 :goto_1

    .line 6563
    .end local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    :sswitch_c
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6565
    new-instance v0, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6566
    .restart local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6567
    new-instance v1, Landroid/hardware/radio/V1_6/SlicingConfig;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/SlicingConfig;-><init>()V

    .line 6568
    .local v1, "slicingConfig":Landroid/hardware/radio/V1_6/SlicingConfig;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_6/SlicingConfig;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6569
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getSlicingConfigResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_6/SlicingConfig;)V

    .line 6570
    goto/16 :goto_1

    .line 6552
    .end local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    .end local v1    # "slicingConfig":Landroid/hardware/radio/V1_6/SlicingConfig;
    :sswitch_d
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6554
    new-instance v0, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6555
    .restart local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6556
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_6/Call;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 6557
    .local v1, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/Call;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getCurrentCallsResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6558
    goto/16 :goto_1

    .line 6540
    .end local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    .end local v1    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/Call;>;"
    :sswitch_e
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6542
    new-instance v0, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6543
    .restart local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6544
    new-instance v1, Landroid/hardware/radio/V1_6/RegStateResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/RegStateResult;-><init>()V

    .line 6545
    .local v1, "dataRegResponse":Landroid/hardware/radio/V1_6/RegStateResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_6/RegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6546
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getDataRegistrationStateResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_6/RegStateResult;)V

    .line 6547
    goto/16 :goto_1

    .line 6528
    .end local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    .end local v1    # "dataRegResponse":Landroid/hardware/radio/V1_6/RegStateResult;
    :sswitch_f
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6530
    new-instance v0, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6531
    .restart local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6532
    new-instance v1, Landroid/hardware/radio/V1_6/RegStateResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/RegStateResult;-><init>()V

    .line 6533
    .local v1, "voiceRegResponse":Landroid/hardware/radio/V1_6/RegStateResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_6/RegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6534
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getVoiceRegistrationStateResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_6/RegStateResult;)V

    .line 6535
    goto/16 :goto_1

    .line 6516
    .end local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    .end local v1    # "voiceRegResponse":Landroid/hardware/radio/V1_6/RegStateResult;
    :sswitch_10
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6518
    new-instance v0, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6519
    .restart local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6520
    new-instance v1, Landroid/hardware/radio/V1_6/SignalStrength;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/SignalStrength;-><init>()V

    .line 6521
    .local v1, "signalStrength":Landroid/hardware/radio/V1_6/SignalStrength;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_6/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6522
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getSignalStrengthResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_6/SignalStrength;)V

    .line 6523
    goto/16 :goto_1

    .line 6505
    .end local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    .end local v1    # "signalStrength":Landroid/hardware/radio/V1_6/SignalStrength;
    :sswitch_11
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6507
    new-instance v0, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6508
    .restart local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6509
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_6/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 6510
    .local v1, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/CellInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getCellInfoListResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6511
    goto/16 :goto_1

    .line 6494
    .end local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    .end local v1    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/CellInfo;>;"
    :sswitch_12
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6496
    new-instance v0, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6497
    .restart local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6498
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 6499
    .local v1, "specifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/RadioAccessSpecifier;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getSystemSelectionChannelsResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6500
    goto/16 :goto_1

    .line 6484
    .end local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    .end local v1    # "specifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/RadioAccessSpecifier;>;"
    :sswitch_13
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6486
    new-instance v0, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6487
    .restart local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6488
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setDataThrottlingResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V

    .line 6489
    goto/16 :goto_1

    .line 6473
    .end local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    :sswitch_14
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6475
    new-instance v0, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6476
    .restart local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6477
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6478
    .local v1, "networkTypeBitmap":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getAllowedNetworkTypesBitmapResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;I)V

    .line 6479
    goto/16 :goto_1

    .line 6463
    .end local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    .end local v1    # "networkTypeBitmap":I
    :sswitch_15
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6465
    new-instance v0, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6466
    .restart local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6467
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setAllowedNetworkTypesBitmapResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V

    .line 6468
    goto/16 :goto_1

    .line 6453
    .end local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    :sswitch_16
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6455
    new-instance v0, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6456
    .restart local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6457
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->cancelHandoverResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V

    .line 6458
    goto/16 :goto_1

    .line 6443
    .end local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    :sswitch_17
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6445
    new-instance v0, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6446
    .restart local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6447
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->startHandoverResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V

    .line 6448
    goto/16 :goto_1

    .line 6433
    .end local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    :sswitch_18
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6435
    new-instance v0, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6436
    .restart local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6437
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->releasePduSessionIdResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V

    .line 6438
    goto/16 :goto_1

    .line 6422
    .end local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    :sswitch_19
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6424
    new-instance v0, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6425
    .restart local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6426
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6427
    .local v1, "id":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->allocatePduSessionIdResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;I)V

    .line 6428
    goto/16 :goto_1

    .line 6411
    .end local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    .end local v1    # "id":I
    :sswitch_1a
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6413
    new-instance v0, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6414
    .restart local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6415
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 6416
    .local v1, "isEnabled":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->isNrDualConnectivityEnabledResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;Z)V

    .line 6417
    goto/16 :goto_1

    .line 6401
    .end local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    .end local v1    # "isEnabled":Z
    :sswitch_1b
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6403
    new-instance v0, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6404
    .restart local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6405
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setNrDualConnectivityStateResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V

    .line 6406
    goto/16 :goto_1

    .line 6391
    .end local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    :sswitch_1c
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6393
    new-instance v0, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6394
    .restart local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6395
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setSimCardPowerResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V

    .line 6396
    goto/16 :goto_1

    .line 6379
    .end local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    :sswitch_1d
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6381
    new-instance v0, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6382
    .restart local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6383
    new-instance v1, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 6384
    .local v1, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6385
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->sendCdmaSmsExpectMoreResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 6386
    goto/16 :goto_1

    .line 6367
    .end local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    .end local v1    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_1e
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6369
    new-instance v0, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6370
    .restart local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6371
    new-instance v1, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 6372
    .restart local v1    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6373
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->sendCdmaSmsResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 6374
    goto/16 :goto_1

    .line 6355
    .end local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    .end local v1    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_1f
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6357
    new-instance v0, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6358
    .restart local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6359
    new-instance v1, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 6360
    .restart local v1    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6361
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->sendSmsExpectMoreResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 6362
    goto/16 :goto_1

    .line 6343
    .end local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    .end local v1    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_20
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6345
    new-instance v0, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6346
    .restart local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6347
    new-instance v1, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 6348
    .restart local v1    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6349
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->sendSmsResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 6350
    goto/16 :goto_1

    .line 6332
    .end local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    .end local v1    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_21
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6334
    new-instance v0, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6335
    .restart local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6336
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_6/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 6337
    .local v1, "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/SetupDataCallResult;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getDataCallListResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6338
    goto/16 :goto_1

    .line 6320
    .end local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    .end local v1    # "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/SetupDataCallResult;>;"
    :sswitch_22
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6322
    new-instance v0, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6323
    .restart local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6324
    new-instance v1, Landroid/hardware/radio/V1_6/SetupDataCallResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/SetupDataCallResult;-><init>()V

    .line 6325
    .local v1, "dcResponse":Landroid/hardware/radio/V1_6/SetupDataCallResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_6/SetupDataCallResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6326
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setupDataCallResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_6/SetupDataCallResult;)V

    .line 6327
    goto/16 :goto_1

    .line 6310
    .end local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    .end local v1    # "dcResponse":Landroid/hardware/radio/V1_6/SetupDataCallResult;
    :sswitch_23
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6312
    new-instance v0, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6313
    .restart local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6314
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setRadioPowerResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V

    .line 6315
    goto/16 :goto_1

    .line 6298
    .end local v0    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    :sswitch_24
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6300
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6301
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6302
    new-instance v1, Landroid/hardware/radio/V1_5/CardStatus;

    invoke-direct {v1}, Landroid/hardware/radio/V1_5/CardStatus;-><init>()V

    .line 6303
    .local v1, "cardStatus":Landroid/hardware/radio/V1_5/CardStatus;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_5/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6304
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getIccCardStatusResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_5/CardStatus;)V

    .line 6305
    goto/16 :goto_1

    .line 6286
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "cardStatus":Landroid/hardware/radio/V1_5/CardStatus;
    :sswitch_25
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6288
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6289
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6290
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6291
    .local v1, "persoType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6292
    .local v2, "remainingRetries":I
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->supplySimDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    .line 6293
    goto/16 :goto_1

    .line 6274
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "persoType":I
    .end local v2    # "remainingRetries":I
    :sswitch_26
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6276
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6277
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6278
    new-instance v1, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 6279
    .local v1, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6280
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->sendCdmaSmsExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 6281
    goto/16 :goto_1

    .line 6264
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_27
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6266
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6267
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6268
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setNetworkSelectionModeManualResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6269
    goto/16 :goto_1

    .line 6253
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_28
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6255
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6256
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6257
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_5/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 6258
    .local v1, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/CellInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getCellInfoListResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6259
    goto/16 :goto_1

    .line 6241
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/CellInfo;>;"
    :sswitch_29
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6243
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6244
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6245
    new-instance v1, Landroid/hardware/radio/V1_5/RegStateResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_5/RegStateResult;-><init>()V

    .line 6246
    .local v1, "dataRegResponse":Landroid/hardware/radio/V1_5/RegStateResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_5/RegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6247
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getDataRegistrationStateResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_5/RegStateResult;)V

    .line 6248
    goto/16 :goto_1

    .line 6229
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "dataRegResponse":Landroid/hardware/radio/V1_5/RegStateResult;
    :sswitch_2a
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6231
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6232
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6233
    new-instance v1, Landroid/hardware/radio/V1_5/RegStateResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_5/RegStateResult;-><init>()V

    .line 6234
    .local v1, "voiceRegResponse":Landroid/hardware/radio/V1_5/RegStateResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_5/RegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6235
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getVoiceRegistrationStateResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_5/RegStateResult;)V

    .line 6236
    goto/16 :goto_1

    .line 6216
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "voiceRegResponse":Landroid/hardware/radio/V1_5/RegStateResult;
    :sswitch_2b
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6218
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6219
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6220
    new-instance v1, Landroid/hardware/radio/V1_5/CellIdentity;

    invoke-direct {v1}, Landroid/hardware/radio/V1_5/CellIdentity;-><init>()V

    .line 6221
    .local v1, "cellIdentity":Landroid/hardware/radio/V1_5/CellIdentity;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_5/CellIdentity;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6222
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_5/BarringInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6223
    .local v2, "barringInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/BarringInfo;>;"
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getBarringInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_5/CellIdentity;Ljava/util/ArrayList;)V

    .line 6224
    goto/16 :goto_1

    .line 6206
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "cellIdentity":Landroid/hardware/radio/V1_5/CellIdentity;
    .end local v2    # "barringInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/BarringInfo;>;"
    :sswitch_2c
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6208
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6209
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6210
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setIndicationFilterResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6211
    goto/16 :goto_1

    .line 6196
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_2d
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6198
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6199
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6200
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setRadioPowerResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6201
    goto/16 :goto_1

    .line 6186
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_2e
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6188
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6189
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6190
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setDataProfileResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6191
    goto/16 :goto_1

    .line 6176
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_2f
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6178
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6179
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6180
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setInitialAttachApnResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6181
    goto/16 :goto_1

    .line 6165
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_30
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6167
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6168
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6169
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_5/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 6170
    .local v1, "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/SetupDataCallResult;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getDataCallListResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6171
    goto/16 :goto_1

    .line 6153
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/SetupDataCallResult;>;"
    :sswitch_31
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6155
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6156
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6157
    new-instance v1, Landroid/hardware/radio/V1_5/SetupDataCallResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_5/SetupDataCallResult;-><init>()V

    .line 6158
    .local v1, "dcResponse":Landroid/hardware/radio/V1_5/SetupDataCallResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_5/SetupDataCallResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6159
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setupDataCallResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_5/SetupDataCallResult;)V

    .line 6160
    goto/16 :goto_1

    .line 6143
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "dcResponse":Landroid/hardware/radio/V1_5/SetupDataCallResult;
    :sswitch_32
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6145
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6146
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6147
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->startNetworkScanResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6148
    goto/16 :goto_1

    .line 6133
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_33
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6135
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6136
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6137
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setSystemSelectionChannelsResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6138
    goto/16 :goto_1

    .line 6122
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_34
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6124
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6125
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6126
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 6127
    .local v1, "enabled":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->areUiccApplicationsEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 6128
    goto/16 :goto_1

    .line 6112
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "enabled":Z
    :sswitch_35
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6114
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6115
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6116
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->enableUiccApplicationsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6117
    goto/16 :goto_1

    .line 6102
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_36
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6104
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6105
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6106
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setLinkCapacityReportingCriteriaResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6107
    goto/16 :goto_1

    .line 6092
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_37
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6094
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6095
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6096
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setSignalStrengthReportingCriteriaResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6097
    goto/16 :goto_1

    .line 6080
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_38
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6082
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6083
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6084
    new-instance v1, Landroid/hardware/radio/V1_4/SignalStrength;

    invoke-direct {v1}, Landroid/hardware/radio/V1_4/SignalStrength;-><init>()V

    .line 6085
    .local v1, "signalStrength":Landroid/hardware/radio/V1_4/SignalStrength;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_4/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6086
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getSignalStrengthResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/SignalStrength;)V

    .line 6087
    goto/16 :goto_1

    .line 6067
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "signalStrength":Landroid/hardware/radio/V1_4/SignalStrength;
    :sswitch_39
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6069
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6070
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6071
    new-instance v1, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;

    invoke-direct {v1}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;-><init>()V

    .line 6072
    .local v1, "carriers":Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6073
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6074
    .local v2, "multiSimPolicy":I
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getAllowedCarriersResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;I)V

    .line 6075
    goto/16 :goto_1

    .line 6057
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "carriers":Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;
    .end local v2    # "multiSimPolicy":I
    :sswitch_3a
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6059
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6060
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6061
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setAllowedCarriersResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6062
    goto/16 :goto_1

    .line 6045
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3b
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6047
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6048
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6049
    new-instance v1, Landroid/hardware/radio/V1_4/SetupDataCallResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_4/SetupDataCallResult;-><init>()V

    .line 6050
    .local v1, "dcResponse":Landroid/hardware/radio/V1_4/SetupDataCallResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_4/SetupDataCallResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6051
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setupDataCallResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/SetupDataCallResult;)V

    .line 6052
    goto/16 :goto_1

    .line 6034
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "dcResponse":Landroid/hardware/radio/V1_4/SetupDataCallResult;
    :sswitch_3c
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6036
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6037
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6038
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_4/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 6039
    .local v1, "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/SetupDataCallResult;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getDataCallListResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6040
    goto/16 :goto_1

    .line 6024
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/SetupDataCallResult;>;"
    :sswitch_3d
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6026
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6027
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6028
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setPreferredNetworkTypeBitmapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6029
    goto/16 :goto_1

    .line 6013
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3e
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6015
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6016
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6017
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6018
    .local v1, "networkTypeBitmap":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getPreferredNetworkTypeBitmapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 6019
    goto/16 :goto_1

    .line 6001
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "networkTypeBitmap":I
    :sswitch_3f
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6003
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6004
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6005
    new-instance v1, Landroid/hardware/radio/V1_4/CardStatus;

    invoke-direct {v1}, Landroid/hardware/radio/V1_4/CardStatus;-><init>()V

    .line 6006
    .local v1, "cardStatus":Landroid/hardware/radio/V1_4/CardStatus;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_4/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6007
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getIccCardStatusResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/CardStatus;)V

    .line 6008
    goto/16 :goto_1

    .line 5989
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "cardStatus":Landroid/hardware/radio/V1_4/CardStatus;
    :sswitch_40
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5991
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5992
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5993
    new-instance v1, Landroid/hardware/radio/V1_4/DataRegStateResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_4/DataRegStateResult;-><init>()V

    .line 5994
    .local v1, "dataRegResponse":Landroid/hardware/radio/V1_4/DataRegStateResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_4/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5995
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getDataRegistrationStateResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/DataRegStateResult;)V

    .line 5996
    goto/16 :goto_1

    .line 5978
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "dataRegResponse":Landroid/hardware/radio/V1_4/DataRegStateResult;
    :sswitch_41
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5980
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5981
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5982
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_4/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5983
    .local v1, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/CellInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getCellInfoListResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5984
    goto/16 :goto_1

    .line 5968
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/CellInfo;>;"
    :sswitch_42
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5970
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5971
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5972
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->startNetworkScanResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5973
    goto/16 :goto_1

    .line 5958
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_43
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5960
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5961
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5962
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->emergencyDialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5963
    goto/16 :goto_1

    .line 5947
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_44
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5949
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5950
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5951
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5952
    .local v1, "isEnabled":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getModemStackStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 5953
    goto/16 :goto_1

    .line 5937
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "isEnabled":Z
    :sswitch_45
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5939
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5940
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5941
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->enableModemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5942
    goto/16 :goto_1

    .line 5927
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_46
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5929
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5930
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5931
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setSystemSelectionChannelsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5932
    goto/16 :goto_1

    .line 5915
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_47
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5917
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5918
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5919
    new-instance v1, Landroid/hardware/radio/V1_2/DataRegStateResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_2/DataRegStateResult;-><init>()V

    .line 5920
    .local v1, "dataRegResponse":Landroid/hardware/radio/V1_2/DataRegStateResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_2/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5921
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getDataRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/DataRegStateResult;)V

    .line 5922
    goto/16 :goto_1

    .line 5903
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "dataRegResponse":Landroid/hardware/radio/V1_2/DataRegStateResult;
    :sswitch_48
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5905
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5906
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5907
    new-instance v1, Landroid/hardware/radio/V1_2/VoiceRegStateResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_2/VoiceRegStateResult;-><init>()V

    .line 5908
    .local v1, "voiceRegResponse":Landroid/hardware/radio/V1_2/VoiceRegStateResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5909
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getVoiceRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/VoiceRegStateResult;)V

    .line 5910
    goto/16 :goto_1

    .line 5891
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "voiceRegResponse":Landroid/hardware/radio/V1_2/VoiceRegStateResult;
    :sswitch_49
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5893
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5894
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5895
    new-instance v1, Landroid/hardware/radio/V1_2/SignalStrength;

    invoke-direct {v1}, Landroid/hardware/radio/V1_2/SignalStrength;-><init>()V

    .line 5896
    .local v1, "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_2/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5897
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getSignalStrengthResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/SignalStrength;)V

    .line 5898
    goto/16 :goto_1

    .line 5880
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    :sswitch_4a
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5882
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5883
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5884
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_2/Call;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5885
    .local v1, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/Call;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getCurrentCallsResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5886
    goto/16 :goto_1

    .line 5870
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/Call;>;"
    :sswitch_4b
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5872
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5873
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5874
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setLinkCapacityReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5875
    goto/16 :goto_1

    .line 5860
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4c
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5862
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5863
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5864
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setSignalStrengthReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5865
    goto/16 :goto_1

    .line 5848
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4d
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5850
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5851
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5852
    new-instance v1, Landroid/hardware/radio/V1_2/CardStatus;

    invoke-direct {v1}, Landroid/hardware/radio/V1_2/CardStatus;-><init>()V

    .line 5853
    .local v1, "cardStatus":Landroid/hardware/radio/V1_2/CardStatus;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_2/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5854
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getIccCardStatusResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/CardStatus;)V

    .line 5855
    goto/16 :goto_1

    .line 5837
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "cardStatus":Landroid/hardware/radio/V1_2/CardStatus;
    :sswitch_4e
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5839
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5840
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5841
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_2/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5842
    .local v1, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getCellInfoListResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5843
    goto/16 :goto_1

    .line 5827
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    :sswitch_4f
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5829
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5830
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5831
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->stopKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5832
    goto/16 :goto_1

    .line 5815
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_50
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5817
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5818
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5819
    new-instance v1, Landroid/hardware/radio/V1_1/KeepaliveStatus;

    invoke-direct {v1}, Landroid/hardware/radio/V1_1/KeepaliveStatus;-><init>()V

    .line 5820
    .local v1, "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_1/KeepaliveStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5821
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->startKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_1/KeepaliveStatus;)V

    .line 5822
    goto/16 :goto_1

    .line 5805
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    :sswitch_51
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5807
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5808
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5809
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->stopNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5810
    goto/16 :goto_1

    .line 5795
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_52
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5797
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5798
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5799
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->startNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5800
    goto/16 :goto_1

    .line 5785
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_53
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5787
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5788
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5789
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setSimCardPowerResponse_1_1(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5790
    goto/16 :goto_1

    .line 5775
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_54
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5777
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5778
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5779
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setCarrierInfoForImsiEncryptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5780
    goto/16 :goto_1

    .line 5766
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_55
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5768
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5769
    .local v0, "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->acknowledgeRequest(I)V

    .line 5770
    goto/16 :goto_1

    .line 5756
    .end local v0    # "serial":I
    :sswitch_56
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5758
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5759
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5760
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setSimCardPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5761
    goto/16 :goto_1

    .line 5746
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_57
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5748
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5749
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5750
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setIndicationFilterResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5751
    goto/16 :goto_1

    .line 5736
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_58
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5738
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5739
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5740
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->sendDeviceStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5741
    goto/16 :goto_1

    .line 5723
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_59
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5725
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5726
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5727
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5728
    .local v1, "allAllowed":Z
    new-instance v2, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 5729
    .local v2, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5730
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 5731
    goto/16 :goto_1

    .line 5712
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "allAllowed":Z
    .end local v2    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :sswitch_5a
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5714
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5715
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5716
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5717
    .local v1, "numAllowed":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5718
    goto/16 :goto_1

    .line 5700
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "numAllowed":I
    :sswitch_5b
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5702
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5703
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5704
    new-instance v1, Landroid/hardware/radio/V1_0/ActivityStatsInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;-><init>()V

    .line 5705
    .local v1, "activityInfo":Landroid/hardware/radio/V1_0/ActivityStatsInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5706
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getModemActivityInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/ActivityStatsInfo;)V

    .line 5707
    goto/16 :goto_1

    .line 5688
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "activityInfo":Landroid/hardware/radio/V1_0/ActivityStatsInfo;
    :sswitch_5c
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5690
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5691
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5692
    new-instance v1, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 5693
    .local v1, "lceInfo":Landroid/hardware/radio/V1_0/LceDataInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5694
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->pullLceDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceDataInfo;)V

    .line 5695
    goto/16 :goto_1

    .line 5676
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "lceInfo":Landroid/hardware/radio/V1_0/LceDataInfo;
    :sswitch_5d
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5678
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5679
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5680
    new-instance v1, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    .line 5681
    .local v1, "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5682
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->stopLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    .line 5683
    goto/16 :goto_1

    .line 5664
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    :sswitch_5e
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5666
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5667
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5668
    new-instance v1, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    .line 5669
    .restart local v1    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5670
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->startLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    .line 5671
    goto/16 :goto_1

    .line 5652
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    :sswitch_5f
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5654
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5655
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5656
    new-instance v1, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 5657
    .local v1, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5658
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    .line 5659
    goto/16 :goto_1

    .line 5640
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :sswitch_60
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5642
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5643
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5644
    new-instance v1, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 5645
    .restart local v1    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5646
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    .line 5647
    goto/16 :goto_1

    .line 5630
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :sswitch_61
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5632
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5633
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5634
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->requestShutdownResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5635
    goto/16 :goto_1

    .line 5620
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_62
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5622
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5623
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5624
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setDataProfileResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5625
    goto/16 :goto_1

    .line 5608
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_63
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5610
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5611
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5612
    new-instance v1, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 5613
    .local v1, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5614
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->requestIccSimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 5615
    goto/16 :goto_1

    .line 5597
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_64
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5599
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5600
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5601
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5602
    .local v1, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getHardwareConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5603
    goto/16 :goto_1

    .line 5587
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    :sswitch_65
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5589
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5590
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5591
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setDataAllowedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5592
    goto/16 :goto_1

    .line 5577
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_66
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5579
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5580
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5581
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setUiccSubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5582
    goto/16 :goto_1

    .line 5567
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_67
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5569
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5570
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5571
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->nvResetConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5572
    goto/16 :goto_1

    .line 5557
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_68
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5559
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5560
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5561
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->nvWriteCdmaPrlResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5562
    goto/16 :goto_1

    .line 5547
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_69
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5549
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5550
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5551
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->nvWriteItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5552
    goto/16 :goto_1

    .line 5536
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_6a
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5538
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5539
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5540
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5541
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->nvReadItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 5542
    goto/16 :goto_1

    .line 5524
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "result":Ljava/lang/String;
    :sswitch_6b
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5526
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5527
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5528
    new-instance v1, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 5529
    .local v1, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5530
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->iccTransmitApduLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 5531
    goto/16 :goto_1

    .line 5514
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_6c
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5516
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5517
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5518
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->iccCloseLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5519
    goto/16 :goto_1

    .line 5502
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_6d
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5504
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5505
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5506
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5507
    .local v1, "channelId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 5508
    .local v2, "selectResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->iccOpenLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ILjava/util/ArrayList;)V

    .line 5509
    goto/16 :goto_1

    .line 5490
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "channelId":I
    .end local v2    # "selectResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_6e
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5492
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5493
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5494
    new-instance v1, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 5495
    .local v1, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5496
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->iccTransmitApduBasicChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 5497
    goto/16 :goto_1

    .line 5478
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_6f
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5480
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5481
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5482
    new-instance v1, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 5483
    .local v1, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5484
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->sendImsSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 5485
    goto/16 :goto_1

    .line 5466
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_70
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5468
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5469
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5470
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5471
    .local v1, "isRegistered":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5472
    .local v2, "ratFamily":I
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getImsRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

    .line 5473
    goto/16 :goto_1

    .line 5456
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "isRegistered":Z
    .end local v2    # "ratFamily":I
    :sswitch_71
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5458
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5459
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5460
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setInitialAttachApnResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5461
    goto/16 :goto_1

    .line 5446
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_72
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5448
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5449
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5450
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setCellInfoListRateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5451
    goto/16 :goto_1

    .line 5435
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_73
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5437
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5438
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5439
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5440
    .local v1, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getCellInfoListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5441
    goto/16 :goto_1

    .line 5424
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    :sswitch_74
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5426
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5427
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5428
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5429
    .local v1, "rat":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getVoiceRadioTechnologyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5430
    goto/16 :goto_1

    .line 5412
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "rat":I
    :sswitch_75
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5414
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5415
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5416
    new-instance v1, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 5417
    .local v1, "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5418
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->sendEnvelopeWithStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 5419
    goto/16 :goto_1

    .line 5402
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_76
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5404
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5405
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5406
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->acknowledgeIncomingGsmSmsWithPduResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5407
    goto/16 :goto_1

    .line 5391
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_77
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5393
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5394
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5395
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5396
    .local v1, "response":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->requestIsimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 5397
    goto/16 :goto_1

    .line 5380
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "response":Ljava/lang/String;
    :sswitch_78
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5382
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5383
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5384
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5385
    .local v1, "source":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5386
    goto/16 :goto_1

    .line 5370
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "source":I
    :sswitch_79
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5372
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5373
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5374
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->reportStkServiceIsRunningResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5375
    goto/16 :goto_1

    .line 5360
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_7a
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5362
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5363
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5364
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->reportSmsMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5365
    goto/16 :goto_1

    .line 5350
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_7b
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5352
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5353
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5354
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5355
    goto/16 :goto_1

    .line 5339
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_7c
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5341
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5342
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5343
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5344
    .local v1, "smsc":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 5345
    goto/16 :goto_1

    .line 5329
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "smsc":Ljava/lang/String;
    :sswitch_7d
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5331
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5332
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5333
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->exitEmergencyCallbackModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5334
    goto/16 :goto_1

    .line 5315
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_7e
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5317
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object v6, v0

    .line 5318
    .local v6, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v6, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5319
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 5320
    .local v10, "imei":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 5321
    .local v11, "imeisv":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 5322
    .local v12, "esn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 5323
    .local v13, "meid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getDeviceIdentityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5324
    goto/16 :goto_1

    .line 5305
    .end local v6    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v10    # "imei":Ljava/lang/String;
    .end local v11    # "imeisv":Ljava/lang/String;
    .end local v12    # "esn":Ljava/lang/String;
    .end local v13    # "meid":Ljava/lang/String;
    :sswitch_7f
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5307
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5308
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5309
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->deleteSmsOnRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5310
    goto/16 :goto_1

    .line 5294
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_80
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5296
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5297
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5298
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5299
    .local v1, "index":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->writeSmsToRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5300
    goto/16 :goto_1

    .line 5279
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "index":I
    :sswitch_81
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5281
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object v10, v0

    .line 5282
    .local v10, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v10, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5283
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 5284
    .local v11, "mdn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 5285
    .local v12, "hSid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 5286
    .local v13, "hNid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 5287
    .local v14, "min":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 5288
    .local v15, "prl":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v11

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getCDMASubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5289
    goto/16 :goto_1

    .line 5269
    .end local v10    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v11    # "mdn":Ljava/lang/String;
    .end local v12    # "hSid":Ljava/lang/String;
    .end local v13    # "hNid":Ljava/lang/String;
    .end local v14    # "min":Ljava/lang/String;
    .end local v15    # "prl":Ljava/lang/String;
    :sswitch_82
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5271
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5272
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5273
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setCdmaBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5274
    goto/16 :goto_1

    .line 5259
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_83
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5261
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5262
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5263
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5264
    goto/16 :goto_1

    .line 5248
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_84
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5250
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5251
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5252
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5253
    .local v1, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5254
    goto/16 :goto_1

    .line 5238
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :sswitch_85
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5240
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5241
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5242
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setGsmBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5243
    goto/16 :goto_1

    .line 5228
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_86
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5230
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5231
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5232
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5233
    goto/16 :goto_1

    .line 5217
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_87
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5219
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5220
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5221
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5222
    .local v1, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5223
    goto/16 :goto_1

    .line 5207
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :sswitch_88
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5209
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5210
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5211
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->acknowledgeLastIncomingCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5212
    goto/16 :goto_1

    .line 5195
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_89
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5197
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5198
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5199
    new-instance v1, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 5200
    .local v1, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5201
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->sendCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 5202
    goto/16 :goto_1

    .line 5185
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_8a
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5187
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5188
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5189
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->sendBurstDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5190
    goto/16 :goto_1

    .line 5175
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_8b
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5177
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5178
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5179
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->sendCDMAFeatureCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5180
    goto/16 :goto_1

    .line 5164
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_8c
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5166
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5167
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5168
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5169
    .local v1, "enable":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 5170
    goto/16 :goto_1

    .line 5154
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "enable":Z
    :sswitch_8d
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5156
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5157
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5158
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5159
    goto/16 :goto_1

    .line 5143
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_8e
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5145
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5146
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5147
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5148
    .local v1, "mode":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5149
    goto/16 :goto_1

    .line 5133
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "mode":I
    :sswitch_8f
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5135
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5136
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5137
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5138
    goto/16 :goto_1

    .line 5122
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_90
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5124
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5125
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5126
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5127
    .local v1, "type":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5128
    goto/16 :goto_1

    .line 5112
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "type":I
    :sswitch_91
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5114
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5115
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5116
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5117
    goto/16 :goto_1

    .line 5102
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_92
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5104
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5105
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5106
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5107
    goto/16 :goto_1

    .line 5092
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_93
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5094
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5095
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5096
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setLocationUpdatesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5097
    goto/16 :goto_1

    .line 5081
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_94
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5083
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5084
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5085
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/NeighboringCell;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5086
    .local v1, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/NeighboringCell;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getNeighboringCidsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5087
    goto/16 :goto_1

    .line 5070
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/NeighboringCell;>;"
    :sswitch_95
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5072
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5073
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5074
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5075
    .local v1, "nwType":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5076
    goto/16 :goto_1

    .line 5060
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "nwType":I
    :sswitch_96
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5062
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5063
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5064
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5065
    goto/16 :goto_1

    .line 5050
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_97
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5052
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5053
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5054
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->explicitCallTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5055
    goto/16 :goto_1

    .line 5040
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_98
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5042
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5043
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5044
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->handleStkCallSetupRequestFromSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5045
    goto/16 :goto_1

    .line 5030
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_99
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5032
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5033
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5034
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->sendTerminalResponseToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5035
    goto/16 :goto_1

    .line 5019
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_9a
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5021
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5022
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5023
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5024
    .local v1, "commandResponse":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->sendEnvelopeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 5025
    goto/16 :goto_1

    .line 5008
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "commandResponse":Ljava/lang/String;
    :sswitch_9b
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5010
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5011
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5012
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 5013
    .local v1, "bandModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getAvailableBandModesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5014
    goto/16 :goto_1

    .line 4998
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "bandModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_9c
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5000
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5001
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5002
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5003
    goto/16 :goto_1

    .line 4988
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_9d
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4990
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4991
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4992
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->deleteSmsOnSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4993
    goto/16 :goto_1

    .line 4977
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_9e
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4979
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4980
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4981
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4982
    .local v1, "index":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->writeSmsToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4983
    goto/16 :goto_1

    .line 4967
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "index":I
    :sswitch_9f
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4969
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4970
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4971
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setSuppServiceNotificationsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4972
    goto/16 :goto_1

    .line 4956
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_a0
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4958
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4959
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4960
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4961
    .local v1, "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getDataCallListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4962
    goto/16 :goto_1

    .line 4945
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    :sswitch_a1
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4947
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4948
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4949
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4950
    .local v1, "status":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4951
    goto/16 :goto_1

    .line 4934
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "status":I
    :sswitch_a2
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4936
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4937
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4938
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4939
    .local v1, "enable":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 4940
    goto/16 :goto_1

    .line 4924
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "enable":Z
    :sswitch_a3
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4926
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4927
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4928
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4929
    goto/16 :goto_1

    .line 4914
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_a4
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4916
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4917
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4918
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->separateConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4919
    goto/16 :goto_1

    .line 4903
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_a5
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4905
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4906
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4907
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4908
    .local v1, "version":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getBasebandVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 4909
    goto/16 :goto_1

    .line 4893
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "version":Ljava/lang/String;
    :sswitch_a6
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4895
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4896
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4897
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->stopDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4898
    goto/16 :goto_1

    .line 4883
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_a7
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4885
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4886
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4887
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->startDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4888
    goto/16 :goto_1

    .line 4872
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_a8
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4874
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4875
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4876
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/OperatorInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4877
    .local v1, "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/OperatorInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4878
    goto/16 :goto_1

    .line 4862
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/OperatorInfo;>;"
    :sswitch_a9
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4864
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4865
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4866
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setNetworkSelectionModeManualResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4867
    goto/16 :goto_1

    .line 4852
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_aa
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4854
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4855
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4856
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setNetworkSelectionModeAutomaticResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4857
    goto/16 :goto_1

    .line 4841
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_ab
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4843
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4844
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4845
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4846
    .local v1, "manual":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getNetworkSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 4847
    goto/16 :goto_1

    .line 4831
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "manual":Z
    :sswitch_ac
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4833
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4834
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4835
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setBarringPasswordResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4836
    goto/16 :goto_1

    .line 4820
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_ad
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4822
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4823
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4824
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4825
    .local v1, "retry":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4826
    goto/16 :goto_1

    .line 4809
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "retry":I
    :sswitch_ae
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4811
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4812
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4813
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4814
    .local v1, "response":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4815
    goto/16 :goto_1

    .line 4799
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "response":I
    :sswitch_af
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4801
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4802
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4803
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->deactivateDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4804
    goto/16 :goto_1

    .line 4789
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_b0
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4791
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4792
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4793
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->acceptCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4794
    goto/16 :goto_1

    .line 4779
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_b1
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4781
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4782
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4783
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->acknowledgeLastIncomingGsmSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4784
    goto/16 :goto_1

    .line 4769
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_b2
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4771
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4772
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4773
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4774
    goto/16 :goto_1

    .line 4757
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_b3
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4759
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4760
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4761
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4762
    .local v1, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4763
    .local v2, "serviceClass":I
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

    .line 4764
    goto/16 :goto_1

    .line 4747
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "enable":Z
    .end local v2    # "serviceClass":I
    :sswitch_b4
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4749
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4750
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4751
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setCallForwardResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4752
    goto/16 :goto_1

    .line 4736
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_b5
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4738
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4739
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4740
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4741
    .local v1, "callForwardInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getCallForwardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4742
    goto/16 :goto_1

    .line 4726
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "callForwardInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    :sswitch_b6
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4728
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4729
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4730
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4731
    goto/16 :goto_1

    .line 4714
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_b7
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4716
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4717
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4718
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4719
    .local v1, "n":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4720
    .local v2, "m":I
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    .line 4721
    goto/16 :goto_1

    .line 4704
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "n":I
    .end local v2    # "m":I
    :sswitch_b8
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4706
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4707
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4708
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->cancelPendingUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4709
    goto/16 :goto_1

    .line 4694
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_b9
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4696
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4697
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4698
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->sendUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4699
    goto/16 :goto_1

    .line 4682
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_ba
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4684
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4685
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4686
    new-instance v1, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 4687
    .local v1, "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4688
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->iccIOForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 4689
    goto/16 :goto_1

    .line 4670
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_bb
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4672
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4673
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4674
    new-instance v1, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SetupDataCallResult;-><init>()V

    .line 4675
    .local v1, "dcResponse":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4676
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setupDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SetupDataCallResult;)V

    .line 4677
    goto/16 :goto_1

    .line 4658
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "dcResponse":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    :sswitch_bc
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4660
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4661
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4662
    new-instance v1, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 4663
    .local v1, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4664
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->sendSMSExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 4665
    goto/16 :goto_1

    .line 4646
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_bd
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4648
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4649
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4650
    new-instance v1, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 4651
    .restart local v1    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4652
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->sendSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 4653
    goto/16 :goto_1

    .line 4636
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_be
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4638
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4639
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4640
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->sendDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4641
    goto/16 :goto_1

    .line 4626
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_bf
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4628
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4629
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4630
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setRadioPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4631
    goto/16 :goto_1

    .line 4613
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_c0
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4615
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4616
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4617
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4618
    .local v1, "longName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4619
    .local v2, "shortName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4620
    .local v3, "numeric":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getOperatorResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4621
    goto/16 :goto_1

    .line 4601
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "longName":Ljava/lang/String;
    .end local v2    # "shortName":Ljava/lang/String;
    .end local v3    # "numeric":Ljava/lang/String;
    :sswitch_c1
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4603
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4604
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4605
    new-instance v1, Landroid/hardware/radio/V1_0/DataRegStateResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/DataRegStateResult;-><init>()V

    .line 4606
    .local v1, "dataRegResponse":Landroid/hardware/radio/V1_0/DataRegStateResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4607
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getDataRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/DataRegStateResult;)V

    .line 4608
    goto/16 :goto_1

    .line 4589
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "dataRegResponse":Landroid/hardware/radio/V1_0/DataRegStateResult;
    :sswitch_c2
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4591
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4592
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4593
    new-instance v1, Landroid/hardware/radio/V1_0/VoiceRegStateResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;-><init>()V

    .line 4594
    .local v1, "voiceRegResponse":Landroid/hardware/radio/V1_0/VoiceRegStateResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4595
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getVoiceRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/VoiceRegStateResult;)V

    .line 4596
    goto/16 :goto_1

    .line 4577
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "voiceRegResponse":Landroid/hardware/radio/V1_0/VoiceRegStateResult;
    :sswitch_c3
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4579
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4580
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4581
    new-instance v1, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 4582
    .local v1, "sigStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4583
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getSignalStrengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SignalStrength;)V

    .line 4584
    goto/16 :goto_1

    .line 4565
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "sigStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    :sswitch_c4
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4567
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4568
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4569
    new-instance v1, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;-><init>()V

    .line 4570
    .local v1, "failCauseinfo":Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4571
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getLastCallFailCauseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V

    .line 4572
    goto/16 :goto_1

    .line 4555
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "failCauseinfo":Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;
    :sswitch_c5
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4557
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4558
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4559
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->rejectCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4560
    goto/16 :goto_1

    .line 4545
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_c6
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4547
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4548
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4549
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->conferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4550
    goto/16 :goto_1

    .line 4535
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_c7
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4537
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4538
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4539
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4540
    goto/16 :goto_1

    .line 4525
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_c8
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4527
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4528
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4529
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->hangupForegroundResumeBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4530
    goto/16 :goto_1

    .line 4515
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_c9
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4517
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4518
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4519
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->hangupWaitingOrBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4520
    goto/16 :goto_1

    .line 4505
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_ca
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4507
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4508
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4509
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->hangupConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4510
    goto/16 :goto_1

    .line 4494
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_cb
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4496
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4497
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4498
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4499
    .local v1, "imsi":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getIMSIForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 4500
    goto/16 :goto_1

    .line 4484
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "imsi":Ljava/lang/String;
    :sswitch_cc
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4486
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4487
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4488
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->dialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4489
    goto/16 :goto_1

    .line 4473
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_cd
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4475
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4476
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4477
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/Call;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4478
    .local v1, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/Call;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getCurrentCallsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4479
    goto/16 :goto_1

    .line 4462
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/Call;>;"
    :sswitch_ce
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4464
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4465
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4466
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4467
    .local v1, "remainingRetries":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4468
    goto/16 :goto_1

    .line 4451
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "remainingRetries":I
    :sswitch_cf
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4453
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4454
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4455
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4456
    .restart local v1    # "remainingRetries":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->changeIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4457
    goto/16 :goto_1

    .line 4440
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "remainingRetries":I
    :sswitch_d0
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4442
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4443
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4444
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4445
    .restart local v1    # "remainingRetries":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->changeIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4446
    goto :goto_1

    .line 4429
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "remainingRetries":I
    :sswitch_d1
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4431
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4432
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4433
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4434
    .restart local v1    # "remainingRetries":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->supplyIccPuk2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4435
    goto :goto_1

    .line 4418
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "remainingRetries":I
    :sswitch_d2
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4420
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4421
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4422
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4423
    .restart local v1    # "remainingRetries":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->supplyIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4424
    goto :goto_1

    .line 4407
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "remainingRetries":I
    :sswitch_d3
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4409
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4410
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4411
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4412
    .restart local v1    # "remainingRetries":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->supplyIccPukForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4413
    goto :goto_1

    .line 4396
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "remainingRetries":I
    :sswitch_d4
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4398
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4399
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4400
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4401
    .restart local v1    # "remainingRetries":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->supplyIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4402
    goto :goto_1

    .line 4384
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "remainingRetries":I
    :sswitch_d5
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4386
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4387
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4388
    new-instance v1, Landroid/hardware/radio/V1_0/CardStatus;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CardStatus;-><init>()V

    .line 4389
    .local v1, "cardStatus":Landroid/hardware/radio/V1_0/CardStatus;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4390
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getIccCardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/CardStatus;)V

    .line 4391
    nop

    .line 6722
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "cardStatus":Landroid/hardware/radio/V1_0/CardStatus;
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_d5
        0x2 -> :sswitch_d4
        0x3 -> :sswitch_d3
        0x4 -> :sswitch_d2
        0x5 -> :sswitch_d1
        0x6 -> :sswitch_d0
        0x7 -> :sswitch_cf
        0x8 -> :sswitch_ce
        0x9 -> :sswitch_cd
        0xa -> :sswitch_cc
        0xb -> :sswitch_cb
        0xc -> :sswitch_ca
        0xd -> :sswitch_c9
        0xe -> :sswitch_c8
        0xf -> :sswitch_c7
        0x10 -> :sswitch_c6
        0x11 -> :sswitch_c5
        0x12 -> :sswitch_c4
        0x13 -> :sswitch_c3
        0x14 -> :sswitch_c2
        0x15 -> :sswitch_c1
        0x16 -> :sswitch_c0
        0x17 -> :sswitch_bf
        0x18 -> :sswitch_be
        0x19 -> :sswitch_bd
        0x1a -> :sswitch_bc
        0x1b -> :sswitch_bb
        0x1c -> :sswitch_ba
        0x1d -> :sswitch_b9
        0x1e -> :sswitch_b8
        0x1f -> :sswitch_b7
        0x20 -> :sswitch_b6
        0x21 -> :sswitch_b5
        0x22 -> :sswitch_b4
        0x23 -> :sswitch_b3
        0x24 -> :sswitch_b2
        0x25 -> :sswitch_b1
        0x26 -> :sswitch_b0
        0x27 -> :sswitch_af
        0x28 -> :sswitch_ae
        0x29 -> :sswitch_ad
        0x2a -> :sswitch_ac
        0x2b -> :sswitch_ab
        0x2c -> :sswitch_aa
        0x2d -> :sswitch_a9
        0x2e -> :sswitch_a8
        0x2f -> :sswitch_a7
        0x30 -> :sswitch_a6
        0x31 -> :sswitch_a5
        0x32 -> :sswitch_a4
        0x33 -> :sswitch_a3
        0x34 -> :sswitch_a2
        0x35 -> :sswitch_a1
        0x36 -> :sswitch_a0
        0x37 -> :sswitch_9f
        0x38 -> :sswitch_9e
        0x39 -> :sswitch_9d
        0x3a -> :sswitch_9c
        0x3b -> :sswitch_9b
        0x3c -> :sswitch_9a
        0x3d -> :sswitch_99
        0x3e -> :sswitch_98
        0x3f -> :sswitch_97
        0x40 -> :sswitch_96
        0x41 -> :sswitch_95
        0x42 -> :sswitch_94
        0x43 -> :sswitch_93
        0x44 -> :sswitch_92
        0x45 -> :sswitch_91
        0x46 -> :sswitch_90
        0x47 -> :sswitch_8f
        0x48 -> :sswitch_8e
        0x49 -> :sswitch_8d
        0x4a -> :sswitch_8c
        0x4b -> :sswitch_8b
        0x4c -> :sswitch_8a
        0x4d -> :sswitch_89
        0x4e -> :sswitch_88
        0x4f -> :sswitch_87
        0x50 -> :sswitch_86
        0x51 -> :sswitch_85
        0x52 -> :sswitch_84
        0x53 -> :sswitch_83
        0x54 -> :sswitch_82
        0x55 -> :sswitch_81
        0x56 -> :sswitch_80
        0x57 -> :sswitch_7f
        0x58 -> :sswitch_7e
        0x59 -> :sswitch_7d
        0x5a -> :sswitch_7c
        0x5b -> :sswitch_7b
        0x5c -> :sswitch_7a
        0x5d -> :sswitch_79
        0x5e -> :sswitch_78
        0x5f -> :sswitch_77
        0x60 -> :sswitch_76
        0x61 -> :sswitch_75
        0x62 -> :sswitch_74
        0x63 -> :sswitch_73
        0x64 -> :sswitch_72
        0x65 -> :sswitch_71
        0x66 -> :sswitch_70
        0x67 -> :sswitch_6f
        0x68 -> :sswitch_6e
        0x69 -> :sswitch_6d
        0x6a -> :sswitch_6c
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6a
        0x6d -> :sswitch_69
        0x6e -> :sswitch_68
        0x6f -> :sswitch_67
        0x70 -> :sswitch_66
        0x71 -> :sswitch_65
        0x72 -> :sswitch_64
        0x73 -> :sswitch_63
        0x74 -> :sswitch_62
        0x75 -> :sswitch_61
        0x76 -> :sswitch_60
        0x77 -> :sswitch_5f
        0x78 -> :sswitch_5e
        0x79 -> :sswitch_5d
        0x7a -> :sswitch_5c
        0x7b -> :sswitch_5b
        0x7c -> :sswitch_5a
        0x7d -> :sswitch_59
        0x7e -> :sswitch_58
        0x7f -> :sswitch_57
        0x80 -> :sswitch_56
        0x81 -> :sswitch_55
        0x82 -> :sswitch_54
        0x83 -> :sswitch_53
        0x84 -> :sswitch_52
        0x85 -> :sswitch_51
        0x86 -> :sswitch_50
        0x87 -> :sswitch_4f
        0x88 -> :sswitch_4e
        0x89 -> :sswitch_4d
        0x8a -> :sswitch_4c
        0x8b -> :sswitch_4b
        0x8c -> :sswitch_4a
        0x8d -> :sswitch_49
        0x8e -> :sswitch_48
        0x8f -> :sswitch_47
        0x90 -> :sswitch_46
        0x91 -> :sswitch_45
        0x92 -> :sswitch_44
        0x93 -> :sswitch_43
        0x94 -> :sswitch_42
        0x95 -> :sswitch_41
        0x96 -> :sswitch_40
        0x97 -> :sswitch_3f
        0x98 -> :sswitch_3e
        0x99 -> :sswitch_3d
        0x9a -> :sswitch_3c
        0x9b -> :sswitch_3b
        0x9c -> :sswitch_3a
        0x9d -> :sswitch_39
        0x9e -> :sswitch_38
        0x9f -> :sswitch_37
        0xa0 -> :sswitch_36
        0xa1 -> :sswitch_35
        0xa2 -> :sswitch_34
        0xa3 -> :sswitch_33
        0xa4 -> :sswitch_32
        0xa5 -> :sswitch_31
        0xa6 -> :sswitch_30
        0xa7 -> :sswitch_2f
        0xa8 -> :sswitch_2e
        0xa9 -> :sswitch_2d
        0xaa -> :sswitch_2c
        0xab -> :sswitch_2b
        0xac -> :sswitch_2a
        0xad -> :sswitch_29
        0xae -> :sswitch_28
        0xaf -> :sswitch_27
        0xb0 -> :sswitch_26
        0xb1 -> :sswitch_25
        0xb2 -> :sswitch_24
        0xb3 -> :sswitch_23
        0xb4 -> :sswitch_22
        0xb5 -> :sswitch_21
        0xb6 -> :sswitch_20
        0xb7 -> :sswitch_1f
        0xb8 -> :sswitch_1e
        0xb9 -> :sswitch_1d
        0xba -> :sswitch_1c
        0xbb -> :sswitch_1b
        0xbc -> :sswitch_1a
        0xbd -> :sswitch_19
        0xbe -> :sswitch_18
        0xbf -> :sswitch_17
        0xc0 -> :sswitch_16
        0xc1 -> :sswitch_15
        0xc2 -> :sswitch_14
        0xc3 -> :sswitch_13
        0xc4 -> :sswitch_12
        0xc5 -> :sswitch_11
        0xc6 -> :sswitch_10
        0xc7 -> :sswitch_f
        0xc8 -> :sswitch_e
        0xc9 -> :sswitch_d
        0xca -> :sswitch_c
        0xcb -> :sswitch_b
        0xcc -> :sswitch_a
        0xcd -> :sswitch_9
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

    .line 4335
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 4363
    const-string v0, "android.hardware.radio@1.6::IRadioResponse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4364
    return-object p0

    .line 4366
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

    .line 4370
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 4371
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .locals 0

    .line 4325
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 4375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 4357
    const/4 v0, 0x1

    return v0
.end method
