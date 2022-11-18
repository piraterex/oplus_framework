.class public abstract Landroid/hardware/radio/V1_4/IRadio$Stub;
.super Landroid/os/HwBinder;
.source "IRadio.java"

# interfaces
.implements Landroid/hardware/radio/V1_4/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_4/IRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 3251
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 3254
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

    .line 3271
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 3312
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 3313
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 3314
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 3315
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 3316
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

    .line 3283
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
        -0x11t
        0x4at
        -0x49t
        0x41t
        -0x9t
        -0x19t
        0x76t
        0x2ft
        -0x4ct
        0x5et
        0x2et
        0x24t
        -0x36t
        -0x7dt
        -0x79t
        0x1ft
        0x72t
        0x0t
        0x6ct
        -0x20t
        0x5ft
        0x57t
        -0x56t
        -0x66t
        -0x23t
        -0x3bt
        0x74t
        -0x77t
        0x3dt
        -0x2et
        -0x68t
        0x72t
    .end array-data

    :array_1
    .array-data 1
        -0x5ft
        -0x3at
        -0x50t
        0x76t
        0x1bt
        -0x35t
        -0x77t
        -0x2at
        -0x41t
        0x15t
        -0x5ft
        0x56t
        -0x7t
        0x30t
        0x6bt
        -0x80t
        -0x70t
        -0x4dt
        -0x57t
        0x16t
        -0x5ft
        0x5ft
        -0x16t
        0x16t
        -0x77t
        -0x4ct
        -0x50t
        -0x3ft
        0x73t
        -0x72t
        0x38t
        0x2ft
    .end array-data

    :array_2
    .array-data 1
        0x2bt
        0x5at
        -0x2t
        -0xat
        -0x72t
        0x3et
        0x2ft
        -0xft
        -0x26t
        -0x4at
        0x3et
        0x4ft
        0x2et
        -0x1bt
        0x73t
        0x37t
        -0x11t
        0x26t
        0x35t
        -0x14t
        -0x7ft
        0x2ft
        0x49t
        0x8t
        0xct
        -0x53t
        -0x4t
        -0x17t
        0x66t
        -0x2dt
        0x3bt
        0x52t
    .end array-data

    :array_3
    .array-data 1
        -0x7at
        -0x5t
        0x7t
        -0x66t
        0x60t
        0xbt
        0x23t
        0x1t
        -0x59t
        0x52t
        0x24t
        -0x63t
        -0x5t
        -0x4t
        0x53t
        -0x68t
        0x3at
        0x79t
        0x5dt
        0x75t
        0x2ft
        0x11t
        -0x56t
        -0x44t
        -0x4at
        -0x7dt
        0x15t
        -0x5ft
        -0x77t
        -0xat
        -0x37t
        -0x5et
    .end array-data

    :array_4
    .array-data 1
        -0x31t
        -0x56t
        -0x50t
        -0x1ct
        0x5ct
        0x5dt
        0x7bt
        0x35t
        -0x6bt
        0x3t
        0x2dt
        0x64t
        -0x63t
        -0x5et
        -0x62t
        -0x29t
        0x12t
        -0x17t
        0x20t
        -0x7t
        0x56t
        -0x3ft
        0x36t
        0x71t
        -0x11t
        -0x2dt
        0x56t
        0x2t
        -0x6t
        -0x7ft
        -0x37t
        0x23t
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

    .line 3259
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.radio@1.4::IRadio"

    const-string v2, "android.hardware.radio@1.3::IRadio"

    const-string v3, "android.hardware.radio@1.2::IRadio"

    const-string v4, "android.hardware.radio@1.1::IRadio"

    const-string v5, "android.hardware.radio@1.0::IRadio"

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

    .line 3277
    const-string v0, "android.hardware.radio@1.4::IRadio"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 3300
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .locals 0

    .line 3322
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 3324
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 22
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3352
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v0, "android.hardware.radio@1.3::IRadio"

    const-string v1, "android.hardware.radio@1.2::IRadio"

    const-string v2, "android.hardware.radio@1.1::IRadio"

    const-string v3, "android.hidl.base@1.0::IBase"

    const/4 v4, 0x0

    const-string v5, "android.hardware.radio@1.4::IRadio"

    const-string v6, "android.hardware.radio@1.0::IRadio"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 5049
    :sswitch_0
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5051
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->notifySyspropsChanged()V

    .line 5052
    goto/16 :goto_1

    .line 5038
    :sswitch_1
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5040
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 5041
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5042
    invoke-virtual {v0, v12}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 5043
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5044
    goto/16 :goto_1

    .line 5028
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5030
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->ping()V

    .line 5031
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5032
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5033
    goto/16 :goto_1

    .line 5023
    :sswitch_3
    goto/16 :goto_1

    .line 5015
    :sswitch_4
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5017
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setHALInstrumentation()V

    .line 5018
    goto/16 :goto_1

    .line 4981
    :sswitch_5
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4983
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 4984
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4986
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 4988
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4989
    .local v2, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 4990
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 4991
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 4992
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 4994
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 4995
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 4997
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 5001
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 5002
    nop

    .line 4992
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4998
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 5005
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 5007
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 5009
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5010
    goto/16 :goto_1

    .line 4970
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4972
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 4973
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4974
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4975
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4976
    goto/16 :goto_1

    .line 4958
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4960
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 4961
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4962
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 4963
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4964
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4965
    goto/16 :goto_1

    .line 4947
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4949
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 4950
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4951
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 4952
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4953
    goto/16 :goto_1

    .line 4938
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4940
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4941
    .local v0, "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getSignalStrength_1_4(I)V

    .line 4942
    goto/16 :goto_1

    .line 4929
    .end local v0    # "serial":I
    :sswitch_a
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4931
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4932
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getAllowedCarriers_1_4(I)V

    .line 4933
    goto/16 :goto_1

    .line 4917
    .end local v0    # "serial":I
    :sswitch_b
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4919
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4920
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;

    invoke-direct {v1}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;-><init>()V

    .line 4921
    .local v1, "carriers":Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4922
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4923
    .local v2, "multiSimPolicy":I
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setAllowedCarriers_1_4(ILandroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;I)V

    .line 4924
    goto/16 :goto_1

    .line 4907
    .end local v0    # "serial":I
    .end local v1    # "carriers":Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;
    .end local v2    # "multiSimPolicy":I
    :sswitch_c
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4909
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4910
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4911
    .local v1, "networkTypeBitmap":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setPreferredNetworkTypeBitmap(II)V

    .line 4912
    goto/16 :goto_1

    .line 4898
    .end local v0    # "serial":I
    .end local v1    # "networkTypeBitmap":I
    :sswitch_d
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4900
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4901
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getPreferredNetworkTypeBitmap(I)V

    .line 4902
    goto/16 :goto_1

    .line 4887
    .end local v0    # "serial":I
    :sswitch_e
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4889
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4890
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v1}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    .line 4891
    .local v1, "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4892
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->startNetworkScan_1_4(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    .line 4893
    goto/16 :goto_1

    .line 4871
    .end local v0    # "serial":I
    .end local v1    # "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    :sswitch_f
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4873
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 4874
    .local v8, "serial":I
    new-instance v0, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    move-object v9, v0

    .line 4875
    .local v9, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v9, v11}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4876
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 4877
    .local v13, "categories":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v14

    .line 4878
    .local v14, "urns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 4879
    .local v15, "routing":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 4880
    .local v16, "hasKnownUserIntentEmergency":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 4881
    .local v17, "isTesting":Z
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move v3, v13

    move-object v4, v14

    move v5, v15

    move/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_4/IRadio$Stub;->emergencyDial(ILandroid/hardware/radio/V1_0/Dial;ILjava/util/ArrayList;IZZ)V

    .line 4882
    goto/16 :goto_1

    .line 4861
    .end local v8    # "serial":I
    .end local v9    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    .end local v13    # "categories":I
    .end local v14    # "urns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "routing":I
    .end local v16    # "hasKnownUserIntentEmergency":Z
    .end local v17    # "isTesting":Z
    :sswitch_10
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4863
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4864
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_4/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4865
    .local v1, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/DataProfileInfo;>;"
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setDataProfile_1_4(ILjava/util/ArrayList;)V

    .line 4866
    goto/16 :goto_1

    .line 4850
    .end local v0    # "serial":I
    .end local v1    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/DataProfileInfo;>;"
    :sswitch_11
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4852
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4853
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_4/DataProfileInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_4/DataProfileInfo;-><init>()V

    .line 4854
    .local v1, "dataProfileInfo":Landroid/hardware/radio/V1_4/DataProfileInfo;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_4/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4855
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setInitialAttachApn_1_4(ILandroid/hardware/radio/V1_4/DataProfileInfo;)V

    .line 4856
    goto/16 :goto_1

    .line 4834
    .end local v0    # "serial":I
    .end local v1    # "dataProfileInfo":Landroid/hardware/radio/V1_4/DataProfileInfo;
    :sswitch_12
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4836
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 4837
    .restart local v8    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 4838
    .local v9, "accessNetwork":I
    new-instance v0, Landroid/hardware/radio/V1_4/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_4/DataProfileInfo;-><init>()V

    move-object v13, v0

    .line 4839
    .local v13, "dataProfileInfo":Landroid/hardware/radio/V1_4/DataProfileInfo;
    invoke-virtual {v13, v11}, Landroid/hardware/radio/V1_4/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4840
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v14

    .line 4841
    .local v14, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 4842
    .local v15, "reason":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v16

    .line 4843
    .local v16, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v17

    .line 4844
    .local v17, "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move-object v3, v13

    move v4, v14

    move v5, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setupDataCall_1_4(IILandroid/hardware/radio/V1_4/DataProfileInfo;ZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 4845
    goto/16 :goto_1

    .line 4825
    .end local v8    # "serial":I
    .end local v9    # "accessNetwork":I
    .end local v13    # "dataProfileInfo":Landroid/hardware/radio/V1_4/DataProfileInfo;
    .end local v14    # "roamingAllowed":Z
    .end local v15    # "reason":I
    .end local v16    # "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17    # "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_13
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4827
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4828
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getModemStackStatus(I)V

    .line 4829
    goto/16 :goto_1

    .line 4815
    .end local v0    # "serial":I
    :sswitch_14
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4817
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4818
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4819
    .local v1, "on":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->enableModem(IZ)V

    .line 4820
    goto/16 :goto_1

    .line 4804
    .end local v0    # "serial":I
    .end local v1    # "on":Z
    :sswitch_15
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4806
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4807
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4808
    .local v1, "specifyChannels":Z
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4809
    .local v2, "specifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_1/RadioAccessSpecifier;>;"
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setSystemSelectionChannels(IZLjava/util/ArrayList;)V

    .line 4810
    goto/16 :goto_1

    .line 4793
    .end local v0    # "serial":I
    .end local v1    # "specifyChannels":Z
    .end local v2    # "specifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_1/RadioAccessSpecifier;>;"
    :sswitch_16
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4795
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4796
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4797
    .local v1, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4798
    .local v2, "reason":I
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->deactivateDataCall_1_2(III)V

    .line 4799
    goto/16 :goto_1

    .line 4775
    .end local v0    # "serial":I
    .end local v1    # "cid":I
    .end local v2    # "reason":I
    :sswitch_17
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4777
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 4778
    .local v13, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 4779
    .local v14, "accessNetwork":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v15, v0

    .line 4780
    .local v15, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v15, v11}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4781
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 4782
    .local v16, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 4783
    .local v17, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    .line 4784
    .local v18, "isRoaming":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 4785
    .local v19, "reason":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v20

    .line 4786
    .local v20, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v21

    .line 4787
    .local v21, "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    invoke-virtual/range {v0 .. v9}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setupDataCall_1_2(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 4788
    goto/16 :goto_1

    .line 4760
    .end local v13    # "serial":I
    .end local v14    # "accessNetwork":I
    .end local v15    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v16    # "modemCognitive":Z
    .end local v17    # "roamingAllowed":Z
    .end local v18    # "isRoaming":Z
    .end local v19    # "reason":I
    .end local v20    # "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_18
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4762
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 4763
    .restart local v8    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 4764
    .local v9, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 4765
    .local v13, "hysteresisDlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 4766
    .local v14, "hysteresisUlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v15

    .line 4767
    .local v15, "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v16

    .line 4768
    .local v16, "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 4769
    .local v17, "accessNetwork":I
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v13

    move v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setLinkCapacityReportingCriteria(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 4770
    goto/16 :goto_1

    .line 4747
    .end local v8    # "serial":I
    .end local v9    # "hysteresisMs":I
    .end local v13    # "hysteresisDlKbps":I
    .end local v14    # "hysteresisUlKbps":I
    .end local v15    # "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v16    # "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v17    # "accessNetwork":I
    :sswitch_19
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4749
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 4750
    .local v6, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 4751
    .local v7, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 4752
    .local v8, "hysteresisDb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v9

    .line 4753
    .local v9, "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 4754
    .local v13, "accessNetwork":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move v5, v13

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setSignalStrengthReportingCriteria(IIILjava/util/ArrayList;I)V

    .line 4755
    goto/16 :goto_1

    .line 4737
    .end local v6    # "serial":I
    .end local v7    # "hysteresisMs":I
    .end local v8    # "hysteresisDb":I
    .end local v9    # "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v13    # "accessNetwork":I
    :sswitch_1a
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4739
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4740
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4741
    .local v1, "indicationFilter":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setIndicationFilter_1_2(II)V

    .line 4742
    goto/16 :goto_1

    .line 4726
    .end local v0    # "serial":I
    .end local v1    # "indicationFilter":I
    :sswitch_1b
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4728
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4729
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v1}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    .line 4730
    .local v1, "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4731
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->startNetworkScan_1_2(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    .line 4732
    goto/16 :goto_1

    .line 4716
    .end local v0    # "serial":I
    .end local v1    # "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    :sswitch_1c
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4718
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4719
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4720
    .local v1, "sessionHandle":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->stopKeepalive(II)V

    .line 4721
    goto/16 :goto_1

    .line 4705
    .end local v0    # "serial":I
    .end local v1    # "sessionHandle":I
    :sswitch_1d
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4707
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4708
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_1/KeepaliveRequest;

    invoke-direct {v1}, Landroid/hardware/radio/V1_1/KeepaliveRequest;-><init>()V

    .line 4709
    .local v1, "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_1/KeepaliveRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4710
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->startKeepalive(ILandroid/hardware/radio/V1_1/KeepaliveRequest;)V

    .line 4711
    goto/16 :goto_1

    .line 4696
    .end local v0    # "serial":I
    .end local v1    # "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    :sswitch_1e
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4698
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4699
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->stopNetworkScan(I)V

    .line 4700
    goto/16 :goto_1

    .line 4685
    .end local v0    # "serial":I
    :sswitch_1f
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4687
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4688
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_1/NetworkScanRequest;

    invoke-direct {v1}, Landroid/hardware/radio/V1_1/NetworkScanRequest;-><init>()V

    .line 4689
    .local v1, "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_1/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4690
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->startNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanRequest;)V

    .line 4691
    goto/16 :goto_1

    .line 4675
    .end local v0    # "serial":I
    .end local v1    # "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    :sswitch_20
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4677
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4678
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4679
    .local v1, "powerUp":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setSimCardPower_1_1(II)V

    .line 4680
    goto/16 :goto_1

    .line 4664
    .end local v0    # "serial":I
    .end local v1    # "powerUp":I
    :sswitch_21
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4666
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4667
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;-><init>()V

    .line 4668
    .local v1, "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4669
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/V1_1/ImsiEncryptionInfo;)V

    .line 4670
    goto/16 :goto_1

    .line 4656
    .end local v0    # "serial":I
    .end local v1    # "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    :sswitch_22
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4658
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->responseAcknowledgement()V

    .line 4659
    goto/16 :goto_1

    .line 4646
    :sswitch_23
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4648
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4649
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4650
    .local v1, "powerUp":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setSimCardPower(IZ)V

    .line 4651
    goto/16 :goto_1

    .line 4636
    .end local v0    # "serial":I
    .end local v1    # "powerUp":Z
    :sswitch_24
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4638
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4639
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4640
    .local v1, "indicationFilter":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setIndicationFilter(II)V

    .line 4641
    goto/16 :goto_1

    .line 4625
    .end local v0    # "serial":I
    .end local v1    # "indicationFilter":I
    :sswitch_25
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4627
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4628
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4629
    .local v1, "deviceStateType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4630
    .local v2, "state":Z
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendDeviceState(IIZ)V

    .line 4631
    goto/16 :goto_1

    .line 4616
    .end local v0    # "serial":I
    .end local v1    # "deviceStateType":I
    .end local v2    # "state":Z
    :sswitch_26
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4618
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4619
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getAllowedCarriers(I)V

    .line 4620
    goto/16 :goto_1

    .line 4604
    .end local v0    # "serial":I
    :sswitch_27
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4606
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4607
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4608
    .local v1, "allAllowed":Z
    new-instance v2, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 4609
    .local v2, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4610
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 4611
    goto/16 :goto_1

    .line 4595
    .end local v0    # "serial":I
    .end local v1    # "allAllowed":Z
    .end local v2    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :sswitch_28
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4597
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4598
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getModemActivityInfo(I)V

    .line 4599
    goto/16 :goto_1

    .line 4586
    .end local v0    # "serial":I
    :sswitch_29
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4588
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4589
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->pullLceData(I)V

    .line 4590
    goto/16 :goto_1

    .line 4577
    .end local v0    # "serial":I
    :sswitch_2a
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4579
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4580
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->stopLceService(I)V

    .line 4581
    goto/16 :goto_1

    .line 4566
    .end local v0    # "serial":I
    :sswitch_2b
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4568
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4569
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4570
    .local v1, "reportInterval":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4571
    .local v2, "pullMode":Z
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->startLceService(IIZ)V

    .line 4572
    goto/16 :goto_1

    .line 4555
    .end local v0    # "serial":I
    .end local v1    # "reportInterval":I
    .end local v2    # "pullMode":Z
    :sswitch_2c
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4557
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4558
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 4559
    .local v1, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4560
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 4561
    goto/16 :goto_1

    .line 4546
    .end local v0    # "serial":I
    .end local v1    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :sswitch_2d
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4548
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4549
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getRadioCapability(I)V

    .line 4550
    goto/16 :goto_1

    .line 4537
    .end local v0    # "serial":I
    :sswitch_2e
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4539
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4540
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->requestShutdown(I)V

    .line 4541
    goto/16 :goto_1

    .line 4526
    .end local v0    # "serial":I
    :sswitch_2f
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4528
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4529
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4530
    .local v1, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4531
    .local v2, "isRoaming":Z
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setDataProfile(ILjava/util/ArrayList;Z)V

    .line 4532
    goto/16 :goto_1

    .line 4514
    .end local v0    # "serial":I
    .end local v1    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    .end local v2    # "isRoaming":Z
    :sswitch_30
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4516
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4517
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4518
    .local v1, "authContext":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4519
    .local v2, "authData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4520
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    .line 4521
    goto/16 :goto_1

    .line 4505
    .end local v0    # "serial":I
    .end local v1    # "authContext":I
    .end local v2    # "authData":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :sswitch_31
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4507
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4508
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getHardwareConfig(I)V

    .line 4509
    goto/16 :goto_1

    .line 4495
    .end local v0    # "serial":I
    :sswitch_32
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4497
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4498
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4499
    .local v1, "allow":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setDataAllowed(IZ)V

    .line 4500
    goto/16 :goto_1

    .line 4484
    .end local v0    # "serial":I
    .end local v1    # "allow":Z
    :sswitch_33
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4486
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4487
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    .line 4488
    .local v1, "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/SelectUiccSub;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4489
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V

    .line 4490
    goto/16 :goto_1

    .line 4474
    .end local v0    # "serial":I
    .end local v1    # "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    :sswitch_34
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4476
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4477
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4478
    .local v1, "resetType":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->nvResetConfig(II)V

    .line 4479
    goto/16 :goto_1

    .line 4464
    .end local v0    # "serial":I
    .end local v1    # "resetType":I
    :sswitch_35
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4466
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4467
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4468
    .local v1, "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    .line 4469
    goto/16 :goto_1

    .line 4453
    .end local v0    # "serial":I
    .end local v1    # "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_36
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4455
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4456
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    .line 4457
    .local v1, "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/NvWriteItem;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4458
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    .line 4459
    goto/16 :goto_1

    .line 4443
    .end local v0    # "serial":I
    .end local v1    # "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    :sswitch_37
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4445
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4446
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4447
    .local v1, "itemId":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->nvReadItem(II)V

    .line 4448
    goto/16 :goto_1

    .line 4432
    .end local v0    # "serial":I
    .end local v1    # "itemId":I
    :sswitch_38
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4434
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4435
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 4436
    .local v1, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4437
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 4438
    goto/16 :goto_1

    .line 4422
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :sswitch_39
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4424
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4425
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4426
    .local v1, "channelId":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->iccCloseLogicalChannel(II)V

    .line 4427
    goto/16 :goto_1

    .line 4411
    .end local v0    # "serial":I
    .end local v1    # "channelId":I
    :sswitch_3a
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4413
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4414
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4415
    .local v1, "aid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4416
    .local v2, "p2":I
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    .line 4417
    goto/16 :goto_1

    .line 4400
    .end local v0    # "serial":I
    .end local v1    # "aid":Ljava/lang/String;
    .end local v2    # "p2":I
    :sswitch_3b
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4402
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4403
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 4404
    .local v1, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4405
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 4406
    goto/16 :goto_1

    .line 4389
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :sswitch_3c
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4391
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4392
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 4393
    .local v1, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4394
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 4395
    goto/16 :goto_1

    .line 4380
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :sswitch_3d
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4382
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4383
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getImsRegistrationState(I)V

    .line 4384
    goto/16 :goto_1

    .line 4367
    .end local v0    # "serial":I
    :sswitch_3e
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4369
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4370
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 4371
    .local v1, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4372
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4373
    .local v2, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4374
    .local v3, "isRoaming":Z
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    .line 4375
    goto/16 :goto_1

    .line 4357
    .end local v0    # "serial":I
    .end local v1    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v2    # "modemCognitive":Z
    .end local v3    # "isRoaming":Z
    :sswitch_3f
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4359
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4360
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4361
    .local v1, "rate":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setCellInfoListRate(II)V

    .line 4362
    goto/16 :goto_1

    .line 4348
    .end local v0    # "serial":I
    .end local v1    # "rate":I
    :sswitch_40
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4350
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4351
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getCellInfoList(I)V

    .line 4352
    goto/16 :goto_1

    .line 4339
    .end local v0    # "serial":I
    :sswitch_41
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4341
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4342
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getVoiceRadioTechnology(I)V

    .line 4343
    goto/16 :goto_1

    .line 4329
    .end local v0    # "serial":I
    :sswitch_42
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4331
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4332
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4333
    .local v1, "contents":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    .line 4334
    goto/16 :goto_1

    .line 4318
    .end local v0    # "serial":I
    .end local v1    # "contents":Ljava/lang/String;
    :sswitch_43
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4320
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4321
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4322
    .local v1, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4323
    .local v2, "ackPdu":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    .line 4324
    goto/16 :goto_1

    .line 4308
    .end local v0    # "serial":I
    .end local v1    # "success":Z
    .end local v2    # "ackPdu":Ljava/lang/String;
    :sswitch_44
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4310
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4311
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4312
    .local v1, "challenge":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->requestIsimAuthentication(ILjava/lang/String;)V

    .line 4313
    goto/16 :goto_1

    .line 4299
    .end local v0    # "serial":I
    .end local v1    # "challenge":Ljava/lang/String;
    :sswitch_45
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4301
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4302
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getCdmaSubscriptionSource(I)V

    .line 4303
    goto/16 :goto_1

    .line 4290
    .end local v0    # "serial":I
    :sswitch_46
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4292
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4293
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->reportStkServiceIsRunning(I)V

    .line 4294
    goto/16 :goto_1

    .line 4280
    .end local v0    # "serial":I
    :sswitch_47
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4282
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4283
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4284
    .local v1, "available":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->reportSmsMemoryStatus(IZ)V

    .line 4285
    goto/16 :goto_1

    .line 4270
    .end local v0    # "serial":I
    .end local v1    # "available":Z
    :sswitch_48
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4272
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4273
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4274
    .local v1, "smsc":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setSmscAddress(ILjava/lang/String;)V

    .line 4275
    goto/16 :goto_1

    .line 4261
    .end local v0    # "serial":I
    .end local v1    # "smsc":Ljava/lang/String;
    :sswitch_49
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4263
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4264
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getSmscAddress(I)V

    .line 4265
    goto/16 :goto_1

    .line 4252
    .end local v0    # "serial":I
    :sswitch_4a
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4254
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4255
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 4256
    goto/16 :goto_1

    .line 4243
    .end local v0    # "serial":I
    :sswitch_4b
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4245
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4246
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getDeviceIdentity(I)V

    .line 4247
    goto/16 :goto_1

    .line 4233
    .end local v0    # "serial":I
    :sswitch_4c
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4235
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4236
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4237
    .local v1, "index":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->deleteSmsOnRuim(II)V

    .line 4238
    goto/16 :goto_1

    .line 4222
    .end local v0    # "serial":I
    .end local v1    # "index":I
    :sswitch_4d
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4224
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4225
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    .line 4226
    .local v1, "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4227
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    .line 4228
    goto/16 :goto_1

    .line 4213
    .end local v0    # "serial":I
    .end local v1    # "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    :sswitch_4e
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4215
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4216
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getCDMASubscription(I)V

    .line 4217
    goto/16 :goto_1

    .line 4203
    .end local v0    # "serial":I
    :sswitch_4f
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4205
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4206
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4207
    .local v1, "activate":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setCdmaBroadcastActivation(IZ)V

    .line 4208
    goto/16 :goto_1

    .line 4193
    .end local v0    # "serial":I
    .end local v1    # "activate":Z
    :sswitch_50
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4195
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4196
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4197
    .local v1, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V

    .line 4198
    goto/16 :goto_1

    .line 4184
    .end local v0    # "serial":I
    .end local v1    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :sswitch_51
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4186
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4187
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getCdmaBroadcastConfig(I)V

    .line 4188
    goto/16 :goto_1

    .line 4174
    .end local v0    # "serial":I
    :sswitch_52
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4176
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4177
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4178
    .local v1, "activate":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setGsmBroadcastActivation(IZ)V

    .line 4179
    goto/16 :goto_1

    .line 4164
    .end local v0    # "serial":I
    .end local v1    # "activate":Z
    :sswitch_53
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4166
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4167
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4168
    .local v1, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    .line 4169
    goto/16 :goto_1

    .line 4155
    .end local v0    # "serial":I
    .end local v1    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :sswitch_54
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4157
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4158
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getGsmBroadcastConfig(I)V

    .line 4159
    goto/16 :goto_1

    .line 4144
    .end local v0    # "serial":I
    :sswitch_55
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4146
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4147
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 4148
    .local v1, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4149
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 4150
    goto/16 :goto_1

    .line 4133
    .end local v0    # "serial":I
    .end local v1    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :sswitch_56
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4135
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4136
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 4137
    .local v1, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4138
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 4139
    goto/16 :goto_1

    .line 4121
    .end local v0    # "serial":I
    .end local v1    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :sswitch_57
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4123
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4124
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4125
    .local v1, "dtmf":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4126
    .local v2, "on":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4127
    .local v3, "off":I
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    .line 4128
    goto/16 :goto_1

    .line 4111
    .end local v0    # "serial":I
    .end local v1    # "dtmf":Ljava/lang/String;
    .end local v2    # "on":I
    .end local v3    # "off":I
    :sswitch_58
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4113
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4114
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4115
    .local v1, "featureCode":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendCDMAFeatureCode(ILjava/lang/String;)V

    .line 4116
    goto/16 :goto_1

    .line 4102
    .end local v0    # "serial":I
    .end local v1    # "featureCode":Ljava/lang/String;
    :sswitch_59
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4104
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4105
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getPreferredVoicePrivacy(I)V

    .line 4106
    goto/16 :goto_1

    .line 4092
    .end local v0    # "serial":I
    :sswitch_5a
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4094
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4095
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4096
    .local v1, "enable":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setPreferredVoicePrivacy(IZ)V

    .line 4097
    goto/16 :goto_1

    .line 4083
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_5b
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4085
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4086
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getTTYMode(I)V

    .line 4087
    goto/16 :goto_1

    .line 4073
    .end local v0    # "serial":I
    :sswitch_5c
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4075
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4076
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4077
    .local v1, "mode":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setTTYMode(II)V

    .line 4078
    goto/16 :goto_1

    .line 4064
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_5d
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4066
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4067
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getCdmaRoamingPreference(I)V

    .line 4068
    goto/16 :goto_1

    .line 4054
    .end local v0    # "serial":I
    :sswitch_5e
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4056
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4057
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4058
    .local v1, "type":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setCdmaRoamingPreference(II)V

    .line 4059
    goto/16 :goto_1

    .line 4044
    .end local v0    # "serial":I
    .end local v1    # "type":I
    :sswitch_5f
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4046
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4047
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4048
    .local v1, "cdmaSub":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setCdmaSubscriptionSource(II)V

    .line 4049
    goto/16 :goto_1

    .line 4034
    .end local v0    # "serial":I
    .end local v1    # "cdmaSub":I
    :sswitch_60
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4036
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4037
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4038
    .local v1, "enable":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setLocationUpdates(IZ)V

    .line 4039
    goto/16 :goto_1

    .line 4025
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_61
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4027
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4028
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getNeighboringCids(I)V

    .line 4029
    goto/16 :goto_1

    .line 4016
    .end local v0    # "serial":I
    :sswitch_62
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4018
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4019
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getPreferredNetworkType(I)V

    .line 4020
    goto/16 :goto_1

    .line 4006
    .end local v0    # "serial":I
    :sswitch_63
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4008
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4009
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4010
    .local v1, "nwType":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setPreferredNetworkType(II)V

    .line 4011
    goto/16 :goto_1

    .line 3997
    .end local v0    # "serial":I
    .end local v1    # "nwType":I
    :sswitch_64
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3999
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4000
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->explicitCallTransfer(I)V

    .line 4001
    goto/16 :goto_1

    .line 3987
    .end local v0    # "serial":I
    :sswitch_65
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3989
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3990
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3991
    .local v1, "accept":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    .line 3992
    goto/16 :goto_1

    .line 3977
    .end local v0    # "serial":I
    .end local v1    # "accept":Z
    :sswitch_66
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3979
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3980
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3981
    .local v1, "commandResponse":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    .line 3982
    goto/16 :goto_1

    .line 3967
    .end local v0    # "serial":I
    .end local v1    # "commandResponse":Ljava/lang/String;
    :sswitch_67
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3969
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3970
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3971
    .local v1, "command":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendEnvelope(ILjava/lang/String;)V

    .line 3972
    goto/16 :goto_1

    .line 3958
    .end local v0    # "serial":I
    .end local v1    # "command":Ljava/lang/String;
    :sswitch_68
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3960
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3961
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getAvailableBandModes(I)V

    .line 3962
    goto/16 :goto_1

    .line 3948
    .end local v0    # "serial":I
    :sswitch_69
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3950
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3951
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3952
    .local v1, "mode":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setBandMode(II)V

    .line 3953
    goto/16 :goto_1

    .line 3938
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_6a
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3940
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3941
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3942
    .local v1, "index":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->deleteSmsOnSim(II)V

    .line 3943
    goto/16 :goto_1

    .line 3927
    .end local v0    # "serial":I
    .end local v1    # "index":I
    :sswitch_6b
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3929
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3930
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    .line 3931
    .local v1, "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3932
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    .line 3933
    goto/16 :goto_1

    .line 3917
    .end local v0    # "serial":I
    .end local v1    # "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    :sswitch_6c
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3919
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3920
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3921
    .local v1, "enable":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setSuppServiceNotifications(IZ)V

    .line 3922
    goto/16 :goto_1

    .line 3908
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_6d
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3910
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3911
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getDataCallList(I)V

    .line 3912
    goto/16 :goto_1

    .line 3899
    .end local v0    # "serial":I
    :sswitch_6e
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3901
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3902
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getClip(I)V

    .line 3903
    goto/16 :goto_1

    .line 3890
    .end local v0    # "serial":I
    :sswitch_6f
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3892
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3893
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getMute(I)V

    .line 3894
    goto/16 :goto_1

    .line 3880
    .end local v0    # "serial":I
    :sswitch_70
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3882
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3883
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3884
    .restart local v1    # "enable":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setMute(IZ)V

    .line 3885
    goto/16 :goto_1

    .line 3870
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_71
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3872
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3873
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3874
    .local v1, "gsmIndex":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->separateConnection(II)V

    .line 3875
    goto/16 :goto_1

    .line 3861
    .end local v0    # "serial":I
    .end local v1    # "gsmIndex":I
    :sswitch_72
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3863
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3864
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getBasebandVersion(I)V

    .line 3865
    goto/16 :goto_1

    .line 3852
    .end local v0    # "serial":I
    :sswitch_73
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3854
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3855
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->stopDtmf(I)V

    .line 3856
    goto/16 :goto_1

    .line 3842
    .end local v0    # "serial":I
    :sswitch_74
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3844
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3845
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3846
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->startDtmf(ILjava/lang/String;)V

    .line 3847
    goto/16 :goto_1

    .line 3833
    .end local v0    # "serial":I
    .end local v1    # "s":Ljava/lang/String;
    :sswitch_75
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3835
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3836
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getAvailableNetworks(I)V

    .line 3837
    goto/16 :goto_1

    .line 3823
    .end local v0    # "serial":I
    :sswitch_76
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3825
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3826
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3827
    .local v1, "operatorNumeric":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    .line 3828
    goto/16 :goto_1

    .line 3814
    .end local v0    # "serial":I
    .end local v1    # "operatorNumeric":Ljava/lang/String;
    :sswitch_77
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3816
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3817
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 3818
    goto/16 :goto_1

    .line 3805
    .end local v0    # "serial":I
    :sswitch_78
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3807
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3808
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getNetworkSelectionMode(I)V

    .line 3809
    goto/16 :goto_1

    .line 3793
    .end local v0    # "serial":I
    :sswitch_79
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3795
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3796
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3797
    .local v1, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3798
    .local v2, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3799
    .local v3, "newPassword":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3800
    goto/16 :goto_1

    .line 3779
    .end local v0    # "serial":I
    .end local v1    # "facility":Ljava/lang/String;
    .end local v2    # "oldPassword":Ljava/lang/String;
    .end local v3    # "newPassword":Ljava/lang/String;
    :sswitch_7a
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3781
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 3782
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 3783
    .local v8, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v9

    .line 3784
    .local v9, "lockState":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 3785
    .local v13, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 3786
    .local v14, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 3787
    .local v15, "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move v3, v9

    move-object v4, v13

    move v5, v14

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 3788
    goto/16 :goto_1

    .line 3766
    .end local v7    # "serial":I
    .end local v8    # "facility":Ljava/lang/String;
    .end local v9    # "lockState":Z
    .end local v13    # "password":Ljava/lang/String;
    .end local v14    # "serviceClass":I
    .end local v15    # "appId":Ljava/lang/String;
    :sswitch_7b
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3768
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 3769
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 3770
    .local v7, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 3771
    .local v8, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 3772
    .local v9, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 3773
    .local v13, "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 3774
    goto/16 :goto_1

    .line 3755
    .end local v6    # "serial":I
    .end local v7    # "facility":Ljava/lang/String;
    .end local v8    # "password":Ljava/lang/String;
    .end local v9    # "serviceClass":I
    .end local v13    # "appId":Ljava/lang/String;
    :sswitch_7c
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3757
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3758
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3759
    .local v1, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3760
    .local v2, "reasonRadioShutDown":Z
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->deactivateDataCall(IIZ)V

    .line 3761
    goto/16 :goto_1

    .line 3746
    .end local v0    # "serial":I
    .end local v1    # "cid":I
    .end local v2    # "reasonRadioShutDown":Z
    :sswitch_7d
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3748
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3749
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->acceptCall(I)V

    .line 3750
    goto/16 :goto_1

    .line 3735
    .end local v0    # "serial":I
    :sswitch_7e
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3737
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3738
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3739
    .local v1, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3740
    .local v2, "cause":I
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    .line 3741
    goto/16 :goto_1

    .line 3724
    .end local v0    # "serial":I
    .end local v1    # "success":Z
    .end local v2    # "cause":I
    :sswitch_7f
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3726
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3727
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3728
    .local v1, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3729
    .local v2, "serviceClass":I
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setCallWaiting(IZI)V

    .line 3730
    goto/16 :goto_1

    .line 3714
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    .end local v2    # "serviceClass":I
    :sswitch_80
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3716
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3717
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3718
    .local v1, "serviceClass":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getCallWaiting(II)V

    .line 3719
    goto/16 :goto_1

    .line 3703
    .end local v0    # "serial":I
    .end local v1    # "serviceClass":I
    :sswitch_81
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3705
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3706
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 3707
    .local v1, "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3708
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 3709
    goto/16 :goto_1

    .line 3692
    .end local v0    # "serial":I
    .end local v1    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :sswitch_82
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3694
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3695
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 3696
    .restart local v1    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3697
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 3698
    goto/16 :goto_1

    .line 3682
    .end local v0    # "serial":I
    .end local v1    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :sswitch_83
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3684
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3685
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3686
    .local v1, "status":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setClir(II)V

    .line 3687
    goto/16 :goto_1

    .line 3673
    .end local v0    # "serial":I
    .end local v1    # "status":I
    :sswitch_84
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3675
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3676
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getClir(I)V

    .line 3677
    goto/16 :goto_1

    .line 3664
    .end local v0    # "serial":I
    :sswitch_85
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3666
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3667
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->cancelPendingUssd(I)V

    .line 3668
    goto/16 :goto_1

    .line 3654
    .end local v0    # "serial":I
    :sswitch_86
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3656
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3657
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3658
    .local v1, "ussd":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendUssd(ILjava/lang/String;)V

    .line 3659
    goto/16 :goto_1

    .line 3643
    .end local v0    # "serial":I
    .end local v1    # "ussd":Ljava/lang/String;
    :sswitch_87
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3645
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3646
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    .line 3647
    .local v1, "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/IccIo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3648
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    .line 3649
    goto/16 :goto_1

    .line 3628
    .end local v0    # "serial":I
    .end local v1    # "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    :sswitch_88
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3630
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 3631
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 3632
    .local v8, "radioTechnology":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v9, v0

    .line 3633
    .local v9, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v9, v11}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3634
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v13

    .line 3635
    .local v13, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v14

    .line 3636
    .local v14, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v15

    .line 3637
    .local v15, "isRoaming":Z
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move-object v3, v9

    move v4, v13

    move v5, v14

    move v6, v15

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    .line 3638
    goto/16 :goto_1

    .line 3617
    .end local v7    # "serial":I
    .end local v8    # "radioTechnology":I
    .end local v9    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v13    # "modemCognitive":Z
    .end local v14    # "roamingAllowed":Z
    .end local v15    # "isRoaming":Z
    :sswitch_89
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3619
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3620
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 3621
    .local v1, "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3622
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 3623
    goto/16 :goto_1

    .line 3606
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :sswitch_8a
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3608
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3609
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 3610
    .restart local v1    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3611
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 3612
    goto/16 :goto_1

    .line 3596
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :sswitch_8b
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3598
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3599
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3600
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    .line 3601
    goto/16 :goto_1

    .line 3586
    .end local v0    # "serial":I
    .end local v1    # "s":Ljava/lang/String;
    :sswitch_8c
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3588
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3589
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3590
    .local v1, "on":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setRadioPower(IZ)V

    .line 3591
    goto/16 :goto_1

    .line 3577
    .end local v0    # "serial":I
    .end local v1    # "on":Z
    :sswitch_8d
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3579
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3580
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getOperator(I)V

    .line 3581
    goto/16 :goto_1

    .line 3568
    .end local v0    # "serial":I
    :sswitch_8e
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3570
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3571
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getDataRegistrationState(I)V

    .line 3572
    goto/16 :goto_1

    .line 3559
    .end local v0    # "serial":I
    :sswitch_8f
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3561
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3562
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getVoiceRegistrationState(I)V

    .line 3563
    goto/16 :goto_1

    .line 3550
    .end local v0    # "serial":I
    :sswitch_90
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3552
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3553
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getSignalStrength(I)V

    .line 3554
    goto/16 :goto_1

    .line 3541
    .end local v0    # "serial":I
    :sswitch_91
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3543
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3544
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getLastCallFailCause(I)V

    .line 3545
    goto/16 :goto_1

    .line 3532
    .end local v0    # "serial":I
    :sswitch_92
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3534
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3535
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->rejectCall(I)V

    .line 3536
    goto/16 :goto_1

    .line 3523
    .end local v0    # "serial":I
    :sswitch_93
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3525
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3526
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->conference(I)V

    .line 3527
    goto/16 :goto_1

    .line 3514
    .end local v0    # "serial":I
    :sswitch_94
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3516
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3517
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    .line 3518
    goto/16 :goto_1

    .line 3505
    .end local v0    # "serial":I
    :sswitch_95
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3507
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3508
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->hangupForegroundResumeBackground(I)V

    .line 3509
    goto/16 :goto_1

    .line 3496
    .end local v0    # "serial":I
    :sswitch_96
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3498
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3499
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->hangupWaitingOrBackground(I)V

    .line 3500
    goto/16 :goto_1

    .line 3486
    .end local v0    # "serial":I
    :sswitch_97
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3488
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3489
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3490
    .local v1, "gsmIndex":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->hangup(II)V

    .line 3491
    goto/16 :goto_1

    .line 3476
    .end local v0    # "serial":I
    .end local v1    # "gsmIndex":I
    :sswitch_98
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3478
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3479
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3480
    .local v1, "aid":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getImsiForApp(ILjava/lang/String;)V

    .line 3481
    goto/16 :goto_1

    .line 3465
    .end local v0    # "serial":I
    .end local v1    # "aid":Ljava/lang/String;
    :sswitch_99
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3467
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3468
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 3469
    .local v1, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3470
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 3471
    goto/16 :goto_1

    .line 3456
    .end local v0    # "serial":I
    .end local v1    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :sswitch_9a
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3458
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3459
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getCurrentCalls(I)V

    .line 3460
    goto/16 :goto_1

    .line 3446
    .end local v0    # "serial":I
    :sswitch_9b
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3448
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3449
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3450
    .local v1, "netPin":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    .line 3451
    goto/16 :goto_1

    .line 3434
    .end local v0    # "serial":I
    .end local v1    # "netPin":Ljava/lang/String;
    :sswitch_9c
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3436
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3437
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3438
    .local v1, "oldPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3439
    .local v2, "newPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3440
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3441
    goto/16 :goto_1

    .line 3422
    .end local v0    # "serial":I
    .end local v1    # "oldPin2":Ljava/lang/String;
    .end local v2    # "newPin2":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :sswitch_9d
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3424
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3425
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3426
    .local v1, "oldPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3427
    .local v2, "newPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3428
    .restart local v3    # "aid":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3429
    goto/16 :goto_1

    .line 3410
    .end local v0    # "serial":I
    .end local v1    # "oldPin":Ljava/lang/String;
    .end local v2    # "newPin":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :sswitch_9e
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3412
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3413
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3414
    .local v1, "puk2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3415
    .local v2, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3416
    .restart local v3    # "aid":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3417
    goto :goto_1

    .line 3399
    .end local v0    # "serial":I
    .end local v1    # "puk2":Ljava/lang/String;
    .end local v2    # "pin2":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :sswitch_9f
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3401
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3402
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3403
    .local v1, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3404
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 3405
    goto :goto_1

    .line 3387
    .end local v0    # "serial":I
    .end local v1    # "pin2":Ljava/lang/String;
    .end local v2    # "aid":Ljava/lang/String;
    :sswitch_a0
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3389
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3390
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3391
    .local v1, "puk":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3392
    .local v2, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3393
    .restart local v3    # "aid":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3394
    goto :goto_1

    .line 3376
    .end local v0    # "serial":I
    .end local v1    # "puk":Ljava/lang/String;
    .end local v2    # "pin":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :sswitch_a1
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3378
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3379
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3380
    .local v1, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3381
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 3382
    goto :goto_1

    .line 3367
    .end local v0    # "serial":I
    .end local v1    # "pin":Ljava/lang/String;
    .end local v2    # "aid":Ljava/lang/String;
    :sswitch_a2
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3369
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3370
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getIccCardStatus(I)V

    .line 3371
    goto :goto_1

    .line 3355
    .end local v0    # "serial":I
    :sswitch_a3
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3357
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioResponse;

    move-result-object v0

    .line 3358
    .local v0, "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioIndication;

    move-result-object v1

    .line 3359
    .local v1, "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 3360
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3361
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3362
    nop

    .line 5061
    .end local v0    # "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    .end local v1    # "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_a3
        0x2 -> :sswitch_a2
        0x3 -> :sswitch_a1
        0x4 -> :sswitch_a0
        0x5 -> :sswitch_9f
        0x6 -> :sswitch_9e
        0x7 -> :sswitch_9d
        0x8 -> :sswitch_9c
        0x9 -> :sswitch_9b
        0xa -> :sswitch_9a
        0xb -> :sswitch_99
        0xc -> :sswitch_98
        0xd -> :sswitch_97
        0xe -> :sswitch_96
        0xf -> :sswitch_95
        0x10 -> :sswitch_94
        0x11 -> :sswitch_93
        0x12 -> :sswitch_92
        0x13 -> :sswitch_91
        0x14 -> :sswitch_90
        0x15 -> :sswitch_8f
        0x16 -> :sswitch_8e
        0x17 -> :sswitch_8d
        0x18 -> :sswitch_8c
        0x19 -> :sswitch_8b
        0x1a -> :sswitch_8a
        0x1b -> :sswitch_89
        0x1c -> :sswitch_88
        0x1d -> :sswitch_87
        0x1e -> :sswitch_86
        0x1f -> :sswitch_85
        0x20 -> :sswitch_84
        0x21 -> :sswitch_83
        0x22 -> :sswitch_82
        0x23 -> :sswitch_81
        0x24 -> :sswitch_80
        0x25 -> :sswitch_7f
        0x26 -> :sswitch_7e
        0x27 -> :sswitch_7d
        0x28 -> :sswitch_7c
        0x29 -> :sswitch_7b
        0x2a -> :sswitch_7a
        0x2b -> :sswitch_79
        0x2c -> :sswitch_78
        0x2d -> :sswitch_77
        0x2e -> :sswitch_76
        0x2f -> :sswitch_75
        0x30 -> :sswitch_74
        0x31 -> :sswitch_73
        0x32 -> :sswitch_72
        0x33 -> :sswitch_71
        0x34 -> :sswitch_70
        0x35 -> :sswitch_6f
        0x36 -> :sswitch_6e
        0x37 -> :sswitch_6d
        0x38 -> :sswitch_6c
        0x39 -> :sswitch_6b
        0x3a -> :sswitch_6a
        0x3b -> :sswitch_69
        0x3c -> :sswitch_68
        0x3d -> :sswitch_67
        0x3e -> :sswitch_66
        0x3f -> :sswitch_65
        0x40 -> :sswitch_64
        0x41 -> :sswitch_63
        0x42 -> :sswitch_62
        0x43 -> :sswitch_61
        0x44 -> :sswitch_60
        0x45 -> :sswitch_5f
        0x46 -> :sswitch_5e
        0x47 -> :sswitch_5d
        0x48 -> :sswitch_5c
        0x49 -> :sswitch_5b
        0x4a -> :sswitch_5a
        0x4b -> :sswitch_59
        0x4c -> :sswitch_58
        0x4d -> :sswitch_57
        0x4e -> :sswitch_56
        0x4f -> :sswitch_55
        0x50 -> :sswitch_54
        0x51 -> :sswitch_53
        0x52 -> :sswitch_52
        0x53 -> :sswitch_51
        0x54 -> :sswitch_50
        0x55 -> :sswitch_4f
        0x56 -> :sswitch_4e
        0x57 -> :sswitch_4d
        0x58 -> :sswitch_4c
        0x59 -> :sswitch_4b
        0x5a -> :sswitch_4a
        0x5b -> :sswitch_49
        0x5c -> :sswitch_48
        0x5d -> :sswitch_47
        0x5e -> :sswitch_46
        0x5f -> :sswitch_45
        0x60 -> :sswitch_44
        0x61 -> :sswitch_43
        0x62 -> :sswitch_42
        0x63 -> :sswitch_41
        0x64 -> :sswitch_40
        0x65 -> :sswitch_3f
        0x66 -> :sswitch_3e
        0x67 -> :sswitch_3d
        0x68 -> :sswitch_3c
        0x69 -> :sswitch_3b
        0x6a -> :sswitch_3a
        0x6b -> :sswitch_39
        0x6c -> :sswitch_38
        0x6d -> :sswitch_37
        0x6e -> :sswitch_36
        0x6f -> :sswitch_35
        0x70 -> :sswitch_34
        0x71 -> :sswitch_33
        0x72 -> :sswitch_32
        0x73 -> :sswitch_31
        0x74 -> :sswitch_30
        0x75 -> :sswitch_2f
        0x76 -> :sswitch_2e
        0x77 -> :sswitch_2d
        0x78 -> :sswitch_2c
        0x79 -> :sswitch_2b
        0x7a -> :sswitch_2a
        0x7b -> :sswitch_29
        0x7c -> :sswitch_28
        0x7d -> :sswitch_27
        0x7e -> :sswitch_26
        0x7f -> :sswitch_25
        0x80 -> :sswitch_24
        0x81 -> :sswitch_23
        0x82 -> :sswitch_22
        0x83 -> :sswitch_21
        0x84 -> :sswitch_20
        0x85 -> :sswitch_1f
        0x86 -> :sswitch_1e
        0x87 -> :sswitch_1d
        0x88 -> :sswitch_1c
        0x89 -> :sswitch_1b
        0x8a -> :sswitch_1a
        0x8b -> :sswitch_19
        0x8c -> :sswitch_18
        0x8d -> :sswitch_17
        0x8e -> :sswitch_16
        0x8f -> :sswitch_15
        0x90 -> :sswitch_14
        0x91 -> :sswitch_13
        0x92 -> :sswitch_12
        0x93 -> :sswitch_11
        0x94 -> :sswitch_10
        0x95 -> :sswitch_f
        0x96 -> :sswitch_e
        0x97 -> :sswitch_d
        0x98 -> :sswitch_c
        0x99 -> :sswitch_b
        0x9a -> :sswitch_a
        0x9b -> :sswitch_9
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

    .line 3306
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 3334
    const-string v0, "android.hardware.radio@1.4::IRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3335
    return-object p0

    .line 3337
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

    .line 3341
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 3342
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .locals 0

    .line 3296
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 3346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 3328
    const/4 v0, 0x1

    return v0
.end method
