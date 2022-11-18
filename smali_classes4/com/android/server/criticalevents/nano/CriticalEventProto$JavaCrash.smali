.class public final Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "CriticalEventProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/criticalevents/nano/CriticalEventProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JavaCrash"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;


# instance fields
.field public blacklist exceptionClass:Ljava/lang/String;

.field public blacklist pid:I

.field public blacklist process:Ljava/lang/String;

.field public blacklist processClass:I

.field public blacklist uid:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 382
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 383
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->clear()Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    .line 384
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;
    .locals 2

    .line 356
    sget-object v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    if-nez v0, :cond_1

    .line 357
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 359
    :try_start_0
    sget-object v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    if-nez v1, :cond_0

    .line 360
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    sput-object v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    .line 362
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 364
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 498
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 492
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;
    .locals 1

    .line 387
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->exceptionClass:Ljava/lang/String;

    .line 388
    iput-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->process:Ljava/lang/String;

    .line 389
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->pid:I

    .line 390
    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->uid:I

    .line 391
    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->processClass:I

    .line 392
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->cachedSize:I

    .line 393
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 4

    .line 419
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 420
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->exceptionClass:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 421
    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->exceptionClass:Ljava/lang/String;

    .line 422
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 424
    :cond_0
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->process:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 425
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->process:Ljava/lang/String;

    .line 426
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 428
    :cond_1
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->pid:I

    if-eqz v1, :cond_2

    .line 429
    const/4 v2, 0x3

    .line 430
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 432
    :cond_2
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->uid:I

    if-eqz v1, :cond_3

    .line 433
    const/4 v2, 0x4

    .line 434
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 436
    :cond_3
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->processClass:I

    if-eqz v1, :cond_4

    .line 437
    const/4 v2, 0x5

    .line 438
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 440
    :cond_4
    return v0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    invoke-virtual {p0, p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;
    .locals 2
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 449
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 453
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 454
    return-object p0

    .line 475
    :sswitch_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 476
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 481
    :pswitch_0
    iput v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->processClass:I

    .line 484
    :goto_1
    goto :goto_2

    .line 471
    .end local v1    # "value":I
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->uid:I

    .line 472
    goto :goto_2

    .line 467
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->pid:I

    .line 468
    goto :goto_2

    .line 463
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->process:Ljava/lang/String;

    .line 464
    goto :goto_2

    .line 459
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->exceptionClass:Ljava/lang/String;

    .line 460
    goto :goto_2

    .line 451
    :sswitch_5
    return-object p0

    .line 487
    .end local v0    # "tag":I
    :cond_0
    :goto_2
    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0xa -> :sswitch_4
        0x12 -> :sswitch_3
        0x18 -> :sswitch_2
        0x20 -> :sswitch_1
        0x28 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->exceptionClass:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->exceptionClass:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->process:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 403
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->process:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 405
    :cond_1
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->pid:I

    if-eqz v0, :cond_2

    .line 406
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 408
    :cond_2
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->uid:I

    if-eqz v0, :cond_3

    .line 409
    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 411
    :cond_3
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->processClass:I

    if-eqz v0, :cond_4

    .line 412
    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 414
    :cond_4
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 415
    return-void
.end method
