.class public abstract Landroid/hardware/radio/V1_1/IRadio$Stub;
.super Landroid/os/HwBinder;
.source "IRadio.java"

# interfaces
.implements Landroid/hardware/radio/V1_1/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_1/IRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 2799
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 2802
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

    .line 2816
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 2854
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 2855
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 2856
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 2857
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 2858
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

    .line 2828
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

    :array_1
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

    .line 2807
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.radio@1.1::IRadio"

    const-string v2, "android.hardware.radio@1.0::IRadio"

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

    .line 2822
    const-string v0, "android.hardware.radio@1.1::IRadio"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 2842
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .locals 0

    .line 2864
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 2866
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

    .line 2894
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v0, "android.hardware.radio@1.1::IRadio"

    const-string v1, "android.hidl.base@1.0::IBase"

    const/4 v2, 0x0

    const-string v3, "android.hardware.radio@1.0::IRadio"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 4370
    :sswitch_0
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4372
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->notifySyspropsChanged()V

    .line 4373
    goto/16 :goto_1

    .line 4359
    :sswitch_1
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4361
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 4362
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4363
    invoke-virtual {v0, v9}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4364
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4365
    goto/16 :goto_1

    .line 4349
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4351
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->ping()V

    .line 4352
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4353
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4354
    goto/16 :goto_1

    .line 4344
    :sswitch_3
    goto/16 :goto_1

    .line 4336
    :sswitch_4
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4338
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setHALInstrumentation()V

    .line 4339
    goto/16 :goto_1

    .line 4302
    :sswitch_5
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4304
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 4305
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4307
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 4309
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4310
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 4311
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 4312
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v2, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 4313
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 4315
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 4316
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 4318
    .local v10, "_hidl_array_item_1":[B
    if-eqz v10, :cond_0

    array-length v11, v10

    const/16 v12, 0x20

    if-ne v11, v12, :cond_0

    .line 4322
    invoke-virtual {v2, v5, v6, v10}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 4323
    nop

    .line 4313
    .end local v5    # "_hidl_array_offset_1":J
    .end local v10    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4319
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v10    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Array element is not of the expected length"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 4326
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v10    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 4328
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 4330
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4331
    goto/16 :goto_1

    .line 4291
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4293
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 4294
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4295
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4296
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4297
    goto/16 :goto_1

    .line 4279
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4281
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 4282
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4283
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 4284
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4285
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4286
    goto/16 :goto_1

    .line 4268
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4270
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 4271
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4272
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 4273
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4274
    goto/16 :goto_1

    .line 4258
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4260
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4261
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4262
    .local v1, "sessionHandle":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->stopKeepalive(II)V

    .line 4263
    goto/16 :goto_1

    .line 4247
    .end local v0    # "serial":I
    .end local v1    # "sessionHandle":I
    :sswitch_a
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4249
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4250
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_1/KeepaliveRequest;

    invoke-direct {v1}, Landroid/hardware/radio/V1_1/KeepaliveRequest;-><init>()V

    .line 4251
    .local v1, "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_1/KeepaliveRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4252
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->startKeepalive(ILandroid/hardware/radio/V1_1/KeepaliveRequest;)V

    .line 4253
    goto/16 :goto_1

    .line 4238
    .end local v0    # "serial":I
    .end local v1    # "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    :sswitch_b
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4240
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4241
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->stopNetworkScan(I)V

    .line 4242
    goto/16 :goto_1

    .line 4227
    .end local v0    # "serial":I
    :sswitch_c
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4229
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4230
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_1/NetworkScanRequest;

    invoke-direct {v1}, Landroid/hardware/radio/V1_1/NetworkScanRequest;-><init>()V

    .line 4231
    .local v1, "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_1/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4232
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->startNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanRequest;)V

    .line 4233
    goto/16 :goto_1

    .line 4217
    .end local v0    # "serial":I
    .end local v1    # "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    :sswitch_d
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4219
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4220
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4221
    .local v1, "powerUp":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setSimCardPower_1_1(II)V

    .line 4222
    goto/16 :goto_1

    .line 4206
    .end local v0    # "serial":I
    .end local v1    # "powerUp":I
    :sswitch_e
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4208
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4209
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;-><init>()V

    .line 4210
    .local v1, "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4211
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/V1_1/ImsiEncryptionInfo;)V

    .line 4212
    goto/16 :goto_1

    .line 4198
    .end local v0    # "serial":I
    .end local v1    # "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    :sswitch_f
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4200
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->responseAcknowledgement()V

    .line 4201
    goto/16 :goto_1

    .line 4188
    :sswitch_10
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4190
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4191
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4192
    .local v1, "powerUp":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setSimCardPower(IZ)V

    .line 4193
    goto/16 :goto_1

    .line 4178
    .end local v0    # "serial":I
    .end local v1    # "powerUp":Z
    :sswitch_11
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4180
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4181
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4182
    .local v1, "indicationFilter":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setIndicationFilter(II)V

    .line 4183
    goto/16 :goto_1

    .line 4167
    .end local v0    # "serial":I
    .end local v1    # "indicationFilter":I
    :sswitch_12
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4169
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4170
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4171
    .local v1, "deviceStateType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4172
    .local v2, "state":Z
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->sendDeviceState(IIZ)V

    .line 4173
    goto/16 :goto_1

    .line 4158
    .end local v0    # "serial":I
    .end local v1    # "deviceStateType":I
    .end local v2    # "state":Z
    :sswitch_13
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4160
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4161
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getAllowedCarriers(I)V

    .line 4162
    goto/16 :goto_1

    .line 4146
    .end local v0    # "serial":I
    :sswitch_14
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4148
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4149
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4150
    .local v1, "allAllowed":Z
    new-instance v2, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 4151
    .local v2, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4152
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 4153
    goto/16 :goto_1

    .line 4137
    .end local v0    # "serial":I
    .end local v1    # "allAllowed":Z
    .end local v2    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :sswitch_15
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4139
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4140
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getModemActivityInfo(I)V

    .line 4141
    goto/16 :goto_1

    .line 4128
    .end local v0    # "serial":I
    :sswitch_16
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4130
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4131
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->pullLceData(I)V

    .line 4132
    goto/16 :goto_1

    .line 4119
    .end local v0    # "serial":I
    :sswitch_17
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4121
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4122
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->stopLceService(I)V

    .line 4123
    goto/16 :goto_1

    .line 4108
    .end local v0    # "serial":I
    :sswitch_18
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4110
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4111
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4112
    .local v1, "reportInterval":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4113
    .local v2, "pullMode":Z
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->startLceService(IIZ)V

    .line 4114
    goto/16 :goto_1

    .line 4097
    .end local v0    # "serial":I
    .end local v1    # "reportInterval":I
    .end local v2    # "pullMode":Z
    :sswitch_19
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4099
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4100
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 4101
    .local v1, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4102
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 4103
    goto/16 :goto_1

    .line 4088
    .end local v0    # "serial":I
    .end local v1    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :sswitch_1a
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4090
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4091
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getRadioCapability(I)V

    .line 4092
    goto/16 :goto_1

    .line 4079
    .end local v0    # "serial":I
    :sswitch_1b
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4081
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4082
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->requestShutdown(I)V

    .line 4083
    goto/16 :goto_1

    .line 4068
    .end local v0    # "serial":I
    :sswitch_1c
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4070
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4071
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4072
    .local v1, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4073
    .local v2, "isRoaming":Z
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setDataProfile(ILjava/util/ArrayList;Z)V

    .line 4074
    goto/16 :goto_1

    .line 4056
    .end local v0    # "serial":I
    .end local v1    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    .end local v2    # "isRoaming":Z
    :sswitch_1d
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4058
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4059
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4060
    .local v1, "authContext":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4061
    .local v2, "authData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4062
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/hardware/radio/V1_1/IRadio$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    .line 4063
    goto/16 :goto_1

    .line 4047
    .end local v0    # "serial":I
    .end local v1    # "authContext":I
    .end local v2    # "authData":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :sswitch_1e
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4049
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4050
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getHardwareConfig(I)V

    .line 4051
    goto/16 :goto_1

    .line 4037
    .end local v0    # "serial":I
    :sswitch_1f
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4039
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4040
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4041
    .local v1, "allow":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setDataAllowed(IZ)V

    .line 4042
    goto/16 :goto_1

    .line 4026
    .end local v0    # "serial":I
    .end local v1    # "allow":Z
    :sswitch_20
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4028
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4029
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    .line 4030
    .local v1, "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SelectUiccSub;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4031
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V

    .line 4032
    goto/16 :goto_1

    .line 4016
    .end local v0    # "serial":I
    .end local v1    # "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    :sswitch_21
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4018
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4019
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4020
    .local v1, "resetType":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->nvResetConfig(II)V

    .line 4021
    goto/16 :goto_1

    .line 4006
    .end local v0    # "serial":I
    .end local v1    # "resetType":I
    :sswitch_22
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4008
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4009
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4010
    .local v1, "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    .line 4011
    goto/16 :goto_1

    .line 3995
    .end local v0    # "serial":I
    .end local v1    # "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_23
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3997
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3998
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    .line 3999
    .local v1, "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/NvWriteItem;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4000
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    .line 4001
    goto/16 :goto_1

    .line 3985
    .end local v0    # "serial":I
    .end local v1    # "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    :sswitch_24
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3987
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3988
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3989
    .local v1, "itemId":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->nvReadItem(II)V

    .line 3990
    goto/16 :goto_1

    .line 3974
    .end local v0    # "serial":I
    .end local v1    # "itemId":I
    :sswitch_25
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3976
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3977
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 3978
    .local v1, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3979
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 3980
    goto/16 :goto_1

    .line 3964
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :sswitch_26
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3966
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3967
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3968
    .local v1, "channelId":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->iccCloseLogicalChannel(II)V

    .line 3969
    goto/16 :goto_1

    .line 3953
    .end local v0    # "serial":I
    .end local v1    # "channelId":I
    :sswitch_27
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3955
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3956
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3957
    .local v1, "aid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3958
    .local v2, "p2":I
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    .line 3959
    goto/16 :goto_1

    .line 3942
    .end local v0    # "serial":I
    .end local v1    # "aid":Ljava/lang/String;
    .end local v2    # "p2":I
    :sswitch_28
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3944
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3945
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 3946
    .local v1, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3947
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 3948
    goto/16 :goto_1

    .line 3931
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :sswitch_29
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3933
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3934
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 3935
    .local v1, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3936
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 3937
    goto/16 :goto_1

    .line 3922
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :sswitch_2a
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3924
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3925
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getImsRegistrationState(I)V

    .line 3926
    goto/16 :goto_1

    .line 3909
    .end local v0    # "serial":I
    :sswitch_2b
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3911
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3912
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 3913
    .local v1, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3914
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3915
    .local v2, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 3916
    .local v3, "isRoaming":Z
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    .line 3917
    goto/16 :goto_1

    .line 3899
    .end local v0    # "serial":I
    .end local v1    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v2    # "modemCognitive":Z
    .end local v3    # "isRoaming":Z
    :sswitch_2c
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3901
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3902
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3903
    .local v1, "rate":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setCellInfoListRate(II)V

    .line 3904
    goto/16 :goto_1

    .line 3890
    .end local v0    # "serial":I
    .end local v1    # "rate":I
    :sswitch_2d
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3892
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3893
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getCellInfoList(I)V

    .line 3894
    goto/16 :goto_1

    .line 3881
    .end local v0    # "serial":I
    :sswitch_2e
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3883
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3884
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getVoiceRadioTechnology(I)V

    .line 3885
    goto/16 :goto_1

    .line 3871
    .end local v0    # "serial":I
    :sswitch_2f
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3873
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3874
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3875
    .local v1, "contents":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    .line 3876
    goto/16 :goto_1

    .line 3860
    .end local v0    # "serial":I
    .end local v1    # "contents":Ljava/lang/String;
    :sswitch_30
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3862
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3863
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3864
    .local v1, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3865
    .local v2, "ackPdu":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    .line 3866
    goto/16 :goto_1

    .line 3850
    .end local v0    # "serial":I
    .end local v1    # "success":Z
    .end local v2    # "ackPdu":Ljava/lang/String;
    :sswitch_31
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3852
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3853
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3854
    .local v1, "challenge":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->requestIsimAuthentication(ILjava/lang/String;)V

    .line 3855
    goto/16 :goto_1

    .line 3841
    .end local v0    # "serial":I
    .end local v1    # "challenge":Ljava/lang/String;
    :sswitch_32
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3843
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3844
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getCdmaSubscriptionSource(I)V

    .line 3845
    goto/16 :goto_1

    .line 3832
    .end local v0    # "serial":I
    :sswitch_33
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3834
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3835
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->reportStkServiceIsRunning(I)V

    .line 3836
    goto/16 :goto_1

    .line 3822
    .end local v0    # "serial":I
    :sswitch_34
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3824
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3825
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3826
    .local v1, "available":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->reportSmsMemoryStatus(IZ)V

    .line 3827
    goto/16 :goto_1

    .line 3812
    .end local v0    # "serial":I
    .end local v1    # "available":Z
    :sswitch_35
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3814
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3815
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3816
    .local v1, "smsc":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setSmscAddress(ILjava/lang/String;)V

    .line 3817
    goto/16 :goto_1

    .line 3803
    .end local v0    # "serial":I
    .end local v1    # "smsc":Ljava/lang/String;
    :sswitch_36
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3805
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3806
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getSmscAddress(I)V

    .line 3807
    goto/16 :goto_1

    .line 3794
    .end local v0    # "serial":I
    :sswitch_37
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3796
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3797
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 3798
    goto/16 :goto_1

    .line 3785
    .end local v0    # "serial":I
    :sswitch_38
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3787
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3788
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getDeviceIdentity(I)V

    .line 3789
    goto/16 :goto_1

    .line 3775
    .end local v0    # "serial":I
    :sswitch_39
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3777
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3778
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3779
    .local v1, "index":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->deleteSmsOnRuim(II)V

    .line 3780
    goto/16 :goto_1

    .line 3764
    .end local v0    # "serial":I
    .end local v1    # "index":I
    :sswitch_3a
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3766
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3767
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    .line 3768
    .local v1, "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3769
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    .line 3770
    goto/16 :goto_1

    .line 3755
    .end local v0    # "serial":I
    .end local v1    # "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    :sswitch_3b
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3757
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3758
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getCDMASubscription(I)V

    .line 3759
    goto/16 :goto_1

    .line 3745
    .end local v0    # "serial":I
    :sswitch_3c
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3747
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3748
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3749
    .local v1, "activate":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setCdmaBroadcastActivation(IZ)V

    .line 3750
    goto/16 :goto_1

    .line 3735
    .end local v0    # "serial":I
    .end local v1    # "activate":Z
    :sswitch_3d
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3737
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3738
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3739
    .local v1, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V

    .line 3740
    goto/16 :goto_1

    .line 3726
    .end local v0    # "serial":I
    .end local v1    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :sswitch_3e
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3728
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3729
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getCdmaBroadcastConfig(I)V

    .line 3730
    goto/16 :goto_1

    .line 3716
    .end local v0    # "serial":I
    :sswitch_3f
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3718
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3719
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3720
    .local v1, "activate":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setGsmBroadcastActivation(IZ)V

    .line 3721
    goto/16 :goto_1

    .line 3706
    .end local v0    # "serial":I
    .end local v1    # "activate":Z
    :sswitch_40
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3708
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3709
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3710
    .local v1, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    .line 3711
    goto/16 :goto_1

    .line 3697
    .end local v0    # "serial":I
    .end local v1    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :sswitch_41
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3699
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3700
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getGsmBroadcastConfig(I)V

    .line 3701
    goto/16 :goto_1

    .line 3686
    .end local v0    # "serial":I
    :sswitch_42
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3688
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3689
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 3690
    .local v1, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3691
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 3692
    goto/16 :goto_1

    .line 3675
    .end local v0    # "serial":I
    .end local v1    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :sswitch_43
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3677
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3678
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 3679
    .local v1, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3680
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 3681
    goto/16 :goto_1

    .line 3663
    .end local v0    # "serial":I
    .end local v1    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :sswitch_44
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3665
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3666
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3667
    .local v1, "dtmf":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3668
    .local v2, "on":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3669
    .local v3, "off":I
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/hardware/radio/V1_1/IRadio$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    .line 3670
    goto/16 :goto_1

    .line 3653
    .end local v0    # "serial":I
    .end local v1    # "dtmf":Ljava/lang/String;
    .end local v2    # "on":I
    .end local v3    # "off":I
    :sswitch_45
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3655
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3656
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3657
    .local v1, "featureCode":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->sendCDMAFeatureCode(ILjava/lang/String;)V

    .line 3658
    goto/16 :goto_1

    .line 3644
    .end local v0    # "serial":I
    .end local v1    # "featureCode":Ljava/lang/String;
    :sswitch_46
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3646
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3647
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getPreferredVoicePrivacy(I)V

    .line 3648
    goto/16 :goto_1

    .line 3634
    .end local v0    # "serial":I
    :sswitch_47
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3636
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3637
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3638
    .local v1, "enable":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setPreferredVoicePrivacy(IZ)V

    .line 3639
    goto/16 :goto_1

    .line 3625
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_48
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3627
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3628
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getTTYMode(I)V

    .line 3629
    goto/16 :goto_1

    .line 3615
    .end local v0    # "serial":I
    :sswitch_49
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3617
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3618
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3619
    .local v1, "mode":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setTTYMode(II)V

    .line 3620
    goto/16 :goto_1

    .line 3606
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_4a
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3608
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3609
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getCdmaRoamingPreference(I)V

    .line 3610
    goto/16 :goto_1

    .line 3596
    .end local v0    # "serial":I
    :sswitch_4b
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3598
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3599
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3600
    .local v1, "type":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setCdmaRoamingPreference(II)V

    .line 3601
    goto/16 :goto_1

    .line 3586
    .end local v0    # "serial":I
    .end local v1    # "type":I
    :sswitch_4c
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3588
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3589
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3590
    .local v1, "cdmaSub":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setCdmaSubscriptionSource(II)V

    .line 3591
    goto/16 :goto_1

    .line 3576
    .end local v0    # "serial":I
    .end local v1    # "cdmaSub":I
    :sswitch_4d
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3578
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3579
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3580
    .local v1, "enable":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setLocationUpdates(IZ)V

    .line 3581
    goto/16 :goto_1

    .line 3567
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_4e
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3569
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3570
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getNeighboringCids(I)V

    .line 3571
    goto/16 :goto_1

    .line 3558
    .end local v0    # "serial":I
    :sswitch_4f
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3560
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3561
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getPreferredNetworkType(I)V

    .line 3562
    goto/16 :goto_1

    .line 3548
    .end local v0    # "serial":I
    :sswitch_50
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3550
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3551
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3552
    .local v1, "nwType":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setPreferredNetworkType(II)V

    .line 3553
    goto/16 :goto_1

    .line 3539
    .end local v0    # "serial":I
    .end local v1    # "nwType":I
    :sswitch_51
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3541
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3542
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->explicitCallTransfer(I)V

    .line 3543
    goto/16 :goto_1

    .line 3529
    .end local v0    # "serial":I
    :sswitch_52
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3531
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3532
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3533
    .local v1, "accept":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    .line 3534
    goto/16 :goto_1

    .line 3519
    .end local v0    # "serial":I
    .end local v1    # "accept":Z
    :sswitch_53
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3521
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3522
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3523
    .local v1, "commandResponse":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    .line 3524
    goto/16 :goto_1

    .line 3509
    .end local v0    # "serial":I
    .end local v1    # "commandResponse":Ljava/lang/String;
    :sswitch_54
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3511
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3512
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3513
    .local v1, "command":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->sendEnvelope(ILjava/lang/String;)V

    .line 3514
    goto/16 :goto_1

    .line 3500
    .end local v0    # "serial":I
    .end local v1    # "command":Ljava/lang/String;
    :sswitch_55
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3502
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3503
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getAvailableBandModes(I)V

    .line 3504
    goto/16 :goto_1

    .line 3490
    .end local v0    # "serial":I
    :sswitch_56
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3492
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3493
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3494
    .local v1, "mode":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setBandMode(II)V

    .line 3495
    goto/16 :goto_1

    .line 3480
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_57
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3482
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3483
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3484
    .local v1, "index":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->deleteSmsOnSim(II)V

    .line 3485
    goto/16 :goto_1

    .line 3469
    .end local v0    # "serial":I
    .end local v1    # "index":I
    :sswitch_58
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3471
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3472
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    .line 3473
    .local v1, "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3474
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    .line 3475
    goto/16 :goto_1

    .line 3459
    .end local v0    # "serial":I
    .end local v1    # "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    :sswitch_59
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3461
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3462
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3463
    .local v1, "enable":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setSuppServiceNotifications(IZ)V

    .line 3464
    goto/16 :goto_1

    .line 3450
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_5a
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3452
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3453
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getDataCallList(I)V

    .line 3454
    goto/16 :goto_1

    .line 3441
    .end local v0    # "serial":I
    :sswitch_5b
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3443
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3444
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getClip(I)V

    .line 3445
    goto/16 :goto_1

    .line 3432
    .end local v0    # "serial":I
    :sswitch_5c
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3434
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3435
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getMute(I)V

    .line 3436
    goto/16 :goto_1

    .line 3422
    .end local v0    # "serial":I
    :sswitch_5d
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3424
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3425
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3426
    .restart local v1    # "enable":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setMute(IZ)V

    .line 3427
    goto/16 :goto_1

    .line 3412
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_5e
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3414
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3415
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3416
    .local v1, "gsmIndex":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->separateConnection(II)V

    .line 3417
    goto/16 :goto_1

    .line 3403
    .end local v0    # "serial":I
    .end local v1    # "gsmIndex":I
    :sswitch_5f
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3405
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3406
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getBasebandVersion(I)V

    .line 3407
    goto/16 :goto_1

    .line 3394
    .end local v0    # "serial":I
    :sswitch_60
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3396
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3397
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->stopDtmf(I)V

    .line 3398
    goto/16 :goto_1

    .line 3384
    .end local v0    # "serial":I
    :sswitch_61
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3386
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3387
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3388
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->startDtmf(ILjava/lang/String;)V

    .line 3389
    goto/16 :goto_1

    .line 3375
    .end local v0    # "serial":I
    .end local v1    # "s":Ljava/lang/String;
    :sswitch_62
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3377
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3378
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getAvailableNetworks(I)V

    .line 3379
    goto/16 :goto_1

    .line 3365
    .end local v0    # "serial":I
    :sswitch_63
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3367
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3368
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3369
    .local v1, "operatorNumeric":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    .line 3370
    goto/16 :goto_1

    .line 3356
    .end local v0    # "serial":I
    .end local v1    # "operatorNumeric":Ljava/lang/String;
    :sswitch_64
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3358
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3359
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 3360
    goto/16 :goto_1

    .line 3347
    .end local v0    # "serial":I
    :sswitch_65
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3349
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3350
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getNetworkSelectionMode(I)V

    .line 3351
    goto/16 :goto_1

    .line 3335
    .end local v0    # "serial":I
    :sswitch_66
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3337
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3338
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3339
    .local v1, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3340
    .local v2, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3341
    .local v3, "newPassword":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3342
    goto/16 :goto_1

    .line 3321
    .end local v0    # "serial":I
    .end local v1    # "facility":Ljava/lang/String;
    .end local v2    # "oldPassword":Ljava/lang/String;
    .end local v3    # "newPassword":Ljava/lang/String;
    :sswitch_67
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3323
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 3324
    .local v10, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 3325
    .local v11, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v12

    .line 3326
    .local v12, "lockState":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 3327
    .local v13, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 3328
    .local v14, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 3329
    .local v15, "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v10

    move-object v2, v11

    move v3, v12

    move-object v4, v13

    move v5, v14

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 3330
    goto/16 :goto_1

    .line 3308
    .end local v10    # "serial":I
    .end local v11    # "facility":Ljava/lang/String;
    .end local v12    # "lockState":Z
    .end local v13    # "password":Ljava/lang/String;
    .end local v14    # "serviceClass":I
    .end local v15    # "appId":Ljava/lang/String;
    :sswitch_68
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3310
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 3311
    .local v6, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 3312
    .local v10, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 3313
    .local v11, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 3314
    .local v12, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 3315
    .local v13, "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v10

    move-object v3, v11

    move v4, v12

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 3316
    goto/16 :goto_1

    .line 3297
    .end local v6    # "serial":I
    .end local v10    # "facility":Ljava/lang/String;
    .end local v11    # "password":Ljava/lang/String;
    .end local v12    # "serviceClass":I
    .end local v13    # "appId":Ljava/lang/String;
    :sswitch_69
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3299
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3300
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3301
    .local v1, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3302
    .local v2, "reasonRadioShutDown":Z
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->deactivateDataCall(IIZ)V

    .line 3303
    goto/16 :goto_1

    .line 3288
    .end local v0    # "serial":I
    .end local v1    # "cid":I
    .end local v2    # "reasonRadioShutDown":Z
    :sswitch_6a
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3290
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3291
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->acceptCall(I)V

    .line 3292
    goto/16 :goto_1

    .line 3277
    .end local v0    # "serial":I
    :sswitch_6b
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3279
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3280
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3281
    .local v1, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3282
    .local v2, "cause":I
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    .line 3283
    goto/16 :goto_1

    .line 3266
    .end local v0    # "serial":I
    .end local v1    # "success":Z
    .end local v2    # "cause":I
    :sswitch_6c
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3268
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3269
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3270
    .local v1, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3271
    .local v2, "serviceClass":I
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setCallWaiting(IZI)V

    .line 3272
    goto/16 :goto_1

    .line 3256
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    .end local v2    # "serviceClass":I
    :sswitch_6d
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3258
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3259
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3260
    .local v1, "serviceClass":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getCallWaiting(II)V

    .line 3261
    goto/16 :goto_1

    .line 3245
    .end local v0    # "serial":I
    .end local v1    # "serviceClass":I
    :sswitch_6e
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3247
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3248
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 3249
    .local v1, "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3250
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 3251
    goto/16 :goto_1

    .line 3234
    .end local v0    # "serial":I
    .end local v1    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :sswitch_6f
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3236
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3237
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 3238
    .restart local v1    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3239
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 3240
    goto/16 :goto_1

    .line 3224
    .end local v0    # "serial":I
    .end local v1    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :sswitch_70
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3226
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3227
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3228
    .local v1, "status":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setClir(II)V

    .line 3229
    goto/16 :goto_1

    .line 3215
    .end local v0    # "serial":I
    .end local v1    # "status":I
    :sswitch_71
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3217
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3218
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getClir(I)V

    .line 3219
    goto/16 :goto_1

    .line 3206
    .end local v0    # "serial":I
    :sswitch_72
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3208
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3209
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->cancelPendingUssd(I)V

    .line 3210
    goto/16 :goto_1

    .line 3196
    .end local v0    # "serial":I
    :sswitch_73
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3198
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3199
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3200
    .local v1, "ussd":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->sendUssd(ILjava/lang/String;)V

    .line 3201
    goto/16 :goto_1

    .line 3185
    .end local v0    # "serial":I
    .end local v1    # "ussd":Ljava/lang/String;
    :sswitch_74
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3187
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3188
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    .line 3189
    .local v1, "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/IccIo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3190
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    .line 3191
    goto/16 :goto_1

    .line 3170
    .end local v0    # "serial":I
    .end local v1    # "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    :sswitch_75
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3172
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 3173
    .local v10, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 3174
    .local v11, "radioTechnology":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v12, v0

    .line 3175
    .local v12, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v12, v8}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3176
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v13

    .line 3177
    .local v13, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v14

    .line 3178
    .local v14, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v15

    .line 3179
    .local v15, "isRoaming":Z
    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move-object v3, v12

    move v4, v13

    move v5, v14

    move v6, v15

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    .line 3180
    goto/16 :goto_1

    .line 3159
    .end local v10    # "serial":I
    .end local v11    # "radioTechnology":I
    .end local v12    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v13    # "modemCognitive":Z
    .end local v14    # "roamingAllowed":Z
    .end local v15    # "isRoaming":Z
    :sswitch_76
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3161
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3162
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 3163
    .local v1, "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3164
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 3165
    goto/16 :goto_1

    .line 3148
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :sswitch_77
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3150
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3151
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 3152
    .restart local v1    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3153
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 3154
    goto/16 :goto_1

    .line 3138
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :sswitch_78
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3140
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3141
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3142
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    .line 3143
    goto/16 :goto_1

    .line 3128
    .end local v0    # "serial":I
    .end local v1    # "s":Ljava/lang/String;
    :sswitch_79
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3130
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3131
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3132
    .local v1, "on":Z
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setRadioPower(IZ)V

    .line 3133
    goto/16 :goto_1

    .line 3119
    .end local v0    # "serial":I
    .end local v1    # "on":Z
    :sswitch_7a
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3121
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3122
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getOperator(I)V

    .line 3123
    goto/16 :goto_1

    .line 3110
    .end local v0    # "serial":I
    :sswitch_7b
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3112
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3113
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getDataRegistrationState(I)V

    .line 3114
    goto/16 :goto_1

    .line 3101
    .end local v0    # "serial":I
    :sswitch_7c
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3103
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3104
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getVoiceRegistrationState(I)V

    .line 3105
    goto/16 :goto_1

    .line 3092
    .end local v0    # "serial":I
    :sswitch_7d
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3094
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3095
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getSignalStrength(I)V

    .line 3096
    goto/16 :goto_1

    .line 3083
    .end local v0    # "serial":I
    :sswitch_7e
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3085
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3086
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getLastCallFailCause(I)V

    .line 3087
    goto/16 :goto_1

    .line 3074
    .end local v0    # "serial":I
    :sswitch_7f
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3076
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3077
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->rejectCall(I)V

    .line 3078
    goto/16 :goto_1

    .line 3065
    .end local v0    # "serial":I
    :sswitch_80
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3067
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3068
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->conference(I)V

    .line 3069
    goto/16 :goto_1

    .line 3056
    .end local v0    # "serial":I
    :sswitch_81
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3058
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3059
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    .line 3060
    goto/16 :goto_1

    .line 3047
    .end local v0    # "serial":I
    :sswitch_82
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3049
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3050
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->hangupForegroundResumeBackground(I)V

    .line 3051
    goto/16 :goto_1

    .line 3038
    .end local v0    # "serial":I
    :sswitch_83
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3040
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3041
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->hangupWaitingOrBackground(I)V

    .line 3042
    goto/16 :goto_1

    .line 3028
    .end local v0    # "serial":I
    :sswitch_84
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3030
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3031
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3032
    .local v1, "gsmIndex":I
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->hangup(II)V

    .line 3033
    goto/16 :goto_1

    .line 3018
    .end local v0    # "serial":I
    .end local v1    # "gsmIndex":I
    :sswitch_85
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3020
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3021
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3022
    .local v1, "aid":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getImsiForApp(ILjava/lang/String;)V

    .line 3023
    goto/16 :goto_1

    .line 3007
    .end local v0    # "serial":I
    .end local v1    # "aid":Ljava/lang/String;
    :sswitch_86
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3009
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3010
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 3011
    .local v1, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3012
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 3013
    goto/16 :goto_1

    .line 2998
    .end local v0    # "serial":I
    .end local v1    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :sswitch_87
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3000
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3001
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getCurrentCalls(I)V

    .line 3002
    goto/16 :goto_1

    .line 2988
    .end local v0    # "serial":I
    :sswitch_88
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2990
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2991
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2992
    .local v1, "netPin":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    .line 2993
    goto/16 :goto_1

    .line 2976
    .end local v0    # "serial":I
    .end local v1    # "netPin":Ljava/lang/String;
    :sswitch_89
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2978
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2979
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2980
    .local v1, "oldPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2981
    .local v2, "newPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2982
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/hardware/radio/V1_1/IRadio$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2983
    goto/16 :goto_1

    .line 2964
    .end local v0    # "serial":I
    .end local v1    # "oldPin2":Ljava/lang/String;
    .end local v2    # "newPin2":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :sswitch_8a
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2966
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2967
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2968
    .local v1, "oldPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2969
    .local v2, "newPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2970
    .restart local v3    # "aid":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/hardware/radio/V1_1/IRadio$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2971
    goto/16 :goto_1

    .line 2952
    .end local v0    # "serial":I
    .end local v1    # "oldPin":Ljava/lang/String;
    .end local v2    # "newPin":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :sswitch_8b
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2954
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2955
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2956
    .local v1, "puk2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2957
    .local v2, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2958
    .restart local v3    # "aid":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/hardware/radio/V1_1/IRadio$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2959
    goto :goto_1

    .line 2941
    .end local v0    # "serial":I
    .end local v1    # "puk2":Ljava/lang/String;
    .end local v2    # "pin2":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :sswitch_8c
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2943
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2944
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2945
    .local v1, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2946
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 2947
    goto :goto_1

    .line 2929
    .end local v0    # "serial":I
    .end local v1    # "pin2":Ljava/lang/String;
    .end local v2    # "aid":Ljava/lang/String;
    :sswitch_8d
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2931
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2932
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2933
    .local v1, "puk":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2934
    .local v2, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2935
    .restart local v3    # "aid":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/hardware/radio/V1_1/IRadio$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2936
    goto :goto_1

    .line 2918
    .end local v0    # "serial":I
    .end local v1    # "puk":Ljava/lang/String;
    .end local v2    # "pin":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :sswitch_8e
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2920
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2921
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2922
    .local v1, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2923
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 2924
    goto :goto_1

    .line 2909
    .end local v0    # "serial":I
    .end local v1    # "pin":Ljava/lang/String;
    .end local v2    # "aid":Ljava/lang/String;
    :sswitch_8f
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2911
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2912
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getIccCardStatus(I)V

    .line 2913
    goto :goto_1

    .line 2897
    .end local v0    # "serial":I
    :sswitch_90
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2899
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioResponse;

    move-result-object v0

    .line 2900
    .local v0, "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioIndication;

    move-result-object v1

    .line 2901
    .local v1, "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 2902
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2903
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2904
    nop

    .line 4382
    .end local v0    # "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    .end local v1    # "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_90
        0x2 -> :sswitch_8f
        0x3 -> :sswitch_8e
        0x4 -> :sswitch_8d
        0x5 -> :sswitch_8c
        0x6 -> :sswitch_8b
        0x7 -> :sswitch_8a
        0x8 -> :sswitch_89
        0x9 -> :sswitch_88
        0xa -> :sswitch_87
        0xb -> :sswitch_86
        0xc -> :sswitch_85
        0xd -> :sswitch_84
        0xe -> :sswitch_83
        0xf -> :sswitch_82
        0x10 -> :sswitch_81
        0x11 -> :sswitch_80
        0x12 -> :sswitch_7f
        0x13 -> :sswitch_7e
        0x14 -> :sswitch_7d
        0x15 -> :sswitch_7c
        0x16 -> :sswitch_7b
        0x17 -> :sswitch_7a
        0x18 -> :sswitch_79
        0x19 -> :sswitch_78
        0x1a -> :sswitch_77
        0x1b -> :sswitch_76
        0x1c -> :sswitch_75
        0x1d -> :sswitch_74
        0x1e -> :sswitch_73
        0x1f -> :sswitch_72
        0x20 -> :sswitch_71
        0x21 -> :sswitch_70
        0x22 -> :sswitch_6f
        0x23 -> :sswitch_6e
        0x24 -> :sswitch_6d
        0x25 -> :sswitch_6c
        0x26 -> :sswitch_6b
        0x27 -> :sswitch_6a
        0x28 -> :sswitch_69
        0x29 -> :sswitch_68
        0x2a -> :sswitch_67
        0x2b -> :sswitch_66
        0x2c -> :sswitch_65
        0x2d -> :sswitch_64
        0x2e -> :sswitch_63
        0x2f -> :sswitch_62
        0x30 -> :sswitch_61
        0x31 -> :sswitch_60
        0x32 -> :sswitch_5f
        0x33 -> :sswitch_5e
        0x34 -> :sswitch_5d
        0x35 -> :sswitch_5c
        0x36 -> :sswitch_5b
        0x37 -> :sswitch_5a
        0x38 -> :sswitch_59
        0x39 -> :sswitch_58
        0x3a -> :sswitch_57
        0x3b -> :sswitch_56
        0x3c -> :sswitch_55
        0x3d -> :sswitch_54
        0x3e -> :sswitch_53
        0x3f -> :sswitch_52
        0x40 -> :sswitch_51
        0x41 -> :sswitch_50
        0x42 -> :sswitch_4f
        0x43 -> :sswitch_4e
        0x44 -> :sswitch_4d
        0x45 -> :sswitch_4c
        0x46 -> :sswitch_4b
        0x47 -> :sswitch_4a
        0x48 -> :sswitch_49
        0x49 -> :sswitch_48
        0x4a -> :sswitch_47
        0x4b -> :sswitch_46
        0x4c -> :sswitch_45
        0x4d -> :sswitch_44
        0x4e -> :sswitch_43
        0x4f -> :sswitch_42
        0x50 -> :sswitch_41
        0x51 -> :sswitch_40
        0x52 -> :sswitch_3f
        0x53 -> :sswitch_3e
        0x54 -> :sswitch_3d
        0x55 -> :sswitch_3c
        0x56 -> :sswitch_3b
        0x57 -> :sswitch_3a
        0x58 -> :sswitch_39
        0x59 -> :sswitch_38
        0x5a -> :sswitch_37
        0x5b -> :sswitch_36
        0x5c -> :sswitch_35
        0x5d -> :sswitch_34
        0x5e -> :sswitch_33
        0x5f -> :sswitch_32
        0x60 -> :sswitch_31
        0x61 -> :sswitch_30
        0x62 -> :sswitch_2f
        0x63 -> :sswitch_2e
        0x64 -> :sswitch_2d
        0x65 -> :sswitch_2c
        0x66 -> :sswitch_2b
        0x67 -> :sswitch_2a
        0x68 -> :sswitch_29
        0x69 -> :sswitch_28
        0x6a -> :sswitch_27
        0x6b -> :sswitch_26
        0x6c -> :sswitch_25
        0x6d -> :sswitch_24
        0x6e -> :sswitch_23
        0x6f -> :sswitch_22
        0x70 -> :sswitch_21
        0x71 -> :sswitch_20
        0x72 -> :sswitch_1f
        0x73 -> :sswitch_1e
        0x74 -> :sswitch_1d
        0x75 -> :sswitch_1c
        0x76 -> :sswitch_1b
        0x77 -> :sswitch_1a
        0x78 -> :sswitch_19
        0x79 -> :sswitch_18
        0x7a -> :sswitch_17
        0x7b -> :sswitch_16
        0x7c -> :sswitch_15
        0x7d -> :sswitch_14
        0x7e -> :sswitch_13
        0x7f -> :sswitch_12
        0x80 -> :sswitch_11
        0x81 -> :sswitch_10
        0x82 -> :sswitch_f
        0x83 -> :sswitch_e
        0x84 -> :sswitch_d
        0x85 -> :sswitch_c
        0x86 -> :sswitch_b
        0x87 -> :sswitch_a
        0x88 -> :sswitch_9
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

    .line 2848
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 2876
    const-string v0, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2877
    return-object p0

    .line 2879
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

    .line 2883
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 2884
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .locals 0

    .line 2838
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 2888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 2870
    const/4 v0, 0x1

    return v0
.end method
