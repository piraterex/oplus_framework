.class public abstract Landroid/hardware/radio/V1_5/IRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "IRadioResponse.java"

# interfaces
.implements Landroid/hardware/radio/V1_5/IRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_5/IRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 3668
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 3671
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

    .line 3689
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 3731
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 3732
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 3733
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 3734
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 3735
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

    .line 3701
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

    :array_1
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

    :array_2
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

    :array_3
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

    :array_4
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

    :array_5
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

    .line 3676
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.radio@1.5::IRadioResponse"

    const-string v2, "android.hardware.radio@1.4::IRadioResponse"

    const-string v3, "android.hardware.radio@1.3::IRadioResponse"

    const-string v4, "android.hardware.radio@1.2::IRadioResponse"

    const-string v5, "android.hardware.radio@1.1::IRadioResponse"

    const-string v6, "android.hardware.radio@1.0::IRadioResponse"

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

    .line 3695
    const-string v0, "android.hardware.radio@1.5::IRadioResponse"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 3719
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .locals 0

    .line 3741
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 3743
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

    .line 3771
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

    const-string v10, "android.hardware.radio@1.0::IRadioResponse"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 5802
    :sswitch_0
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5804
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->notifySyspropsChanged()V

    .line 5805
    goto/16 :goto_1

    .line 5791
    :sswitch_1
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5793
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 5794
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5795
    invoke-virtual {v0, v9}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 5796
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5797
    goto/16 :goto_1

    .line 5781
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5783
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->ping()V

    .line 5784
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5785
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5786
    goto/16 :goto_1

    .line 5776
    :sswitch_3
    goto/16 :goto_1

    .line 5768
    :sswitch_4
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5770
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setHALInstrumentation()V

    .line 5771
    goto/16 :goto_1

    .line 5734
    :sswitch_5
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5736
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 5737
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5739
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 5741
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5742
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 5743
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 5744
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v2, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 5745
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 5747
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 5748
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 5750
    .local v10, "_hidl_array_item_1":[B
    if-eqz v10, :cond_0

    array-length v11, v10

    const/16 v12, 0x20

    if-ne v11, v12, :cond_0

    .line 5754
    invoke-virtual {v2, v5, v6, v10}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 5755
    nop

    .line 5745
    .end local v5    # "_hidl_array_offset_1":J
    .end local v10    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5751
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v10    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Array element is not of the expected length"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 5758
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v10    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 5760
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 5762
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5763
    goto/16 :goto_1

    .line 5723
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5725
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 5726
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5727
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5728
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5729
    goto/16 :goto_1

    .line 5711
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5713
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 5714
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 5715
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 5716
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5717
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5718
    goto/16 :goto_1

    .line 5700
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5702
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 5703
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5704
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 5705
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5706
    goto/16 :goto_1

    .line 5688
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5690
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5691
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5692
    new-instance v1, Landroid/hardware/radio/V1_5/CardStatus;

    invoke-direct {v1}, Landroid/hardware/radio/V1_5/CardStatus;-><init>()V

    .line 5693
    .local v1, "cardStatus":Landroid/hardware/radio/V1_5/CardStatus;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_5/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5694
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getIccCardStatusResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_5/CardStatus;)V

    .line 5695
    goto/16 :goto_1

    .line 5676
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "cardStatus":Landroid/hardware/radio/V1_5/CardStatus;
    :sswitch_a
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5678
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5679
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5680
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5681
    .local v1, "persoType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5682
    .local v2, "remainingRetries":I
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->supplySimDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    .line 5683
    goto/16 :goto_1

    .line 5664
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "persoType":I
    .end local v2    # "remainingRetries":I
    :sswitch_b
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5666
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5667
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5668
    new-instance v1, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 5669
    .local v1, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5670
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->sendCdmaSmsExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 5671
    goto/16 :goto_1

    .line 5654
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_c
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5656
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5657
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5658
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setNetworkSelectionModeManualResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5659
    goto/16 :goto_1

    .line 5643
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_d
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5645
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5646
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5647
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_5/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5648
    .local v1, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/CellInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getCellInfoListResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5649
    goto/16 :goto_1

    .line 5631
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/CellInfo;>;"
    :sswitch_e
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5633
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5634
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5635
    new-instance v1, Landroid/hardware/radio/V1_5/RegStateResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_5/RegStateResult;-><init>()V

    .line 5636
    .local v1, "dataRegResponse":Landroid/hardware/radio/V1_5/RegStateResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_5/RegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5637
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getDataRegistrationStateResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_5/RegStateResult;)V

    .line 5638
    goto/16 :goto_1

    .line 5619
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "dataRegResponse":Landroid/hardware/radio/V1_5/RegStateResult;
    :sswitch_f
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5621
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5622
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5623
    new-instance v1, Landroid/hardware/radio/V1_5/RegStateResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_5/RegStateResult;-><init>()V

    .line 5624
    .local v1, "voiceRegResponse":Landroid/hardware/radio/V1_5/RegStateResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_5/RegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5625
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getVoiceRegistrationStateResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_5/RegStateResult;)V

    .line 5626
    goto/16 :goto_1

    .line 5606
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "voiceRegResponse":Landroid/hardware/radio/V1_5/RegStateResult;
    :sswitch_10
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5608
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5609
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5610
    new-instance v1, Landroid/hardware/radio/V1_5/CellIdentity;

    invoke-direct {v1}, Landroid/hardware/radio/V1_5/CellIdentity;-><init>()V

    .line 5611
    .local v1, "cellIdentity":Landroid/hardware/radio/V1_5/CellIdentity;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_5/CellIdentity;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5612
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_5/BarringInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5613
    .local v2, "barringInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/BarringInfo;>;"
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getBarringInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_5/CellIdentity;Ljava/util/ArrayList;)V

    .line 5614
    goto/16 :goto_1

    .line 5596
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "cellIdentity":Landroid/hardware/radio/V1_5/CellIdentity;
    .end local v2    # "barringInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/BarringInfo;>;"
    :sswitch_11
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5598
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5599
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5600
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setIndicationFilterResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5601
    goto/16 :goto_1

    .line 5586
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_12
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5588
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5589
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5590
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setRadioPowerResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5591
    goto/16 :goto_1

    .line 5576
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_13
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5578
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5579
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5580
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setDataProfileResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5581
    goto/16 :goto_1

    .line 5566
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_14
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5568
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5569
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5570
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setInitialAttachApnResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5571
    goto/16 :goto_1

    .line 5555
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_15
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5557
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5558
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5559
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_5/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5560
    .local v1, "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/SetupDataCallResult;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getDataCallListResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5561
    goto/16 :goto_1

    .line 5543
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/SetupDataCallResult;>;"
    :sswitch_16
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5545
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5546
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5547
    new-instance v1, Landroid/hardware/radio/V1_5/SetupDataCallResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_5/SetupDataCallResult;-><init>()V

    .line 5548
    .local v1, "dcResponse":Landroid/hardware/radio/V1_5/SetupDataCallResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_5/SetupDataCallResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5549
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setupDataCallResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_5/SetupDataCallResult;)V

    .line 5550
    goto/16 :goto_1

    .line 5533
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "dcResponse":Landroid/hardware/radio/V1_5/SetupDataCallResult;
    :sswitch_17
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5535
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5536
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5537
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->startNetworkScanResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5538
    goto/16 :goto_1

    .line 5523
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_18
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5525
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5526
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5527
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setSystemSelectionChannelsResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5528
    goto/16 :goto_1

    .line 5512
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_19
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5514
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5515
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5516
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5517
    .local v1, "enabled":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->areUiccApplicationsEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 5518
    goto/16 :goto_1

    .line 5502
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "enabled":Z
    :sswitch_1a
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5504
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5505
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5506
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->enableUiccApplicationsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5507
    goto/16 :goto_1

    .line 5492
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_1b
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5494
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5495
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5496
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setLinkCapacityReportingCriteriaResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5497
    goto/16 :goto_1

    .line 5482
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_1c
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5484
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5485
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5486
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setSignalStrengthReportingCriteriaResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5487
    goto/16 :goto_1

    .line 5470
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_1d
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5472
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5473
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5474
    new-instance v1, Landroid/hardware/radio/V1_4/SignalStrength;

    invoke-direct {v1}, Landroid/hardware/radio/V1_4/SignalStrength;-><init>()V

    .line 5475
    .local v1, "signalStrength":Landroid/hardware/radio/V1_4/SignalStrength;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_4/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5476
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getSignalStrengthResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/SignalStrength;)V

    .line 5477
    goto/16 :goto_1

    .line 5457
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "signalStrength":Landroid/hardware/radio/V1_4/SignalStrength;
    :sswitch_1e
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5459
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5460
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5461
    new-instance v1, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;

    invoke-direct {v1}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;-><init>()V

    .line 5462
    .local v1, "carriers":Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5463
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5464
    .local v2, "multiSimPolicy":I
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getAllowedCarriersResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;I)V

    .line 5465
    goto/16 :goto_1

    .line 5447
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "carriers":Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;
    .end local v2    # "multiSimPolicy":I
    :sswitch_1f
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5449
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5450
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5451
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setAllowedCarriersResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5452
    goto/16 :goto_1

    .line 5435
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_20
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5437
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5438
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5439
    new-instance v1, Landroid/hardware/radio/V1_4/SetupDataCallResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_4/SetupDataCallResult;-><init>()V

    .line 5440
    .local v1, "dcResponse":Landroid/hardware/radio/V1_4/SetupDataCallResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_4/SetupDataCallResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5441
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setupDataCallResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/SetupDataCallResult;)V

    .line 5442
    goto/16 :goto_1

    .line 5424
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "dcResponse":Landroid/hardware/radio/V1_4/SetupDataCallResult;
    :sswitch_21
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5426
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5427
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5428
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_4/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5429
    .local v1, "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/SetupDataCallResult;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getDataCallListResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5430
    goto/16 :goto_1

    .line 5414
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/SetupDataCallResult;>;"
    :sswitch_22
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5416
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5417
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5418
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setPreferredNetworkTypeBitmapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5419
    goto/16 :goto_1

    .line 5403
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_23
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5405
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5406
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5407
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5408
    .local v1, "networkTypeBitmap":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getPreferredNetworkTypeBitmapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5409
    goto/16 :goto_1

    .line 5391
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "networkTypeBitmap":I
    :sswitch_24
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5393
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5394
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5395
    new-instance v1, Landroid/hardware/radio/V1_4/CardStatus;

    invoke-direct {v1}, Landroid/hardware/radio/V1_4/CardStatus;-><init>()V

    .line 5396
    .local v1, "cardStatus":Landroid/hardware/radio/V1_4/CardStatus;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_4/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5397
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getIccCardStatusResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/CardStatus;)V

    .line 5398
    goto/16 :goto_1

    .line 5379
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "cardStatus":Landroid/hardware/radio/V1_4/CardStatus;
    :sswitch_25
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5381
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5382
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5383
    new-instance v1, Landroid/hardware/radio/V1_4/DataRegStateResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_4/DataRegStateResult;-><init>()V

    .line 5384
    .local v1, "dataRegResponse":Landroid/hardware/radio/V1_4/DataRegStateResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_4/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5385
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getDataRegistrationStateResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/DataRegStateResult;)V

    .line 5386
    goto/16 :goto_1

    .line 5368
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "dataRegResponse":Landroid/hardware/radio/V1_4/DataRegStateResult;
    :sswitch_26
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5370
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5371
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5372
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_4/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5373
    .local v1, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/CellInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getCellInfoListResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5374
    goto/16 :goto_1

    .line 5358
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/CellInfo;>;"
    :sswitch_27
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5360
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5361
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5362
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->startNetworkScanResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5363
    goto/16 :goto_1

    .line 5348
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_28
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5350
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5351
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5352
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->emergencyDialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5353
    goto/16 :goto_1

    .line 5337
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_29
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5339
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5340
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5341
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5342
    .local v1, "isEnabled":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getModemStackStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 5343
    goto/16 :goto_1

    .line 5327
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "isEnabled":Z
    :sswitch_2a
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5329
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5330
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5331
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->enableModemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5332
    goto/16 :goto_1

    .line 5317
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_2b
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5319
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5320
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5321
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setSystemSelectionChannelsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5322
    goto/16 :goto_1

    .line 5305
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_2c
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5307
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5308
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5309
    new-instance v1, Landroid/hardware/radio/V1_2/DataRegStateResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_2/DataRegStateResult;-><init>()V

    .line 5310
    .local v1, "dataRegResponse":Landroid/hardware/radio/V1_2/DataRegStateResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_2/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5311
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getDataRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/DataRegStateResult;)V

    .line 5312
    goto/16 :goto_1

    .line 5293
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "dataRegResponse":Landroid/hardware/radio/V1_2/DataRegStateResult;
    :sswitch_2d
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5295
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5296
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5297
    new-instance v1, Landroid/hardware/radio/V1_2/VoiceRegStateResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_2/VoiceRegStateResult;-><init>()V

    .line 5298
    .local v1, "voiceRegResponse":Landroid/hardware/radio/V1_2/VoiceRegStateResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5299
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getVoiceRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/VoiceRegStateResult;)V

    .line 5300
    goto/16 :goto_1

    .line 5281
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "voiceRegResponse":Landroid/hardware/radio/V1_2/VoiceRegStateResult;
    :sswitch_2e
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5283
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5284
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5285
    new-instance v1, Landroid/hardware/radio/V1_2/SignalStrength;

    invoke-direct {v1}, Landroid/hardware/radio/V1_2/SignalStrength;-><init>()V

    .line 5286
    .local v1, "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_2/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5287
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getSignalStrengthResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/SignalStrength;)V

    .line 5288
    goto/16 :goto_1

    .line 5270
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    :sswitch_2f
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5272
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5273
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5274
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_2/Call;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5275
    .local v1, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/Call;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getCurrentCallsResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5276
    goto/16 :goto_1

    .line 5260
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/Call;>;"
    :sswitch_30
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5262
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5263
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5264
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setLinkCapacityReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5265
    goto/16 :goto_1

    .line 5250
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_31
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5252
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5253
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5254
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setSignalStrengthReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5255
    goto/16 :goto_1

    .line 5238
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_32
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5240
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5241
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5242
    new-instance v1, Landroid/hardware/radio/V1_2/CardStatus;

    invoke-direct {v1}, Landroid/hardware/radio/V1_2/CardStatus;-><init>()V

    .line 5243
    .local v1, "cardStatus":Landroid/hardware/radio/V1_2/CardStatus;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_2/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5244
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getIccCardStatusResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/CardStatus;)V

    .line 5245
    goto/16 :goto_1

    .line 5227
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "cardStatus":Landroid/hardware/radio/V1_2/CardStatus;
    :sswitch_33
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5229
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5230
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5231
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_2/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5232
    .local v1, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getCellInfoListResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5233
    goto/16 :goto_1

    .line 5217
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    :sswitch_34
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5219
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5220
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5221
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->stopKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5222
    goto/16 :goto_1

    .line 5205
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_35
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5207
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5208
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5209
    new-instance v1, Landroid/hardware/radio/V1_1/KeepaliveStatus;

    invoke-direct {v1}, Landroid/hardware/radio/V1_1/KeepaliveStatus;-><init>()V

    .line 5210
    .local v1, "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_1/KeepaliveStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5211
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->startKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_1/KeepaliveStatus;)V

    .line 5212
    goto/16 :goto_1

    .line 5195
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    :sswitch_36
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5197
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5198
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5199
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->stopNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5200
    goto/16 :goto_1

    .line 5185
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_37
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5187
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5188
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5189
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->startNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5190
    goto/16 :goto_1

    .line 5175
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_38
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5177
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5178
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5179
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setSimCardPowerResponse_1_1(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5180
    goto/16 :goto_1

    .line 5165
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_39
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5167
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5168
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5169
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setCarrierInfoForImsiEncryptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5170
    goto/16 :goto_1

    .line 5156
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3a
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5158
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5159
    .local v0, "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->acknowledgeRequest(I)V

    .line 5160
    goto/16 :goto_1

    .line 5146
    .end local v0    # "serial":I
    :sswitch_3b
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5148
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5149
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5150
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setSimCardPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5151
    goto/16 :goto_1

    .line 5136
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3c
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5138
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5139
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5140
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setIndicationFilterResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5141
    goto/16 :goto_1

    .line 5126
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3d
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5128
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5129
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5130
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->sendDeviceStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5131
    goto/16 :goto_1

    .line 5113
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3e
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5115
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5116
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5117
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5118
    .local v1, "allAllowed":Z
    new-instance v2, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 5119
    .local v2, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5120
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 5121
    goto/16 :goto_1

    .line 5102
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "allAllowed":Z
    .end local v2    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :sswitch_3f
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5104
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5105
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5106
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5107
    .local v1, "numAllowed":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5108
    goto/16 :goto_1

    .line 5090
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "numAllowed":I
    :sswitch_40
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5092
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5093
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5094
    new-instance v1, Landroid/hardware/radio/V1_0/ActivityStatsInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;-><init>()V

    .line 5095
    .local v1, "activityInfo":Landroid/hardware/radio/V1_0/ActivityStatsInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5096
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getModemActivityInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/ActivityStatsInfo;)V

    .line 5097
    goto/16 :goto_1

    .line 5078
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "activityInfo":Landroid/hardware/radio/V1_0/ActivityStatsInfo;
    :sswitch_41
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5080
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5081
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5082
    new-instance v1, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 5083
    .local v1, "lceInfo":Landroid/hardware/radio/V1_0/LceDataInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5084
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->pullLceDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceDataInfo;)V

    .line 5085
    goto/16 :goto_1

    .line 5066
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "lceInfo":Landroid/hardware/radio/V1_0/LceDataInfo;
    :sswitch_42
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5068
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5069
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5070
    new-instance v1, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    .line 5071
    .local v1, "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5072
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->stopLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    .line 5073
    goto/16 :goto_1

    .line 5054
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    :sswitch_43
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5056
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5057
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5058
    new-instance v1, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    .line 5059
    .restart local v1    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5060
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->startLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    .line 5061
    goto/16 :goto_1

    .line 5042
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    :sswitch_44
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5044
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5045
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5046
    new-instance v1, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 5047
    .local v1, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5048
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    .line 5049
    goto/16 :goto_1

    .line 5030
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :sswitch_45
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5032
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5033
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5034
    new-instance v1, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 5035
    .restart local v1    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5036
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    .line 5037
    goto/16 :goto_1

    .line 5020
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :sswitch_46
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5022
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5023
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5024
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->requestShutdownResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5025
    goto/16 :goto_1

    .line 5010
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_47
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5012
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5013
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5014
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setDataProfileResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5015
    goto/16 :goto_1

    .line 4998
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_48
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5000
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5001
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5002
    new-instance v1, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 5003
    .local v1, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5004
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->requestIccSimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 5005
    goto/16 :goto_1

    .line 4987
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_49
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4989
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4990
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4991
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4992
    .local v1, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getHardwareConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4993
    goto/16 :goto_1

    .line 4977
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    :sswitch_4a
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4979
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4980
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4981
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setDataAllowedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4982
    goto/16 :goto_1

    .line 4967
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4b
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4969
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4970
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4971
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setUiccSubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4972
    goto/16 :goto_1

    .line 4957
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4c
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4959
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4960
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4961
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->nvResetConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4962
    goto/16 :goto_1

    .line 4947
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4d
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4949
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4950
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4951
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->nvWriteCdmaPrlResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4952
    goto/16 :goto_1

    .line 4937
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4e
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4939
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4940
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4941
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->nvWriteItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4942
    goto/16 :goto_1

    .line 4926
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4f
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4928
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4929
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4930
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4931
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->nvReadItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 4932
    goto/16 :goto_1

    .line 4914
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "result":Ljava/lang/String;
    :sswitch_50
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4916
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4917
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4918
    new-instance v1, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 4919
    .local v1, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4920
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->iccTransmitApduLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 4921
    goto/16 :goto_1

    .line 4904
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_51
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4906
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4907
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4908
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->iccCloseLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4909
    goto/16 :goto_1

    .line 4892
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_52
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4894
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4895
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4896
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4897
    .local v1, "channelId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4898
    .local v2, "selectResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->iccOpenLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ILjava/util/ArrayList;)V

    .line 4899
    goto/16 :goto_1

    .line 4880
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "channelId":I
    .end local v2    # "selectResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_53
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4882
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4883
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4884
    new-instance v1, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 4885
    .local v1, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4886
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->iccTransmitApduBasicChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 4887
    goto/16 :goto_1

    .line 4868
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_54
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4870
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4871
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4872
    new-instance v1, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 4873
    .local v1, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4874
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->sendImsSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 4875
    goto/16 :goto_1

    .line 4856
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_55
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4858
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4859
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4860
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4861
    .local v1, "isRegistered":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4862
    .local v2, "ratFamily":I
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getImsRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

    .line 4863
    goto/16 :goto_1

    .line 4846
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "isRegistered":Z
    .end local v2    # "ratFamily":I
    :sswitch_56
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4848
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4849
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4850
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setInitialAttachApnResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4851
    goto/16 :goto_1

    .line 4836
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_57
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4838
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4839
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4840
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setCellInfoListRateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4841
    goto/16 :goto_1

    .line 4825
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_58
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4827
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4828
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4829
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4830
    .local v1, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getCellInfoListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4831
    goto/16 :goto_1

    .line 4814
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    :sswitch_59
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4816
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4817
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4818
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4819
    .local v1, "rat":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getVoiceRadioTechnologyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4820
    goto/16 :goto_1

    .line 4802
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "rat":I
    :sswitch_5a
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4804
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4805
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4806
    new-instance v1, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 4807
    .local v1, "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4808
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->sendEnvelopeWithStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 4809
    goto/16 :goto_1

    .line 4792
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_5b
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4794
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4795
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4796
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->acknowledgeIncomingGsmSmsWithPduResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4797
    goto/16 :goto_1

    .line 4781
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_5c
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4783
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4784
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4785
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4786
    .local v1, "response":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->requestIsimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 4787
    goto/16 :goto_1

    .line 4770
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "response":Ljava/lang/String;
    :sswitch_5d
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4772
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4773
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4774
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4775
    .local v1, "source":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4776
    goto/16 :goto_1

    .line 4760
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "source":I
    :sswitch_5e
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4762
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4763
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4764
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->reportStkServiceIsRunningResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4765
    goto/16 :goto_1

    .line 4750
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_5f
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4752
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4753
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4754
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->reportSmsMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4755
    goto/16 :goto_1

    .line 4740
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_60
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4742
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4743
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4744
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4745
    goto/16 :goto_1

    .line 4729
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_61
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4731
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4732
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4733
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4734
    .local v1, "smsc":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 4735
    goto/16 :goto_1

    .line 4719
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "smsc":Ljava/lang/String;
    :sswitch_62
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4721
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4722
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4723
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->exitEmergencyCallbackModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4724
    goto/16 :goto_1

    .line 4705
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_63
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4707
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object v6, v0

    .line 4708
    .local v6, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v6, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4709
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 4710
    .local v10, "imei":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 4711
    .local v11, "imeisv":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 4712
    .local v12, "esn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 4713
    .local v13, "meid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getDeviceIdentityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4714
    goto/16 :goto_1

    .line 4695
    .end local v6    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v10    # "imei":Ljava/lang/String;
    .end local v11    # "imeisv":Ljava/lang/String;
    .end local v12    # "esn":Ljava/lang/String;
    .end local v13    # "meid":Ljava/lang/String;
    :sswitch_64
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4697
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4698
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4699
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->deleteSmsOnRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4700
    goto/16 :goto_1

    .line 4684
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_65
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4686
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4687
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4688
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4689
    .local v1, "index":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->writeSmsToRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4690
    goto/16 :goto_1

    .line 4669
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "index":I
    :sswitch_66
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4671
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object v10, v0

    .line 4672
    .local v10, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v10, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4673
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 4674
    .local v11, "mdn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 4675
    .local v12, "hSid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 4676
    .local v13, "hNid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 4677
    .local v14, "min":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 4678
    .local v15, "prl":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v11

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getCDMASubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4679
    goto/16 :goto_1

    .line 4659
    .end local v10    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v11    # "mdn":Ljava/lang/String;
    .end local v12    # "hSid":Ljava/lang/String;
    .end local v13    # "hNid":Ljava/lang/String;
    .end local v14    # "min":Ljava/lang/String;
    .end local v15    # "prl":Ljava/lang/String;
    :sswitch_67
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4661
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4662
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4663
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setCdmaBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4664
    goto/16 :goto_1

    .line 4649
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_68
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4651
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4652
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4653
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4654
    goto/16 :goto_1

    .line 4638
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_69
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4640
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4641
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4642
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4643
    .local v1, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4644
    goto/16 :goto_1

    .line 4628
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :sswitch_6a
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4630
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4631
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4632
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setGsmBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4633
    goto/16 :goto_1

    .line 4618
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_6b
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4620
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4621
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4622
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4623
    goto/16 :goto_1

    .line 4607
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_6c
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4609
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4610
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4611
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4612
    .local v1, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4613
    goto/16 :goto_1

    .line 4597
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :sswitch_6d
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4599
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4600
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4601
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->acknowledgeLastIncomingCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4602
    goto/16 :goto_1

    .line 4585
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_6e
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4587
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4588
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4589
    new-instance v1, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 4590
    .local v1, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4591
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->sendCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 4592
    goto/16 :goto_1

    .line 4575
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_6f
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4577
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4578
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4579
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->sendBurstDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4580
    goto/16 :goto_1

    .line 4565
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_70
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4567
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4568
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4569
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->sendCDMAFeatureCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4570
    goto/16 :goto_1

    .line 4554
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_71
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4556
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4557
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4558
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4559
    .local v1, "enable":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 4560
    goto/16 :goto_1

    .line 4544
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "enable":Z
    :sswitch_72
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4546
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4547
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4548
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4549
    goto/16 :goto_1

    .line 4533
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_73
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4535
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4536
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4537
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4538
    .local v1, "mode":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4539
    goto/16 :goto_1

    .line 4523
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "mode":I
    :sswitch_74
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4525
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4526
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4527
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4528
    goto/16 :goto_1

    .line 4512
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_75
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4514
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4515
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4516
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4517
    .local v1, "type":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4518
    goto/16 :goto_1

    .line 4502
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "type":I
    :sswitch_76
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4504
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4505
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4506
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4507
    goto/16 :goto_1

    .line 4492
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_77
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4494
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4495
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4496
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4497
    goto/16 :goto_1

    .line 4482
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_78
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4484
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4485
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4486
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setLocationUpdatesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4487
    goto/16 :goto_1

    .line 4471
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_79
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4473
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4474
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4475
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/NeighboringCell;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4476
    .local v1, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/NeighboringCell;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getNeighboringCidsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4477
    goto/16 :goto_1

    .line 4460
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/NeighboringCell;>;"
    :sswitch_7a
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4462
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4463
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4464
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4465
    .local v1, "nwType":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4466
    goto/16 :goto_1

    .line 4450
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "nwType":I
    :sswitch_7b
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4452
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4453
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4454
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4455
    goto/16 :goto_1

    .line 4440
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_7c
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4442
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4443
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4444
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->explicitCallTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4445
    goto/16 :goto_1

    .line 4430
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_7d
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4432
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4433
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4434
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->handleStkCallSetupRequestFromSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4435
    goto/16 :goto_1

    .line 4420
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_7e
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4422
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4423
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4424
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->sendTerminalResponseToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4425
    goto/16 :goto_1

    .line 4409
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_7f
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4411
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4412
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4413
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4414
    .local v1, "commandResponse":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->sendEnvelopeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 4415
    goto/16 :goto_1

    .line 4398
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "commandResponse":Ljava/lang/String;
    :sswitch_80
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4400
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4401
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4402
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4403
    .local v1, "bandModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getAvailableBandModesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4404
    goto/16 :goto_1

    .line 4388
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "bandModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_81
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4390
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4391
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4392
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4393
    goto/16 :goto_1

    .line 4378
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_82
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4380
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4381
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4382
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->deleteSmsOnSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4383
    goto/16 :goto_1

    .line 4367
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_83
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4369
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4370
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4371
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4372
    .local v1, "index":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->writeSmsToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4373
    goto/16 :goto_1

    .line 4357
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "index":I
    :sswitch_84
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4359
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4360
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4361
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setSuppServiceNotificationsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4362
    goto/16 :goto_1

    .line 4346
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_85
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4348
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4349
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4350
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4351
    .local v1, "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getDataCallListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4352
    goto/16 :goto_1

    .line 4335
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    :sswitch_86
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4337
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4338
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4339
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4340
    .local v1, "status":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4341
    goto/16 :goto_1

    .line 4324
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "status":I
    :sswitch_87
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4326
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4327
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4328
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4329
    .local v1, "enable":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 4330
    goto/16 :goto_1

    .line 4314
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "enable":Z
    :sswitch_88
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4316
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4317
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4318
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4319
    goto/16 :goto_1

    .line 4304
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_89
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4306
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4307
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4308
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->separateConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4309
    goto/16 :goto_1

    .line 4293
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_8a
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4295
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4296
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4297
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4298
    .local v1, "version":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getBasebandVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 4299
    goto/16 :goto_1

    .line 4283
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "version":Ljava/lang/String;
    :sswitch_8b
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4285
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4286
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4287
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->stopDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4288
    goto/16 :goto_1

    .line 4273
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_8c
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4275
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4276
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4277
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->startDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4278
    goto/16 :goto_1

    .line 4262
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_8d
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4264
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4265
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4266
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/OperatorInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4267
    .local v1, "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/OperatorInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4268
    goto/16 :goto_1

    .line 4252
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/OperatorInfo;>;"
    :sswitch_8e
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4254
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4255
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4256
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setNetworkSelectionModeManualResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4257
    goto/16 :goto_1

    .line 4242
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_8f
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4244
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4245
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4246
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setNetworkSelectionModeAutomaticResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4247
    goto/16 :goto_1

    .line 4231
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_90
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4233
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4234
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4235
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4236
    .local v1, "manual":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getNetworkSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 4237
    goto/16 :goto_1

    .line 4221
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "manual":Z
    :sswitch_91
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4223
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4224
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4225
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setBarringPasswordResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4226
    goto/16 :goto_1

    .line 4210
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_92
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4212
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4213
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4214
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4215
    .local v1, "retry":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4216
    goto/16 :goto_1

    .line 4199
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "retry":I
    :sswitch_93
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4201
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4202
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4203
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4204
    .local v1, "response":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4205
    goto/16 :goto_1

    .line 4189
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "response":I
    :sswitch_94
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4191
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4192
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4193
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->deactivateDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4194
    goto/16 :goto_1

    .line 4179
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_95
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4181
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4182
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4183
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->acceptCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4184
    goto/16 :goto_1

    .line 4169
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_96
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4171
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4172
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4173
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->acknowledgeLastIncomingGsmSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4174
    goto/16 :goto_1

    .line 4159
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_97
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4161
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4162
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4163
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4164
    goto/16 :goto_1

    .line 4147
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_98
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4149
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4150
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4151
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4152
    .local v1, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4153
    .local v2, "serviceClass":I
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

    .line 4154
    goto/16 :goto_1

    .line 4137
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "enable":Z
    .end local v2    # "serviceClass":I
    :sswitch_99
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4139
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4140
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4141
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setCallForwardResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4142
    goto/16 :goto_1

    .line 4126
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_9a
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4128
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4129
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4130
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4131
    .local v1, "callForwardInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getCallForwardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4132
    goto/16 :goto_1

    .line 4116
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "callForwardInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    :sswitch_9b
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4118
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4119
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4120
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4121
    goto/16 :goto_1

    .line 4104
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_9c
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4106
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4107
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4108
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4109
    .local v1, "n":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4110
    .local v2, "m":I
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    .line 4111
    goto/16 :goto_1

    .line 4094
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "n":I
    .end local v2    # "m":I
    :sswitch_9d
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4096
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4097
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4098
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->cancelPendingUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4099
    goto/16 :goto_1

    .line 4084
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_9e
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4086
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4087
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4088
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->sendUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4089
    goto/16 :goto_1

    .line 4072
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_9f
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4074
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4075
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4076
    new-instance v1, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 4077
    .local v1, "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4078
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->iccIOForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 4079
    goto/16 :goto_1

    .line 4060
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_a0
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4062
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4063
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4064
    new-instance v1, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SetupDataCallResult;-><init>()V

    .line 4065
    .local v1, "dcResponse":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4066
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setupDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SetupDataCallResult;)V

    .line 4067
    goto/16 :goto_1

    .line 4048
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "dcResponse":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    :sswitch_a1
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4050
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4051
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4052
    new-instance v1, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 4053
    .local v1, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4054
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->sendSMSExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 4055
    goto/16 :goto_1

    .line 4036
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_a2
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4038
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4039
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4040
    new-instance v1, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 4041
    .restart local v1    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4042
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->sendSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 4043
    goto/16 :goto_1

    .line 4026
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_a3
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4028
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4029
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4030
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->sendDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4031
    goto/16 :goto_1

    .line 4016
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_a4
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4018
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4019
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4020
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->setRadioPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4021
    goto/16 :goto_1

    .line 4003
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_a5
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4005
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4006
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4007
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4008
    .local v1, "longName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4009
    .local v2, "shortName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4010
    .local v3, "numeric":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getOperatorResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4011
    goto/16 :goto_1

    .line 3991
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "longName":Ljava/lang/String;
    .end local v2    # "shortName":Ljava/lang/String;
    .end local v3    # "numeric":Ljava/lang/String;
    :sswitch_a6
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3993
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3994
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3995
    new-instance v1, Landroid/hardware/radio/V1_0/DataRegStateResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/DataRegStateResult;-><init>()V

    .line 3996
    .local v1, "dataRegResponse":Landroid/hardware/radio/V1_0/DataRegStateResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3997
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getDataRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/DataRegStateResult;)V

    .line 3998
    goto/16 :goto_1

    .line 3979
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "dataRegResponse":Landroid/hardware/radio/V1_0/DataRegStateResult;
    :sswitch_a7
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3981
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3982
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3983
    new-instance v1, Landroid/hardware/radio/V1_0/VoiceRegStateResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;-><init>()V

    .line 3984
    .local v1, "voiceRegResponse":Landroid/hardware/radio/V1_0/VoiceRegStateResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3985
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getVoiceRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/VoiceRegStateResult;)V

    .line 3986
    goto/16 :goto_1

    .line 3967
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "voiceRegResponse":Landroid/hardware/radio/V1_0/VoiceRegStateResult;
    :sswitch_a8
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3969
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3970
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3971
    new-instance v1, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 3972
    .local v1, "sigStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3973
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getSignalStrengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SignalStrength;)V

    .line 3974
    goto/16 :goto_1

    .line 3955
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "sigStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    :sswitch_a9
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3957
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3958
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3959
    new-instance v1, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;-><init>()V

    .line 3960
    .local v1, "failCauseinfo":Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3961
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getLastCallFailCauseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V

    .line 3962
    goto/16 :goto_1

    .line 3945
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "failCauseinfo":Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;
    :sswitch_aa
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3947
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3948
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3949
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->rejectCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3950
    goto/16 :goto_1

    .line 3935
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_ab
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3937
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3938
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3939
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->conferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3940
    goto/16 :goto_1

    .line 3925
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_ac
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3927
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3928
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3929
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3930
    goto/16 :goto_1

    .line 3915
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_ad
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3917
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3918
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3919
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->hangupForegroundResumeBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3920
    goto/16 :goto_1

    .line 3905
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_ae
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3907
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3908
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3909
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->hangupWaitingOrBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3910
    goto/16 :goto_1

    .line 3895
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_af
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3897
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3898
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3899
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->hangupConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3900
    goto/16 :goto_1

    .line 3884
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_b0
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3886
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3887
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3888
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3889
    .local v1, "imsi":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getIMSIForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 3890
    goto/16 :goto_1

    .line 3874
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "imsi":Ljava/lang/String;
    :sswitch_b1
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3876
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3877
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3878
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->dialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3879
    goto/16 :goto_1

    .line 3863
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_b2
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3865
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3866
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3867
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/Call;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3868
    .local v1, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/Call;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getCurrentCallsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3869
    goto/16 :goto_1

    .line 3852
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/Call;>;"
    :sswitch_b3
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3854
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3855
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3856
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3857
    .local v1, "remainingRetries":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3858
    goto/16 :goto_1

    .line 3841
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "remainingRetries":I
    :sswitch_b4
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3843
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3844
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3845
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3846
    .restart local v1    # "remainingRetries":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->changeIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3847
    goto/16 :goto_1

    .line 3830
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "remainingRetries":I
    :sswitch_b5
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3832
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3833
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3834
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3835
    .restart local v1    # "remainingRetries":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->changeIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3836
    goto :goto_1

    .line 3819
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "remainingRetries":I
    :sswitch_b6
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3821
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3822
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3823
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3824
    .restart local v1    # "remainingRetries":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->supplyIccPuk2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3825
    goto :goto_1

    .line 3808
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "remainingRetries":I
    :sswitch_b7
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3810
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3811
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3812
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3813
    .restart local v1    # "remainingRetries":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->supplyIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3814
    goto :goto_1

    .line 3797
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "remainingRetries":I
    :sswitch_b8
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3799
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3800
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3801
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3802
    .restart local v1    # "remainingRetries":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->supplyIccPukForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3803
    goto :goto_1

    .line 3786
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "remainingRetries":I
    :sswitch_b9
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3788
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3789
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3790
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3791
    .restart local v1    # "remainingRetries":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->supplyIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3792
    goto :goto_1

    .line 3774
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "remainingRetries":I
    :sswitch_ba
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3776
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3777
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3778
    new-instance v1, Landroid/hardware/radio/V1_0/CardStatus;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CardStatus;-><init>()V

    .line 3779
    .local v1, "cardStatus":Landroid/hardware/radio/V1_0/CardStatus;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3780
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->getIccCardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/CardStatus;)V

    .line 3781
    nop

    .line 5814
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "cardStatus":Landroid/hardware/radio/V1_0/CardStatus;
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_ba
        0x2 -> :sswitch_b9
        0x3 -> :sswitch_b8
        0x4 -> :sswitch_b7
        0x5 -> :sswitch_b6
        0x6 -> :sswitch_b5
        0x7 -> :sswitch_b4
        0x8 -> :sswitch_b3
        0x9 -> :sswitch_b2
        0xa -> :sswitch_b1
        0xb -> :sswitch_b0
        0xc -> :sswitch_af
        0xd -> :sswitch_ae
        0xe -> :sswitch_ad
        0xf -> :sswitch_ac
        0x10 -> :sswitch_ab
        0x11 -> :sswitch_aa
        0x12 -> :sswitch_a9
        0x13 -> :sswitch_a8
        0x14 -> :sswitch_a7
        0x15 -> :sswitch_a6
        0x16 -> :sswitch_a5
        0x17 -> :sswitch_a4
        0x18 -> :sswitch_a3
        0x19 -> :sswitch_a2
        0x1a -> :sswitch_a1
        0x1b -> :sswitch_a0
        0x1c -> :sswitch_9f
        0x1d -> :sswitch_9e
        0x1e -> :sswitch_9d
        0x1f -> :sswitch_9c
        0x20 -> :sswitch_9b
        0x21 -> :sswitch_9a
        0x22 -> :sswitch_99
        0x23 -> :sswitch_98
        0x24 -> :sswitch_97
        0x25 -> :sswitch_96
        0x26 -> :sswitch_95
        0x27 -> :sswitch_94
        0x28 -> :sswitch_93
        0x29 -> :sswitch_92
        0x2a -> :sswitch_91
        0x2b -> :sswitch_90
        0x2c -> :sswitch_8f
        0x2d -> :sswitch_8e
        0x2e -> :sswitch_8d
        0x2f -> :sswitch_8c
        0x30 -> :sswitch_8b
        0x31 -> :sswitch_8a
        0x32 -> :sswitch_89
        0x33 -> :sswitch_88
        0x34 -> :sswitch_87
        0x35 -> :sswitch_86
        0x36 -> :sswitch_85
        0x37 -> :sswitch_84
        0x38 -> :sswitch_83
        0x39 -> :sswitch_82
        0x3a -> :sswitch_81
        0x3b -> :sswitch_80
        0x3c -> :sswitch_7f
        0x3d -> :sswitch_7e
        0x3e -> :sswitch_7d
        0x3f -> :sswitch_7c
        0x40 -> :sswitch_7b
        0x41 -> :sswitch_7a
        0x42 -> :sswitch_79
        0x43 -> :sswitch_78
        0x44 -> :sswitch_77
        0x45 -> :sswitch_76
        0x46 -> :sswitch_75
        0x47 -> :sswitch_74
        0x48 -> :sswitch_73
        0x49 -> :sswitch_72
        0x4a -> :sswitch_71
        0x4b -> :sswitch_70
        0x4c -> :sswitch_6f
        0x4d -> :sswitch_6e
        0x4e -> :sswitch_6d
        0x4f -> :sswitch_6c
        0x50 -> :sswitch_6b
        0x51 -> :sswitch_6a
        0x52 -> :sswitch_69
        0x53 -> :sswitch_68
        0x54 -> :sswitch_67
        0x55 -> :sswitch_66
        0x56 -> :sswitch_65
        0x57 -> :sswitch_64
        0x58 -> :sswitch_63
        0x59 -> :sswitch_62
        0x5a -> :sswitch_61
        0x5b -> :sswitch_60
        0x5c -> :sswitch_5f
        0x5d -> :sswitch_5e
        0x5e -> :sswitch_5d
        0x5f -> :sswitch_5c
        0x60 -> :sswitch_5b
        0x61 -> :sswitch_5a
        0x62 -> :sswitch_59
        0x63 -> :sswitch_58
        0x64 -> :sswitch_57
        0x65 -> :sswitch_56
        0x66 -> :sswitch_55
        0x67 -> :sswitch_54
        0x68 -> :sswitch_53
        0x69 -> :sswitch_52
        0x6a -> :sswitch_51
        0x6b -> :sswitch_50
        0x6c -> :sswitch_4f
        0x6d -> :sswitch_4e
        0x6e -> :sswitch_4d
        0x6f -> :sswitch_4c
        0x70 -> :sswitch_4b
        0x71 -> :sswitch_4a
        0x72 -> :sswitch_49
        0x73 -> :sswitch_48
        0x74 -> :sswitch_47
        0x75 -> :sswitch_46
        0x76 -> :sswitch_45
        0x77 -> :sswitch_44
        0x78 -> :sswitch_43
        0x79 -> :sswitch_42
        0x7a -> :sswitch_41
        0x7b -> :sswitch_40
        0x7c -> :sswitch_3f
        0x7d -> :sswitch_3e
        0x7e -> :sswitch_3d
        0x7f -> :sswitch_3c
        0x80 -> :sswitch_3b
        0x81 -> :sswitch_3a
        0x82 -> :sswitch_39
        0x83 -> :sswitch_38
        0x84 -> :sswitch_37
        0x85 -> :sswitch_36
        0x86 -> :sswitch_35
        0x87 -> :sswitch_34
        0x88 -> :sswitch_33
        0x89 -> :sswitch_32
        0x8a -> :sswitch_31
        0x8b -> :sswitch_30
        0x8c -> :sswitch_2f
        0x8d -> :sswitch_2e
        0x8e -> :sswitch_2d
        0x8f -> :sswitch_2c
        0x90 -> :sswitch_2b
        0x91 -> :sswitch_2a
        0x92 -> :sswitch_29
        0x93 -> :sswitch_28
        0x94 -> :sswitch_27
        0x95 -> :sswitch_26
        0x96 -> :sswitch_25
        0x97 -> :sswitch_24
        0x98 -> :sswitch_23
        0x99 -> :sswitch_22
        0x9a -> :sswitch_21
        0x9b -> :sswitch_20
        0x9c -> :sswitch_1f
        0x9d -> :sswitch_1e
        0x9e -> :sswitch_1d
        0x9f -> :sswitch_1c
        0xa0 -> :sswitch_1b
        0xa1 -> :sswitch_1a
        0xa2 -> :sswitch_19
        0xa3 -> :sswitch_18
        0xa4 -> :sswitch_17
        0xa5 -> :sswitch_16
        0xa6 -> :sswitch_15
        0xa7 -> :sswitch_14
        0xa8 -> :sswitch_13
        0xa9 -> :sswitch_12
        0xaa -> :sswitch_11
        0xab -> :sswitch_10
        0xac -> :sswitch_f
        0xad -> :sswitch_e
        0xae -> :sswitch_d
        0xaf -> :sswitch_c
        0xb0 -> :sswitch_b
        0xb1 -> :sswitch_a
        0xb2 -> :sswitch_9
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

    .line 3725
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 3753
    const-string v0, "android.hardware.radio@1.5::IRadioResponse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3754
    return-object p0

    .line 3756
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

    .line 3760
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 3761
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .locals 0

    .line 3715
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 3765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/IRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 3747
    const/4 v0, 0x1

    return v0
.end method
