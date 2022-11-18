.class public abstract Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory$Stub;
.super Landroid/os/HwBinder;
.source "IHandleFactory.java"

# interfaces
.implements Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 514
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 517
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

    .line 530
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 567
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 568
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 569
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 570
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 571
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

    .line 542
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
        0x28t
        0x1bt
        0x33t
        -0x64t
        -0x2et
        -0x4t
        0x43t
        -0x49t
        0x1et
        0x52t
        0x6t
        -0x69t
        -0x29t
        -0x7et
        0x79t
        0x7ft
        -0x4et
        0x1et
        -0x56t
        -0x6dt
        0x3ft
        -0x22t
        0x5at
        -0x5et
        0x6et
        -0x5ct
        0x7dt
        -0x2at
        -0x78t
        0x4dt
        0x4ft
        -0x1et
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

    .line 522
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.oplus.hardware.handlefactory@1.0::IHandleFactory"

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

    .line 536
    const-string v0, "vendor.oplus.hardware.handlefactory@1.0::IHandleFactory"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 555
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .locals 0

    .line 577
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 579
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

    .line 607
    const-string v0, "vendor.oplus.hardware.handlefactory@1.0::IHandleFactory"

    const-string v1, "android.hidl.base@1.0::IBase"

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 775
    :sswitch_0
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 777
    invoke-virtual {p0}, Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory$Stub;->notifySyspropsChanged()V

    .line 778
    goto/16 :goto_1

    .line 764
    :sswitch_1
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 766
    invoke-virtual {p0}, Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 767
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 768
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 769
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 770
    goto/16 :goto_1

    .line 754
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    invoke-virtual {p0}, Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory$Stub;->ping()V

    .line 757
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 758
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 759
    goto/16 :goto_1

    .line 749
    :sswitch_3
    goto/16 :goto_1

    .line 741
    :sswitch_4
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 743
    invoke-virtual {p0}, Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory$Stub;->setHALInstrumentation()V

    .line 744
    goto/16 :goto_1

    .line 707
    :sswitch_5
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p0}, Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 710
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 712
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 714
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 715
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 716
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 717
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v2, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 718
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 720
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 721
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 723
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 727
    invoke-virtual {v2, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 728
    nop

    .line 718
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 724
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 731
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 733
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 735
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 736
    goto/16 :goto_1

    .line 696
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual {p0}, Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 699
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 700
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 702
    goto/16 :goto_1

    .line 684
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 687
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 688
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 689
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 690
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 691
    goto/16 :goto_1

    .line 673
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 675
    invoke-virtual {p0}, Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 676
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 677
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 678
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 679
    goto :goto_1

    .line 659
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 662
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 663
    .local v1, "flags":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 664
    .local v3, "data":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v3}, Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory$Stub;->write(Ljava/lang/String;ILjava/lang/String;)I

    move-result v4

    .line 665
    .local v4, "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 666
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 667
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 668
    goto :goto_1

    .line 642
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "flags":I
    .end local v3    # "data":Ljava/lang/String;
    .end local v4    # "_hidl_out_result":I
    :sswitch_a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 644
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 645
    .restart local v0    # "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 646
    .restart local v1    # "flags":I
    new-instance v2, Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory$Stub$2;

    invoke-direct {v2, p0, p3}, Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory$Stub$2;-><init>(Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1, v2}, Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory$Stub;->read(Ljava/lang/String;ILvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory$readCallback;)V

    .line 654
    goto :goto_1

    .line 623
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "flags":I
    :sswitch_b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 626
    .restart local v0    # "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 627
    .restart local v1    # "flags":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 628
    .local v2, "cmd":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 629
    .local v9, "param":I
    new-instance v8, Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory$Stub$1;

    invoke-direct {v8, p0, p3}, Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory$Stub$1;-><init>(Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory$Stub;Landroid/os/HwParcel;)V

    move-object v3, p0

    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory$Stub;->ioctrl(Ljava/lang/String;IIILvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory$ioctrlCallback;)V

    .line 637
    goto :goto_1

    .line 610
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "flags":I
    .end local v2    # "cmd":I
    .end local v9    # "param":I
    :sswitch_c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 613
    .restart local v0    # "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 614
    .restart local v1    # "flags":I
    invoke-virtual {p0, v0, v1}, Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory$Stub;->getHandle(Ljava/lang/String;I)Landroid/os/NativeHandle;

    move-result-object v3

    .line 615
    .local v3, "_hidl_out_h":Landroid/os/NativeHandle;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 616
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeNativeHandle(Landroid/os/NativeHandle;)V

    .line 617
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 618
    nop

    .line 787
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "flags":I
    .end local v3    # "_hidl_out_h":Landroid/os/NativeHandle;
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_c
        0x2 -> :sswitch_b
        0x3 -> :sswitch_a
        0x4 -> :sswitch_9
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

    .line 561
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 589
    const-string v0, "vendor.oplus.hardware.handlefactory@1.0::IHandleFactory"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    return-object p0

    .line 592
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

    .line 596
    invoke-virtual {p0, p1}, Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory$Stub;->registerService(Ljava/lang/String;)V

    .line 597
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .locals 0

    .line 551
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 583
    const/4 v0, 0x1

    return v0
.end method
