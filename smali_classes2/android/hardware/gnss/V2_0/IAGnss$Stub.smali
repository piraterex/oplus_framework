.class public abstract Landroid/hardware/gnss/V2_0/IAGnss$Stub;
.super Landroid/os/HwBinder;
.source "IAGnss.java"

# interfaces
.implements Landroid/hardware/gnss/V2_0/IAGnss;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V2_0/IAGnss;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 602
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 605
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

    .line 618
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 655
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 656
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 657
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 658
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 659
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

    .line 630
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
        0x7ft
        0x46t
        0xet
        0x79t
        0x5ft
        0x5dt
        0x1et
        -0x2bt
        -0x1dt
        0x78t
        -0x6dt
        0x5ft
        -0x68t
        -0x3at
        -0x25t
        0x4dt
        0x39t
        0x49t
        0x7dt
        -0x17t
        -0x78t
        -0x52t
        -0xft
        -0x4ct
        -0x3et
        -0x5ct
        -0x60t
        0x7at
        0x6ct
        0x40t
        0x3t
        -0x6et
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

    .line 610
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.gnss@2.0::IAGnss"

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

    .line 624
    const-string v0, "android.hardware.gnss@2.0::IAGnss"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 643
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .locals 0

    .line 665
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 667
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

    .line 695
    const-string v0, "android.hardware.gnss@2.0::IAGnss"

    const-string v1, "android.hidl.base@1.0::IBase"

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 861
    :sswitch_0
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 863
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IAGnss$Stub;->notifySyspropsChanged()V

    .line 864
    goto/16 :goto_1

    .line 850
    :sswitch_1
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 852
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IAGnss$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 853
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 854
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 855
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 856
    goto/16 :goto_1

    .line 840
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IAGnss$Stub;->ping()V

    .line 843
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 844
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 845
    goto/16 :goto_1

    .line 835
    :sswitch_3
    goto/16 :goto_1

    .line 827
    :sswitch_4
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 829
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IAGnss$Stub;->setHALInstrumentation()V

    .line 830
    goto/16 :goto_1

    .line 793
    :sswitch_5
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 795
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IAGnss$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 796
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 798
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 800
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 801
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 802
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 803
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v2, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 804
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 806
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 807
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 809
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 813
    invoke-virtual {v2, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 814
    nop

    .line 804
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 810
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 817
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 819
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 821
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 822
    goto/16 :goto_1

    .line 782
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IAGnss$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 785
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 786
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 787
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 788
    goto/16 :goto_1

    .line 770
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 772
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 773
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 774
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/gnss/V2_0/IAGnss$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 775
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 776
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 777
    goto/16 :goto_1

    .line 759
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 761
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IAGnss$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 762
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 763
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 764
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 765
    goto :goto_1

    .line 745
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 747
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    .line 748
    .local v0, "networkHandle":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 749
    .local v3, "apn":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v4

    .line 750
    .local v4, "apnIpType":B
    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/hardware/gnss/V2_0/IAGnss$Stub;->dataConnOpen(JLjava/lang/String;B)Z

    move-result v5

    .line 751
    .local v5, "_hidl_out_success":Z
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 752
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 753
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 754
    goto :goto_1

    .line 731
    .end local v0    # "networkHandle":J
    .end local v3    # "apn":Ljava/lang/String;
    .end local v4    # "apnIpType":B
    .end local v5    # "_hidl_out_success":Z
    :sswitch_a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 733
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v0

    .line 734
    .local v0, "type":B
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 735
    .local v1, "hostname":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 736
    .local v3, "port":I
    invoke-virtual {p0, v0, v1, v3}, Landroid/hardware/gnss/V2_0/IAGnss$Stub;->setServer(BLjava/lang/String;I)Z

    move-result v4

    .line 737
    .local v4, "_hidl_out_success":Z
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 738
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 739
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 740
    goto :goto_1

    .line 720
    .end local v0    # "type":B
    .end local v1    # "hostname":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v4    # "_hidl_out_success":Z
    :sswitch_b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 722
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IAGnss$Stub;->dataConnFailed()Z

    move-result v0

    .line 723
    .local v0, "_hidl_out_success":Z
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 724
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 725
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 726
    goto :goto_1

    .line 709
    .end local v0    # "_hidl_out_success":Z
    :sswitch_c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 711
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IAGnss$Stub;->dataConnClosed()Z

    move-result v0

    .line 712
    .restart local v0    # "_hidl_out_success":Z
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 713
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 714
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 715
    goto :goto_1

    .line 698
    .end local v0    # "_hidl_out_success":Z
    :sswitch_d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 700
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V2_0/IAGnssCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V2_0/IAGnssCallback;

    move-result-object v0

    .line 701
    .local v0, "callback":Landroid/hardware/gnss/V2_0/IAGnssCallback;
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_0/IAGnss$Stub;->setCallback(Landroid/hardware/gnss/V2_0/IAGnssCallback;)V

    .line 702
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 703
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 704
    nop

    .line 873
    .end local v0    # "callback":Landroid/hardware/gnss/V2_0/IAGnssCallback;
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_d
        0x2 -> :sswitch_c
        0x3 -> :sswitch_b
        0x4 -> :sswitch_a
        0x5 -> :sswitch_9
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

    .line 649
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 677
    const-string v0, "android.hardware.gnss@2.0::IAGnss"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    return-object p0

    .line 680
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

    .line 684
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/V2_0/IAGnss$Stub;->registerService(Ljava/lang/String;)V

    .line 685
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .locals 0

    .line 639
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IAGnss$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 671
    const/4 v0, 0x1

    return v0
.end method
