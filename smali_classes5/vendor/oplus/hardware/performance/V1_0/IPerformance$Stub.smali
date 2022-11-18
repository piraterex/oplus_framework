.class public abstract Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;
.super Landroid/os/HwBinder;
.source "IPerformance.java"

# interfaces
.implements Lvendor/oplus/hardware/performance/V1_0/IPerformance;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/oplus/hardware/performance/V1_0/IPerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 3630
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 3633
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

    .line 3646
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 3683
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 3684
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 3685
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 3686
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 3687
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

    .line 3658
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
        0x15t
        0x12t
        -0x52t
        0x43t
        0x7at
        0x41t
        -0x69t
        -0x1bt
        0x56t
        0x44t
        0x29t
        -0x20t
        0xft
        -0x72t
        0x2et
        -0x22t
        0x61t
        -0x50t
        0x2at
        -0x34t
        -0x6t
        0x6ct
        -0x17t
        0x7ct
        0x26t
        -0x2t
        -0x43t
        -0x26t
        -0x5et
        -0x19t
        0x24t
        0x3ct
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

    .line 3638
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.oplus.hardware.performance@1.0::IPerformance"

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

    .line 3652
    const-string v0, "vendor.oplus.hardware.performance@1.0::IPerformance"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 3671
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .locals 0

    .line 3693
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 3695
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

    .line 3723
    const-string v0, "android.hidl.base@1.0::IBase"

    const/4 v1, 0x0

    const-string v2, "vendor.oplus.hardware.performance@1.0::IPerformance"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 5539
    :sswitch_0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5541
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->notifySyspropsChanged()V

    .line 5542
    goto/16 :goto_1

    .line 5528
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5530
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 5531
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5532
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 5533
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5534
    goto/16 :goto_1

    .line 5518
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5520
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->ping()V

    .line 5521
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5522
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5523
    goto/16 :goto_1

    .line 5513
    :sswitch_3
    goto/16 :goto_1

    .line 5505
    :sswitch_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5507
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->setHALInstrumentation()V

    .line 5508
    goto/16 :goto_1

    .line 5471
    :sswitch_5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5473
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 5474
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5476
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 5478
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5479
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 5480
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 5481
    new-instance v1, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 5482
    .local v1, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 5484
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 5485
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 5487
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 5491
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 5492
    nop

    .line 5482
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5488
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 5495
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 5497
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 5499
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5500
    goto/16 :goto_1

    .line 5460
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5462
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 5463
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5464
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5465
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5466
    goto/16 :goto_1

    .line 5448
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5450
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 5451
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 5452
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 5453
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5454
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5455
    goto/16 :goto_1

    .line 5437
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5439
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 5440
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5441
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 5442
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5443
    goto/16 :goto_1

    .line 5422
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5424
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 5425
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5426
    .local v2, "addr":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5427
    .local v3, "isMulti":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 5428
    .local v4, "cmd":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3, v4}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->writeStorageFeature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 5429
    .local v5, "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5430
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5431
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5432
    goto/16 :goto_1

    .line 5408
    .end local v0    # "name":Ljava/lang/String;
    .end local v2    # "addr":Ljava/lang/String;
    .end local v3    # "isMulti":Ljava/lang/String;
    .end local v4    # "cmd":Ljava/lang/String;
    .end local v5    # "_hidl_out_result":I
    :sswitch_a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5410
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 5411
    .restart local v0    # "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5412
    .restart local v2    # "addr":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5413
    .restart local v3    # "isMulti":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readStorageFeature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5414
    .local v4, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5415
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5416
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5417
    goto/16 :goto_1

    .line 5399
    .end local v0    # "name":Ljava/lang/String;
    .end local v2    # "addr":Ljava/lang/String;
    .end local v3    # "isMulti":Ljava/lang/String;
    .end local v4    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5401
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 5402
    .local v0, "buffer":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->writeIOBacktrace(Ljava/lang/String;)V

    .line 5403
    goto/16 :goto_1

    .line 5390
    .end local v0    # "buffer":Ljava/lang/String;
    :sswitch_c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5392
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 5393
    .restart local v0    # "buffer":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->writeDBacktrace(Ljava/lang/String;)V

    .line 5394
    goto/16 :goto_1

    .line 5381
    .end local v0    # "buffer":Ljava/lang/String;
    :sswitch_d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5383
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 5384
    .restart local v0    # "buffer":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->writeTidsSet(Ljava/lang/String;)V

    .line 5385
    goto/16 :goto_1

    .line 5370
    .end local v0    # "buffer":Ljava/lang/String;
    :sswitch_e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5372
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readLimitTable()Ljava/lang/String;

    move-result-object v0

    .line 5373
    .local v0, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5374
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5375
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5376
    goto/16 :goto_1

    .line 5359
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5361
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readIOBacktrace()Ljava/lang/String;

    move-result-object v0

    .line 5362
    .restart local v0    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5363
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5364
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5365
    goto/16 :goto_1

    .line 5348
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_10
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5350
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readDBacktrace()Ljava/lang/String;

    move-result-object v0

    .line 5351
    .restart local v0    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5352
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5353
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5354
    goto/16 :goto_1

    .line 5337
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_11
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5339
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readVersion()Ljava/lang/String;

    move-result-object v0

    .line 5340
    .restart local v0    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5341
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5342
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5343
    goto/16 :goto_1

    .line 5326
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_12
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5328
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readTidsSet()Ljava/lang/String;

    move-result-object v0

    .line 5329
    .restart local v0    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5330
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5331
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5332
    goto/16 :goto_1

    .line 5315
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_13
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5317
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readOsvelteVersion()Lvendor/oplus/hardware/performance/V1_0/OsvelteVersionRet;

    move-result-object v0

    .line 5318
    .local v0, "_hidl_out_ret":Lvendor/oplus/hardware/performance/V1_0/OsvelteVersionRet;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5319
    invoke-virtual {v0, p3}, Lvendor/oplus/hardware/performance/V1_0/OsvelteVersionRet;->writeToParcel(Landroid/os/HwParcel;)V

    .line 5320
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5321
    goto/16 :goto_1

    .line 5302
    .end local v0    # "_hidl_out_ret":Lvendor/oplus/hardware/performance/V1_0/OsvelteVersionRet;
    :sswitch_14
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5304
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 5305
    .local v0, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5306
    .local v2, "flags":I
    invoke-virtual {p0, v0, v2}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readMemoryByUids(Ljava/util/ArrayList;I)Lvendor/oplus/hardware/performance/V1_0/ProcMemStatRet;

    move-result-object v3

    .line 5307
    .local v3, "_hidl_out_pms":Lvendor/oplus/hardware/performance/V1_0/ProcMemStatRet;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5308
    invoke-virtual {v3, p3}, Lvendor/oplus/hardware/performance/V1_0/ProcMemStatRet;->writeToParcel(Landroid/os/HwParcel;)V

    .line 5309
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5310
    goto/16 :goto_1

    .line 5289
    .end local v0    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "flags":I
    .end local v3    # "_hidl_out_pms":Lvendor/oplus/hardware/performance/V1_0/ProcMemStatRet;
    :sswitch_15
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5291
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 5292
    .local v0, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5293
    .restart local v2    # "flags":I
    invoke-virtual {p0, v0, v2}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readMemoryByPids(Ljava/util/ArrayList;I)Lvendor/oplus/hardware/performance/V1_0/ProcMemStatRet;

    move-result-object v3

    .line 5294
    .restart local v3    # "_hidl_out_pms":Lvendor/oplus/hardware/performance/V1_0/ProcMemStatRet;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5295
    invoke-virtual {v3, p3}, Lvendor/oplus/hardware/performance/V1_0/ProcMemStatRet;->writeToParcel(Landroid/os/HwParcel;)V

    .line 5296
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5297
    goto/16 :goto_1

    .line 5278
    .end local v0    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "flags":I
    .end local v3    # "_hidl_out_pms":Lvendor/oplus/hardware/performance/V1_0/ProcMemStatRet;
    :sswitch_16
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5280
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getUfsSignalRecordUpload()Ljava/lang/String;

    move-result-object v0

    .line 5281
    .local v0, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5282
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5283
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5284
    goto/16 :goto_1

    .line 5264
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_17
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5266
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5267
    .local v0, "offset":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5268
    .local v2, "len":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5269
    .local v3, "info":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->writeOplusReserve3(IILjava/lang/String;)I

    move-result v4

    .line 5270
    .local v4, "_hidl_out_status":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5271
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5272
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5273
    goto/16 :goto_1

    .line 5251
    .end local v0    # "offset":I
    .end local v2    # "len":I
    .end local v3    # "info":Ljava/lang/String;
    .end local v4    # "_hidl_out_status":I
    :sswitch_18
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5253
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5254
    .restart local v0    # "offset":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5255
    .restart local v2    # "len":I
    invoke-virtual {p0, v0, v2}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readOplusReserve3(II)Ljava/lang/String;

    move-result-object v3

    .line 5256
    .local v3, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5257
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5258
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5259
    goto/16 :goto_1

    .line 5240
    .end local v0    # "offset":I
    .end local v2    # "len":I
    .end local v3    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_19
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5242
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getDdrResidency()Ljava/lang/String;

    move-result-object v0

    .line 5243
    .local v0, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5244
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5245
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5246
    goto/16 :goto_1

    .line 5229
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5231
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getDevinfoUfsVersionInfo()Ljava/lang/String;

    move-result-object v0

    .line 5232
    .restart local v0    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5233
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5234
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5235
    goto/16 :goto_1

    .line 5218
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5220
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getDevinfoUfsInfo()Ljava/lang/String;

    move-result-object v0

    .line 5221
    .restart local v0    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5222
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5223
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5224
    goto/16 :goto_1

    .line 5207
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5209
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getUfsplusHpbStatus()I

    move-result v0

    .line 5210
    .local v0, "_hidl_out_status":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5211
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5212
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5213
    goto/16 :goto_1

    .line 5196
    .end local v0    # "_hidl_out_status":I
    :sswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5198
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getUfsplusTwStatus()I

    move-result v0

    .line 5199
    .restart local v0    # "_hidl_out_status":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5200
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5201
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5202
    goto/16 :goto_1

    .line 5183
    .end local v0    # "_hidl_out_status":I
    :sswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5185
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5186
    .local v0, "sample":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5187
    .local v2, "aggr":I
    invoke-virtual {p0, v0, v2}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->setDamonReclaimMonitoring(II)I

    move-result v3

    .line 5188
    .local v3, "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5189
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5190
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5191
    goto/16 :goto_1

    .line 5169
    .end local v0    # "sample":I
    .end local v2    # "aggr":I
    .end local v3    # "_hidl_out_result":I
    :sswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5171
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5172
    .local v0, "quota_ms":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5173
    .local v2, "quota_sz":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5174
    .local v3, "reset_interval":I
    invoke-virtual {p0, v0, v2, v3}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->setDamonReclaimQuota(III)I

    move-result v4

    .line 5175
    .local v4, "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5176
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5177
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5178
    goto/16 :goto_1

    .line 5157
    .end local v0    # "quota_ms":I
    .end local v2    # "quota_sz":I
    .end local v3    # "reset_interval":I
    .end local v4    # "_hidl_out_result":I
    :sswitch_20
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5159
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5160
    .local v0, "cold_time":I
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->setDamonReclaimColdTime(I)I

    move-result v2

    .line 5161
    .local v2, "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5162
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5163
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5164
    goto/16 :goto_1

    .line 5142
    .end local v0    # "cold_time":I
    .end local v2    # "_hidl_out_result":I
    :sswitch_21
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5144
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5145
    .local v0, "metric":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5146
    .local v2, "high":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5147
    .local v3, "mid":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 5148
    .local v4, "low":I
    invoke-virtual {p0, v0, v2, v3, v4}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->setDamonReclaimWmarks(IIII)I

    move-result v5

    .line 5149
    .restart local v5    # "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5150
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5151
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5152
    goto/16 :goto_1

    .line 5131
    .end local v0    # "metric":I
    .end local v2    # "high":I
    .end local v3    # "mid":I
    .end local v4    # "low":I
    .end local v5    # "_hidl_out_result":I
    :sswitch_22
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5133
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->disableDamonReclaim()I

    move-result v0

    .line 5134
    .local v0, "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5135
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5136
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5137
    goto/16 :goto_1

    .line 5120
    .end local v0    # "_hidl_out_result":I
    :sswitch_23
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5122
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->enableDamonReclaim()I

    move-result v0

    .line 5123
    .restart local v0    # "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5124
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5125
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5126
    goto/16 :goto_1

    .line 5109
    .end local v0    # "_hidl_out_result":I
    :sswitch_24
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5111
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readCallStack()Ljava/lang/String;

    move-result-object v0

    .line 5112
    .local v0, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5113
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5114
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5115
    goto/16 :goto_1

    .line 5100
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_25
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5102
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 5103
    .local v0, "buffer":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->writeClmLowLoadGrp(Ljava/lang/String;)V

    .line 5104
    goto/16 :goto_1

    .line 5089
    .end local v0    # "buffer":Ljava/lang/String;
    :sswitch_26
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5091
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readClmLowLoadGrp()Ljava/lang/String;

    move-result-object v0

    .line 5092
    .local v0, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5093
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5094
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5095
    goto/16 :goto_1

    .line 5080
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_27
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5082
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 5083
    .local v0, "buffer":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->writeClmHighLoadGrp(Ljava/lang/String;)V

    .line 5084
    goto/16 :goto_1

    .line 5069
    .end local v0    # "buffer":Ljava/lang/String;
    :sswitch_28
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5071
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readClmHighLoadGrp()Ljava/lang/String;

    move-result-object v0

    .line 5072
    .local v0, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5073
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5074
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5075
    goto/16 :goto_1

    .line 5060
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_29
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5062
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 5063
    .local v0, "buffer":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->writeClmHighLoadAll(Ljava/lang/String;)V

    .line 5064
    goto/16 :goto_1

    .line 5049
    .end local v0    # "buffer":Ljava/lang/String;
    :sswitch_2a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5051
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readClmHighLoadAll()Ljava/lang/String;

    move-result-object v0

    .line 5052
    .local v0, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5053
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5054
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5055
    goto/16 :goto_1

    .line 5040
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_2b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5042
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 5043
    .local v0, "buffer":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->writeFgFreqsThreshold(Ljava/lang/String;)V

    .line 5044
    goto/16 :goto_1

    .line 5029
    .end local v0    # "buffer":Ljava/lang/String;
    :sswitch_2c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5031
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readFgFreqsThreshold()Ljava/lang/String;

    move-result-object v0

    .line 5032
    .local v0, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5033
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5034
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5035
    goto/16 :goto_1

    .line 5020
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_2d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5022
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 5023
    .local v0, "buffer":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->writeClmEnable(Ljava/lang/String;)V

    .line 5024
    goto/16 :goto_1

    .line 5009
    .end local v0    # "buffer":Ljava/lang/String;
    :sswitch_2e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5011
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readClmEnable()Ljava/lang/String;

    move-result-object v0

    .line 5012
    .local v0, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5013
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5014
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5015
    goto/16 :goto_1

    .line 5000
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_2f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5002
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5003
    .local v0, "group":I
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->clearTaskTrackGroup(I)V

    .line 5004
    goto/16 :goto_1

    .line 4990
    .end local v0    # "group":I
    :sswitch_30
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4992
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4993
    .restart local v0    # "group":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4994
    .local v1, "pid":I
    invoke-virtual {p0, v0, v1}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->removeTaskTrackPid(II)V

    .line 4995
    goto/16 :goto_1

    .line 4976
    .end local v0    # "group":I
    .end local v1    # "pid":I
    :sswitch_31
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4978
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4979
    .restart local v0    # "group":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4980
    .local v2, "pid":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4981
    .local v3, "clear":Z
    invoke-virtual {p0, v0, v2, v3}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->addTaskTrackPid(IIZ)I

    move-result v4

    .line 4982
    .local v4, "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4983
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4984
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4985
    goto/16 :goto_1

    .line 4963
    .end local v0    # "group":I
    .end local v2    # "pid":I
    .end local v3    # "clear":Z
    .end local v4    # "_hidl_out_result":I
    :sswitch_32
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4965
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4966
    .local v0, "uPid":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4967
    .local v2, "rPid":I
    invoke-virtual {p0, v0, v2}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readUxTaskTrack(II)Ljava/lang/String;

    move-result-object v3

    .line 4968
    .local v3, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4969
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4970
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4971
    goto/16 :goto_1

    .line 4952
    .end local v0    # "uPid":I
    .end local v2    # "rPid":I
    .end local v3    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_33
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4954
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->isJankTaskTrackEnable()Z

    move-result v0

    .line 4955
    .local v0, "_hidl_out_result":Z
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4956
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 4957
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4958
    goto/16 :goto_1

    .line 4941
    .end local v0    # "_hidl_out_result":Z
    :sswitch_34
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4943
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readJankVersion()Ljava/lang/String;

    move-result-object v0

    .line 4944
    .local v0, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4945
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4946
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4947
    goto/16 :goto_1

    .line 4932
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_35
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4934
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 4935
    .local v0, "enable":Z
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->writeJankTaskTrackEnable(Z)V

    .line 4936
    goto/16 :goto_1

    .line 4921
    .end local v0    # "enable":Z
    :sswitch_36
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4923
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readJankTaskTrack()Ljava/lang/String;

    move-result-object v0

    .line 4924
    .local v0, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4925
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4926
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4927
    goto/16 :goto_1

    .line 4909
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_37
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4911
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4912
    .local v0, "pid":I
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readJankTaskTrackByPid(I)Ljava/lang/String;

    move-result-object v2

    .line 4913
    .local v2, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4914
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4915
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4916
    goto/16 :goto_1

    .line 4898
    .end local v0    # "pid":I
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_38
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4900
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readJankCpuIndicator()Ljava/lang/String;

    move-result-object v0

    .line 4901
    .local v0, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4902
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4903
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4904
    goto/16 :goto_1

    .line 4887
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_39
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4889
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readJankCpuLoad32Scale()Ljava/lang/String;

    move-result-object v0

    .line 4890
    .restart local v0    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4891
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4892
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4893
    goto/16 :goto_1

    .line 4876
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_3a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4878
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readJankCpuLoad32()Ljava/lang/String;

    move-result-object v0

    .line 4879
    .restart local v0    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4880
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4881
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4882
    goto/16 :goto_1

    .line 4865
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_3b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4867
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readJankCpuLoad()Ljava/lang/String;

    move-result-object v0

    .line 4868
    .restart local v0    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4869
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4870
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4871
    goto/16 :goto_1

    .line 4854
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_3c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4856
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readJankCpuInfoSig()Ljava/lang/String;

    move-result-object v0

    .line 4857
    .restart local v0    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4858
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4859
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4860
    goto/16 :goto_1

    .line 4843
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_3d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4845
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readJankCpuInfo()Ljava/lang/String;

    move-result-object v0

    .line 4846
    .restart local v0    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4847
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4848
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4849
    goto/16 :goto_1

    .line 4832
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_3e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4834
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readDConvert()Ljava/lang/String;

    move-result-object v0

    .line 4835
    .restart local v0    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4836
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4837
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4838
    goto/16 :goto_1

    .line 4819
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_3f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4821
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4822
    .local v0, "action":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4823
    .local v2, "cgroup":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->hybridswap_memcg_para_read(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4824
    .restart local v3    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4825
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4826
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4827
    goto/16 :goto_1

    .line 4805
    .end local v0    # "action":I
    .end local v2    # "cgroup":Ljava/lang/String;
    .end local v3    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_40
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4807
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4808
    .restart local v0    # "action":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4809
    .restart local v2    # "cgroup":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4810
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->hybridswap_memcg_para_write(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 4811
    .restart local v4    # "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4812
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4813
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4814
    goto/16 :goto_1

    .line 4793
    .end local v0    # "action":I
    .end local v2    # "cgroup":Ljava/lang/String;
    .end local v3    # "str":Ljava/lang/String;
    .end local v4    # "_hidl_out_result":I
    :sswitch_41
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4795
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4796
    .restart local v0    # "action":I
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->hybridswap_zram_para_read(I)Ljava/lang/String;

    move-result-object v2

    .line 4797
    .local v2, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4798
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4799
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4800
    goto/16 :goto_1

    .line 4780
    .end local v0    # "action":I
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_42
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4782
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4783
    .restart local v0    # "action":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4784
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->hybridswap_zram_para_write(ILjava/lang/String;)I

    move-result v3

    .line 4785
    .local v3, "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4786
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4787
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4788
    goto/16 :goto_1

    .line 4769
    .end local v0    # "action":I
    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "_hidl_out_result":I
    :sswitch_43
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4771
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getOswapVersion()I

    move-result v0

    .line 4772
    .local v0, "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4773
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4774
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4775
    goto/16 :goto_1

    .line 4757
    .end local v0    # "_hidl_out_result":I
    :sswitch_44
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4759
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4760
    .local v0, "buffer":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readTargetProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4761
    .local v2, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4762
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4763
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4764
    goto/16 :goto_1

    .line 4746
    .end local v0    # "buffer":Ljava/lang/String;
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_45
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4748
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readNormalizeRunningTime()Ljava/lang/String;

    move-result-object v0

    .line 4749
    .local v0, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4750
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4751
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4752
    goto/16 :goto_1

    .line 4735
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_46
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4737
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readRunningTime()Ljava/lang/String;

    move-result-object v0

    .line 4738
    .restart local v0    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4739
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4740
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4741
    goto/16 :goto_1

    .line 4724
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_47
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4726
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readNormalizeRealTime()Ljava/lang/String;

    move-result-object v0

    .line 4727
    .restart local v0    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4728
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4729
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4730
    goto/16 :goto_1

    .line 4713
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_48
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4715
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readRealTime()Ljava/lang/String;

    move-result-object v0

    .line 4716
    .restart local v0    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4717
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4718
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4719
    goto/16 :goto_1

    .line 4701
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_49
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4703
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4704
    .local v0, "buffer":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->writeMonitorStatus(Ljava/lang/String;)I

    move-result v2

    .line 4705
    .local v2, "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4706
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4707
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4708
    goto/16 :goto_1

    .line 4692
    .end local v0    # "buffer":Ljava/lang/String;
    .end local v2    # "_hidl_out_result":I
    :sswitch_4a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4694
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4695
    .restart local v0    # "buffer":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->writeSchedInfoThreshold(Ljava/lang/String;)V

    .line 4696
    goto/16 :goto_1

    .line 4683
    .end local v0    # "buffer":Ljava/lang/String;
    :sswitch_4b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4685
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4686
    .restart local v0    # "buffer":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->writePidsSet(Ljava/lang/String;)V

    .line 4687
    goto/16 :goto_1

    .line 4672
    .end local v0    # "buffer":Ljava/lang/String;
    :sswitch_4c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4674
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readSchedInfoThreshold()Ljava/lang/String;

    move-result-object v0

    .line 4675
    .local v0, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4676
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4677
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4678
    goto/16 :goto_1

    .line 4661
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_4d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4663
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readPidsSet()Ljava/lang/String;

    move-result-object v0

    .line 4664
    .restart local v0    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4665
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4666
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4667
    goto/16 :goto_1

    .line 4650
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_4e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4652
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readTaskSchedInfo()Ljava/lang/String;

    move-result-object v0

    .line 4653
    .restart local v0    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4654
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4655
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4656
    goto/16 :goto_1

    .line 4641
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_4f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4643
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4644
    .local v0, "buffer":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->writeTaskSchedInfo(Ljava/lang/String;)V

    .line 4645
    goto/16 :goto_1

    .line 4632
    .end local v0    # "buffer":Ljava/lang/String;
    :sswitch_50
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4634
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4635
    .local v0, "impt_info":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->setSchedAssistImptTask(Ljava/lang/String;)V

    .line 4636
    goto/16 :goto_1

    .line 4623
    .end local v0    # "impt_info":Ljava/lang/String;
    :sswitch_51
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4625
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4626
    .local v0, "boost":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->setSlideboost(Ljava/lang/String;)V

    .line 4627
    goto/16 :goto_1

    .line 4612
    .end local v0    # "boost":Ljava/lang/String;
    :sswitch_52
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4614
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readSgeFreqInfo()Ljava/lang/String;

    move-result-object v0

    .line 4615
    .local v0, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4616
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4617
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4618
    goto/16 :goto_1

    .line 4601
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_53
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4603
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readTaskCpustatsEnable()Ljava/lang/String;

    move-result-object v0

    .line 4604
    .restart local v0    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4605
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4606
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4607
    goto/16 :goto_1

    .line 4591
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_54
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4593
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4594
    .local v0, "pid":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4595
    .local v1, "im_flag":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->setImFlag(Ljava/lang/String;Ljava/lang/String;)V

    .line 4596
    goto/16 :goto_1

    .line 4578
    .end local v0    # "pid":Ljava/lang/String;
    .end local v1    # "im_flag":Ljava/lang/String;
    :sswitch_55
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4580
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4581
    .local v0, "inProc":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4582
    .local v2, "cmd":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->writeNandswapProc(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 4583
    .restart local v3    # "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4584
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4585
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4586
    goto/16 :goto_1

    .line 4566
    .end local v0    # "inProc":Ljava/lang/String;
    .end local v2    # "cmd":Ljava/lang/String;
    .end local v3    # "_hidl_out_result":I
    :sswitch_56
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4568
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4569
    .restart local v0    # "inProc":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readNandswapProc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4570
    .local v2, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4571
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4572
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4573
    goto/16 :goto_1

    .line 4554
    .end local v0    # "inProc":Ljava/lang/String;
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_57
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4556
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4557
    .local v0, "dirname":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->searchAcmNomediaDirName(Ljava/lang/String;)I

    move-result v2

    .line 4558
    .local v2, "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4559
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4560
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4561
    goto/16 :goto_1

    .line 4542
    .end local v0    # "dirname":Ljava/lang/String;
    .end local v2    # "_hidl_out_result":I
    :sswitch_58
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4544
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4545
    .restart local v0    # "dirname":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->delAcmNomediaDirName(Ljava/lang/String;)I

    move-result v2

    .line 4546
    .restart local v2    # "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4547
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4548
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4549
    goto/16 :goto_1

    .line 4530
    .end local v0    # "dirname":Ljava/lang/String;
    .end local v2    # "_hidl_out_result":I
    :sswitch_59
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4532
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4533
    .restart local v0    # "dirname":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->addAcmNomediaDirName(Ljava/lang/String;)I

    move-result v2

    .line 4534
    .restart local v2    # "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4535
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4536
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4537
    goto/16 :goto_1

    .line 4518
    .end local v0    # "dirname":Ljava/lang/String;
    .end local v2    # "_hidl_out_result":I
    :sswitch_5a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4520
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4521
    .restart local v0    # "dirname":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getAcmDirFlag(Ljava/lang/String;)J

    move-result-wide v2

    .line 4522
    .local v2, "_hidl_out_result":J
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4523
    invoke-virtual {p3, v2, v3}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 4524
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4525
    goto/16 :goto_1

    .line 4506
    .end local v0    # "dirname":Ljava/lang/String;
    .end local v2    # "_hidl_out_result":J
    :sswitch_5b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4508
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4509
    .restart local v0    # "dirname":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->delAcmDirName(Ljava/lang/String;)I

    move-result v2

    .line 4510
    .local v2, "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4511
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4512
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4513
    goto/16 :goto_1

    .line 4493
    .end local v0    # "dirname":Ljava/lang/String;
    .end local v2    # "_hidl_out_result":I
    :sswitch_5c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4495
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4496
    .restart local v0    # "dirname":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 4497
    .local v2, "flag":J
    invoke-virtual {p0, v0, v2, v3}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->addAcmDirName(Ljava/lang/String;J)I

    move-result v4

    .line 4498
    .restart local v4    # "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4499
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4500
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4501
    goto/16 :goto_1

    .line 4481
    .end local v0    # "dirname":Ljava/lang/String;
    .end local v2    # "flag":J
    .end local v4    # "_hidl_out_result":I
    :sswitch_5d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4483
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4484
    .local v0, "pkgname":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getAcmPkgFlag(Ljava/lang/String;)J

    move-result-wide v2

    .line 4485
    .local v2, "_hidl_out_result":J
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4486
    invoke-virtual {p3, v2, v3}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 4487
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4488
    goto/16 :goto_1

    .line 4469
    .end local v0    # "pkgname":Ljava/lang/String;
    .end local v2    # "_hidl_out_result":J
    :sswitch_5e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4471
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4472
    .restart local v0    # "pkgname":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->delAcmPkgName(Ljava/lang/String;)I

    move-result v2

    .line 4473
    .local v2, "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4474
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4475
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4476
    goto/16 :goto_1

    .line 4456
    .end local v0    # "pkgname":Ljava/lang/String;
    .end local v2    # "_hidl_out_result":I
    :sswitch_5f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4458
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4459
    .restart local v0    # "pkgname":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 4460
    .local v2, "flag":J
    invoke-virtual {p0, v0, v2, v3}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->addAcmPkgName(Ljava/lang/String;J)I

    move-result v4

    .line 4461
    .restart local v4    # "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4462
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4463
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4464
    goto/16 :goto_1

    .line 4445
    .end local v0    # "pkgname":Ljava/lang/String;
    .end local v2    # "flag":J
    .end local v4    # "_hidl_out_result":I
    :sswitch_60
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4447
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getAcmOpstat()I

    move-result v0

    .line 4448
    .local v0, "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4449
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4450
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4451
    goto/16 :goto_1

    .line 4433
    .end local v0    # "_hidl_out_result":I
    :sswitch_61
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4435
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4436
    .local v0, "flag":I
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->setAcmOpstat(I)I

    move-result v2

    .line 4437
    .local v2, "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4438
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4439
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4440
    goto/16 :goto_1

    .line 4419
    .end local v0    # "flag":I
    .end local v2    # "_hidl_out_result":I
    :sswitch_62
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4421
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4422
    .local v0, "ux_state":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4423
    .local v2, "pid":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4424
    .local v3, "tid":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->writeUxState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 4425
    .restart local v4    # "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4426
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4427
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4428
    goto/16 :goto_1

    .line 4407
    .end local v0    # "ux_state":Ljava/lang/String;
    .end local v2    # "pid":Ljava/lang/String;
    .end local v3    # "tid":Ljava/lang/String;
    .end local v4    # "_hidl_out_result":I
    :sswitch_63
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4409
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4410
    .local v0, "buffer":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->writeMemMonitor(Ljava/lang/String;)I

    move-result v2

    .line 4411
    .local v2, "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4412
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4413
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4414
    goto/16 :goto_1

    .line 4396
    .end local v0    # "buffer":Ljava/lang/String;
    .end local v2    # "_hidl_out_result":I
    :sswitch_64
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4398
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getMemMonitor()Ljava/lang/String;

    move-result-object v0

    .line 4399
    .local v0, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4400
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4401
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4402
    goto/16 :goto_1

    .line 4385
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_65
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4387
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getKernelVersion()I

    move-result v0

    .line 4388
    .local v0, "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4389
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4390
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4391
    goto/16 :goto_1

    .line 4374
    .end local v0    # "_hidl_out_result":I
    :sswitch_66
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4376
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->disableTaskPlacementDecision()I

    move-result v0

    .line 4377
    .restart local v0    # "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4378
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4379
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4380
    goto/16 :goto_1

    .line 4363
    .end local v0    # "_hidl_out_result":I
    :sswitch_67
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4365
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->enableTaskPlacementDecision()I

    move-result v0

    .line 4366
    .restart local v0    # "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4367
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4368
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4369
    goto/16 :goto_1

    .line 4351
    .end local v0    # "_hidl_out_result":I
    :sswitch_68
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4353
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4354
    .local v0, "param":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->setTpdID(Ljava/lang/String;)I

    move-result v2

    .line 4355
    .restart local v2    # "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4356
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4357
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4358
    goto/16 :goto_1

    .line 4339
    .end local v0    # "param":Ljava/lang/String;
    .end local v2    # "_hidl_out_result":I
    :sswitch_69
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4341
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4342
    .local v0, "params":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->setTpdSerialParams(Ljava/lang/String;)I

    move-result v2

    .line 4343
    .restart local v2    # "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4344
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4345
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4346
    goto/16 :goto_1

    .line 4325
    .end local v0    # "params":Ljava/lang/String;
    .end local v2    # "_hidl_out_result":I
    :sswitch_6a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4327
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4328
    .local v0, "uid":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4329
    .local v2, "pid":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4330
    .local v3, "type":I
    invoke-virtual {p0, v0, v2, v3}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->perProcessMemReadahead(III)I

    move-result v4

    .line 4331
    .restart local v4    # "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4332
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4333
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4334
    goto/16 :goto_1

    .line 4311
    .end local v0    # "uid":I
    .end local v2    # "pid":I
    .end local v3    # "type":I
    .end local v4    # "_hidl_out_result":I
    :sswitch_6b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4313
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4314
    .restart local v0    # "uid":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4315
    .restart local v2    # "pid":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4316
    .restart local v3    # "type":I
    invoke-virtual {p0, v0, v2, v3}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->perProcessMemReclaim(III)I

    move-result v4

    .line 4317
    .restart local v4    # "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4318
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4319
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4320
    goto/16 :goto_1

    .line 4299
    .end local v0    # "uid":I
    .end local v2    # "pid":I
    .end local v3    # "type":I
    .end local v4    # "_hidl_out_result":I
    :sswitch_6c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4301
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4302
    .local v0, "info":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->setProcessReclaim(Ljava/lang/String;)I

    move-result v2

    .line 4303
    .local v2, "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4304
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4305
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4306
    goto/16 :goto_1

    .line 4290
    .end local v0    # "info":Ljava/lang/String;
    .end local v2    # "_hidl_out_result":I
    :sswitch_6d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4292
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4293
    .local v0, "fg_uid":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->setFgUids(Ljava/lang/String;)V

    .line 4294
    goto/16 :goto_1

    .line 4281
    .end local v0    # "fg_uid":Ljava/lang/String;
    :sswitch_6e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4283
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4284
    .local v0, "frame_rate":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->setFrameRate(Ljava/lang/String;)V

    .line 4285
    goto/16 :goto_1

    .line 4272
    .end local v0    # "frame_rate":Ljava/lang/String;
    :sswitch_6f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4274
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4275
    .local v0, "scene_id":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->setSchedAssistScene(Ljava/lang/String;)V

    .line 4276
    goto/16 :goto_1

    .line 4261
    .end local v0    # "scene_id":Ljava/lang/String;
    :sswitch_70
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4263
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getF2fsMovedBlks()Ljava/lang/String;

    move-result-object v0

    .line 4264
    .local v0, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4265
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4266
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4267
    goto/16 :goto_1

    .line 4249
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_71
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4251
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4252
    .local v0, "devpath":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getExt4FragScore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4253
    .local v2, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4254
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4255
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4256
    goto/16 :goto_1

    .line 4237
    .end local v0    # "devpath":Ljava/lang/String;
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_72
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4239
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4240
    .restart local v0    # "devpath":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getExt4FreefragInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4241
    .restart local v2    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4242
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4243
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4244
    goto/16 :goto_1

    .line 4226
    .end local v0    # "devpath":Ljava/lang/String;
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_73
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4228
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getHICpuInfo()Ljava/lang/String;

    move-result-object v0

    .line 4229
    .local v0, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4230
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4231
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4232
    goto/16 :goto_1

    .line 4215
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_74
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4217
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getHIScmCall()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;

    move-result-object v0

    .line 4218
    .local v0, "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4219
    invoke-virtual {v0, p3}, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4220
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4221
    goto/16 :goto_1

    .line 4204
    .end local v0    # "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    :sswitch_75
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4206
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getHIKswapdLoading()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;

    move-result-object v0

    .line 4207
    .restart local v0    # "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4208
    invoke-virtual {v0, p3}, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4209
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4210
    goto/16 :goto_1

    .line 4193
    .end local v0    # "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    :sswitch_76
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4195
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getHIDState()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;

    move-result-object v0

    .line 4196
    .restart local v0    # "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4197
    invoke-virtual {v0, p3}, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4198
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4199
    goto/16 :goto_1

    .line 4182
    .end local v0    # "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    :sswitch_77
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4184
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getHIAllocWait()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;

    move-result-object v0

    .line 4185
    .restart local v0    # "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4186
    invoke-virtual {v0, p3}, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4187
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4188
    goto/16 :goto_1

    .line 4171
    .end local v0    # "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    :sswitch_78
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4173
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getHIIonWait()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;

    move-result-object v0

    .line 4174
    .restart local v0    # "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4175
    invoke-virtual {v0, p3}, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4176
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4177
    goto/16 :goto_1

    .line 4160
    .end local v0    # "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    :sswitch_79
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4162
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getHIUfsFeature()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;

    move-result-object v0

    .line 4163
    .restart local v0    # "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4164
    invoke-virtual {v0, p3}, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4165
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4166
    goto/16 :goto_1

    .line 4149
    .end local v0    # "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    :sswitch_7a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4151
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getHIIowait()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;

    move-result-object v0

    .line 4152
    .restart local v0    # "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4153
    invoke-virtual {v0, p3}, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4154
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4155
    goto/16 :goto_1

    .line 4138
    .end local v0    # "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    :sswitch_7b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4140
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getHIFsyncWait()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;

    move-result-object v0

    .line 4141
    .restart local v0    # "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4142
    invoke-virtual {v0, p3}, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4143
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4144
    goto/16 :goto_1

    .line 4127
    .end local v0    # "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    :sswitch_7c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4129
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getHISchedLatency()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;

    move-result-object v0

    .line 4130
    .restart local v0    # "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4131
    invoke-virtual {v0, p3}, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4132
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4133
    goto/16 :goto_1

    .line 4116
    .end local v0    # "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    :sswitch_7d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4118
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getHIIowaitHung()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;

    move-result-object v0

    .line 4119
    .restart local v0    # "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4120
    invoke-virtual {v0, p3}, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4121
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4122
    goto/16 :goto_1

    .line 4105
    .end local v0    # "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    :sswitch_7e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4107
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getHIEmcdrvIowait()Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;

    move-result-object v0

    .line 4108
    .restart local v0    # "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4109
    invoke-virtual {v0, p3}, Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4110
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4111
    goto/16 :goto_1

    .line 4094
    .end local v0    # "_hidl_out_items":Lvendor/oplus/hardware/performance/V1_0/ProcReqHal;
    :sswitch_7f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4096
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getHICpuLoading()Ljava/lang/String;

    move-result-object v0

    .line 4097
    .local v0, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4098
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4099
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4100
    goto/16 :goto_1

    .line 4082
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_80
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4084
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4085
    .local v0, "procname":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readIomonitorInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4086
    .restart local v2    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4087
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4088
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4089
    goto/16 :goto_1

    .line 4071
    .end local v0    # "procname":Ljava/lang/String;
    .end local v2    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_81
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4073
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readSgeInfo()Ljava/lang/String;

    move-result-object v0

    .line 4074
    .local v0, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4075
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4076
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4077
    goto/16 :goto_1

    .line 4060
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_82
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4062
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readCpuTaskstats()Ljava/lang/String;

    move-result-object v0

    .line 4063
    .restart local v0    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4064
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4065
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4066
    goto/16 :goto_1

    .line 4049
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_83
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4051
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getVmallocHashCal()Ljava/lang/String;

    move-result-object v0

    .line 4052
    .local v0, "_hidl_out_info":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4053
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4054
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4055
    goto/16 :goto_1

    .line 4038
    .end local v0    # "_hidl_out_info":Ljava/lang/String;
    :sswitch_84
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4040
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getVmallocUsed()Ljava/lang/String;

    move-result-object v0

    .line 4041
    .restart local v0    # "_hidl_out_info":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4042
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4043
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4044
    goto/16 :goto_1

    .line 4027
    .end local v0    # "_hidl_out_info":Ljava/lang/String;
    :sswitch_85
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4029
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getVmallocDebug()Ljava/lang/String;

    move-result-object v0

    .line 4030
    .restart local v0    # "_hidl_out_info":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4031
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4032
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4033
    goto/16 :goto_1

    .line 4016
    .end local v0    # "_hidl_out_info":Ljava/lang/String;
    :sswitch_86
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4018
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readKmallocDebugCreate()Ljava/lang/String;

    move-result-object v0

    .line 4019
    .local v0, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4020
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4021
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4022
    goto/16 :goto_1

    .line 4004
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_87
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4006
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4007
    .local v0, "type":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->writeKmallocDebugCreateWithType(Ljava/lang/String;)I

    move-result v2

    .line 4008
    .local v2, "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4009
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4010
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4011
    goto/16 :goto_1

    .line 3992
    .end local v0    # "type":Ljava/lang/String;
    .end local v2    # "_hidl_out_result":I
    :sswitch_88
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3994
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3995
    .local v0, "kcreate":I
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->writeKmallocDebugCreate(I)I

    move-result v2

    .line 3996
    .restart local v2    # "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3997
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3998
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3999
    goto/16 :goto_1

    .line 3981
    .end local v0    # "kcreate":I
    .end local v2    # "_hidl_out_result":I
    :sswitch_89
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3983
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readVaFeature()Ljava/lang/String;

    move-result-object v0

    .line 3984
    .local v0, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3985
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3986
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3987
    goto/16 :goto_1

    .line 3969
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_8a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3971
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3972
    .local v0, "vafeature":I
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->writeVaFeature(I)I

    move-result v2

    .line 3973
    .restart local v2    # "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3974
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3975
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3976
    goto/16 :goto_1

    .line 3958
    .end local v0    # "vafeature":I
    .end local v2    # "_hidl_out_result":I
    :sswitch_8b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3960
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getdstate()Ljava/lang/String;

    move-result-object v0

    .line 3961
    .local v0, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3962
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3963
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3964
    goto/16 :goto_1

    .line 3947
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_8c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3949
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getallocwait()Ljava/lang/String;

    move-result-object v0

    .line 3950
    .restart local v0    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3951
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3952
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3953
    goto/16 :goto_1

    .line 3936
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_8d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3938
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getionwait()Ljava/lang/String;

    move-result-object v0

    .line 3939
    .restart local v0    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3940
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3941
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3942
    goto/16 :goto_1

    .line 3925
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_8e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3927
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getfsyncwait()Ljava/lang/String;

    move-result-object v0

    .line 3928
    .restart local v0    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3929
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3930
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3931
    goto/16 :goto_1

    .line 3914
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_8f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3916
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getiowait()Ljava/lang/String;

    move-result-object v0

    .line 3917
    .restart local v0    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3918
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3919
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3920
    goto/16 :goto_1

    .line 3903
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_90
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3905
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getschedlatency()Ljava/lang/String;

    move-result-object v0

    .line 3906
    .restart local v0    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3907
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3908
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3909
    goto/16 :goto_1

    .line 3892
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_91
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3894
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->readMemleakDetectThread()Ljava/lang/String;

    move-result-object v0

    .line 3895
    .restart local v0    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3896
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3897
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3898
    goto/16 :goto_1

    .line 3880
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :sswitch_92
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3882
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3883
    .local v0, "memdect":I
    invoke-virtual {p0, v0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->writeMemleakDetectThread(I)I

    move-result v2

    .line 3884
    .restart local v2    # "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3885
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3886
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3887
    goto/16 :goto_1

    .line 3869
    .end local v0    # "memdect":I
    .end local v2    # "_hidl_out_result":I
    :sswitch_93
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3871
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->existMemMonitor()I

    move-result v0

    .line 3872
    .local v0, "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3873
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3874
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3875
    goto/16 :goto_1

    .line 3858
    .end local v0    # "_hidl_out_result":I
    :sswitch_94
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3860
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getKmallocUsed()Ljava/lang/String;

    move-result-object v0

    .line 3861
    .local v0, "_hidl_out_info":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3862
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3863
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3864
    goto/16 :goto_1

    .line 3847
    .end local v0    # "_hidl_out_info":Ljava/lang/String;
    :sswitch_95
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3849
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getKmallocOrigin()Ljava/lang/String;

    move-result-object v0

    .line 3850
    .restart local v0    # "_hidl_out_info":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3851
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3852
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3853
    goto/16 :goto_1

    .line 3836
    .end local v0    # "_hidl_out_info":Ljava/lang/String;
    :sswitch_96
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3838
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->getKmallocDebug()Ljava/lang/String;

    move-result-object v0

    .line 3839
    .restart local v0    # "_hidl_out_info":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3840
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3841
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3842
    goto/16 :goto_1

    .line 3825
    .end local v0    # "_hidl_out_info":Ljava/lang/String;
    :sswitch_97
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3827
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->disableProcessReclaim()I

    move-result v0

    .line 3828
    .local v0, "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3829
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3830
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3831
    goto/16 :goto_1

    .line 3814
    .end local v0    # "_hidl_out_result":I
    :sswitch_98
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3816
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->enableProcessReclaim()I

    move-result v0

    .line 3817
    .restart local v0    # "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3818
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3819
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3820
    goto/16 :goto_1

    .line 3803
    .end local v0    # "_hidl_out_result":I
    :sswitch_99
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3805
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->disableVmallocDebug()I

    move-result v0

    .line 3806
    .restart local v0    # "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3807
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3808
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3809
    goto/16 :goto_1

    .line 3792
    .end local v0    # "_hidl_out_result":I
    :sswitch_9a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3794
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->enableVmallocDebug()I

    move-result v0

    .line 3795
    .restart local v0    # "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3796
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3797
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3798
    goto :goto_1

    .line 3781
    .end local v0    # "_hidl_out_result":I
    :sswitch_9b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3783
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->disableKmallocDebug()I

    move-result v0

    .line 3784
    .restart local v0    # "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3785
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3786
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3787
    goto :goto_1

    .line 3770
    .end local v0    # "_hidl_out_result":I
    :sswitch_9c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3772
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->enableKmallocDebug()I

    move-result v0

    .line 3773
    .restart local v0    # "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3774
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3775
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3776
    goto :goto_1

    .line 3759
    .end local v0    # "_hidl_out_result":I
    :sswitch_9d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3761
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->disableTaskCpustats()I

    move-result v0

    .line 3762
    .restart local v0    # "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3763
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3764
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3765
    goto :goto_1

    .line 3748
    .end local v0    # "_hidl_out_result":I
    :sswitch_9e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3750
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->enableTaskCpustats()I

    move-result v0

    .line 3751
    .restart local v0    # "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3752
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3753
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3754
    goto :goto_1

    .line 3737
    .end local v0    # "_hidl_out_result":I
    :sswitch_9f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3739
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->disableMultiThreadOptimize()I

    move-result v0

    .line 3740
    .restart local v0    # "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3741
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3742
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3743
    goto :goto_1

    .line 3726
    .end local v0    # "_hidl_out_result":I
    :sswitch_a0
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3728
    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->enableMultiThreadOptimize()I

    move-result v0

    .line 3729
    .restart local v0    # "_hidl_out_result":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3730
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3731
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3732
    nop

    .line 5551
    .end local v0    # "_hidl_out_result":I
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_a0
        0x2 -> :sswitch_9f
        0x3 -> :sswitch_9e
        0x4 -> :sswitch_9d
        0x5 -> :sswitch_9c
        0x6 -> :sswitch_9b
        0x7 -> :sswitch_9a
        0x8 -> :sswitch_99
        0x9 -> :sswitch_98
        0xa -> :sswitch_97
        0xb -> :sswitch_96
        0xc -> :sswitch_95
        0xd -> :sswitch_94
        0xe -> :sswitch_93
        0xf -> :sswitch_92
        0x10 -> :sswitch_91
        0x11 -> :sswitch_90
        0x12 -> :sswitch_8f
        0x13 -> :sswitch_8e
        0x14 -> :sswitch_8d
        0x15 -> :sswitch_8c
        0x16 -> :sswitch_8b
        0x17 -> :sswitch_8a
        0x18 -> :sswitch_89
        0x19 -> :sswitch_88
        0x1a -> :sswitch_87
        0x1b -> :sswitch_86
        0x1c -> :sswitch_85
        0x1d -> :sswitch_84
        0x1e -> :sswitch_83
        0x1f -> :sswitch_82
        0x20 -> :sswitch_81
        0x21 -> :sswitch_80
        0x22 -> :sswitch_7f
        0x23 -> :sswitch_7e
        0x24 -> :sswitch_7d
        0x25 -> :sswitch_7c
        0x26 -> :sswitch_7b
        0x27 -> :sswitch_7a
        0x28 -> :sswitch_79
        0x29 -> :sswitch_78
        0x2a -> :sswitch_77
        0x2b -> :sswitch_76
        0x2c -> :sswitch_75
        0x2d -> :sswitch_74
        0x2e -> :sswitch_73
        0x2f -> :sswitch_72
        0x30 -> :sswitch_71
        0x31 -> :sswitch_70
        0x32 -> :sswitch_6f
        0x33 -> :sswitch_6e
        0x34 -> :sswitch_6d
        0x35 -> :sswitch_6c
        0x36 -> :sswitch_6b
        0x37 -> :sswitch_6a
        0x38 -> :sswitch_69
        0x39 -> :sswitch_68
        0x3a -> :sswitch_67
        0x3b -> :sswitch_66
        0x3c -> :sswitch_65
        0x3d -> :sswitch_64
        0x3e -> :sswitch_63
        0x3f -> :sswitch_62
        0x40 -> :sswitch_61
        0x41 -> :sswitch_60
        0x42 -> :sswitch_5f
        0x43 -> :sswitch_5e
        0x44 -> :sswitch_5d
        0x45 -> :sswitch_5c
        0x46 -> :sswitch_5b
        0x47 -> :sswitch_5a
        0x48 -> :sswitch_59
        0x49 -> :sswitch_58
        0x4a -> :sswitch_57
        0x4b -> :sswitch_56
        0x4c -> :sswitch_55
        0x4d -> :sswitch_54
        0x4e -> :sswitch_53
        0x4f -> :sswitch_52
        0x50 -> :sswitch_51
        0x51 -> :sswitch_50
        0x52 -> :sswitch_4f
        0x53 -> :sswitch_4e
        0x54 -> :sswitch_4d
        0x55 -> :sswitch_4c
        0x56 -> :sswitch_4b
        0x57 -> :sswitch_4a
        0x58 -> :sswitch_49
        0x59 -> :sswitch_48
        0x5a -> :sswitch_47
        0x5b -> :sswitch_46
        0x5c -> :sswitch_45
        0x5d -> :sswitch_44
        0x5e -> :sswitch_43
        0x5f -> :sswitch_42
        0x60 -> :sswitch_41
        0x61 -> :sswitch_40
        0x62 -> :sswitch_3f
        0x63 -> :sswitch_3e
        0x64 -> :sswitch_3d
        0x65 -> :sswitch_3c
        0x66 -> :sswitch_3b
        0x67 -> :sswitch_3a
        0x68 -> :sswitch_39
        0x69 -> :sswitch_38
        0x6a -> :sswitch_37
        0x6b -> :sswitch_36
        0x6c -> :sswitch_35
        0x6d -> :sswitch_34
        0x6e -> :sswitch_33
        0x6f -> :sswitch_32
        0x70 -> :sswitch_31
        0x71 -> :sswitch_30
        0x72 -> :sswitch_2f
        0x73 -> :sswitch_2e
        0x74 -> :sswitch_2d
        0x75 -> :sswitch_2c
        0x76 -> :sswitch_2b
        0x77 -> :sswitch_2a
        0x78 -> :sswitch_29
        0x79 -> :sswitch_28
        0x7a -> :sswitch_27
        0x7b -> :sswitch_26
        0x7c -> :sswitch_25
        0x7d -> :sswitch_24
        0x7e -> :sswitch_23
        0x7f -> :sswitch_22
        0x80 -> :sswitch_21
        0x81 -> :sswitch_20
        0x82 -> :sswitch_1f
        0x83 -> :sswitch_1e
        0x84 -> :sswitch_1d
        0x85 -> :sswitch_1c
        0x86 -> :sswitch_1b
        0x87 -> :sswitch_1a
        0x88 -> :sswitch_19
        0x89 -> :sswitch_18
        0x8a -> :sswitch_17
        0x8b -> :sswitch_16
        0x8c -> :sswitch_15
        0x8d -> :sswitch_14
        0x8e -> :sswitch_13
        0x8f -> :sswitch_12
        0x90 -> :sswitch_11
        0x91 -> :sswitch_10
        0x92 -> :sswitch_f
        0x93 -> :sswitch_e
        0x94 -> :sswitch_d
        0x95 -> :sswitch_c
        0x96 -> :sswitch_b
        0x97 -> :sswitch_a
        0x98 -> :sswitch_9
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

    .line 3677
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 3705
    const-string v0, "vendor.oplus.hardware.performance@1.0::IPerformance"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3706
    return-object p0

    .line 3708
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

    .line 3712
    invoke-virtual {p0, p1}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->registerService(Ljava/lang/String;)V

    .line 3713
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .locals 0

    .line 3667
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 3717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/oplus/hardware/performance/V1_0/IPerformance$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 3699
    const/4 v0, 0x1

    return v0
.end method
