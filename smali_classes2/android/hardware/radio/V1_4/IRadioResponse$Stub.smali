.class public abstract Landroid/hardware/radio/V1_4/IRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "IRadioResponse.java"

# interfaces
.implements Landroid/hardware/radio/V1_4/IRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_4/IRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 3215
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 3218
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

    .line 3235
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 3276
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 3277
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 3278
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 3279
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 3280
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

    .line 3247
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

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

    new-array v2, v2, [B

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
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

    :array_1
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

    :array_2
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

    :array_3
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

    :array_4
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

    :array_5
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
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3223
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.radio@1.4::IRadioResponse"

    const-string v2, "android.hardware.radio@1.3::IRadioResponse"

    const-string v3, "android.hardware.radio@1.2::IRadioResponse"

    const-string v4, "android.hardware.radio@1.1::IRadioResponse"

    const-string v5, "android.hardware.radio@1.0::IRadioResponse"

    const-string v6, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 3241
    const-string v0, "android.hardware.radio@1.4::IRadioResponse"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 3264
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .locals 0

    .line 3286
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 3288
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

    .line 3316
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v0, "android.hardware.radio@1.3::IRadioResponse"

    const-string v1, "android.hardware.radio@1.1::IRadioResponse"

    const/4 v2, 0x0

    const-string v3, "android.hidl.base@1.0::IBase"

    const-string v4, "android.hardware.radio@1.2::IRadioResponse"

    const-string v5, "android.hardware.radio@1.4::IRadioResponse"

    const-string v6, "android.hardware.radio@1.0::IRadioResponse"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 5129
    :sswitch_0
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5131
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->notifySyspropsChanged()V

    .line 5132
    goto/16 :goto_1

    .line 5118
    :sswitch_1
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5120
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 5121
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5122
    invoke-virtual {v0, v9}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 5123
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5124
    goto/16 :goto_1

    .line 5108
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5110
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->ping()V

    .line 5111
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5112
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5113
    goto/16 :goto_1

    .line 5103
    :sswitch_3
    goto/16 :goto_1

    .line 5095
    :sswitch_4
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5097
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setHALInstrumentation()V

    .line 5098
    goto/16 :goto_1

    .line 5061
    :sswitch_5
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5063
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 5064
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5066
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 5068
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5069
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 5070
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 5071
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v2, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 5072
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 5074
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 5075
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 5077
    .local v10, "_hidl_array_item_1":[B
    if-eqz v10, :cond_0

    array-length v11, v10

    const/16 v12, 0x20

    if-ne v11, v12, :cond_0

    .line 5081
    invoke-virtual {v2, v5, v6, v10}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 5082
    nop

    .line 5072
    .end local v5    # "_hidl_array_offset_1":J
    .end local v10    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5078
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v10    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Array element is not of the expected length"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 5085
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v10    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 5087
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 5089
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5090
    goto/16 :goto_1

    .line 5050
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5052
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 5053
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5054
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5055
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5056
    goto/16 :goto_1

    .line 5038
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5040
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 5041
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 5042
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 5043
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5044
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5045
    goto/16 :goto_1

    .line 5027
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5029
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 5030
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5031
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 5032
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5033
    goto/16 :goto_1

    .line 5015
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5017
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5018
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5019
    new-instance v1, Landroid/hardware/radio/V1_4/SignalStrength;

    invoke-direct {v1}, Landroid/hardware/radio/V1_4/SignalStrength;-><init>()V

    .line 5020
    .local v1, "signalStrength":Landroid/hardware/radio/V1_4/SignalStrength;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_4/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5021
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getSignalStrengthResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/SignalStrength;)V

    .line 5022
    goto/16 :goto_1

    .line 5002
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "signalStrength":Landroid/hardware/radio/V1_4/SignalStrength;
    :sswitch_a
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5004
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5005
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5006
    new-instance v1, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;

    invoke-direct {v1}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;-><init>()V

    .line 5007
    .local v1, "carriers":Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5008
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5009
    .local v2, "multiSimPolicy":I
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getAllowedCarriersResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;I)V

    .line 5010
    goto/16 :goto_1

    .line 4992
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "carriers":Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;
    .end local v2    # "multiSimPolicy":I
    :sswitch_b
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4994
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4995
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4996
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setAllowedCarriersResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4997
    goto/16 :goto_1

    .line 4980
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_c
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4982
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4983
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4984
    new-instance v1, Landroid/hardware/radio/V1_4/SetupDataCallResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_4/SetupDataCallResult;-><init>()V

    .line 4985
    .local v1, "dcResponse":Landroid/hardware/radio/V1_4/SetupDataCallResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_4/SetupDataCallResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4986
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setupDataCallResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/SetupDataCallResult;)V

    .line 4987
    goto/16 :goto_1

    .line 4969
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "dcResponse":Landroid/hardware/radio/V1_4/SetupDataCallResult;
    :sswitch_d
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4971
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4972
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4973
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_4/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4974
    .local v1, "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/SetupDataCallResult;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getDataCallListResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4975
    goto/16 :goto_1

    .line 4959
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/SetupDataCallResult;>;"
    :sswitch_e
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4961
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4962
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4963
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setPreferredNetworkTypeBitmapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4964
    goto/16 :goto_1

    .line 4948
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_f
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4950
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4951
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4952
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4953
    .local v1, "networkTypeBitmap":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getPreferredNetworkTypeBitmapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4954
    goto/16 :goto_1

    .line 4936
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "networkTypeBitmap":I
    :sswitch_10
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4938
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4939
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4940
    new-instance v1, Landroid/hardware/radio/V1_4/CardStatus;

    invoke-direct {v1}, Landroid/hardware/radio/V1_4/CardStatus;-><init>()V

    .line 4941
    .local v1, "cardStatus":Landroid/hardware/radio/V1_4/CardStatus;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_4/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4942
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getIccCardStatusResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/CardStatus;)V

    .line 4943
    goto/16 :goto_1

    .line 4924
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "cardStatus":Landroid/hardware/radio/V1_4/CardStatus;
    :sswitch_11
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4926
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4927
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4928
    new-instance v1, Landroid/hardware/radio/V1_4/DataRegStateResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_4/DataRegStateResult;-><init>()V

    .line 4929
    .local v1, "dataRegResponse":Landroid/hardware/radio/V1_4/DataRegStateResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_4/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4930
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getDataRegistrationStateResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/DataRegStateResult;)V

    .line 4931
    goto/16 :goto_1

    .line 4913
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "dataRegResponse":Landroid/hardware/radio/V1_4/DataRegStateResult;
    :sswitch_12
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4915
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4916
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4917
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_4/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4918
    .local v1, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/CellInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getCellInfoListResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4919
    goto/16 :goto_1

    .line 4903
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/CellInfo;>;"
    :sswitch_13
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4905
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4906
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4907
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->startNetworkScanResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4908
    goto/16 :goto_1

    .line 4893
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_14
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4895
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4896
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4897
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->emergencyDialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4898
    goto/16 :goto_1

    .line 4882
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_15
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4884
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4885
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4886
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4887
    .local v1, "isEnabled":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getModemStackStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 4888
    goto/16 :goto_1

    .line 4872
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "isEnabled":Z
    :sswitch_16
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4874
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4875
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4876
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->enableModemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4877
    goto/16 :goto_1

    .line 4862
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_17
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4864
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4865
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4866
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setSystemSelectionChannelsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4867
    goto/16 :goto_1

    .line 4850
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_18
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4852
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4853
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4854
    new-instance v1, Landroid/hardware/radio/V1_2/DataRegStateResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_2/DataRegStateResult;-><init>()V

    .line 4855
    .local v1, "dataRegResponse":Landroid/hardware/radio/V1_2/DataRegStateResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_2/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4856
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getDataRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/DataRegStateResult;)V

    .line 4857
    goto/16 :goto_1

    .line 4838
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "dataRegResponse":Landroid/hardware/radio/V1_2/DataRegStateResult;
    :sswitch_19
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4840
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4841
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4842
    new-instance v1, Landroid/hardware/radio/V1_2/VoiceRegStateResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_2/VoiceRegStateResult;-><init>()V

    .line 4843
    .local v1, "voiceRegResponse":Landroid/hardware/radio/V1_2/VoiceRegStateResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4844
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getVoiceRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/VoiceRegStateResult;)V

    .line 4845
    goto/16 :goto_1

    .line 4826
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "voiceRegResponse":Landroid/hardware/radio/V1_2/VoiceRegStateResult;
    :sswitch_1a
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4828
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4829
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4830
    new-instance v1, Landroid/hardware/radio/V1_2/SignalStrength;

    invoke-direct {v1}, Landroid/hardware/radio/V1_2/SignalStrength;-><init>()V

    .line 4831
    .local v1, "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_2/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4832
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getSignalStrengthResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/SignalStrength;)V

    .line 4833
    goto/16 :goto_1

    .line 4815
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    :sswitch_1b
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4817
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4818
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4819
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_2/Call;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4820
    .local v1, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/Call;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getCurrentCallsResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4821
    goto/16 :goto_1

    .line 4805
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/Call;>;"
    :sswitch_1c
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4807
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4808
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4809
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setLinkCapacityReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4810
    goto/16 :goto_1

    .line 4795
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_1d
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4797
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4798
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4799
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setSignalStrengthReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4800
    goto/16 :goto_1

    .line 4783
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_1e
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4785
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4786
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4787
    new-instance v1, Landroid/hardware/radio/V1_2/CardStatus;

    invoke-direct {v1}, Landroid/hardware/radio/V1_2/CardStatus;-><init>()V

    .line 4788
    .local v1, "cardStatus":Landroid/hardware/radio/V1_2/CardStatus;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_2/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4789
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getIccCardStatusResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/CardStatus;)V

    .line 4790
    goto/16 :goto_1

    .line 4772
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "cardStatus":Landroid/hardware/radio/V1_2/CardStatus;
    :sswitch_1f
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4774
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4775
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4776
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_2/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4777
    .local v1, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getCellInfoListResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4778
    goto/16 :goto_1

    .line 4762
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    :sswitch_20
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4764
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4765
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4766
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->stopKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4767
    goto/16 :goto_1

    .line 4750
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_21
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4752
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4753
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4754
    new-instance v1, Landroid/hardware/radio/V1_1/KeepaliveStatus;

    invoke-direct {v1}, Landroid/hardware/radio/V1_1/KeepaliveStatus;-><init>()V

    .line 4755
    .local v1, "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_1/KeepaliveStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4756
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->startKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_1/KeepaliveStatus;)V

    .line 4757
    goto/16 :goto_1

    .line 4740
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    :sswitch_22
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4742
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4743
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4744
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->stopNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4745
    goto/16 :goto_1

    .line 4730
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_23
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4732
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4733
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4734
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->startNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4735
    goto/16 :goto_1

    .line 4720
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_24
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4722
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4723
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4724
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setSimCardPowerResponse_1_1(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4725
    goto/16 :goto_1

    .line 4710
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_25
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4712
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4713
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4714
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setCarrierInfoForImsiEncryptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4715
    goto/16 :goto_1

    .line 4701
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_26
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4703
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4704
    .local v0, "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->acknowledgeRequest(I)V

    .line 4705
    goto/16 :goto_1

    .line 4691
    .end local v0    # "serial":I
    :sswitch_27
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4693
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4694
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4695
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setSimCardPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4696
    goto/16 :goto_1

    .line 4681
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_28
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4683
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4684
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4685
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setIndicationFilterResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4686
    goto/16 :goto_1

    .line 4671
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_29
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4673
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4674
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4675
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->sendDeviceStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4676
    goto/16 :goto_1

    .line 4658
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_2a
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4660
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4661
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4662
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4663
    .local v1, "allAllowed":Z
    new-instance v2, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 4664
    .local v2, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4665
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 4666
    goto/16 :goto_1

    .line 4647
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "allAllowed":Z
    .end local v2    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :sswitch_2b
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4649
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4650
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4651
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4652
    .local v1, "numAllowed":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4653
    goto/16 :goto_1

    .line 4635
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "numAllowed":I
    :sswitch_2c
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4637
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4638
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4639
    new-instance v1, Landroid/hardware/radio/V1_0/ActivityStatsInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;-><init>()V

    .line 4640
    .local v1, "activityInfo":Landroid/hardware/radio/V1_0/ActivityStatsInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4641
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getModemActivityInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/ActivityStatsInfo;)V

    .line 4642
    goto/16 :goto_1

    .line 4623
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "activityInfo":Landroid/hardware/radio/V1_0/ActivityStatsInfo;
    :sswitch_2d
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4625
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4626
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4627
    new-instance v1, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 4628
    .local v1, "lceInfo":Landroid/hardware/radio/V1_0/LceDataInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4629
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->pullLceDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceDataInfo;)V

    .line 4630
    goto/16 :goto_1

    .line 4611
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "lceInfo":Landroid/hardware/radio/V1_0/LceDataInfo;
    :sswitch_2e
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4613
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4614
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4615
    new-instance v1, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    .line 4616
    .local v1, "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4617
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->stopLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    .line 4618
    goto/16 :goto_1

    .line 4599
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    :sswitch_2f
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4601
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4602
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4603
    new-instance v1, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    .line 4604
    .restart local v1    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4605
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->startLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    .line 4606
    goto/16 :goto_1

    .line 4587
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    :sswitch_30
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4589
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4590
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4591
    new-instance v1, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 4592
    .local v1, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4593
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    .line 4594
    goto/16 :goto_1

    .line 4575
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :sswitch_31
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4577
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4578
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4579
    new-instance v1, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 4580
    .restart local v1    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4581
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    .line 4582
    goto/16 :goto_1

    .line 4565
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :sswitch_32
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4567
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4568
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4569
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->requestShutdownResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4570
    goto/16 :goto_1

    .line 4555
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_33
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4557
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4558
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4559
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setDataProfileResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4560
    goto/16 :goto_1

    .line 4543
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_34
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4545
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4546
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4547
    new-instance v1, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 4548
    .local v1, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4549
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->requestIccSimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 4550
    goto/16 :goto_1

    .line 4532
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_35
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4534
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4535
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4536
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4537
    .local v1, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getHardwareConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4538
    goto/16 :goto_1

    .line 4522
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    :sswitch_36
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4524
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4525
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4526
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setDataAllowedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4527
    goto/16 :goto_1

    .line 4512
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_37
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4514
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4515
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4516
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setUiccSubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4517
    goto/16 :goto_1

    .line 4502
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_38
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4504
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4505
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4506
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->nvResetConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4507
    goto/16 :goto_1

    .line 4492
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_39
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4494
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4495
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4496
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->nvWriteCdmaPrlResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4497
    goto/16 :goto_1

    .line 4482
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3a
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4484
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4485
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4486
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->nvWriteItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4487
    goto/16 :goto_1

    .line 4471
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3b
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4473
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4474
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4475
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4476
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->nvReadItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 4477
    goto/16 :goto_1

    .line 4459
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "result":Ljava/lang/String;
    :sswitch_3c
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4461
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4462
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4463
    new-instance v1, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 4464
    .local v1, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4465
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->iccTransmitApduLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 4466
    goto/16 :goto_1

    .line 4449
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_3d
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4451
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4452
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4453
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->iccCloseLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4454
    goto/16 :goto_1

    .line 4437
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3e
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4439
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4440
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4441
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4442
    .local v1, "channelId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4443
    .local v2, "selectResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->iccOpenLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ILjava/util/ArrayList;)V

    .line 4444
    goto/16 :goto_1

    .line 4425
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "channelId":I
    .end local v2    # "selectResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_3f
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4427
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4428
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4429
    new-instance v1, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 4430
    .local v1, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4431
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->iccTransmitApduBasicChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 4432
    goto/16 :goto_1

    .line 4413
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_40
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4415
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4416
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4417
    new-instance v1, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 4418
    .local v1, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4419
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->sendImsSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 4420
    goto/16 :goto_1

    .line 4401
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_41
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4403
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4404
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4405
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4406
    .local v1, "isRegistered":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4407
    .local v2, "ratFamily":I
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getImsRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

    .line 4408
    goto/16 :goto_1

    .line 4391
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "isRegistered":Z
    .end local v2    # "ratFamily":I
    :sswitch_42
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4393
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4394
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4395
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setInitialAttachApnResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4396
    goto/16 :goto_1

    .line 4381
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_43
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4383
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4384
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4385
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setCellInfoListRateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4386
    goto/16 :goto_1

    .line 4370
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_44
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4372
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4373
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4374
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4375
    .local v1, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getCellInfoListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4376
    goto/16 :goto_1

    .line 4359
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    :sswitch_45
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4361
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4362
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4363
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4364
    .local v1, "rat":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getVoiceRadioTechnologyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4365
    goto/16 :goto_1

    .line 4347
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "rat":I
    :sswitch_46
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4349
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4350
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4351
    new-instance v1, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 4352
    .local v1, "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4353
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->sendEnvelopeWithStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 4354
    goto/16 :goto_1

    .line 4337
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_47
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4339
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4340
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4341
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->acknowledgeIncomingGsmSmsWithPduResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4342
    goto/16 :goto_1

    .line 4326
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_48
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4328
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4329
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4330
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4331
    .local v1, "response":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->requestIsimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 4332
    goto/16 :goto_1

    .line 4315
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "response":Ljava/lang/String;
    :sswitch_49
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4317
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4318
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4319
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4320
    .local v1, "source":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4321
    goto/16 :goto_1

    .line 4305
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "source":I
    :sswitch_4a
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4307
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4308
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4309
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->reportStkServiceIsRunningResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4310
    goto/16 :goto_1

    .line 4295
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4b
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4297
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4298
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4299
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->reportSmsMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4300
    goto/16 :goto_1

    .line 4285
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4c
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4287
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4288
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4289
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4290
    goto/16 :goto_1

    .line 4274
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4d
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4276
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4277
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4278
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4279
    .local v1, "smsc":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 4280
    goto/16 :goto_1

    .line 4264
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "smsc":Ljava/lang/String;
    :sswitch_4e
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4266
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4267
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4268
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->exitEmergencyCallbackModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4269
    goto/16 :goto_1

    .line 4250
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4f
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4252
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object v6, v0

    .line 4253
    .local v6, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v6, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4254
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 4255
    .local v10, "imei":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 4256
    .local v11, "imeisv":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 4257
    .local v12, "esn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 4258
    .local v13, "meid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getDeviceIdentityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4259
    goto/16 :goto_1

    .line 4240
    .end local v6    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v10    # "imei":Ljava/lang/String;
    .end local v11    # "imeisv":Ljava/lang/String;
    .end local v12    # "esn":Ljava/lang/String;
    .end local v13    # "meid":Ljava/lang/String;
    :sswitch_50
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4242
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4243
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4244
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->deleteSmsOnRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4245
    goto/16 :goto_1

    .line 4229
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_51
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4231
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4232
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4233
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4234
    .local v1, "index":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->writeSmsToRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4235
    goto/16 :goto_1

    .line 4214
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "index":I
    :sswitch_52
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4216
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object v10, v0

    .line 4217
    .local v10, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v10, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4218
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 4219
    .local v11, "mdn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 4220
    .local v12, "hSid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 4221
    .local v13, "hNid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 4222
    .local v14, "min":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 4223
    .local v15, "prl":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v11

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getCDMASubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4224
    goto/16 :goto_1

    .line 4204
    .end local v10    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v11    # "mdn":Ljava/lang/String;
    .end local v12    # "hSid":Ljava/lang/String;
    .end local v13    # "hNid":Ljava/lang/String;
    .end local v14    # "min":Ljava/lang/String;
    .end local v15    # "prl":Ljava/lang/String;
    :sswitch_53
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4206
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4207
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4208
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setCdmaBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4209
    goto/16 :goto_1

    .line 4194
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_54
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4196
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4197
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4198
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4199
    goto/16 :goto_1

    .line 4183
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_55
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4185
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4186
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4187
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4188
    .local v1, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4189
    goto/16 :goto_1

    .line 4173
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :sswitch_56
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4175
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4176
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4177
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setGsmBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4178
    goto/16 :goto_1

    .line 4163
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_57
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4165
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4166
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4167
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4168
    goto/16 :goto_1

    .line 4152
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_58
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4154
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4155
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4156
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4157
    .local v1, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4158
    goto/16 :goto_1

    .line 4142
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :sswitch_59
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4144
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4145
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4146
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->acknowledgeLastIncomingCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4147
    goto/16 :goto_1

    .line 4130
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_5a
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4132
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4133
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4134
    new-instance v1, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 4135
    .local v1, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4136
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->sendCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 4137
    goto/16 :goto_1

    .line 4120
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_5b
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4122
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4123
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4124
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->sendBurstDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4125
    goto/16 :goto_1

    .line 4110
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_5c
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4112
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4113
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4114
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->sendCDMAFeatureCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4115
    goto/16 :goto_1

    .line 4099
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_5d
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4101
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4102
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4103
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4104
    .local v1, "enable":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 4105
    goto/16 :goto_1

    .line 4089
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "enable":Z
    :sswitch_5e
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4091
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4092
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4093
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4094
    goto/16 :goto_1

    .line 4078
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_5f
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4080
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4081
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4082
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4083
    .local v1, "mode":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4084
    goto/16 :goto_1

    .line 4068
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "mode":I
    :sswitch_60
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4070
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4071
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4072
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4073
    goto/16 :goto_1

    .line 4057
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_61
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4059
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4060
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4061
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4062
    .local v1, "type":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4063
    goto/16 :goto_1

    .line 4047
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "type":I
    :sswitch_62
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4049
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4050
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4051
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4052
    goto/16 :goto_1

    .line 4037
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_63
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4039
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4040
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4041
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4042
    goto/16 :goto_1

    .line 4027
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_64
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4029
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4030
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4031
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setLocationUpdatesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4032
    goto/16 :goto_1

    .line 4016
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_65
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4018
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4019
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4020
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/NeighboringCell;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4021
    .local v1, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/NeighboringCell;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getNeighboringCidsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4022
    goto/16 :goto_1

    .line 4005
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/NeighboringCell;>;"
    :sswitch_66
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4007
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4008
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4009
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4010
    .local v1, "nwType":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4011
    goto/16 :goto_1

    .line 3995
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "nwType":I
    :sswitch_67
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3997
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3998
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3999
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4000
    goto/16 :goto_1

    .line 3985
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_68
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3987
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3988
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3989
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->explicitCallTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3990
    goto/16 :goto_1

    .line 3975
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_69
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3977
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3978
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3979
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->handleStkCallSetupRequestFromSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3980
    goto/16 :goto_1

    .line 3965
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_6a
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3967
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3968
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3969
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->sendTerminalResponseToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3970
    goto/16 :goto_1

    .line 3954
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_6b
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3956
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3957
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3958
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3959
    .local v1, "commandResponse":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->sendEnvelopeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 3960
    goto/16 :goto_1

    .line 3943
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "commandResponse":Ljava/lang/String;
    :sswitch_6c
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3945
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3946
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3947
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3948
    .local v1, "bandModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getAvailableBandModesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3949
    goto/16 :goto_1

    .line 3933
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "bandModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_6d
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3935
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3936
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3937
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3938
    goto/16 :goto_1

    .line 3923
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_6e
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3925
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3926
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3927
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->deleteSmsOnSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3928
    goto/16 :goto_1

    .line 3912
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_6f
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3914
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3915
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3916
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3917
    .local v1, "index":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->writeSmsToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3918
    goto/16 :goto_1

    .line 3902
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "index":I
    :sswitch_70
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3904
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3905
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3906
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setSuppServiceNotificationsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3907
    goto/16 :goto_1

    .line 3891
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_71
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3893
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3894
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3895
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3896
    .local v1, "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getDataCallListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3897
    goto/16 :goto_1

    .line 3880
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    :sswitch_72
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3882
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3883
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3884
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3885
    .local v1, "status":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3886
    goto/16 :goto_1

    .line 3869
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "status":I
    :sswitch_73
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3871
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3872
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3873
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3874
    .local v1, "enable":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 3875
    goto/16 :goto_1

    .line 3859
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "enable":Z
    :sswitch_74
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3861
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3862
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3863
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3864
    goto/16 :goto_1

    .line 3849
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_75
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3851
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3852
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3853
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->separateConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3854
    goto/16 :goto_1

    .line 3838
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_76
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3840
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3841
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3842
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3843
    .local v1, "version":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getBasebandVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 3844
    goto/16 :goto_1

    .line 3828
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "version":Ljava/lang/String;
    :sswitch_77
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3830
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3831
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3832
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->stopDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3833
    goto/16 :goto_1

    .line 3818
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_78
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3820
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3821
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3822
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->startDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3823
    goto/16 :goto_1

    .line 3807
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_79
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3809
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3810
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3811
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/OperatorInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3812
    .local v1, "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/OperatorInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3813
    goto/16 :goto_1

    .line 3797
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/OperatorInfo;>;"
    :sswitch_7a
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3799
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3800
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3801
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setNetworkSelectionModeManualResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3802
    goto/16 :goto_1

    .line 3787
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_7b
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3789
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3790
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3791
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setNetworkSelectionModeAutomaticResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3792
    goto/16 :goto_1

    .line 3776
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_7c
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3778
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3779
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3780
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3781
    .local v1, "manual":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getNetworkSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 3782
    goto/16 :goto_1

    .line 3766
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "manual":Z
    :sswitch_7d
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3768
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3769
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3770
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setBarringPasswordResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3771
    goto/16 :goto_1

    .line 3755
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_7e
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3757
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3758
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3759
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3760
    .local v1, "retry":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3761
    goto/16 :goto_1

    .line 3744
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "retry":I
    :sswitch_7f
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3746
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3747
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3748
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3749
    .local v1, "response":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3750
    goto/16 :goto_1

    .line 3734
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "response":I
    :sswitch_80
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3736
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3737
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3738
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->deactivateDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3739
    goto/16 :goto_1

    .line 3724
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_81
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3726
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3727
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3728
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->acceptCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3729
    goto/16 :goto_1

    .line 3714
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_82
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3716
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3717
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3718
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->acknowledgeLastIncomingGsmSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3719
    goto/16 :goto_1

    .line 3704
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_83
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3706
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3707
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3708
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3709
    goto/16 :goto_1

    .line 3692
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_84
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3694
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3695
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3696
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3697
    .local v1, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3698
    .local v2, "serviceClass":I
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

    .line 3699
    goto/16 :goto_1

    .line 3682
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "enable":Z
    .end local v2    # "serviceClass":I
    :sswitch_85
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3684
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3685
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3686
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setCallForwardResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3687
    goto/16 :goto_1

    .line 3671
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_86
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3673
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3674
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3675
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3676
    .local v1, "callForwardInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getCallForwardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3677
    goto/16 :goto_1

    .line 3661
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "callForwardInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    :sswitch_87
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3663
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3664
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3665
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3666
    goto/16 :goto_1

    .line 3649
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_88
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3651
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3652
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3653
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3654
    .local v1, "n":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3655
    .local v2, "m":I
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    .line 3656
    goto/16 :goto_1

    .line 3639
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "n":I
    .end local v2    # "m":I
    :sswitch_89
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3641
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3642
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3643
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->cancelPendingUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3644
    goto/16 :goto_1

    .line 3629
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_8a
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3631
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3632
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3633
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->sendUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3634
    goto/16 :goto_1

    .line 3617
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_8b
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3619
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3620
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3621
    new-instance v1, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 3622
    .local v1, "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3623
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->iccIOForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 3624
    goto/16 :goto_1

    .line 3605
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_8c
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3607
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3608
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3609
    new-instance v1, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SetupDataCallResult;-><init>()V

    .line 3610
    .local v1, "dcResponse":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3611
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setupDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SetupDataCallResult;)V

    .line 3612
    goto/16 :goto_1

    .line 3593
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "dcResponse":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    :sswitch_8d
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3595
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3596
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3597
    new-instance v1, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 3598
    .local v1, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3599
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->sendSMSExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 3600
    goto/16 :goto_1

    .line 3581
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_8e
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3583
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3584
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3585
    new-instance v1, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 3586
    .restart local v1    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3587
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->sendSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 3588
    goto/16 :goto_1

    .line 3571
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_8f
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3573
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3574
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3575
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->sendDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3576
    goto/16 :goto_1

    .line 3561
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_90
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3563
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3564
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3565
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->setRadioPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3566
    goto/16 :goto_1

    .line 3548
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_91
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3550
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3551
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3552
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3553
    .local v1, "longName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3554
    .local v2, "shortName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3555
    .local v3, "numeric":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getOperatorResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3556
    goto/16 :goto_1

    .line 3536
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "longName":Ljava/lang/String;
    .end local v2    # "shortName":Ljava/lang/String;
    .end local v3    # "numeric":Ljava/lang/String;
    :sswitch_92
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3538
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3539
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3540
    new-instance v1, Landroid/hardware/radio/V1_0/DataRegStateResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/DataRegStateResult;-><init>()V

    .line 3541
    .local v1, "dataRegResponse":Landroid/hardware/radio/V1_0/DataRegStateResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3542
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getDataRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/DataRegStateResult;)V

    .line 3543
    goto/16 :goto_1

    .line 3524
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "dataRegResponse":Landroid/hardware/radio/V1_0/DataRegStateResult;
    :sswitch_93
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3526
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3527
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3528
    new-instance v1, Landroid/hardware/radio/V1_0/VoiceRegStateResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;-><init>()V

    .line 3529
    .local v1, "voiceRegResponse":Landroid/hardware/radio/V1_0/VoiceRegStateResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3530
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getVoiceRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/VoiceRegStateResult;)V

    .line 3531
    goto/16 :goto_1

    .line 3512
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "voiceRegResponse":Landroid/hardware/radio/V1_0/VoiceRegStateResult;
    :sswitch_94
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3514
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3515
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3516
    new-instance v1, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 3517
    .local v1, "sigStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3518
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getSignalStrengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SignalStrength;)V

    .line 3519
    goto/16 :goto_1

    .line 3500
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "sigStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    :sswitch_95
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3502
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3503
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3504
    new-instance v1, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;-><init>()V

    .line 3505
    .local v1, "failCauseinfo":Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3506
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getLastCallFailCauseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V

    .line 3507
    goto/16 :goto_1

    .line 3490
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "failCauseinfo":Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;
    :sswitch_96
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3492
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3493
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3494
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->rejectCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3495
    goto/16 :goto_1

    .line 3480
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_97
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3482
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3483
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3484
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->conferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3485
    goto/16 :goto_1

    .line 3470
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_98
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3472
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3473
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3474
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3475
    goto/16 :goto_1

    .line 3460
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_99
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3462
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3463
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3464
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->hangupForegroundResumeBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3465
    goto/16 :goto_1

    .line 3450
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_9a
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3452
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3453
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3454
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->hangupWaitingOrBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3455
    goto/16 :goto_1

    .line 3440
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_9b
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3442
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3443
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3444
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->hangupConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3445
    goto/16 :goto_1

    .line 3429
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_9c
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3431
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3432
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3433
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3434
    .local v1, "imsi":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getIMSIForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 3435
    goto/16 :goto_1

    .line 3419
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "imsi":Ljava/lang/String;
    :sswitch_9d
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3421
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3422
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3423
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->dialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3424
    goto/16 :goto_1

    .line 3408
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_9e
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3410
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3411
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3412
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/Call;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3413
    .local v1, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/Call;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getCurrentCallsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3414
    goto/16 :goto_1

    .line 3397
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/Call;>;"
    :sswitch_9f
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3399
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3400
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3401
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3402
    .local v1, "remainingRetries":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3403
    goto/16 :goto_1

    .line 3386
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "remainingRetries":I
    :sswitch_a0
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3388
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3389
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3390
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3391
    .restart local v1    # "remainingRetries":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->changeIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3392
    goto/16 :goto_1

    .line 3375
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "remainingRetries":I
    :sswitch_a1
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3377
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3378
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3379
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3380
    .restart local v1    # "remainingRetries":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->changeIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3381
    goto :goto_1

    .line 3364
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "remainingRetries":I
    :sswitch_a2
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3366
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3367
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3368
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3369
    .restart local v1    # "remainingRetries":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->supplyIccPuk2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3370
    goto :goto_1

    .line 3353
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "remainingRetries":I
    :sswitch_a3
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3355
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3356
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3357
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3358
    .restart local v1    # "remainingRetries":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->supplyIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3359
    goto :goto_1

    .line 3342
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "remainingRetries":I
    :sswitch_a4
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3344
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3345
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3346
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3347
    .restart local v1    # "remainingRetries":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->supplyIccPukForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3348
    goto :goto_1

    .line 3331
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "remainingRetries":I
    :sswitch_a5
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3333
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3334
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3335
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3336
    .restart local v1    # "remainingRetries":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->supplyIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3337
    goto :goto_1

    .line 3319
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "remainingRetries":I
    :sswitch_a6
    invoke-virtual {v8, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3321
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3322
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3323
    new-instance v1, Landroid/hardware/radio/V1_0/CardStatus;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CardStatus;-><init>()V

    .line 3324
    .local v1, "cardStatus":Landroid/hardware/radio/V1_0/CardStatus;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3325
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->getIccCardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/CardStatus;)V

    .line 3326
    nop

    .line 5141
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "cardStatus":Landroid/hardware/radio/V1_0/CardStatus;
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_a6
        0x2 -> :sswitch_a5
        0x3 -> :sswitch_a4
        0x4 -> :sswitch_a3
        0x5 -> :sswitch_a2
        0x6 -> :sswitch_a1
        0x7 -> :sswitch_a0
        0x8 -> :sswitch_9f
        0x9 -> :sswitch_9e
        0xa -> :sswitch_9d
        0xb -> :sswitch_9c
        0xc -> :sswitch_9b
        0xd -> :sswitch_9a
        0xe -> :sswitch_99
        0xf -> :sswitch_98
        0x10 -> :sswitch_97
        0x11 -> :sswitch_96
        0x12 -> :sswitch_95
        0x13 -> :sswitch_94
        0x14 -> :sswitch_93
        0x15 -> :sswitch_92
        0x16 -> :sswitch_91
        0x17 -> :sswitch_90
        0x18 -> :sswitch_8f
        0x19 -> :sswitch_8e
        0x1a -> :sswitch_8d
        0x1b -> :sswitch_8c
        0x1c -> :sswitch_8b
        0x1d -> :sswitch_8a
        0x1e -> :sswitch_89
        0x1f -> :sswitch_88
        0x20 -> :sswitch_87
        0x21 -> :sswitch_86
        0x22 -> :sswitch_85
        0x23 -> :sswitch_84
        0x24 -> :sswitch_83
        0x25 -> :sswitch_82
        0x26 -> :sswitch_81
        0x27 -> :sswitch_80
        0x28 -> :sswitch_7f
        0x29 -> :sswitch_7e
        0x2a -> :sswitch_7d
        0x2b -> :sswitch_7c
        0x2c -> :sswitch_7b
        0x2d -> :sswitch_7a
        0x2e -> :sswitch_79
        0x2f -> :sswitch_78
        0x30 -> :sswitch_77
        0x31 -> :sswitch_76
        0x32 -> :sswitch_75
        0x33 -> :sswitch_74
        0x34 -> :sswitch_73
        0x35 -> :sswitch_72
        0x36 -> :sswitch_71
        0x37 -> :sswitch_70
        0x38 -> :sswitch_6f
        0x39 -> :sswitch_6e
        0x3a -> :sswitch_6d
        0x3b -> :sswitch_6c
        0x3c -> :sswitch_6b
        0x3d -> :sswitch_6a
        0x3e -> :sswitch_69
        0x3f -> :sswitch_68
        0x40 -> :sswitch_67
        0x41 -> :sswitch_66
        0x42 -> :sswitch_65
        0x43 -> :sswitch_64
        0x44 -> :sswitch_63
        0x45 -> :sswitch_62
        0x46 -> :sswitch_61
        0x47 -> :sswitch_60
        0x48 -> :sswitch_5f
        0x49 -> :sswitch_5e
        0x4a -> :sswitch_5d
        0x4b -> :sswitch_5c
        0x4c -> :sswitch_5b
        0x4d -> :sswitch_5a
        0x4e -> :sswitch_59
        0x4f -> :sswitch_58
        0x50 -> :sswitch_57
        0x51 -> :sswitch_56
        0x52 -> :sswitch_55
        0x53 -> :sswitch_54
        0x54 -> :sswitch_53
        0x55 -> :sswitch_52
        0x56 -> :sswitch_51
        0x57 -> :sswitch_50
        0x58 -> :sswitch_4f
        0x59 -> :sswitch_4e
        0x5a -> :sswitch_4d
        0x5b -> :sswitch_4c
        0x5c -> :sswitch_4b
        0x5d -> :sswitch_4a
        0x5e -> :sswitch_49
        0x5f -> :sswitch_48
        0x60 -> :sswitch_47
        0x61 -> :sswitch_46
        0x62 -> :sswitch_45
        0x63 -> :sswitch_44
        0x64 -> :sswitch_43
        0x65 -> :sswitch_42
        0x66 -> :sswitch_41
        0x67 -> :sswitch_40
        0x68 -> :sswitch_3f
        0x69 -> :sswitch_3e
        0x6a -> :sswitch_3d
        0x6b -> :sswitch_3c
        0x6c -> :sswitch_3b
        0x6d -> :sswitch_3a
        0x6e -> :sswitch_39
        0x6f -> :sswitch_38
        0x70 -> :sswitch_37
        0x71 -> :sswitch_36
        0x72 -> :sswitch_35
        0x73 -> :sswitch_34
        0x74 -> :sswitch_33
        0x75 -> :sswitch_32
        0x76 -> :sswitch_31
        0x77 -> :sswitch_30
        0x78 -> :sswitch_2f
        0x79 -> :sswitch_2e
        0x7a -> :sswitch_2d
        0x7b -> :sswitch_2c
        0x7c -> :sswitch_2b
        0x7d -> :sswitch_2a
        0x7e -> :sswitch_29
        0x7f -> :sswitch_28
        0x80 -> :sswitch_27
        0x81 -> :sswitch_26
        0x82 -> :sswitch_25
        0x83 -> :sswitch_24
        0x84 -> :sswitch_23
        0x85 -> :sswitch_22
        0x86 -> :sswitch_21
        0x87 -> :sswitch_20
        0x88 -> :sswitch_1f
        0x89 -> :sswitch_1e
        0x8a -> :sswitch_1d
        0x8b -> :sswitch_1c
        0x8c -> :sswitch_1b
        0x8d -> :sswitch_1a
        0x8e -> :sswitch_19
        0x8f -> :sswitch_18
        0x90 -> :sswitch_17
        0x91 -> :sswitch_16
        0x92 -> :sswitch_15
        0x93 -> :sswitch_14
        0x94 -> :sswitch_13
        0x95 -> :sswitch_12
        0x96 -> :sswitch_11
        0x97 -> :sswitch_10
        0x98 -> :sswitch_f
        0x99 -> :sswitch_e
        0x9a -> :sswitch_d
        0x9b -> :sswitch_c
        0x9c -> :sswitch_b
        0x9d -> :sswitch_a
        0x9e -> :sswitch_9
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

    .line 3270
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 3298
    const-string v0, "android.hardware.radio@1.4::IRadioResponse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3299
    return-object p0

    .line 3301
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

    .line 3305
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 3306
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .locals 0

    .line 3260
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 3310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 3292
    const/4 v0, 0x1

    return v0
.end method
