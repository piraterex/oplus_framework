.class public abstract Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor$Stub;
.super Landroid/os/HwBinder;
.source "IPowerMonitor.java"

# interfaces
.implements Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 597
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 600
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

    .line 613
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 650
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 651
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 652
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 653
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 654
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

    .line 625
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
        0x2bt
        -0x64t
        0x30t
        -0x52t
        0x28t
        0x29t
        0x53t
        -0x44t
        0x71t
        0x6ct
        -0x1ft
        -0x2et
        -0x45t
        0x67t
        -0x27t
        -0x7et
        -0x13t
        0x14t
        0x7bt
        0x3ct
        0x58t
        -0x65t
        -0x47t
        -0x24t
        -0x65t
        -0x69t
        -0x30t
        0x25t
        -0x33t
        0x67t
        0x29t
        -0xct
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

    .line 605
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.oplus.hardware.power.powermonitor@1.0::IPowerMonitor"

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

    .line 619
    const-string v0, "vendor.oplus.hardware.power.powermonitor@1.0::IPowerMonitor"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 638
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .locals 0

    .line 660
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 662
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

    .line 690
    const-string v0, "android.hidl.base@1.0::IBase"

    const-string v1, "vendor.oplus.hardware.power.powermonitor@1.0::IPowerMonitor"

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 897
    :sswitch_0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 899
    invoke-virtual {p0}, Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor$Stub;->notifySyspropsChanged()V

    .line 900
    goto/16 :goto_1

    .line 886
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 888
    invoke-virtual {p0}, Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 889
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 890
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 891
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 892
    goto/16 :goto_1

    .line 876
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 878
    invoke-virtual {p0}, Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor$Stub;->ping()V

    .line 879
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 880
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 881
    goto/16 :goto_1

    .line 871
    :sswitch_3
    goto/16 :goto_1

    .line 863
    :sswitch_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 865
    invoke-virtual {p0}, Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor$Stub;->setHALInstrumentation()V

    .line 866
    goto/16 :goto_1

    .line 829
    :sswitch_5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 831
    invoke-virtual {p0}, Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 832
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 834
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 836
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 837
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 838
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 839
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v2, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 840
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 842
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 843
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 845
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 849
    invoke-virtual {v2, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 850
    nop

    .line 840
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 846
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 853
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 855
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 857
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 858
    goto/16 :goto_1

    .line 818
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 820
    invoke-virtual {p0}, Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 821
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 822
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 823
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 824
    goto/16 :goto_1

    .line 806
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 808
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 809
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 810
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 811
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 812
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 813
    goto/16 :goto_1

    .line 795
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 797
    invoke-virtual {p0}, Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 798
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 799
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 800
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 801
    goto/16 :goto_1

    .line 784
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 786
    invoke-virtual {p0}, Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor$Stub;->getAtdLevel()Ljava/lang/String;

    move-result-object v0

    .line 787
    .local v0, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 788
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 789
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 790
    goto/16 :goto_1

    .line 772
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_a
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 774
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 775
    .local v0, "type":I
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor$Stub;->setAtdLevel(I)I

    move-result v1

    .line 776
    .local v1, "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 777
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 778
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 779
    goto/16 :goto_1

    .line 761
    .end local v0    # "type":I
    .end local v1    # "_hidl_out_result":I
    :sswitch_b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 763
    invoke-virtual {p0}, Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor$Stub;->getAtdEnable()Ljava/lang/String;

    move-result-object v0

    .line 764
    .local v0, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 765
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 766
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 767
    goto :goto_1

    .line 749
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 752
    .local v0, "type":I
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor$Stub;->setAtdEnable(I)I

    move-result v1

    .line 753
    .restart local v1    # "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 754
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 755
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 756
    goto :goto_1

    .line 738
    .end local v0    # "type":I
    .end local v1    # "_hidl_out_result":I
    :sswitch_d
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 740
    invoke-virtual {p0}, Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor$Stub;->readAtdTask()Ljava/lang/String;

    move-result-object v0

    .line 741
    .local v0, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 742
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 743
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 744
    goto :goto_1

    .line 726
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_e
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 729
    .local v0, "buffer":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor$Stub;->writeHoraeQmi(Ljava/lang/String;)I

    move-result v1

    .line 730
    .restart local v1    # "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 731
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 732
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 733
    goto :goto_1

    .line 715
    .end local v0    # "buffer":Ljava/lang/String;
    .end local v1    # "_hidl_out_result":I
    :sswitch_f
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 717
    invoke-virtual {p0}, Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor$Stub;->readEdTaskEnabled()Ljava/lang/String;

    move-result-object v0

    .line 718
    .local v0, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 719
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 720
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 721
    goto :goto_1

    .line 704
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_10
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 706
    invoke-virtual {p0}, Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor$Stub;->disableEdTask()I

    move-result v0

    .line 707
    .local v0, "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 708
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 709
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 710
    goto :goto_1

    .line 693
    .end local v0    # "_hidl_out_result":I
    :sswitch_11
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    invoke-virtual {p0}, Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor$Stub;->enableEdTask()I

    move-result v0

    .line 696
    .restart local v0    # "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 697
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 698
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 699
    nop

    .line 909
    .end local v0    # "_hidl_out_result":I
    :goto_1
    return-void

    nop

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

    .line 644
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 672
    const-string v0, "vendor.oplus.hardware.power.powermonitor@1.0::IPowerMonitor"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    return-object p0

    .line 675
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

    .line 679
    invoke-virtual {p0, p1}, Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor$Stub;->registerService(Ljava/lang/String;)V

    .line 680
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .locals 0

    .line 634
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 666
    const/4 v0, 0x1

    return v0
.end method
