.class public abstract Lvendor/oplus/hardware/cammidasservice/V1_0/IMIDASService$Stub;
.super Landroid/os/HwBinder;
.source "IMIDASService.java"

# interfaces
.implements Lvendor/oplus/hardware/cammidasservice/V1_0/IMIDASService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/oplus/hardware/cammidasservice/V1_0/IMIDASService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 485
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 488
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

    .line 501
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 538
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 539
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 540
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 541
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 542
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

    .line 513
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
        -0x5ct
        -0x3t
        0x1dt
        0x3bt
        0xet
        -0x22t
        0x4ft
        0x1dt
        -0x5ft
        0x19t
        0x2ct
        -0x37t
        -0x23t
        -0x43t
        -0x51t
        -0x46t
        0x24t
        -0x80t
        -0x61t
        -0x42t
        0x3et
        -0x71t
        -0x35t
        0x4ct
        -0x7ft
        0x5dt
        0x6dt
        0x6t
        0x66t
        -0x76t
        -0x56t
        0x24t
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

    .line 493
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.oplus.hardware.cammidasservice@1.0::IMIDASService"

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

    .line 507
    const-string v0, "vendor.oplus.hardware.cammidasservice@1.0::IMIDASService"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 526
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .locals 0

    .line 548
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 550
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

    .line 578
    const-string v0, "vendor.oplus.hardware.cammidasservice@1.0::IMIDASService"

    const-string v1, "android.hidl.base@1.0::IBase"

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 729
    :sswitch_0
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 731
    invoke-virtual {p0}, Lvendor/oplus/hardware/cammidasservice/V1_0/IMIDASService$Stub;->notifySyspropsChanged()V

    .line 732
    goto/16 :goto_1

    .line 718
    :sswitch_1
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual {p0}, Lvendor/oplus/hardware/cammidasservice/V1_0/IMIDASService$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 721
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 722
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 723
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 724
    goto/16 :goto_1

    .line 708
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 710
    invoke-virtual {p0}, Lvendor/oplus/hardware/cammidasservice/V1_0/IMIDASService$Stub;->ping()V

    .line 711
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 712
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 713
    goto/16 :goto_1

    .line 703
    :sswitch_3
    goto/16 :goto_1

    .line 695
    :sswitch_4
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 697
    invoke-virtual {p0}, Lvendor/oplus/hardware/cammidasservice/V1_0/IMIDASService$Stub;->setHALInstrumentation()V

    .line 698
    goto/16 :goto_1

    .line 661
    :sswitch_5
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 663
    invoke-virtual {p0}, Lvendor/oplus/hardware/cammidasservice/V1_0/IMIDASService$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 664
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 666
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 668
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 669
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 670
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 671
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v2, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 672
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 674
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 675
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 677
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 681
    invoke-virtual {v2, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 682
    nop

    .line 672
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 678
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 685
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 687
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 689
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 690
    goto/16 :goto_1

    .line 650
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 652
    invoke-virtual {p0}, Lvendor/oplus/hardware/cammidasservice/V1_0/IMIDASService$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 653
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 654
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 655
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 656
    goto :goto_1

    .line 638
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 640
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 641
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 642
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/oplus/hardware/cammidasservice/V1_0/IMIDASService$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 643
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 644
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 645
    goto :goto_1

    .line 627
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p0}, Lvendor/oplus/hardware/cammidasservice/V1_0/IMIDASService$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 630
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 631
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 632
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 633
    goto :goto_1

    .line 616
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    invoke-virtual {p0}, Lvendor/oplus/hardware/cammidasservice/V1_0/IMIDASService$Stub;->getExplorerInfo()Ljava/util/ArrayList;

    move-result-object v0

    .line 619
    .local v0, "_hidl_out_explorerInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 620
    invoke-static {p3, v0}, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 621
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 622
    goto :goto_1

    .line 604
    .end local v0    # "_hidl_out_explorerInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;>;"
    :sswitch_a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 606
    new-instance v0, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;

    invoke-direct {v0}, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;-><init>()V

    .line 607
    .local v0, "explorerInfo":Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;
    invoke-virtual {v0, p2}, Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 608
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/cammidasservice/V1_0/IMIDASService$Stub;->setExplorerInfo(Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;)V

    .line 609
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 610
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 611
    goto :goto_1

    .line 593
    .end local v0    # "explorerInfo":Lvendor/oplus/hardware/cammidasservice/V1_0/ExplorerInfo;
    :sswitch_b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p0}, Lvendor/oplus/hardware/cammidasservice/V1_0/IMIDASService$Stub;->getPowerFactor()Ljava/util/ArrayList;

    move-result-object v0

    .line 596
    .local v0, "_hidl_out_powerfactor":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 597
    invoke-static {p3, v0}, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 598
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 599
    goto :goto_1

    .line 581
    .end local v0    # "_hidl_out_powerfactor":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;>;"
    :sswitch_c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 583
    new-instance v0, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;

    invoke-direct {v0}, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;-><init>()V

    .line 584
    .local v0, "powerfactor":Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;
    invoke-virtual {v0, p2}, Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;->readFromParcel(Landroid/os/HwParcel;)V

    .line 585
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/cammidasservice/V1_0/IMIDASService$Stub;->setPowerFactor(Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;)V

    .line 586
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 587
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 588
    nop

    .line 741
    .end local v0    # "powerfactor":Lvendor/oplus/hardware/cammidasservice/V1_0/PowerFactor;
    :goto_1
    return-void

    nop

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

    .line 532
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 560
    const-string v0, "vendor.oplus.hardware.cammidasservice@1.0::IMIDASService"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    return-object p0

    .line 563
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

    .line 567
    invoke-virtual {p0, p1}, Lvendor/oplus/hardware/cammidasservice/V1_0/IMIDASService$Stub;->registerService(Ljava/lang/String;)V

    .line 568
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .locals 0

    .line 522
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/oplus/hardware/cammidasservice/V1_0/IMIDASService$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 554
    const/4 v0, 0x1

    return v0
.end method
