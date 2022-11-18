.class public abstract Landroid/hardware/radio/V1_6/IRadioIndication$Stub;
.super Landroid/os/HwBinder;
.source "IRadioIndication.java"

# interfaces
.implements Landroid/hardware/radio/V1_6/IRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_6/IRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 1771
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1774
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

    .line 1793
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1836
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1837
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1838
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1839
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1840
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

    .line 1805
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
        0x71t
        0x57t
        -0x77t
        0x42t
        0x7at
        0x44t
        -0x34t
        0x78t
        -0x7t
        -0x2ft
        0x23t
        -0x50t
        -0x32t
        -0x47t
        -0x20t
        0x35t
        -0x1ct
        -0x54t
        0x2bt
        0x10t
        0x49t
        0x50t
        0x13t
        0x37t
        -0x3et
        0x3at
        0x51t
        0x2et
        -0x7bt
        -0x48t
        0x78t
        0x50t
    .end array-data

    :array_1
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

    :array_2
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

    :array_3
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

    :array_4
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

    :array_5
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

    :array_6
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

    .line 1779
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.radio@1.6::IRadioIndication"

    const-string v2, "android.hardware.radio@1.5::IRadioIndication"

    const-string v3, "android.hardware.radio@1.4::IRadioIndication"

    const-string v4, "android.hardware.radio@1.3::IRadioIndication"

    const-string v5, "android.hardware.radio@1.2::IRadioIndication"

    const-string v6, "android.hardware.radio@1.1::IRadioIndication"

    const-string v7, "android.hardware.radio@1.0::IRadioIndication"

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

    .line 1799
    const-string v0, "android.hardware.radio@1.6::IRadioIndication"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1824
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .locals 0

    .line 1846
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1848
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

    .line 1876
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v0, "android.hardware.radio@1.1::IRadioIndication"

    const-string v1, "android.hardware.radio@1.2::IRadioIndication"

    const-string v2, "android.hardware.radio@1.5::IRadioIndication"

    const-string v3, "android.hardware.radio@1.4::IRadioIndication"

    const/4 v4, 0x0

    const-string v5, "android.hidl.base@1.0::IBase"

    const-string v6, "android.hardware.radio@1.6::IRadioIndication"

    const-string v10, "android.hardware.radio@1.0::IRadioIndication"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 2741
    :sswitch_0
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2743
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->notifySyspropsChanged()V

    .line 2744
    goto/16 :goto_1

    .line 2730
    :sswitch_1
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2732
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 2733
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v9, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2734
    invoke-virtual {v0, v9}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2735
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2736
    goto/16 :goto_1

    .line 2720
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2722
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->ping()V

    .line 2723
    invoke-virtual {v9, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2724
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2725
    goto/16 :goto_1

    .line 2715
    :sswitch_3
    goto/16 :goto_1

    .line 2707
    :sswitch_4
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2709
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->setHALInstrumentation()V

    .line 2710
    goto/16 :goto_1

    .line 2673
    :sswitch_5
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2675
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2676
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v9, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2678
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 2680
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2681
    .local v2, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 2682
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2683
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 2684
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 2686
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 2687
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 2689
    .local v10, "_hidl_array_item_1":[B
    if-eqz v10, :cond_0

    array-length v11, v10

    const/16 v12, 0x20

    if-ne v11, v12, :cond_0

    .line 2693
    invoke-virtual {v3, v5, v6, v10}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2694
    nop

    .line 2684
    .end local v5    # "_hidl_array_offset_1":J
    .end local v10    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2690
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v10    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Array element is not of the expected length"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2697
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v10    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2699
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2701
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2702
    goto/16 :goto_1

    .line 2662
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2664
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 2665
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v9, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2666
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2667
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2668
    goto/16 :goto_1

    .line 2650
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2652
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 2653
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2654
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2655
    invoke-virtual {v9, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2656
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2657
    goto/16 :goto_1

    .line 2639
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2641
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2642
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2643
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2644
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2645
    goto/16 :goto_1

    .line 2628
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2630
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2631
    .local v0, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v1

    .line 2632
    .local v1, "status":B
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2633
    .local v2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/PhonebookRecordInfo;>;"
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->simPhonebookRecordsReceived(IBLjava/util/ArrayList;)V

    .line 2634
    goto/16 :goto_1

    .line 2619
    .end local v0    # "type":I
    .end local v1    # "status":B
    .end local v2    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/PhonebookRecordInfo;>;"
    :sswitch_a
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2621
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2622
    .restart local v0    # "type":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->simPhonebookChanged(I)V

    .line 2623
    goto/16 :goto_1

    .line 2609
    .end local v0    # "type":I
    :sswitch_b
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2611
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2612
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2613
    .local v1, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/PhysicalChannelConfig;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->currentPhysicalChannelConfigs_1_6(ILjava/util/ArrayList;)V

    .line 2614
    goto/16 :goto_1

    .line 2598
    .end local v0    # "type":I
    .end local v1    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/PhysicalChannelConfig;>;"
    :sswitch_c
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2600
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2601
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_6/NetworkScanResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/NetworkScanResult;-><init>()V

    .line 2602
    .local v1, "result":Landroid/hardware/radio/V1_6/NetworkScanResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_6/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2603
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->networkScanResult_1_6(ILandroid/hardware/radio/V1_6/NetworkScanResult;)V

    .line 2604
    goto/16 :goto_1

    .line 2588
    .end local v0    # "type":I
    .end local v1    # "result":Landroid/hardware/radio/V1_6/NetworkScanResult;
    :sswitch_d
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2590
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2591
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_6/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2592
    .local v1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/CellInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->cellInfoList_1_6(ILjava/util/ArrayList;)V

    .line 2593
    goto/16 :goto_1

    .line 2577
    .end local v0    # "type":I
    .end local v1    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/CellInfo;>;"
    :sswitch_e
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2579
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2580
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_6/SignalStrength;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/SignalStrength;-><init>()V

    .line 2581
    .local v1, "signalStrength":Landroid/hardware/radio/V1_6/SignalStrength;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_6/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2582
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->currentSignalStrength_1_6(ILandroid/hardware/radio/V1_6/SignalStrength;)V

    .line 2583
    goto/16 :goto_1

    .line 2566
    .end local v0    # "type":I
    .end local v1    # "signalStrength":Landroid/hardware/radio/V1_6/SignalStrength;
    :sswitch_f
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2568
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2569
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;-><init>()V

    .line 2570
    .local v1, "lce":Landroid/hardware/radio/V1_6/LinkCapacityEstimate;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2571
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->currentLinkCapacityEstimate_1_6(ILandroid/hardware/radio/V1_6/LinkCapacityEstimate;)V

    .line 2572
    goto/16 :goto_1

    .line 2556
    .end local v0    # "type":I
    .end local v1    # "lce":Landroid/hardware/radio/V1_6/LinkCapacityEstimate;
    :sswitch_10
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2558
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2559
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2560
    .local v1, "apn":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->unthrottleApn(ILjava/lang/String;)V

    .line 2561
    goto/16 :goto_1

    .line 2546
    .end local v0    # "type":I
    .end local v1    # "apn":Ljava/lang/String;
    :sswitch_11
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2548
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2549
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_6/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2550
    .local v1, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/SetupDataCallResult;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->dataCallListChanged_1_6(ILjava/util/ArrayList;)V

    .line 2551
    goto/16 :goto_1

    .line 2536
    .end local v0    # "type":I
    .end local v1    # "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/SetupDataCallResult;>;"
    :sswitch_12
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2538
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2539
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_5/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2540
    .local v1, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/SetupDataCallResult;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->dataCallListChanged_1_5(ILjava/util/ArrayList;)V

    .line 2541
    goto/16 :goto_1

    .line 2525
    .end local v0    # "type":I
    .end local v1    # "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/SetupDataCallResult;>;"
    :sswitch_13
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2527
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2528
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_5/NetworkScanResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_5/NetworkScanResult;-><init>()V

    .line 2529
    .local v1, "result":Landroid/hardware/radio/V1_5/NetworkScanResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_5/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2530
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->networkScanResult_1_5(ILandroid/hardware/radio/V1_5/NetworkScanResult;)V

    .line 2531
    goto/16 :goto_1

    .line 2515
    .end local v0    # "type":I
    .end local v1    # "result":Landroid/hardware/radio/V1_5/NetworkScanResult;
    :sswitch_14
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2517
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2518
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_5/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2519
    .local v1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/CellInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->cellInfoList_1_5(ILjava/util/ArrayList;)V

    .line 2520
    goto/16 :goto_1

    .line 2503
    .end local v0    # "type":I
    .end local v1    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/CellInfo;>;"
    :sswitch_15
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2505
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2506
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_5/CellIdentity;

    invoke-direct {v1}, Landroid/hardware/radio/V1_5/CellIdentity;-><init>()V

    .line 2507
    .local v1, "cellIdentity":Landroid/hardware/radio/V1_5/CellIdentity;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_5/CellIdentity;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2508
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_5/BarringInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2509
    .local v2, "barringInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/BarringInfo;>;"
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->barringInfoChanged(ILandroid/hardware/radio/V1_5/CellIdentity;Ljava/util/ArrayList;)V

    .line 2510
    goto/16 :goto_1

    .line 2488
    .end local v0    # "type":I
    .end local v1    # "cellIdentity":Landroid/hardware/radio/V1_5/CellIdentity;
    .end local v2    # "barringInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/BarringInfo;>;"
    :sswitch_16
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2490
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 2491
    .local v10, "type":I
    new-instance v0, Landroid/hardware/radio/V1_5/CellIdentity;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/CellIdentity;-><init>()V

    move-object v11, v0

    .line 2492
    .local v11, "cellIdentity":Landroid/hardware/radio/V1_5/CellIdentity;
    invoke-virtual {v11, v8}, Landroid/hardware/radio/V1_5/CellIdentity;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2493
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 2494
    .local v12, "chosenPlmn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 2495
    .local v13, "domain":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 2496
    .local v14, "causeCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 2497
    .local v15, "additionalCauseCode":I
    move-object/from16 v0, p0

    move v1, v10

    move-object v2, v11

    move-object v3, v12

    move v4, v13

    move v5, v14

    move v6, v15

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->registrationFailed(ILandroid/hardware/radio/V1_5/CellIdentity;Ljava/lang/String;III)V

    .line 2498
    goto/16 :goto_1

    .line 2478
    .end local v10    # "type":I
    .end local v11    # "cellIdentity":Landroid/hardware/radio/V1_5/CellIdentity;
    .end local v12    # "chosenPlmn":Ljava/lang/String;
    .end local v13    # "domain":I
    .end local v14    # "causeCode":I
    .end local v15    # "additionalCauseCode":I
    :sswitch_17
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2480
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2481
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 2482
    .local v1, "enabled":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->uiccApplicationsEnablementChanged(IZ)V

    .line 2483
    goto/16 :goto_1

    .line 2467
    .end local v0    # "type":I
    .end local v1    # "enabled":Z
    :sswitch_18
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2469
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2470
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_4/SignalStrength;

    invoke-direct {v1}, Landroid/hardware/radio/V1_4/SignalStrength;-><init>()V

    .line 2471
    .local v1, "signalStrength":Landroid/hardware/radio/V1_4/SignalStrength;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_4/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2472
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->currentSignalStrength_1_4(ILandroid/hardware/radio/V1_4/SignalStrength;)V

    .line 2473
    goto/16 :goto_1

    .line 2457
    .end local v0    # "type":I
    .end local v1    # "signalStrength":Landroid/hardware/radio/V1_4/SignalStrength;
    :sswitch_19
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2459
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2460
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_4/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2461
    .local v1, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/SetupDataCallResult;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->dataCallListChanged_1_4(ILjava/util/ArrayList;)V

    .line 2462
    goto/16 :goto_1

    .line 2447
    .end local v0    # "type":I
    .end local v1    # "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/SetupDataCallResult;>;"
    :sswitch_1a
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2449
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2450
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2451
    .local v1, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/PhysicalChannelConfig;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->currentPhysicalChannelConfigs_1_4(ILjava/util/ArrayList;)V

    .line 2452
    goto/16 :goto_1

    .line 2436
    .end local v0    # "type":I
    .end local v1    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/PhysicalChannelConfig;>;"
    :sswitch_1b
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2438
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2439
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_4/NetworkScanResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_4/NetworkScanResult;-><init>()V

    .line 2440
    .local v1, "result":Landroid/hardware/radio/V1_4/NetworkScanResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_4/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2441
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->networkScanResult_1_4(ILandroid/hardware/radio/V1_4/NetworkScanResult;)V

    .line 2442
    goto/16 :goto_1

    .line 2426
    .end local v0    # "type":I
    .end local v1    # "result":Landroid/hardware/radio/V1_4/NetworkScanResult;
    :sswitch_1c
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2428
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2429
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_4/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2430
    .local v1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/CellInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->cellInfoList_1_4(ILjava/util/ArrayList;)V

    .line 2431
    goto/16 :goto_1

    .line 2416
    .end local v0    # "type":I
    .end local v1    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/CellInfo;>;"
    :sswitch_1d
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2418
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2419
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_4/EmergencyNumber;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2420
    .local v1, "emergencyNumberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/EmergencyNumber;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->currentEmergencyNumberList(ILjava/util/ArrayList;)V

    .line 2421
    goto/16 :goto_1

    .line 2405
    .end local v0    # "type":I
    .end local v1    # "emergencyNumberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/EmergencyNumber;>;"
    :sswitch_1e
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2407
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2408
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_2/SignalStrength;

    invoke-direct {v1}, Landroid/hardware/radio/V1_2/SignalStrength;-><init>()V

    .line 2409
    .local v1, "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_2/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2410
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->currentSignalStrength_1_2(ILandroid/hardware/radio/V1_2/SignalStrength;)V

    .line 2411
    goto/16 :goto_1

    .line 2395
    .end local v0    # "type":I
    .end local v1    # "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    :sswitch_1f
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2397
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2398
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_2/PhysicalChannelConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2399
    .local v1, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/PhysicalChannelConfig;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->currentPhysicalChannelConfigs(ILjava/util/ArrayList;)V

    .line 2400
    goto/16 :goto_1

    .line 2384
    .end local v0    # "type":I
    .end local v1    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/PhysicalChannelConfig;>;"
    :sswitch_20
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2386
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2387
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;

    invoke-direct {v1}, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;-><init>()V

    .line 2388
    .local v1, "lce":Landroid/hardware/radio/V1_2/LinkCapacityEstimate;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2389
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->currentLinkCapacityEstimate(ILandroid/hardware/radio/V1_2/LinkCapacityEstimate;)V

    .line 2390
    goto/16 :goto_1

    .line 2374
    .end local v0    # "type":I
    .end local v1    # "lce":Landroid/hardware/radio/V1_2/LinkCapacityEstimate;
    :sswitch_21
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2376
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2377
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_2/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2378
    .local v1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->cellInfoList_1_2(ILjava/util/ArrayList;)V

    .line 2379
    goto/16 :goto_1

    .line 2363
    .end local v0    # "type":I
    .end local v1    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    :sswitch_22
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2365
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2366
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_2/NetworkScanResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_2/NetworkScanResult;-><init>()V

    .line 2367
    .local v1, "result":Landroid/hardware/radio/V1_2/NetworkScanResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_2/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2368
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->networkScanResult_1_2(ILandroid/hardware/radio/V1_2/NetworkScanResult;)V

    .line 2369
    goto/16 :goto_1

    .line 2352
    .end local v0    # "type":I
    .end local v1    # "result":Landroid/hardware/radio/V1_2/NetworkScanResult;
    :sswitch_23
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2354
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2355
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_1/KeepaliveStatus;

    invoke-direct {v1}, Landroid/hardware/radio/V1_1/KeepaliveStatus;-><init>()V

    .line 2356
    .local v1, "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_1/KeepaliveStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2357
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->keepaliveStatus(ILandroid/hardware/radio/V1_1/KeepaliveStatus;)V

    .line 2358
    goto/16 :goto_1

    .line 2341
    .end local v0    # "type":I
    .end local v1    # "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    :sswitch_24
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2343
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2344
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_1/NetworkScanResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_1/NetworkScanResult;-><init>()V

    .line 2345
    .local v1, "result":Landroid/hardware/radio/V1_1/NetworkScanResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_1/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2346
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->networkScanResult(ILandroid/hardware/radio/V1_1/NetworkScanResult;)V

    .line 2347
    goto/16 :goto_1

    .line 2332
    .end local v0    # "type":I
    .end local v1    # "result":Landroid/hardware/radio/V1_1/NetworkScanResult;
    :sswitch_25
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2334
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2335
    .local v0, "info":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->carrierInfoForImsiEncryption(I)V

    .line 2336
    goto/16 :goto_1

    .line 2322
    .end local v0    # "info":I
    :sswitch_26
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2324
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2325
    .local v0, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2326
    .local v1, "reason":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->modemReset(ILjava/lang/String;)V

    .line 2327
    goto/16 :goto_1

    .line 2311
    .end local v0    # "type":I
    .end local v1    # "reason":Ljava/lang/String;
    :sswitch_27
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2313
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2314
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/PcoDataInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/PcoDataInfo;-><init>()V

    .line 2315
    .local v1, "pco":Landroid/hardware/radio/V1_0/PcoDataInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/PcoDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2316
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->pcoData(ILandroid/hardware/radio/V1_0/PcoDataInfo;)V

    .line 2317
    goto/16 :goto_1

    .line 2300
    .end local v0    # "type":I
    .end local v1    # "pco":Landroid/hardware/radio/V1_0/PcoDataInfo;
    :sswitch_28
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2302
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2303
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 2304
    .local v1, "lce":Landroid/hardware/radio/V1_0/LceDataInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2305
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->lceData(ILandroid/hardware/radio/V1_0/LceDataInfo;)V

    .line 2306
    goto/16 :goto_1

    .line 2290
    .end local v0    # "type":I
    .end local v1    # "lce":Landroid/hardware/radio/V1_0/LceDataInfo;
    :sswitch_29
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2292
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2293
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2294
    .local v1, "alpha":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->stkCallControlAlphaNotify(ILjava/lang/String;)V

    .line 2295
    goto/16 :goto_1

    .line 2279
    .end local v0    # "type":I
    .end local v1    # "alpha":Ljava/lang/String;
    :sswitch_2a
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2281
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2282
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;-><init>()V

    .line 2283
    .local v1, "ss":Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2284
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->onSupplementaryServiceIndication(ILandroid/hardware/radio/V1_0/StkCcUnsolSsResult;)V

    .line 2285
    goto/16 :goto_1

    .line 2268
    .end local v0    # "type":I
    .end local v1    # "ss":Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;
    :sswitch_2b
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2270
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2271
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 2272
    .local v1, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2273
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->radioCapabilityIndication(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 2274
    goto/16 :goto_1

    .line 2258
    .end local v0    # "type":I
    .end local v1    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :sswitch_2c
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2260
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2261
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2262
    .local v1, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->hardwareConfigChanged(ILjava/util/ArrayList;)V

    .line 2263
    goto/16 :goto_1

    .line 2248
    .end local v0    # "type":I
    .end local v1    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    :sswitch_2d
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2250
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2251
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2252
    .local v1, "state":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->srvccStateNotify(II)V

    .line 2253
    goto/16 :goto_1

    .line 2238
    .end local v0    # "type":I
    .end local v1    # "state":I
    :sswitch_2e
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2240
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2241
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 2242
    .local v1, "activate":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->subscriptionStatusChanged(IZ)V

    .line 2243
    goto/16 :goto_1

    .line 2229
    .end local v0    # "type":I
    .end local v1    # "activate":Z
    :sswitch_2f
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2231
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2232
    .restart local v0    # "type":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->imsNetworkStateChanged(I)V

    .line 2233
    goto/16 :goto_1

    .line 2219
    .end local v0    # "type":I
    :sswitch_30
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2221
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2222
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2223
    .local v1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->cellInfoList(ILjava/util/ArrayList;)V

    .line 2224
    goto/16 :goto_1

    .line 2209
    .end local v0    # "type":I
    .end local v1    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    :sswitch_31
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2211
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2212
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2213
    .local v1, "rat":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->voiceRadioTechChanged(II)V

    .line 2214
    goto/16 :goto_1

    .line 2200
    .end local v0    # "type":I
    .end local v1    # "rat":I
    :sswitch_32
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2202
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2203
    .restart local v0    # "type":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->rilConnected(I)V

    .line 2204
    goto/16 :goto_1

    .line 2191
    .end local v0    # "type":I
    :sswitch_33
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2193
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2194
    .restart local v0    # "type":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->exitEmergencyCallbackMode(I)V

    .line 2195
    goto/16 :goto_1

    .line 2181
    .end local v0    # "type":I
    :sswitch_34
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2183
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2184
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2185
    .local v1, "version":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->cdmaPrlChanged(II)V

    .line 2186
    goto/16 :goto_1

    .line 2171
    .end local v0    # "type":I
    .end local v1    # "version":I
    :sswitch_35
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2173
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2174
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2175
    .local v1, "cdmaSource":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->cdmaSubscriptionSourceChanged(II)V

    .line 2176
    goto/16 :goto_1

    .line 2162
    .end local v0    # "type":I
    .end local v1    # "cdmaSource":I
    :sswitch_36
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2164
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2165
    .restart local v0    # "type":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->resendIncallMute(I)V

    .line 2166
    goto/16 :goto_1

    .line 2152
    .end local v0    # "type":I
    :sswitch_37
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2154
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2155
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 2156
    .local v1, "start":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->indicateRingbackTone(IZ)V

    .line 2157
    goto/16 :goto_1

    .line 2141
    .end local v0    # "type":I
    .end local v1    # "start":Z
    :sswitch_38
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2143
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2144
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaInformationRecords;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;-><init>()V

    .line 2145
    .local v1, "records":Landroid/hardware/radio/V1_0/CdmaInformationRecords;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2146
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->cdmaInfoRec(ILandroid/hardware/radio/V1_0/CdmaInformationRecords;)V

    .line 2147
    goto/16 :goto_1

    .line 2131
    .end local v0    # "type":I
    .end local v1    # "records":Landroid/hardware/radio/V1_0/CdmaInformationRecords;
    :sswitch_39
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2133
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2134
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2135
    .local v1, "status":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->cdmaOtaProvisionStatus(II)V

    .line 2136
    goto/16 :goto_1

    .line 2120
    .end local v0    # "type":I
    .end local v1    # "status":I
    :sswitch_3a
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2122
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2123
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaCallWaiting;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;-><init>()V

    .line 2124
    .local v1, "callWaitingRecord":Landroid/hardware/radio/V1_0/CdmaCallWaiting;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2125
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->cdmaCallWaiting(ILandroid/hardware/radio/V1_0/CdmaCallWaiting;)V

    .line 2126
    goto/16 :goto_1

    .line 2111
    .end local v0    # "type":I
    .end local v1    # "callWaitingRecord":Landroid/hardware/radio/V1_0/CdmaCallWaiting;
    :sswitch_3b
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2113
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2114
    .restart local v0    # "type":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->enterEmergencyCallbackMode(I)V

    .line 2115
    goto/16 :goto_1

    .line 2101
    .end local v0    # "type":I
    :sswitch_3c
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2103
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2104
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2105
    .local v1, "state":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->restrictedStateChanged(II)V

    .line 2106
    goto/16 :goto_1

    .line 2092
    .end local v0    # "type":I
    .end local v1    # "state":I
    :sswitch_3d
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2094
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2095
    .restart local v0    # "type":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->cdmaRuimSmsStorageFull(I)V

    .line 2096
    goto/16 :goto_1

    .line 2082
    .end local v0    # "type":I
    :sswitch_3e
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2084
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2085
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2086
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->newBroadcastSms(ILjava/util/ArrayList;)V

    .line 2087
    goto/16 :goto_1

    .line 2071
    .end local v0    # "type":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_3f
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2073
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2074
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 2075
    .local v1, "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2076
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->cdmaNewSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 2077
    goto/16 :goto_1

    .line 2062
    .end local v0    # "type":I
    .end local v1    # "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :sswitch_40
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2064
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2065
    .restart local v0    # "type":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->simStatusChanged(I)V

    .line 2066
    goto/16 :goto_1

    .line 2050
    .end local v0    # "type":I
    :sswitch_41
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2052
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2053
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 2054
    .local v1, "isGsm":Z
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;-><init>()V

    .line 2055
    .local v2, "record":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2056
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->callRing(IZLandroid/hardware/radio/V1_0/CdmaSignalInfoRecord;)V

    .line 2057
    goto/16 :goto_1

    .line 2039
    .end local v0    # "type":I
    .end local v1    # "isGsm":Z
    .end local v2    # "record":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    :sswitch_42
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2041
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2042
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/SimRefreshResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SimRefreshResult;-><init>()V

    .line 2043
    .local v1, "refreshResult":Landroid/hardware/radio/V1_0/SimRefreshResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SimRefreshResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2044
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->simRefresh(ILandroid/hardware/radio/V1_0/SimRefreshResult;)V

    .line 2045
    goto/16 :goto_1

    .line 2030
    .end local v0    # "type":I
    .end local v1    # "refreshResult":Landroid/hardware/radio/V1_0/SimRefreshResult;
    :sswitch_43
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2032
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2033
    .restart local v0    # "type":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->simSmsStorageFull(I)V

    .line 2034
    goto/16 :goto_1

    .line 2020
    .end local v0    # "type":I
    :sswitch_44
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2022
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2023
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v1

    .line 2024
    .local v1, "timeout":J
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->stkCallSetup(IJ)V

    .line 2025
    goto/16 :goto_1

    .line 2010
    .end local v0    # "type":I
    .end local v1    # "timeout":J
    :sswitch_45
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2012
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2013
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2014
    .local v1, "cmd":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->stkEventNotify(ILjava/lang/String;)V

    .line 2015
    goto/16 :goto_1

    .line 2000
    .end local v0    # "type":I
    .end local v1    # "cmd":Ljava/lang/String;
    :sswitch_46
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2002
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2003
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2004
    .restart local v1    # "cmd":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->stkProactiveCommand(ILjava/lang/String;)V

    .line 2005
    goto/16 :goto_1

    .line 1991
    .end local v0    # "type":I
    .end local v1    # "cmd":Ljava/lang/String;
    :sswitch_47
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1993
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1994
    .restart local v0    # "type":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->stkSessionEnd(I)V

    .line 1995
    goto/16 :goto_1

    .line 1980
    .end local v0    # "type":I
    :sswitch_48
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1982
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1983
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/SuppSvcNotification;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SuppSvcNotification;-><init>()V

    .line 1984
    .local v1, "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SuppSvcNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1985
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->suppSvcNotify(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V

    .line 1986
    goto/16 :goto_1

    .line 1970
    .end local v0    # "type":I
    .end local v1    # "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    :sswitch_49
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1972
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1973
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1974
    .local v1, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->dataCallListChanged(ILjava/util/ArrayList;)V

    .line 1975
    goto/16 :goto_1

    .line 1959
    .end local v0    # "type":I
    .end local v1    # "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    :sswitch_4a
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1961
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1962
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 1963
    .local v1, "signalStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1964
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->currentSignalStrength(ILandroid/hardware/radio/V1_0/SignalStrength;)V

    .line 1965
    goto/16 :goto_1

    .line 1948
    .end local v0    # "type":I
    .end local v1    # "signalStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    :sswitch_4b
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1950
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1951
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1952
    .local v1, "nitzTime":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 1953
    .local v2, "receivedTime":J
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->nitzTimeReceived(ILjava/lang/String;J)V

    .line 1954
    goto :goto_1

    .line 1937
    .end local v0    # "type":I
    .end local v1    # "nitzTime":Ljava/lang/String;
    .end local v2    # "receivedTime":J
    :sswitch_4c
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1939
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1940
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1941
    .local v1, "modeType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1942
    .local v2, "msg":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->onUssd(IILjava/lang/String;)V

    .line 1943
    goto :goto_1

    .line 1927
    .end local v0    # "type":I
    .end local v1    # "modeType":I
    .end local v2    # "msg":Ljava/lang/String;
    :sswitch_4d
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1929
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1930
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1931
    .local v1, "recordNumber":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->newSmsOnSim(II)V

    .line 1932
    goto :goto_1

    .line 1917
    .end local v0    # "type":I
    .end local v1    # "recordNumber":I
    :sswitch_4e
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1919
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1920
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1921
    .local v1, "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->newSmsStatusReport(ILjava/util/ArrayList;)V

    .line 1922
    goto :goto_1

    .line 1907
    .end local v0    # "type":I
    .end local v1    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_4f
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1909
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1910
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1911
    .restart local v1    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->newSms(ILjava/util/ArrayList;)V

    .line 1912
    goto :goto_1

    .line 1898
    .end local v0    # "type":I
    .end local v1    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_50
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1900
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1901
    .restart local v0    # "type":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->networkStateChanged(I)V

    .line 1902
    goto :goto_1

    .line 1889
    .end local v0    # "type":I
    :sswitch_51
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1891
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1892
    .restart local v0    # "type":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->callStateChanged(I)V

    .line 1893
    goto :goto_1

    .line 1879
    .end local v0    # "type":I
    :sswitch_52
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1881
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1882
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1883
    .local v1, "radioState":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->radioStateChanged(II)V

    .line 1884
    nop

    .line 2753
    .end local v0    # "type":I
    .end local v1    # "radioState":I
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_52
        0x2 -> :sswitch_51
        0x3 -> :sswitch_50
        0x4 -> :sswitch_4f
        0x5 -> :sswitch_4e
        0x6 -> :sswitch_4d
        0x7 -> :sswitch_4c
        0x8 -> :sswitch_4b
        0x9 -> :sswitch_4a
        0xa -> :sswitch_49
        0xb -> :sswitch_48
        0xc -> :sswitch_47
        0xd -> :sswitch_46
        0xe -> :sswitch_45
        0xf -> :sswitch_44
        0x10 -> :sswitch_43
        0x11 -> :sswitch_42
        0x12 -> :sswitch_41
        0x13 -> :sswitch_40
        0x14 -> :sswitch_3f
        0x15 -> :sswitch_3e
        0x16 -> :sswitch_3d
        0x17 -> :sswitch_3c
        0x18 -> :sswitch_3b
        0x19 -> :sswitch_3a
        0x1a -> :sswitch_39
        0x1b -> :sswitch_38
        0x1c -> :sswitch_37
        0x1d -> :sswitch_36
        0x1e -> :sswitch_35
        0x1f -> :sswitch_34
        0x20 -> :sswitch_33
        0x21 -> :sswitch_32
        0x22 -> :sswitch_31
        0x23 -> :sswitch_30
        0x24 -> :sswitch_2f
        0x25 -> :sswitch_2e
        0x26 -> :sswitch_2d
        0x27 -> :sswitch_2c
        0x28 -> :sswitch_2b
        0x29 -> :sswitch_2a
        0x2a -> :sswitch_29
        0x2b -> :sswitch_28
        0x2c -> :sswitch_27
        0x2d -> :sswitch_26
        0x2e -> :sswitch_25
        0x2f -> :sswitch_24
        0x30 -> :sswitch_23
        0x31 -> :sswitch_22
        0x32 -> :sswitch_21
        0x33 -> :sswitch_20
        0x34 -> :sswitch_1f
        0x35 -> :sswitch_1e
        0x36 -> :sswitch_1d
        0x37 -> :sswitch_1c
        0x38 -> :sswitch_1b
        0x39 -> :sswitch_1a
        0x3a -> :sswitch_19
        0x3b -> :sswitch_18
        0x3c -> :sswitch_17
        0x3d -> :sswitch_16
        0x3e -> :sswitch_15
        0x3f -> :sswitch_14
        0x40 -> :sswitch_13
        0x41 -> :sswitch_12
        0x42 -> :sswitch_11
        0x43 -> :sswitch_10
        0x44 -> :sswitch_f
        0x45 -> :sswitch_e
        0x46 -> :sswitch_d
        0x47 -> :sswitch_c
        0x48 -> :sswitch_b
        0x49 -> :sswitch_a
        0x4a -> :sswitch_9
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

    .line 1830
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1858
    const-string v0, "android.hardware.radio@1.6::IRadioIndication"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1859
    return-object p0

    .line 1861
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

    .line 1865
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 1866
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .locals 0

    .line 1820
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 1870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1852
    const/4 v0, 0x1

    return v0
.end method
