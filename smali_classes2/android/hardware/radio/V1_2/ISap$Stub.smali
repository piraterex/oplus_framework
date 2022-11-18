.class public abstract Landroid/hardware/radio/V1_2/ISap$Stub;
.super Landroid/os/HwBinder;
.source "ISap.java"

# interfaces
.implements Landroid/hardware/radio/V1_2/ISap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_2/ISap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 558
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 561
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

    .line 576
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 615
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 616
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 617
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 618
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 619
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

    .line 588
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
        0x2dt
        -0x7at
        -0x6et
        -0x69t
        -0x6ct
        0x79t
        0x5et
        0x5ct
        0x70t
        -0xct
        -0x3t
        -0x4bt
        0x7t
        0x34t
        -0x7bt
        -0x3t
        0x5t
        -0x7dt
        0x5ct
        -0x64t
        0x6ft
        0x49t
        0x61t
        0x16t
        0x68t
        0x7ct
        0x3dt
        -0x61t
        0x32t
        -0x1at
        -0x21t
        0x3et
    .end array-data

    :array_1
    .array-data 1
        -0x7t
        0x6ct
        -0x44t
        0x59t
        -0x21t
        -0x1ft
        0x6ct
        -0x73t
        0xct
        0x2at
        0x7et
        0x6t
        -0x25t
        0x24t
        -0x28t
        0x73t
        -0x76t
        0x63t
        0x28t
        -0x4at
        -0x17t
        0xft
        0x7bt
        -0x72t
        0x16t
        0x40t
        -0x16t
        0x2bt
        0x46t
        0x0t
        -0x22t
        -0x43t
    .end array-data

    :array_2
    .array-data 1
        -0x22t
        0x3at
        -0x47t
        -0x9t
        0x3bt
        0x10t
        0x73t
        -0x33t
        0x67t
        0x7bt
        0x19t
        -0x28t
        -0x7at
        -0x5t
        -0x6et
        0x7et
        -0x6dt
        -0x7ft
        -0x4dt
        0x1t
        0x61t
        -0x59t
        0x4t
        0x71t
        0x2dt
        0x2bt
        0x30t
        -0x8t
        0x75t
        -0x79t
        0x3ft
        0x5ct
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

    .line 566
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.radio@1.2::ISap"

    const-string v2, "android.hardware.radio@1.1::ISap"

    const-string v3, "android.hardware.radio@1.0::ISap"

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

    .line 582
    const-string v0, "android.hardware.radio@1.2::ISap"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 603
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .locals 0

    .line 625
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 627
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

    .line 655
    const-string v0, "android.hidl.base@1.0::IBase"

    const/4 v1, 0x0

    const-string v2, "android.hardware.radio@1.0::ISap"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 848
    :sswitch_0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 850
    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/ISap$Stub;->notifySyspropsChanged()V

    .line 851
    goto/16 :goto_1

    .line 837
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 839
    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/ISap$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 840
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 841
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 842
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 843
    goto/16 :goto_1

    .line 827
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 829
    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/ISap$Stub;->ping()V

    .line 830
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 831
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 832
    goto/16 :goto_1

    .line 822
    :sswitch_3
    goto/16 :goto_1

    .line 814
    :sswitch_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 816
    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/ISap$Stub;->setHALInstrumentation()V

    .line 817
    goto/16 :goto_1

    .line 780
    :sswitch_5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 782
    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/ISap$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 783
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 785
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 787
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 788
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 789
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 790
    new-instance v1, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 791
    .local v1, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 793
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 794
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 796
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 800
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 801
    nop

    .line 791
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 797
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 804
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 806
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 808
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 809
    goto/16 :goto_1

    .line 769
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 771
    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/ISap$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 772
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 773
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 774
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 775
    goto/16 :goto_1

    .line 757
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 759
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 760
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 761
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Landroid/hardware/radio/V1_2/ISap$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 762
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 763
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 764
    goto/16 :goto_1

    .line 746
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 748
    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/ISap$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 749
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 750
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 751
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 752
    goto/16 :goto_1

    .line 736
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 738
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 739
    .local v0, "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 740
    .local v1, "transferProtocol":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_2/ISap$Stub;->setTransferProtocolReq(II)V

    .line 741
    goto/16 :goto_1

    .line 727
    .end local v0    # "token":I
    .end local v1    # "transferProtocol":I
    :sswitch_a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 729
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 730
    .restart local v0    # "token":I
    invoke-virtual {p0, v0}, Landroid/hardware/radio/V1_2/ISap$Stub;->transferCardReaderStatusReq(I)V

    .line 731
    goto :goto_1

    .line 718
    .end local v0    # "token":I
    :sswitch_b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 721
    .restart local v0    # "token":I
    invoke-virtual {p0, v0}, Landroid/hardware/radio/V1_2/ISap$Stub;->resetSimReq(I)V

    .line 722
    goto :goto_1

    .line 708
    .end local v0    # "token":I
    :sswitch_c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 710
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 711
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 712
    .local v1, "state":Z
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_2/ISap$Stub;->powerReq(IZ)V

    .line 713
    goto :goto_1

    .line 699
    .end local v0    # "token":I
    .end local v1    # "state":Z
    :sswitch_d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 702
    .restart local v0    # "token":I
    invoke-virtual {p0, v0}, Landroid/hardware/radio/V1_2/ISap$Stub;->transferAtrReq(I)V

    .line 703
    goto :goto_1

    .line 688
    .end local v0    # "token":I
    :sswitch_e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 691
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 692
    .local v1, "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 693
    .local v2, "command":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_2/ISap$Stub;->apduReq(IILjava/util/ArrayList;)V

    .line 694
    goto :goto_1

    .line 679
    .end local v0    # "token":I
    .end local v1    # "type":I
    .end local v2    # "command":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 681
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 682
    .restart local v0    # "token":I
    invoke-virtual {p0, v0}, Landroid/hardware/radio/V1_2/ISap$Stub;->disconnectReq(I)V

    .line 683
    goto :goto_1

    .line 669
    .end local v0    # "token":I
    :sswitch_10
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 672
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 673
    .local v1, "maxMsgSize":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_2/ISap$Stub;->connectReq(II)V

    .line 674
    goto :goto_1

    .line 658
    .end local v0    # "token":I
    .end local v1    # "maxMsgSize":I
    :sswitch_11
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/V1_0/ISapCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/ISapCallback;

    move-result-object v0

    .line 661
    .local v0, "sapCallback":Landroid/hardware/radio/V1_0/ISapCallback;
    invoke-virtual {p0, v0}, Landroid/hardware/radio/V1_2/ISap$Stub;->setCallback(Landroid/hardware/radio/V1_0/ISapCallback;)V

    .line 662
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 663
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 664
    nop

    .line 860
    .end local v0    # "sapCallback":Landroid/hardware/radio/V1_0/ISapCallback;
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_10
        0x3 -> :sswitch_f
        0x4 -> :sswitch_e
        0x5 -> :sswitch_d
        0x6 -> :sswitch_c
        0x7 -> :sswitch_b
        0x8 -> :sswitch_a
        0x9 -> :sswitch_9
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

    .line 609
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 637
    const-string v0, "android.hardware.radio@1.2::ISap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    return-object p0

    .line 640
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

    .line 644
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_2/ISap$Stub;->registerService(Ljava/lang/String;)V

    .line 645
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .locals 0

    .line 599
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/ISap$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 631
    const/4 v0, 0x1

    return v0
.end method
