.class public abstract Landroid/hardware/gnss/V1_0/IGnssGeofenceCallback$Stub;
.super Landroid/os/HwBinder;
.source "IGnssGeofenceCallback.java"

# interfaces
.implements Landroid/hardware/gnss/V1_0/IGnssGeofenceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IGnssGeofenceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 795
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 798
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

    .line 811
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 848
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 849
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 850
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 851
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 852
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

    .line 823
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
        -0x1at
        -0x23t
        0xct
        -0x7ct
        0x16t
        -0x1bt
        0x23t
        -0x55t
        -0x64t
        -0x43t
        0x14t
        -0x2bt
        0x6at
        -0x4at
        -0x10t
        0x16t
        0x48t
        0x1at
        -0x76t
        -0x11t
        0x3bt
        -0x38t
        -0x59t
        0x50t
        0x5t
        0x11t
        0x22t
        -0x2dt
        0x10t
        0x75t
        -0xat
        -0x39t
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

    .line 803
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.gnss@1.0::IGnssGeofenceCallback"

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

    .line 817
    const-string v0, "android.hardware.gnss@1.0::IGnssGeofenceCallback"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 836
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .locals 0

    .line 858
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 860
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 15
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 888
    move-object v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    const-string v0, "android.hardware.gnss@1.0::IGnssGeofenceCallback"

    const-string v1, "android.hidl.base@1.0::IBase"

    const/4 v9, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 1069
    :sswitch_0
    invoke-virtual {v7, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1071
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnssGeofenceCallback$Stub;->notifySyspropsChanged()V

    .line 1072
    goto/16 :goto_1

    .line 1058
    :sswitch_1
    invoke-virtual {v7, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1060
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnssGeofenceCallback$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1061
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1062
    invoke-virtual {v0, v8}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1063
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1064
    goto/16 :goto_1

    .line 1048
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {v7, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1050
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnssGeofenceCallback$Stub;->ping()V

    .line 1051
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1052
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1053
    goto/16 :goto_1

    .line 1043
    :sswitch_3
    goto/16 :goto_1

    .line 1035
    :sswitch_4
    invoke-virtual {v7, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnssGeofenceCallback$Stub;->setHALInstrumentation()V

    .line 1038
    goto/16 :goto_1

    .line 1001
    :sswitch_5
    invoke-virtual {v7, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1003
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnssGeofenceCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1004
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1006
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1008
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1009
    .local v2, "_hidl_vec_size":I
    const-wide/16 v3, 0x8

    invoke-virtual {v1, v3, v4, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1010
    const-wide/16 v3, 0xc

    invoke-virtual {v1, v3, v4, v9}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1011
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1012
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 1014
    mul-int/lit8 v5, v4, 0x20

    int-to-long v9, v5

    .line 1015
    .local v9, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 1017
    .local v5, "_hidl_array_item_1":[B
    if-eqz v5, :cond_0

    array-length v11, v5

    const/16 v12, 0x20

    if-ne v11, v12, :cond_0

    .line 1021
    invoke-virtual {v3, v9, v10, v5}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1022
    nop

    .line 1012
    .end local v5    # "_hidl_array_item_1":[B
    .end local v9    # "_hidl_array_offset_1":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1018
    .restart local v5    # "_hidl_array_item_1":[B
    .restart local v9    # "_hidl_array_offset_1":J
    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Array element is not of the expected length"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1025
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_item_1":[B
    .end local v9    # "_hidl_array_offset_1":J
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1027
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1029
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1030
    goto/16 :goto_1

    .line 990
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {v7, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 992
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnssGeofenceCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 993
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 994
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 995
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 996
    goto/16 :goto_1

    .line 978
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {v7, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 980
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 981
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 982
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/gnss/V1_0/IGnssGeofenceCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 983
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 984
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 985
    goto/16 :goto_1

    .line 967
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {v7, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 969
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnssGeofenceCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 970
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 971
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 972
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 973
    goto/16 :goto_1

    .line 955
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 957
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 958
    .local v0, "geofenceId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 959
    .local v1, "status":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/gnss/V1_0/IGnssGeofenceCallback$Stub;->gnssGeofenceResumeCb(II)V

    .line 960
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 961
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 962
    goto/16 :goto_1

    .line 943
    .end local v0    # "geofenceId":I
    .end local v1    # "status":I
    :sswitch_a
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 945
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 946
    .restart local v0    # "geofenceId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 947
    .restart local v1    # "status":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/gnss/V1_0/IGnssGeofenceCallback$Stub;->gnssGeofencePauseCb(II)V

    .line 948
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 949
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 950
    goto :goto_1

    .line 931
    .end local v0    # "geofenceId":I
    .end local v1    # "status":I
    :sswitch_b
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 933
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 934
    .restart local v0    # "geofenceId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 935
    .restart local v1    # "status":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/gnss/V1_0/IGnssGeofenceCallback$Stub;->gnssGeofenceRemoveCb(II)V

    .line 936
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 937
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 938
    goto :goto_1

    .line 919
    .end local v0    # "geofenceId":I
    .end local v1    # "status":I
    :sswitch_c
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 921
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 922
    .restart local v0    # "geofenceId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 923
    .restart local v1    # "status":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/gnss/V1_0/IGnssGeofenceCallback$Stub;->gnssGeofenceAddCb(II)V

    .line 924
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 925
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 926
    goto :goto_1

    .line 906
    .end local v0    # "geofenceId":I
    .end local v1    # "status":I
    :sswitch_d
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 908
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 909
    .local v0, "status":I
    new-instance v1, Landroid/hardware/gnss/V1_0/GnssLocation;

    invoke-direct {v1}, Landroid/hardware/gnss/V1_0/GnssLocation;-><init>()V

    .line 910
    .local v1, "lastLocation":Landroid/hardware/gnss/V1_0/GnssLocation;
    invoke-virtual {v1, v7}, Landroid/hardware/gnss/V1_0/GnssLocation;->readFromParcel(Landroid/os/HwParcel;)V

    .line 911
    invoke-virtual {p0, v0, v1}, Landroid/hardware/gnss/V1_0/IGnssGeofenceCallback$Stub;->gnssGeofenceStatusCb(ILandroid/hardware/gnss/V1_0/GnssLocation;)V

    .line 912
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 913
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 914
    goto :goto_1

    .line 891
    .end local v0    # "status":I
    .end local v1    # "lastLocation":Landroid/hardware/gnss/V1_0/GnssLocation;
    :sswitch_e
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 893
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 894
    .local v10, "geofenceId":I
    new-instance v0, Landroid/hardware/gnss/V1_0/GnssLocation;

    invoke-direct {v0}, Landroid/hardware/gnss/V1_0/GnssLocation;-><init>()V

    move-object v11, v0

    .line 895
    .local v11, "location":Landroid/hardware/gnss/V1_0/GnssLocation;
    invoke-virtual {v11, v7}, Landroid/hardware/gnss/V1_0/GnssLocation;->readFromParcel(Landroid/os/HwParcel;)V

    .line 896
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 897
    .local v12, "transition":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v13

    .line 898
    .local v13, "timestamp":J
    move-object v0, p0

    move v1, v10

    move-object v2, v11

    move v3, v12

    move-wide v4, v13

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/gnss/V1_0/IGnssGeofenceCallback$Stub;->gnssGeofenceTransitionCb(ILandroid/hardware/gnss/V1_0/GnssLocation;IJ)V

    .line 899
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 900
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 901
    nop

    .line 1081
    .end local v10    # "geofenceId":I
    .end local v11    # "location":Landroid/hardware/gnss/V1_0/GnssLocation;
    .end local v12    # "transition":I
    .end local v13    # "timestamp":J
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_e
        0x2 -> :sswitch_d
        0x3 -> :sswitch_c
        0x4 -> :sswitch_b
        0x5 -> :sswitch_a
        0x6 -> :sswitch_9
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

    .line 842
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 870
    const-string v0, "android.hardware.gnss@1.0::IGnssGeofenceCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 871
    return-object p0

    .line 873
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

    .line 877
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/V1_0/IGnssGeofenceCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 878
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .locals 0

    .line 832
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnssGeofenceCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 864
    const/4 v0, 0x1

    return v0
.end method
