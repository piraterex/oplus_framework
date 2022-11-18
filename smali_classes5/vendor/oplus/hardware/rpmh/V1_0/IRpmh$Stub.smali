.class public abstract Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub;
.super Landroid/os/HwBinder;
.source "IRpmh.java"

# interfaces
.implements Lvendor/oplus/hardware/rpmh/V1_0/IRpmh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/oplus/hardware/rpmh/V1_0/IRpmh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 771
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 774
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

    .line 787
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 824
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 825
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 826
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 827
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 828
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

    .line 799
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
        0x2ct
        -0x15t
        0x46t
        0x55t
        -0x5bt
        -0x28t
        -0x1bt
        0x32t
        -0x2ct
        -0x2et
        0x13t
        -0x3at
        -0x1t
        -0x5t
        0x6ct
        0x37t
        0x79t
        -0x10t
        0x20t
        0x65t
        -0x3ft
        -0x4bt
        -0x6at
        0x5t
        0x28t
        -0x7ct
        -0x44t
        -0x78t
        -0x74t
        -0x62t
        -0x7at
        -0x8t
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

    .line 779
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.oplus.hardware.rpmh@1.0::IRpmh"

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

    .line 793
    const-string v0, "vendor.oplus.hardware.rpmh@1.0::IRpmh"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 812
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .locals 0

    .line 834
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 836
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

    .line 864
    const-string v0, "android.hidl.base@1.0::IBase"

    const/4 v1, 0x0

    const-string v2, "vendor.oplus.hardware.rpmh@1.0::IRpmh"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 1164
    :sswitch_0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1166
    invoke-virtual {p0}, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub;->notifySyspropsChanged()V

    .line 1167
    goto/16 :goto_1

    .line 1153
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1155
    invoke-virtual {p0}, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1156
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1157
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1158
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1159
    goto/16 :goto_1

    .line 1143
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1145
    invoke-virtual {p0}, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub;->ping()V

    .line 1146
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1147
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1148
    goto/16 :goto_1

    .line 1138
    :sswitch_3
    goto/16 :goto_1

    .line 1130
    :sswitch_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1132
    invoke-virtual {p0}, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub;->setHALInstrumentation()V

    .line 1133
    goto/16 :goto_1

    .line 1096
    :sswitch_5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1098
    invoke-virtual {p0}, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1099
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1101
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 1103
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1104
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1105
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1106
    new-instance v1, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1107
    .local v1, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 1109
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 1110
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1112
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 1116
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1117
    nop

    .line 1107
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1113
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1120
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1122
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1124
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1125
    goto/16 :goto_1

    .line 1085
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1087
    invoke-virtual {p0}, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1088
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1089
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1090
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1091
    goto/16 :goto_1

    .line 1073
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1075
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1076
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 1077
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1078
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1079
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1080
    goto/16 :goto_1

    .line 1062
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1064
    invoke-virtual {p0}, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1065
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1066
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1067
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1068
    goto/16 :goto_1

    .line 1050
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1052
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1053
    .local v0, "type":I
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub;->triggerDumpType(I)I

    move-result v2

    .line 1054
    .local v2, "_hidl_out_ret":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1055
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1056
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1057
    goto/16 :goto_1

    .line 1039
    .end local v0    # "type":I
    .end local v2    # "_hidl_out_ret":I
    :sswitch_a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1041
    invoke-virtual {p0}, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub;->getRawSocSleepStats()Ljava/lang/String;

    move-result-object v0

    .line 1042
    .local v0, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1043
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1044
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1045
    goto/16 :goto_1

    .line 1028
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1030
    invoke-virtual {p0}, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub;->getRawRpmhMasterStats()Ljava/lang/String;

    move-result-object v0

    .line 1031
    .restart local v0    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1032
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1033
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1034
    goto/16 :goto_1

    .line 1017
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {p0}, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub;->getAllApResumeReasonStatistics()Ljava/lang/String;

    move-result-object v0

    .line 1020
    .restart local v0    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1021
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1022
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1023
    goto/16 :goto_1

    .line 1006
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1008
    invoke-virtual {p0}, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub;->getApWakelockSource()Ljava/lang/String;

    move-result-object v0

    .line 1009
    .restart local v0    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1010
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1012
    goto/16 :goto_1

    .line 995
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 997
    invoke-virtual {p0}, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub;->getKernelWakelockSource()Ljava/lang/String;

    move-result-object v0

    .line 998
    .restart local v0    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 999
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1001
    goto/16 :goto_1

    .line 984
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 986
    invoke-virtual {p0}, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub;->getOplusRpmMasterStats()Ljava/lang/String;

    move-result-object v0

    .line 987
    .restart local v0    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 988
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 989
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 990
    goto :goto_1

    .line 973
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_10
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 975
    invoke-virtual {p0}, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub;->getOplusRpmStats()Ljava/lang/String;

    move-result-object v0

    .line 976
    .restart local v0    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 977
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 978
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 979
    goto :goto_1

    .line 958
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_11
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 960
    new-instance v0, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub$7;

    invoke-direct {v0, p0, p3}, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub$7;-><init>(Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub;->getApResumeReasonStatistics(Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$getApResumeReasonStatisticsCallback;)V

    .line 968
    goto :goto_1

    .line 943
    :sswitch_12
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 945
    new-instance v0, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub$6;

    invoke-direct {v0, p0, p3}, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub$6;-><init>(Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub;->getWakeLockProfiler(Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$getWakeLockProfilerCallback;)V

    .line 953
    goto :goto_1

    .line 928
    :sswitch_13
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 930
    new-instance v0, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub$5;

    invoke-direct {v0, p0, p3}, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub$5;-><init>(Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub;->getRpmMasterStats(Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$getRpmMasterStatsCallback;)V

    .line 938
    goto :goto_1

    .line 913
    :sswitch_14
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 915
    new-instance v0, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub$4;

    invoke-direct {v0, p0, p3}, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub$4;-><init>(Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub;->getRpmStatsStatistics(Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$getRpmStatsStatisticsCallback;)V

    .line 923
    goto :goto_1

    .line 898
    :sswitch_15
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 900
    new-instance v0, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub$3;

    invoke-direct {v0, p0, p3}, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub$3;-><init>(Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub;->getRpmhMasterStats(Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$getRpmhMasterStatsCallback;)V

    .line 908
    goto :goto_1

    .line 883
    :sswitch_16
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 885
    new-instance v0, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub$2;

    invoke-direct {v0, p0, p3}, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub$2;-><init>(Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub;->getRpmhStats(Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$getRpmhStatsCallback;)V

    .line 893
    goto :goto_1

    .line 867
    :sswitch_17
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 869
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 870
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub$1;

    invoke-direct {v1, p0, p3}, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub$1;-><init>(Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub;->getProcInfo(Ljava/lang/String;Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$getProcInfoCallback;)V

    .line 878
    nop

    .line 1176
    .end local v0    # "path":Ljava/lang/String;
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_17
        0x2 -> :sswitch_16
        0x3 -> :sswitch_15
        0x4 -> :sswitch_14
        0x5 -> :sswitch_13
        0x6 -> :sswitch_12
        0x7 -> :sswitch_11
        0x8 -> :sswitch_10
        0x9 -> :sswitch_f
        0xa -> :sswitch_e
        0xb -> :sswitch_d
        0xc -> :sswitch_c
        0xd -> :sswitch_b
        0xe -> :sswitch_a
        0xf -> :sswitch_9
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

    .line 818
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 846
    const-string v0, "vendor.oplus.hardware.rpmh@1.0::IRpmh"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 847
    return-object p0

    .line 849
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

    .line 853
    invoke-virtual {p0, p1}, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub;->registerService(Ljava/lang/String;)V

    .line 854
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .locals 0

    .line 808
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 840
    const/4 v0, 0x1

    return v0
.end method
