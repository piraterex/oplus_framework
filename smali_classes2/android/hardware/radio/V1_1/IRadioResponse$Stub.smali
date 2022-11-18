.class public abstract Landroid/hardware/radio/V1_1/IRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "IRadioResponse.java"

# interfaces
.implements Landroid/hardware/radio/V1_1/IRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_1/IRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 2722
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 2725
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

    .line 2739
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 2777
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 2778
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 2779
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 2780
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 2781
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

    .line 2751
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

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

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
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

    :array_1
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

    :array_2
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
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2730
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.radio@1.1::IRadioResponse"

    const-string v2, "android.hardware.radio@1.0::IRadioResponse"

    const-string v3, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 2745
    const-string v0, "android.hardware.radio@1.1::IRadioResponse"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 2765
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .locals 0

    .line 2787
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 2789
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

    .line 2817
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v0, "android.hardware.radio@1.1::IRadioResponse"

    const/4 v1, 0x0

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "android.hardware.radio@1.0::IRadioResponse"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 4375
    :sswitch_0
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4377
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->notifySyspropsChanged()V

    .line 4378
    goto/16 :goto_1

    .line 4364
    :sswitch_1
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4366
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 4367
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4368
    invoke-virtual {v0, v9}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4369
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4370
    goto/16 :goto_1

    .line 4354
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4356
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->ping()V

    .line 4357
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4358
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4359
    goto/16 :goto_1

    .line 4349
    :sswitch_3
    goto/16 :goto_1

    .line 4341
    :sswitch_4
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4343
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->setHALInstrumentation()V

    .line 4344
    goto/16 :goto_1

    .line 4307
    :sswitch_5
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4309
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 4310
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4312
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 4314
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4315
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 4316
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 4317
    new-instance v1, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 4318
    .local v1, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 4320
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 4321
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 4323
    .local v10, "_hidl_array_item_1":[B
    if-eqz v10, :cond_0

    array-length v11, v10

    const/16 v12, 0x20

    if-ne v11, v12, :cond_0

    .line 4327
    invoke-virtual {v1, v5, v6, v10}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 4328
    nop

    .line 4318
    .end local v5    # "_hidl_array_offset_1":J
    .end local v10    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4324
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v10    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Array element is not of the expected length"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 4331
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v10    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 4333
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 4335
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4336
    goto/16 :goto_1

    .line 4296
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4298
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 4299
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4300
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4301
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4302
    goto/16 :goto_1

    .line 4284
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4286
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 4287
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4288
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7, v0, v2}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 4289
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4290
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4291
    goto/16 :goto_1

    .line 4273
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4275
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 4276
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4277
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 4278
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4279
    goto/16 :goto_1

    .line 4263
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4265
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4266
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4267
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->stopKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4268
    goto/16 :goto_1

    .line 4251
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_a
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4253
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4254
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4255
    new-instance v1, Landroid/hardware/radio/V1_1/KeepaliveStatus;

    invoke-direct {v1}, Landroid/hardware/radio/V1_1/KeepaliveStatus;-><init>()V

    .line 4256
    .local v1, "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_1/KeepaliveStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4257
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->startKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_1/KeepaliveStatus;)V

    .line 4258
    goto/16 :goto_1

    .line 4241
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    :sswitch_b
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4243
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4244
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4245
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->stopNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4246
    goto/16 :goto_1

    .line 4231
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_c
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4233
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4234
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4235
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->startNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4236
    goto/16 :goto_1

    .line 4221
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_d
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4223
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4224
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4225
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->setSimCardPowerResponse_1_1(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4226
    goto/16 :goto_1

    .line 4211
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_e
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4213
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4214
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4215
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->setCarrierInfoForImsiEncryptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4216
    goto/16 :goto_1

    .line 4202
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_f
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4204
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4205
    .local v0, "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->acknowledgeRequest(I)V

    .line 4206
    goto/16 :goto_1

    .line 4192
    .end local v0    # "serial":I
    :sswitch_10
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4194
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4195
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4196
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->setSimCardPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4197
    goto/16 :goto_1

    .line 4182
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_11
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4184
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4185
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4186
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->setIndicationFilterResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4187
    goto/16 :goto_1

    .line 4172
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_12
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4174
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4175
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4176
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->sendDeviceStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4177
    goto/16 :goto_1

    .line 4159
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_13
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4161
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4162
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4163
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4164
    .local v1, "allAllowed":Z
    new-instance v2, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 4165
    .local v2, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4166
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->getAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 4167
    goto/16 :goto_1

    .line 4148
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "allAllowed":Z
    .end local v2    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :sswitch_14
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4150
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4151
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4152
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4153
    .local v1, "numAllowed":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->setAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4154
    goto/16 :goto_1

    .line 4136
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "numAllowed":I
    :sswitch_15
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4138
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4139
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4140
    new-instance v1, Landroid/hardware/radio/V1_0/ActivityStatsInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;-><init>()V

    .line 4141
    .local v1, "activityInfo":Landroid/hardware/radio/V1_0/ActivityStatsInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4142
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->getModemActivityInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/ActivityStatsInfo;)V

    .line 4143
    goto/16 :goto_1

    .line 4124
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "activityInfo":Landroid/hardware/radio/V1_0/ActivityStatsInfo;
    :sswitch_16
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4126
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4127
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4128
    new-instance v1, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 4129
    .local v1, "lceInfo":Landroid/hardware/radio/V1_0/LceDataInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4130
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->pullLceDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceDataInfo;)V

    .line 4131
    goto/16 :goto_1

    .line 4112
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "lceInfo":Landroid/hardware/radio/V1_0/LceDataInfo;
    :sswitch_17
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4114
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4115
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4116
    new-instance v1, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    .line 4117
    .local v1, "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4118
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->stopLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    .line 4119
    goto/16 :goto_1

    .line 4100
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    :sswitch_18
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4102
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4103
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4104
    new-instance v1, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    .line 4105
    .restart local v1    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4106
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->startLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    .line 4107
    goto/16 :goto_1

    .line 4088
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    :sswitch_19
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4090
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4091
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4092
    new-instance v1, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 4093
    .local v1, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4094
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->setRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    .line 4095
    goto/16 :goto_1

    .line 4076
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :sswitch_1a
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4078
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4079
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4080
    new-instance v1, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 4081
    .restart local v1    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4082
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->getRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    .line 4083
    goto/16 :goto_1

    .line 4066
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :sswitch_1b
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4068
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4069
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4070
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->requestShutdownResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4071
    goto/16 :goto_1

    .line 4056
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_1c
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4058
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4059
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4060
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->setDataProfileResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4061
    goto/16 :goto_1

    .line 4044
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_1d
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4046
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4047
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4048
    new-instance v1, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 4049
    .local v1, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4050
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->requestIccSimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 4051
    goto/16 :goto_1

    .line 4033
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_1e
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4035
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4036
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4037
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4038
    .local v1, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->getHardwareConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4039
    goto/16 :goto_1

    .line 4023
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    :sswitch_1f
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4025
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4026
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4027
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->setDataAllowedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4028
    goto/16 :goto_1

    .line 4013
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_20
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4015
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4016
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4017
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->setUiccSubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4018
    goto/16 :goto_1

    .line 4003
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_21
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4005
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4006
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4007
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->nvResetConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4008
    goto/16 :goto_1

    .line 3993
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_22
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3995
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3996
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3997
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->nvWriteCdmaPrlResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3998
    goto/16 :goto_1

    .line 3983
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_23
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3985
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3986
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3987
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->nvWriteItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3988
    goto/16 :goto_1

    .line 3972
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_24
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3974
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3975
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3976
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3977
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->nvReadItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 3978
    goto/16 :goto_1

    .line 3960
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "result":Ljava/lang/String;
    :sswitch_25
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3962
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3963
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3964
    new-instance v1, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 3965
    .local v1, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3966
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->iccTransmitApduLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 3967
    goto/16 :goto_1

    .line 3950
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_26
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3952
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3953
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3954
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->iccCloseLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3955
    goto/16 :goto_1

    .line 3938
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_27
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3940
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3941
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3942
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3943
    .local v1, "channelId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3944
    .local v2, "selectResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->iccOpenLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ILjava/util/ArrayList;)V

    .line 3945
    goto/16 :goto_1

    .line 3926
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "channelId":I
    .end local v2    # "selectResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_28
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3928
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3929
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3930
    new-instance v1, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 3931
    .local v1, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3932
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->iccTransmitApduBasicChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 3933
    goto/16 :goto_1

    .line 3914
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_29
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3916
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3917
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3918
    new-instance v1, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 3919
    .local v1, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3920
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->sendImsSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 3921
    goto/16 :goto_1

    .line 3902
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_2a
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3904
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3905
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3906
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3907
    .local v1, "isRegistered":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3908
    .local v2, "ratFamily":I
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->getImsRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

    .line 3909
    goto/16 :goto_1

    .line 3892
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "isRegistered":Z
    .end local v2    # "ratFamily":I
    :sswitch_2b
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3894
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3895
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3896
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->setInitialAttachApnResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3897
    goto/16 :goto_1

    .line 3882
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_2c
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3884
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3885
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3886
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->setCellInfoListRateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3887
    goto/16 :goto_1

    .line 3871
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_2d
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3873
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3874
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3875
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3876
    .local v1, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->getCellInfoListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3877
    goto/16 :goto_1

    .line 3860
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    :sswitch_2e
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3862
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3863
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3864
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3865
    .local v1, "rat":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->getVoiceRadioTechnologyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3866
    goto/16 :goto_1

    .line 3848
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "rat":I
    :sswitch_2f
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3850
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3851
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3852
    new-instance v1, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 3853
    .local v1, "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3854
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->sendEnvelopeWithStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 3855
    goto/16 :goto_1

    .line 3838
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_30
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3840
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3841
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3842
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->acknowledgeIncomingGsmSmsWithPduResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3843
    goto/16 :goto_1

    .line 3827
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_31
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3829
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3830
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3831
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3832
    .local v1, "response":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->requestIsimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 3833
    goto/16 :goto_1

    .line 3816
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "response":Ljava/lang/String;
    :sswitch_32
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3818
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3819
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3820
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3821
    .local v1, "source":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->getCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3822
    goto/16 :goto_1

    .line 3806
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "source":I
    :sswitch_33
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3808
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3809
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3810
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->reportStkServiceIsRunningResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3811
    goto/16 :goto_1

    .line 3796
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_34
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3798
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3799
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3800
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->reportSmsMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3801
    goto/16 :goto_1

    .line 3786
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_35
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3788
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3789
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3790
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->setSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3791
    goto/16 :goto_1

    .line 3775
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_36
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3777
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3778
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3779
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3780
    .local v1, "smsc":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->getSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 3781
    goto/16 :goto_1

    .line 3765
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "smsc":Ljava/lang/String;
    :sswitch_37
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3767
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3768
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3769
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->exitEmergencyCallbackModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3770
    goto/16 :goto_1

    .line 3751
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_38
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3753
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object v6, v0

    .line 3754
    .local v6, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v6, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3755
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 3756
    .local v10, "imei":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 3757
    .local v11, "imeisv":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 3758
    .local v12, "esn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 3759
    .local v13, "meid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->getDeviceIdentityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3760
    goto/16 :goto_1

    .line 3741
    .end local v6    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v10    # "imei":Ljava/lang/String;
    .end local v11    # "imeisv":Ljava/lang/String;
    .end local v12    # "esn":Ljava/lang/String;
    .end local v13    # "meid":Ljava/lang/String;
    :sswitch_39
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3743
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3744
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3745
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->deleteSmsOnRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3746
    goto/16 :goto_1

    .line 3730
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3a
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3732
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3733
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3734
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3735
    .local v1, "index":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->writeSmsToRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3736
    goto/16 :goto_1

    .line 3715
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "index":I
    :sswitch_3b
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3717
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object v10, v0

    .line 3718
    .local v10, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v10, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3719
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 3720
    .local v11, "mdn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 3721
    .local v12, "hSid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 3722
    .local v13, "hNid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 3723
    .local v14, "min":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 3724
    .local v15, "prl":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v11

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->getCDMASubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3725
    goto/16 :goto_1

    .line 3705
    .end local v10    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v11    # "mdn":Ljava/lang/String;
    .end local v12    # "hSid":Ljava/lang/String;
    .end local v13    # "hNid":Ljava/lang/String;
    .end local v14    # "min":Ljava/lang/String;
    .end local v15    # "prl":Ljava/lang/String;
    :sswitch_3c
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3707
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3708
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3709
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->setCdmaBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3710
    goto/16 :goto_1

    .line 3695
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3d
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3697
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3698
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3699
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->setCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3700
    goto/16 :goto_1

    .line 3684
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3e
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3686
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3687
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3688
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3689
    .local v1, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->getCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3690
    goto/16 :goto_1

    .line 3674
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :sswitch_3f
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3676
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3677
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3678
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->setGsmBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3679
    goto/16 :goto_1

    .line 3664
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_40
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3666
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3667
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3668
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->setGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3669
    goto/16 :goto_1

    .line 3653
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_41
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3655
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3656
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3657
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3658
    .local v1, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->getGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3659
    goto/16 :goto_1

    .line 3643
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :sswitch_42
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3645
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3646
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3647
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->acknowledgeLastIncomingCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3648
    goto/16 :goto_1

    .line 3631
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_43
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3633
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3634
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3635
    new-instance v1, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 3636
    .local v1, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3637
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->sendCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 3638
    goto/16 :goto_1

    .line 3621
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_44
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3623
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3624
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3625
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->sendBurstDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3626
    goto/16 :goto_1

    .line 3611
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_45
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3613
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3614
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3615
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->sendCDMAFeatureCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3616
    goto/16 :goto_1

    .line 3600
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_46
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3602
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3603
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3604
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3605
    .local v1, "enable":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->getPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 3606
    goto/16 :goto_1

    .line 3590
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "enable":Z
    :sswitch_47
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3592
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3593
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3594
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->setPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3595
    goto/16 :goto_1

    .line 3579
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_48
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3581
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3582
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3583
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3584
    .local v1, "mode":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->getTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3585
    goto/16 :goto_1

    .line 3569
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "mode":I
    :sswitch_49
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3571
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3572
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3573
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->setTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3574
    goto/16 :goto_1

    .line 3558
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4a
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3560
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3561
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3562
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3563
    .local v1, "type":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->getCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3564
    goto/16 :goto_1

    .line 3548
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "type":I
    :sswitch_4b
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3550
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3551
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3552
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->setCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3553
    goto/16 :goto_1

    .line 3538
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4c
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3540
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3541
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3542
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->setCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3543
    goto/16 :goto_1

    .line 3528
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4d
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3530
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3531
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3532
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->setLocationUpdatesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3533
    goto/16 :goto_1

    .line 3517
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4e
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3519
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3520
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3521
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/NeighboringCell;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3522
    .local v1, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/NeighboringCell;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->getNeighboringCidsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3523
    goto/16 :goto_1

    .line 3506
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/NeighboringCell;>;"
    :sswitch_4f
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3508
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3509
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3510
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3511
    .local v1, "nwType":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->getPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3512
    goto/16 :goto_1

    .line 3496
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "nwType":I
    :sswitch_50
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3498
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3499
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3500
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->setPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3501
    goto/16 :goto_1

    .line 3486
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_51
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3488
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3489
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3490
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->explicitCallTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3491
    goto/16 :goto_1

    .line 3476
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_52
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3478
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3479
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3480
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->handleStkCallSetupRequestFromSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3481
    goto/16 :goto_1

    .line 3466
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_53
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3468
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3469
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3470
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->sendTerminalResponseToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3471
    goto/16 :goto_1

    .line 3455
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_54
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3457
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3458
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3459
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3460
    .local v1, "commandResponse":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->sendEnvelopeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 3461
    goto/16 :goto_1

    .line 3444
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "commandResponse":Ljava/lang/String;
    :sswitch_55
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3446
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3447
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3448
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3449
    .local v1, "bandModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->getAvailableBandModesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3450
    goto/16 :goto_1

    .line 3434
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "bandModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_56
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3436
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3437
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3438
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->setBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3439
    goto/16 :goto_1

    .line 3424
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_57
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3426
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3427
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3428
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->deleteSmsOnSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3429
    goto/16 :goto_1

    .line 3413
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_58
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3415
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3416
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3417
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3418
    .local v1, "index":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->writeSmsToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3419
    goto/16 :goto_1

    .line 3403
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "index":I
    :sswitch_59
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3405
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3406
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3407
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->setSuppServiceNotificationsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3408
    goto/16 :goto_1

    .line 3392
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_5a
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3394
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3395
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3396
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3397
    .local v1, "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->getDataCallListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3398
    goto/16 :goto_1

    .line 3381
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    :sswitch_5b
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3383
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3384
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3385
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3386
    .local v1, "status":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->getClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3387
    goto/16 :goto_1

    .line 3370
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "status":I
    :sswitch_5c
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3372
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3373
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3374
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3375
    .local v1, "enable":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->getMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 3376
    goto/16 :goto_1

    .line 3360
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "enable":Z
    :sswitch_5d
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3362
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3363
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3364
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->setMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3365
    goto/16 :goto_1

    .line 3350
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_5e
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3352
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3353
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3354
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->separateConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3355
    goto/16 :goto_1

    .line 3339
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_5f
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3341
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3342
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3343
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3344
    .local v1, "version":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->getBasebandVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 3345
    goto/16 :goto_1

    .line 3329
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "version":Ljava/lang/String;
    :sswitch_60
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3331
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3332
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3333
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->stopDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3334
    goto/16 :goto_1

    .line 3319
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_61
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3321
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3322
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3323
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->startDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3324
    goto/16 :goto_1

    .line 3308
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_62
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3310
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3311
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3312
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/OperatorInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3313
    .local v1, "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/OperatorInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->getAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3314
    goto/16 :goto_1

    .line 3298
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/OperatorInfo;>;"
    :sswitch_63
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3300
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3301
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3302
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->setNetworkSelectionModeManualResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3303
    goto/16 :goto_1

    .line 3288
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_64
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3290
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3291
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3292
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->setNetworkSelectionModeAutomaticResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3293
    goto/16 :goto_1

    .line 3277
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_65
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3279
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3280
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3281
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3282
    .local v1, "manual":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->getNetworkSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 3283
    goto/16 :goto_1

    .line 3267
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "manual":Z
    :sswitch_66
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3269
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3270
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3271
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->setBarringPasswordResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3272
    goto/16 :goto_1

    .line 3256
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_67
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3258
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3259
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3260
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3261
    .local v1, "retry":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->setFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3262
    goto/16 :goto_1

    .line 3245
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "retry":I
    :sswitch_68
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3247
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3248
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3249
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3250
    .local v1, "response":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->getFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3251
    goto/16 :goto_1

    .line 3235
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "response":I
    :sswitch_69
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3237
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3238
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3239
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->deactivateDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3240
    goto/16 :goto_1

    .line 3225
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_6a
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3227
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3228
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3229
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->acceptCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3230
    goto/16 :goto_1

    .line 3215
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_6b
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3217
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3218
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3219
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->acknowledgeLastIncomingGsmSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3220
    goto/16 :goto_1

    .line 3205
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_6c
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3207
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3208
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3209
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->setCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3210
    goto/16 :goto_1

    .line 3193
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_6d
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3195
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3196
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3197
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3198
    .local v1, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3199
    .local v2, "serviceClass":I
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->getCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

    .line 3200
    goto/16 :goto_1

    .line 3183
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "enable":Z
    .end local v2    # "serviceClass":I
    :sswitch_6e
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3185
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3186
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3187
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->setCallForwardResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3188
    goto/16 :goto_1

    .line 3172
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_6f
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3174
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3175
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3176
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3177
    .local v1, "callForwardInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->getCallForwardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3178
    goto/16 :goto_1

    .line 3162
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "callForwardInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    :sswitch_70
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3164
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3165
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3166
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->setClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3167
    goto/16 :goto_1

    .line 3150
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_71
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3152
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3153
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3154
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3155
    .local v1, "n":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3156
    .local v2, "m":I
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->getClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    .line 3157
    goto/16 :goto_1

    .line 3140
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "n":I
    .end local v2    # "m":I
    :sswitch_72
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3142
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3143
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3144
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->cancelPendingUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3145
    goto/16 :goto_1

    .line 3130
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_73
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3132
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3133
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3134
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->sendUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3135
    goto/16 :goto_1

    .line 3118
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_74
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3120
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3121
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3122
    new-instance v1, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 3123
    .local v1, "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3124
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->iccIOForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 3125
    goto/16 :goto_1

    .line 3106
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_75
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3108
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3109
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3110
    new-instance v1, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SetupDataCallResult;-><init>()V

    .line 3111
    .local v1, "dcResponse":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3112
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->setupDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SetupDataCallResult;)V

    .line 3113
    goto/16 :goto_1

    .line 3094
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "dcResponse":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    :sswitch_76
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3096
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3097
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3098
    new-instance v1, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 3099
    .local v1, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3100
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->sendSMSExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 3101
    goto/16 :goto_1

    .line 3082
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_77
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3084
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3085
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3086
    new-instance v1, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 3087
    .restart local v1    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3088
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->sendSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 3089
    goto/16 :goto_1

    .line 3072
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_78
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3074
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3075
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3076
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->sendDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3077
    goto/16 :goto_1

    .line 3062
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_79
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3064
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3065
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3066
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->setRadioPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3067
    goto/16 :goto_1

    .line 3049
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_7a
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3051
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3052
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3053
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3054
    .local v1, "longName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3055
    .local v2, "shortName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3056
    .local v3, "numeric":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->getOperatorResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3057
    goto/16 :goto_1

    .line 3037
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "longName":Ljava/lang/String;
    .end local v2    # "shortName":Ljava/lang/String;
    .end local v3    # "numeric":Ljava/lang/String;
    :sswitch_7b
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3039
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3040
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3041
    new-instance v1, Landroid/hardware/radio/V1_0/DataRegStateResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/DataRegStateResult;-><init>()V

    .line 3042
    .local v1, "dataRegResponse":Landroid/hardware/radio/V1_0/DataRegStateResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3043
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->getDataRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/DataRegStateResult;)V

    .line 3044
    goto/16 :goto_1

    .line 3025
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "dataRegResponse":Landroid/hardware/radio/V1_0/DataRegStateResult;
    :sswitch_7c
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3027
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3028
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3029
    new-instance v1, Landroid/hardware/radio/V1_0/VoiceRegStateResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;-><init>()V

    .line 3030
    .local v1, "voiceRegResponse":Landroid/hardware/radio/V1_0/VoiceRegStateResult;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3031
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->getVoiceRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/VoiceRegStateResult;)V

    .line 3032
    goto/16 :goto_1

    .line 3013
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "voiceRegResponse":Landroid/hardware/radio/V1_0/VoiceRegStateResult;
    :sswitch_7d
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3015
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3016
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3017
    new-instance v1, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 3018
    .local v1, "sigStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3019
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->getSignalStrengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SignalStrength;)V

    .line 3020
    goto/16 :goto_1

    .line 3001
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "sigStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    :sswitch_7e
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3003
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3004
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3005
    new-instance v1, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;-><init>()V

    .line 3006
    .local v1, "failCauseinfo":Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3007
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->getLastCallFailCauseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V

    .line 3008
    goto/16 :goto_1

    .line 2991
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "failCauseinfo":Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;
    :sswitch_7f
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2993
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2994
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2995
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->rejectCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 2996
    goto/16 :goto_1

    .line 2981
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_80
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2983
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2984
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2985
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->conferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 2986
    goto/16 :goto_1

    .line 2971
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_81
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2973
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2974
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2975
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 2976
    goto/16 :goto_1

    .line 2961
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_82
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2963
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2964
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2965
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->hangupForegroundResumeBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 2966
    goto/16 :goto_1

    .line 2951
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_83
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2953
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2954
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2955
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->hangupWaitingOrBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 2956
    goto/16 :goto_1

    .line 2941
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_84
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2943
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2944
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2945
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->hangupConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 2946
    goto/16 :goto_1

    .line 2930
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_85
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2932
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2933
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2934
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2935
    .local v1, "imsi":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->getIMSIForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 2936
    goto/16 :goto_1

    .line 2920
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "imsi":Ljava/lang/String;
    :sswitch_86
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2922
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2923
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2924
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->dialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 2925
    goto/16 :goto_1

    .line 2909
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_87
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2911
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2912
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2913
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/Call;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2914
    .local v1, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/Call;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->getCurrentCallsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 2915
    goto/16 :goto_1

    .line 2898
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/Call;>;"
    :sswitch_88
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2900
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2901
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2902
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2903
    .local v1, "remainingRetries":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 2904
    goto/16 :goto_1

    .line 2887
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "remainingRetries":I
    :sswitch_89
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2889
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2890
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2891
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2892
    .restart local v1    # "remainingRetries":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->changeIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 2893
    goto/16 :goto_1

    .line 2876
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "remainingRetries":I
    :sswitch_8a
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2878
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2879
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2880
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2881
    .restart local v1    # "remainingRetries":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->changeIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 2882
    goto :goto_1

    .line 2865
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "remainingRetries":I
    :sswitch_8b
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2867
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2868
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2869
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2870
    .restart local v1    # "remainingRetries":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->supplyIccPuk2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 2871
    goto :goto_1

    .line 2854
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "remainingRetries":I
    :sswitch_8c
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2856
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2857
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2858
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2859
    .restart local v1    # "remainingRetries":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->supplyIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 2860
    goto :goto_1

    .line 2843
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "remainingRetries":I
    :sswitch_8d
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2845
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2846
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2847
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2848
    .restart local v1    # "remainingRetries":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->supplyIccPukForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 2849
    goto :goto_1

    .line 2832
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "remainingRetries":I
    :sswitch_8e
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2834
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2835
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2836
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2837
    .restart local v1    # "remainingRetries":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->supplyIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 2838
    goto :goto_1

    .line 2820
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "remainingRetries":I
    :sswitch_8f
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2822
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2823
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2824
    new-instance v1, Landroid/hardware/radio/V1_0/CardStatus;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CardStatus;-><init>()V

    .line 2825
    .local v1, "cardStatus":Landroid/hardware/radio/V1_0/CardStatus;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2826
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->getIccCardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/CardStatus;)V

    .line 2827
    nop

    .line 4387
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "cardStatus":Landroid/hardware/radio/V1_0/CardStatus;
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8f
        0x2 -> :sswitch_8e
        0x3 -> :sswitch_8d
        0x4 -> :sswitch_8c
        0x5 -> :sswitch_8b
        0x6 -> :sswitch_8a
        0x7 -> :sswitch_89
        0x8 -> :sswitch_88
        0x9 -> :sswitch_87
        0xa -> :sswitch_86
        0xb -> :sswitch_85
        0xc -> :sswitch_84
        0xd -> :sswitch_83
        0xe -> :sswitch_82
        0xf -> :sswitch_81
        0x10 -> :sswitch_80
        0x11 -> :sswitch_7f
        0x12 -> :sswitch_7e
        0x13 -> :sswitch_7d
        0x14 -> :sswitch_7c
        0x15 -> :sswitch_7b
        0x16 -> :sswitch_7a
        0x17 -> :sswitch_79
        0x18 -> :sswitch_78
        0x19 -> :sswitch_77
        0x1a -> :sswitch_76
        0x1b -> :sswitch_75
        0x1c -> :sswitch_74
        0x1d -> :sswitch_73
        0x1e -> :sswitch_72
        0x1f -> :sswitch_71
        0x20 -> :sswitch_70
        0x21 -> :sswitch_6f
        0x22 -> :sswitch_6e
        0x23 -> :sswitch_6d
        0x24 -> :sswitch_6c
        0x25 -> :sswitch_6b
        0x26 -> :sswitch_6a
        0x27 -> :sswitch_69
        0x28 -> :sswitch_68
        0x29 -> :sswitch_67
        0x2a -> :sswitch_66
        0x2b -> :sswitch_65
        0x2c -> :sswitch_64
        0x2d -> :sswitch_63
        0x2e -> :sswitch_62
        0x2f -> :sswitch_61
        0x30 -> :sswitch_60
        0x31 -> :sswitch_5f
        0x32 -> :sswitch_5e
        0x33 -> :sswitch_5d
        0x34 -> :sswitch_5c
        0x35 -> :sswitch_5b
        0x36 -> :sswitch_5a
        0x37 -> :sswitch_59
        0x38 -> :sswitch_58
        0x39 -> :sswitch_57
        0x3a -> :sswitch_56
        0x3b -> :sswitch_55
        0x3c -> :sswitch_54
        0x3d -> :sswitch_53
        0x3e -> :sswitch_52
        0x3f -> :sswitch_51
        0x40 -> :sswitch_50
        0x41 -> :sswitch_4f
        0x42 -> :sswitch_4e
        0x43 -> :sswitch_4d
        0x44 -> :sswitch_4c
        0x45 -> :sswitch_4b
        0x46 -> :sswitch_4a
        0x47 -> :sswitch_49
        0x48 -> :sswitch_48
        0x49 -> :sswitch_47
        0x4a -> :sswitch_46
        0x4b -> :sswitch_45
        0x4c -> :sswitch_44
        0x4d -> :sswitch_43
        0x4e -> :sswitch_42
        0x4f -> :sswitch_41
        0x50 -> :sswitch_40
        0x51 -> :sswitch_3f
        0x52 -> :sswitch_3e
        0x53 -> :sswitch_3d
        0x54 -> :sswitch_3c
        0x55 -> :sswitch_3b
        0x56 -> :sswitch_3a
        0x57 -> :sswitch_39
        0x58 -> :sswitch_38
        0x59 -> :sswitch_37
        0x5a -> :sswitch_36
        0x5b -> :sswitch_35
        0x5c -> :sswitch_34
        0x5d -> :sswitch_33
        0x5e -> :sswitch_32
        0x5f -> :sswitch_31
        0x60 -> :sswitch_30
        0x61 -> :sswitch_2f
        0x62 -> :sswitch_2e
        0x63 -> :sswitch_2d
        0x64 -> :sswitch_2c
        0x65 -> :sswitch_2b
        0x66 -> :sswitch_2a
        0x67 -> :sswitch_29
        0x68 -> :sswitch_28
        0x69 -> :sswitch_27
        0x6a -> :sswitch_26
        0x6b -> :sswitch_25
        0x6c -> :sswitch_24
        0x6d -> :sswitch_23
        0x6e -> :sswitch_22
        0x6f -> :sswitch_21
        0x70 -> :sswitch_20
        0x71 -> :sswitch_1f
        0x72 -> :sswitch_1e
        0x73 -> :sswitch_1d
        0x74 -> :sswitch_1c
        0x75 -> :sswitch_1b
        0x76 -> :sswitch_1a
        0x77 -> :sswitch_19
        0x78 -> :sswitch_18
        0x79 -> :sswitch_17
        0x7a -> :sswitch_16
        0x7b -> :sswitch_15
        0x7c -> :sswitch_14
        0x7d -> :sswitch_13
        0x7e -> :sswitch_12
        0x7f -> :sswitch_11
        0x80 -> :sswitch_10
        0x81 -> :sswitch_f
        0x82 -> :sswitch_e
        0x83 -> :sswitch_d
        0x84 -> :sswitch_c
        0x85 -> :sswitch_b
        0x86 -> :sswitch_a
        0x87 -> :sswitch_9
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

    .line 2771
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 2799
    const-string v0, "android.hardware.radio@1.1::IRadioResponse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2800
    return-object p0

    .line 2802
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

    .line 2806
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 2807
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .locals 0

    .line 2761
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 2811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_1/IRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 2793
    const/4 v0, 0x1

    return v0
.end method
