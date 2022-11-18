.class public final Landroid/ota/nano/OtaPackageMetadata$DeviceState;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "OtaPackageMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ota/nano/OtaPackageMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceState"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Landroid/ota/nano/OtaPackageMetadata$DeviceState;


# instance fields
.field public blacklist androidVersion:Ljava/lang/String;

.field public blacklist build:[Ljava/lang/String;

.field public blacklist buildIncremental:Ljava/lang/String;

.field public blacklist buildType:Ljava/lang/String;

.field public blacklist device:[Ljava/lang/String;

.field public blacklist displayOsVersion:Ljava/lang/String;

.field public blacklist googlePatch:Ljava/lang/String;

.field public blacklist googlepatchCheck:Ljava/lang/String;

.field public blacklist oplusHexNvId:Ljava/lang/String;

.field public blacklist oplusProjectNumbers:Ljava/lang/String;

.field public blacklist osVersion:Ljava/lang/String;

.field public blacklist otaVersion:Ljava/lang/String;

.field public blacklist partitionState:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

.field public blacklist productName:Ljava/lang/String;

.field public blacklist sdkLevel:Ljava/lang/String;

.field public blacklist securityPatch:Ljava/lang/String;

.field public blacklist securityPatchLevel:Ljava/lang/String;

.field public blacklist securityPatchVendor:Ljava/lang/String;

.field public blacklist timestamp:J

.field public blacklist versionName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 270
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 271
    invoke-virtual {p0}, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->clear()Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    .line 272
    return-void
.end method

.method public static blacklist emptyArray()[Landroid/ota/nano/OtaPackageMetadata$DeviceState;
    .locals 2

    .line 199
    sget-object v0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    if-nez v0, :cond_1

    .line 200
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_0
    sget-object v1, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    if-nez v1, :cond_0

    .line 203
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    sput-object v1, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    .line 205
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 207
    :cond_1
    :goto_0
    sget-object v0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$DeviceState;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 640
    new-instance v0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    invoke-direct {v0}, Landroid/ota/nano/OtaPackageMetadata$DeviceState;-><init>()V

    invoke-virtual {v0, p0}, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Landroid/ota/nano/OtaPackageMetadata$DeviceState;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 634
    new-instance v0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    invoke-direct {v0}, Landroid/ota/nano/OtaPackageMetadata$DeviceState;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Landroid/ota/nano/OtaPackageMetadata$DeviceState;
    .locals 3

    .line 275
    sget-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->device:[Ljava/lang/String;

    .line 276
    sget-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->build:[Ljava/lang/String;

    .line 277
    const-string v0, ""

    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->buildIncremental:Ljava/lang/String;

    .line 278
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->timestamp:J

    .line 279
    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->sdkLevel:Ljava/lang/String;

    .line 280
    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->securityPatchLevel:Ljava/lang/String;

    .line 281
    invoke-static {}, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->emptyArray()[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    move-result-object v1

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->partitionState:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    .line 282
    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->productName:Ljava/lang/String;

    .line 283
    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->oplusHexNvId:Ljava/lang/String;

    .line 284
    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->otaVersion:Ljava/lang/String;

    .line 285
    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->androidVersion:Ljava/lang/String;

    .line 286
    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->osVersion:Ljava/lang/String;

    .line 287
    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->versionName:Ljava/lang/String;

    .line 288
    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->securityPatch:Ljava/lang/String;

    .line 289
    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->securityPatchVendor:Ljava/lang/String;

    .line 290
    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->googlePatch:Ljava/lang/String;

    .line 291
    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->googlepatchCheck:Ljava/lang/String;

    .line 292
    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->oplusProjectNumbers:Ljava/lang/String;

    .line 293
    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->buildType:Ljava/lang/String;

    .line 294
    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->displayOsVersion:Ljava/lang/String;

    .line 295
    const/4 v0, -0x1

    iput v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->cachedSize:I

    .line 296
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 7

    .line 382
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 383
    .local v0, "size":I
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->device:[Ljava/lang/String;

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    .line 384
    const/4 v1, 0x0

    .line 385
    .local v1, "dataCount":I
    const/4 v2, 0x0

    .line 386
    .local v2, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->device:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 387
    aget-object v4, v4, v3

    .line 388
    .local v4, "element":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 389
    add-int/lit8 v1, v1, 0x1

    .line 390
    nop

    .line 391
    invoke-static {v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    .line 386
    .end local v4    # "element":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 394
    .end local v3    # "i":I
    :cond_1
    add-int/2addr v0, v2

    .line 395
    mul-int/lit8 v3, v1, 0x1

    add-int/2addr v0, v3

    .line 397
    .end local v1    # "dataCount":I
    .end local v2    # "dataSize":I
    :cond_2
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->build:[Ljava/lang/String;

    if-eqz v1, :cond_5

    array-length v1, v1

    if-lez v1, :cond_5

    .line 398
    const/4 v1, 0x0

    .line 399
    .restart local v1    # "dataCount":I
    const/4 v2, 0x0

    .line 400
    .restart local v2    # "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v4, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->build:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_4

    .line 401
    aget-object v4, v4, v3

    .line 402
    .restart local v4    # "element":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 403
    add-int/lit8 v1, v1, 0x1

    .line 404
    nop

    .line 405
    invoke-static {v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    .line 400
    .end local v4    # "element":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 408
    .end local v3    # "i":I
    :cond_4
    add-int/2addr v0, v2

    .line 409
    mul-int/lit8 v3, v1, 0x1

    add-int/2addr v0, v3

    .line 411
    .end local v1    # "dataCount":I
    .end local v2    # "dataSize":I
    :cond_5
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->buildIncremental:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 412
    const/4 v1, 0x3

    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->buildIncremental:Ljava/lang/String;

    .line 413
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 415
    :cond_6
    iget-wide v3, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->timestamp:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    .line 416
    const/4 v1, 0x4

    .line 417
    invoke-static {v1, v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 419
    :cond_7
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->sdkLevel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 420
    const/4 v1, 0x5

    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->sdkLevel:Ljava/lang/String;

    .line 421
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 423
    :cond_8
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->securityPatchLevel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 424
    const/4 v1, 0x6

    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->securityPatchLevel:Ljava/lang/String;

    .line 425
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 427
    :cond_9
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->partitionState:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    if-eqz v1, :cond_b

    array-length v1, v1

    if-lez v1, :cond_b

    .line 428
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->partitionState:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    array-length v4, v3

    if-ge v1, v4, :cond_b

    .line 429
    aget-object v3, v3, v1

    .line 430
    .local v3, "element":Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    if-eqz v3, :cond_a

    .line 431
    const/4 v4, 0x7

    .line 432
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v0, v4

    .line 428
    .end local v3    # "element":Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 436
    .end local v1    # "i":I
    :cond_b
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->productName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 437
    const/16 v1, 0x15

    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->productName:Ljava/lang/String;

    .line 438
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 440
    :cond_c
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->oplusHexNvId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 441
    const/16 v1, 0x16

    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->oplusHexNvId:Ljava/lang/String;

    .line 442
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 444
    :cond_d
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->otaVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 445
    const/16 v1, 0x17

    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->otaVersion:Ljava/lang/String;

    .line 446
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 448
    :cond_e
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->androidVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 449
    const/16 v1, 0x18

    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->androidVersion:Ljava/lang/String;

    .line 450
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 452
    :cond_f
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->osVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 453
    const/16 v1, 0x19

    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->osVersion:Ljava/lang/String;

    .line 454
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 456
    :cond_10
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 457
    const/16 v1, 0x1a

    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->versionName:Ljava/lang/String;

    .line 458
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 460
    :cond_11
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->securityPatch:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 461
    const/16 v1, 0x1b

    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->securityPatch:Ljava/lang/String;

    .line 462
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 464
    :cond_12
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->securityPatchVendor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 465
    const/16 v1, 0x1c

    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->securityPatchVendor:Ljava/lang/String;

    .line 466
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 468
    :cond_13
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->googlePatch:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 469
    const/16 v1, 0x1d

    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->googlePatch:Ljava/lang/String;

    .line 470
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 472
    :cond_14
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->googlepatchCheck:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 473
    const/16 v1, 0x1e

    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->googlepatchCheck:Ljava/lang/String;

    .line 474
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 476
    :cond_15
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->oplusProjectNumbers:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 477
    const/16 v1, 0x1f

    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->oplusProjectNumbers:Ljava/lang/String;

    .line 478
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 480
    :cond_16
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->buildType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 481
    const/16 v1, 0x20

    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->buildType:Ljava/lang/String;

    .line 482
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 484
    :cond_17
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->displayOsVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 485
    const/16 v1, 0x21

    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->displayOsVersion:Ljava/lang/String;

    .line 486
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 488
    :cond_18
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$DeviceState;
    .locals 6
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 496
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 497
    .local v0, "tag":I
    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 501
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 502
    return-object p0

    .line 625
    :sswitch_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->displayOsVersion:Ljava/lang/String;

    goto/16 :goto_7

    .line 621
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->buildType:Ljava/lang/String;

    .line 622
    goto/16 :goto_7

    .line 617
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->oplusProjectNumbers:Ljava/lang/String;

    .line 618
    goto/16 :goto_7

    .line 613
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->googlepatchCheck:Ljava/lang/String;

    .line 614
    goto/16 :goto_7

    .line 609
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->googlePatch:Ljava/lang/String;

    .line 610
    goto/16 :goto_7

    .line 605
    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->securityPatchVendor:Ljava/lang/String;

    .line 606
    goto/16 :goto_7

    .line 601
    :sswitch_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->securityPatch:Ljava/lang/String;

    .line 602
    goto/16 :goto_7

    .line 597
    :sswitch_7
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->versionName:Ljava/lang/String;

    .line 598
    goto/16 :goto_7

    .line 593
    :sswitch_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->osVersion:Ljava/lang/String;

    .line 594
    goto/16 :goto_7

    .line 589
    :sswitch_9
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->androidVersion:Ljava/lang/String;

    .line 590
    goto/16 :goto_7

    .line 585
    :sswitch_a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->otaVersion:Ljava/lang/String;

    .line 586
    goto/16 :goto_7

    .line 581
    :sswitch_b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->oplusHexNvId:Ljava/lang/String;

    .line 582
    goto/16 :goto_7

    .line 577
    :sswitch_c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->productName:Ljava/lang/String;

    .line 578
    goto/16 :goto_7

    .line 557
    :sswitch_d
    const/16 v2, 0x3a

    .line 558
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 559
    .local v2, "arrayLength":I
    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->partitionState:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    if-nez v3, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    array-length v4, v3

    .line 560
    .local v4, "i":I
    :goto_1
    add-int v5, v4, v2

    new-array v5, v5, [Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    .line 562
    .local v5, "newArray":[Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    if-eqz v4, :cond_1

    .line 563
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 565
    :cond_1
    :goto_2
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    if-ge v4, v1, :cond_2

    .line 566
    new-instance v1, Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    invoke-direct {v1}, Landroid/ota/nano/OtaPackageMetadata$PartitionState;-><init>()V

    aput-object v1, v5, v4

    .line 567
    aget-object v1, v5, v4

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 568
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 565
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 571
    :cond_2
    new-instance v1, Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    invoke-direct {v1}, Landroid/ota/nano/OtaPackageMetadata$PartitionState;-><init>()V

    aput-object v1, v5, v4

    .line 572
    aget-object v1, v5, v4

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 573
    iput-object v5, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->partitionState:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    .line 574
    goto/16 :goto_7

    .line 553
    .end local v2    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    :sswitch_e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->securityPatchLevel:Ljava/lang/String;

    .line 554
    goto/16 :goto_7

    .line 549
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->sdkLevel:Ljava/lang/String;

    .line 550
    goto/16 :goto_7

    .line 545
    :sswitch_10
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->timestamp:J

    .line 546
    goto/16 :goto_7

    .line 541
    :sswitch_11
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->buildIncremental:Ljava/lang/String;

    .line 542
    goto :goto_7

    .line 524
    :sswitch_12
    const/16 v2, 0x12

    .line 525
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 526
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->build:[Ljava/lang/String;

    if-nez v3, :cond_3

    move v4, v1

    goto :goto_3

    :cond_3
    array-length v4, v3

    .line 527
    .restart local v4    # "i":I
    :goto_3
    add-int v5, v4, v2

    new-array v5, v5, [Ljava/lang/String;

    .line 528
    .local v5, "newArray":[Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 529
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 531
    :cond_4
    :goto_4
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    if-ge v4, v1, :cond_5

    .line 532
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    .line 533
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 531
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 536
    :cond_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    .line 537
    iput-object v5, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->build:[Ljava/lang/String;

    .line 538
    goto :goto_7

    .line 507
    .end local v2    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[Ljava/lang/String;
    :sswitch_13
    const/16 v2, 0xa

    .line 508
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 509
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->device:[Ljava/lang/String;

    if-nez v3, :cond_6

    move v4, v1

    goto :goto_5

    :cond_6
    array-length v4, v3

    .line 510
    .restart local v4    # "i":I
    :goto_5
    add-int v5, v4, v2

    new-array v5, v5, [Ljava/lang/String;

    .line 511
    .restart local v5    # "newArray":[Ljava/lang/String;
    if-eqz v4, :cond_7

    .line 512
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 514
    :cond_7
    :goto_6
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    if-ge v4, v1, :cond_8

    .line 515
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    .line 516
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 514
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 519
    :cond_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    .line 520
    iput-object v5, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->device:[Ljava/lang/String;

    .line 521
    goto :goto_7

    .line 499
    .end local v2    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[Ljava/lang/String;
    :sswitch_14
    return-object p0

    .line 629
    .end local v0    # "tag":I
    :cond_9
    :goto_7
    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_14
        0xa -> :sswitch_13
        0x12 -> :sswitch_12
        0x1a -> :sswitch_11
        0x20 -> :sswitch_10
        0x2a -> :sswitch_f
        0x32 -> :sswitch_e
        0x3a -> :sswitch_d
        0xaa -> :sswitch_c
        0xb2 -> :sswitch_b
        0xba -> :sswitch_a
        0xc2 -> :sswitch_9
        0xca -> :sswitch_8
        0xd2 -> :sswitch_7
        0xda -> :sswitch_6
        0xe2 -> :sswitch_5
        0xea -> :sswitch_4
        0xf2 -> :sswitch_3
        0xfa -> :sswitch_2
        0x102 -> :sswitch_1
        0x10a -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    invoke-virtual {p0, p1}, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    move-result-object p1

    return-object p1
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->device:[Ljava/lang/String;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    .line 303
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->device:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 304
    aget-object v1, v1, v0

    .line 305
    .local v1, "element":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 306
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 303
    .end local v1    # "element":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->build:[Ljava/lang/String;

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    .line 311
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->build:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 312
    aget-object v1, v1, v0

    .line 313
    .restart local v1    # "element":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 314
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 311
    .end local v1    # "element":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 318
    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->buildIncremental:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 319
    const/4 v0, 0x3

    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->buildIncremental:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 321
    :cond_4
    iget-wide v2, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->timestamp:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_5

    .line 322
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 324
    :cond_5
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->sdkLevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 325
    const/4 v0, 0x5

    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->sdkLevel:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 327
    :cond_6
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->securityPatchLevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 328
    const/4 v0, 0x6

    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->securityPatchLevel:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 330
    :cond_7
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->partitionState:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    if-eqz v0, :cond_9

    array-length v0, v0

    if-lez v0, :cond_9

    .line 331
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->partitionState:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    array-length v3, v2

    if-ge v0, v3, :cond_9

    .line 332
    aget-object v2, v2, v0

    .line 333
    .local v2, "element":Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    if-eqz v2, :cond_8

    .line 334
    const/4 v3, 0x7

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 331
    .end local v2    # "element":Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 338
    .end local v0    # "i":I
    :cond_9
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->productName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 339
    const/16 v0, 0x15

    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->productName:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 341
    :cond_a
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->oplusHexNvId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 342
    const/16 v0, 0x16

    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->oplusHexNvId:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 344
    :cond_b
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->otaVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 345
    const/16 v0, 0x17

    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->otaVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 347
    :cond_c
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->androidVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 348
    const/16 v0, 0x18

    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->androidVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 350
    :cond_d
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->osVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 351
    const/16 v0, 0x19

    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->osVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 353
    :cond_e
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 354
    const/16 v0, 0x1a

    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 356
    :cond_f
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->securityPatch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 357
    const/16 v0, 0x1b

    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->securityPatch:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 359
    :cond_10
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->securityPatchVendor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 360
    const/16 v0, 0x1c

    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->securityPatchVendor:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 362
    :cond_11
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->googlePatch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 363
    const/16 v0, 0x1d

    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->googlePatch:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 365
    :cond_12
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->googlepatchCheck:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 366
    const/16 v0, 0x1e

    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->googlepatchCheck:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 368
    :cond_13
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->oplusProjectNumbers:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 369
    const/16 v0, 0x1f

    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->oplusProjectNumbers:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 371
    :cond_14
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->buildType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 372
    const/16 v0, 0x20

    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->buildType:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 374
    :cond_15
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->displayOsVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 375
    const/16 v0, 0x21

    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->displayOsVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 377
    :cond_16
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 378
    return-void
.end method
