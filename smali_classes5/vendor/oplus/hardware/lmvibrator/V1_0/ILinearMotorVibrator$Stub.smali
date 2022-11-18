.class public abstract Lvendor/oplus/hardware/lmvibrator/V1_0/ILinearMotorVibrator$Stub;
.super Landroid/os/HwBinder;
.source "ILinearMotorVibrator.java"

# interfaces
.implements Lvendor/oplus/hardware/lmvibrator/V1_0/ILinearMotorVibrator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/oplus/hardware/lmvibrator/V1_0/ILinearMotorVibrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 600
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 603
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

    .line 616
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 653
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 654
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 655
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 656
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 657
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

    .line 628
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
        -0x5et
        -0x79t
        0x42t
        0x72t
        0x26t
        -0x57t
        0x53t
        -0x4ft
        -0x77t
        -0x6ct
        -0x49t
        0x76t
        -0x7at
        -0x9t
        0x33t
        0x29t
        0x70t
        -0x38t
        -0x74t
        0x7et
        -0x3ct
        -0x21t
        0x44t
        0x1bt
        0x4et
        0x1ft
        0x69t
        -0x7t
        0x2ct
        0x4ft
        -0x25t
        -0x52t
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

    .line 608
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.oplus.hardware.lmvibrator@1.0::ILinearMotorVibrator"

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

    .line 622
    const-string v0, "vendor.oplus.hardware.lmvibrator@1.0::ILinearMotorVibrator"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 641
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .locals 0

    .line 663
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 665
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

    .line 693
    const-string v0, "android.hidl.base@1.0::IBase"

    const-string v1, "vendor.oplus.hardware.lmvibrator@1.0::ILinearMotorVibrator"

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 909
    :sswitch_0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 911
    invoke-virtual {p0}, Lvendor/oplus/hardware/lmvibrator/V1_0/ILinearMotorVibrator$Stub;->notifySyspropsChanged()V

    .line 912
    goto/16 :goto_1

    .line 898
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 900
    invoke-virtual {p0}, Lvendor/oplus/hardware/lmvibrator/V1_0/ILinearMotorVibrator$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 901
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 902
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 903
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 904
    goto/16 :goto_1

    .line 888
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 890
    invoke-virtual {p0}, Lvendor/oplus/hardware/lmvibrator/V1_0/ILinearMotorVibrator$Stub;->ping()V

    .line 891
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 892
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 893
    goto/16 :goto_1

    .line 883
    :sswitch_3
    goto/16 :goto_1

    .line 875
    :sswitch_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 877
    invoke-virtual {p0}, Lvendor/oplus/hardware/lmvibrator/V1_0/ILinearMotorVibrator$Stub;->setHALInstrumentation()V

    .line 878
    goto/16 :goto_1

    .line 841
    :sswitch_5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 843
    invoke-virtual {p0}, Lvendor/oplus/hardware/lmvibrator/V1_0/ILinearMotorVibrator$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 844
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 846
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 848
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 849
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 850
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 851
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v2, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 852
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 854
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 855
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 857
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 861
    invoke-virtual {v2, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 862
    nop

    .line 852
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 858
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 865
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 867
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 869
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 870
    goto/16 :goto_1

    .line 830
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 832
    invoke-virtual {p0}, Lvendor/oplus/hardware/lmvibrator/V1_0/ILinearMotorVibrator$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 833
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 834
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 835
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 836
    goto/16 :goto_1

    .line 818
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 820
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 821
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 822
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/oplus/hardware/lmvibrator/V1_0/ILinearMotorVibrator$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 823
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 824
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 825
    goto/16 :goto_1

    .line 807
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 809
    invoke-virtual {p0}, Lvendor/oplus/hardware/lmvibrator/V1_0/ILinearMotorVibrator$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 810
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 811
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 812
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 813
    goto/16 :goto_1

    .line 796
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 798
    invoke-virtual {p0}, Lvendor/oplus/hardware/lmvibrator/V1_0/ILinearMotorVibrator$Stub;->getVibratorTouchStyle()I

    move-result v0

    .line 799
    .local v0, "_hidl_out_rc":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 800
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 801
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 802
    goto/16 :goto_1

    .line 785
    .end local v0    # "_hidl_out_rc":I
    :sswitch_a
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 787
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 788
    .local v0, "touchstyle":I
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/lmvibrator/V1_0/ILinearMotorVibrator$Stub;->setVibratorTouchStyle(I)V

    .line 789
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 790
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 791
    goto/16 :goto_1

    .line 774
    .end local v0    # "touchstyle":I
    :sswitch_b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 776
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 777
    .local v0, "buffer":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/lmvibrator/V1_0/ILinearMotorVibrator$Stub;->write_haptic_audio(Ljava/lang/String;)V

    .line 778
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 779
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 780
    goto/16 :goto_1

    .line 763
    .end local v0    # "buffer":Ljava/lang/String;
    :sswitch_c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 765
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 766
    .local v0, "gunmode":I
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/lmvibrator/V1_0/ILinearMotorVibrator$Stub;->write_gun_mode(I)V

    .line 767
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 768
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 769
    goto :goto_1

    .line 752
    .end local v0    # "gunmode":I
    :sswitch_d
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 754
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 755
    .local v0, "bulletNum":I
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/lmvibrator/V1_0/ILinearMotorVibrator$Stub;->write_bullet_num(I)V

    .line 756
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 757
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 758
    goto :goto_1

    .line 741
    .end local v0    # "bulletNum":I
    :sswitch_e
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 743
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 744
    .local v0, "vmax":I
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/lmvibrator/V1_0/ILinearMotorVibrator$Stub;->setVmax(I)V

    .line 745
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 746
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 747
    goto :goto_1

    .line 730
    .end local v0    # "vmax":I
    :sswitch_f
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 732
    invoke-virtual {p0}, Lvendor/oplus/hardware/lmvibrator/V1_0/ILinearMotorVibrator$Stub;->getStatus()I

    move-result v0

    .line 733
    .local v0, "_hidl_out_rc":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 734
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 735
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 736
    goto :goto_1

    .line 719
    .end local v0    # "_hidl_out_rc":I
    :sswitch_10
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 721
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 722
    .local v0, "guntype":I
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/lmvibrator/V1_0/ILinearMotorVibrator$Stub;->write_gun_type(I)V

    .line 723
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 724
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 725
    goto :goto_1

    .line 709
    .end local v0    # "guntype":I
    :sswitch_11
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 711
    invoke-virtual {p0}, Lvendor/oplus/hardware/lmvibrator/V1_0/ILinearMotorVibrator$Stub;->linearmotorVibratorOff()V

    .line 712
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 713
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 714
    goto :goto_1

    .line 696
    :sswitch_12
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 699
    .local v0, "waveform_id":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v1

    .line 700
    .local v1, "amplitude":S
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 701
    .local v3, "is_rtp_mode":Z
    invoke-virtual {p0, v0, v1, v3}, Lvendor/oplus/hardware/lmvibrator/V1_0/ILinearMotorVibrator$Stub;->linearmotorVibratorOn(ISZ)V

    .line 702
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 703
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 704
    nop

    .line 921
    .end local v0    # "waveform_id":I
    .end local v1    # "amplitude":S
    .end local v3    # "is_rtp_mode":Z
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_11
        0x3 -> :sswitch_10
        0x4 -> :sswitch_f
        0x5 -> :sswitch_e
        0x6 -> :sswitch_d
        0x7 -> :sswitch_c
        0x8 -> :sswitch_b
        0x9 -> :sswitch_a
        0xa -> :sswitch_9
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

    .line 647
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 675
    const-string v0, "vendor.oplus.hardware.lmvibrator@1.0::ILinearMotorVibrator"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    return-object p0

    .line 678
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

    .line 682
    invoke-virtual {p0, p1}, Lvendor/oplus/hardware/lmvibrator/V1_0/ILinearMotorVibrator$Stub;->registerService(Ljava/lang/String;)V

    .line 683
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .locals 0

    .line 637
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/oplus/hardware/lmvibrator/V1_0/ILinearMotorVibrator$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 669
    const/4 v0, 0x1

    return v0
.end method
