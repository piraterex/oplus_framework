.class public final Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "CriticalEventProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/criticalevents/nano/CriticalEventProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NativeCrash"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;


# instance fields
.field public blacklist pid:I

.field public blacklist process:Ljava/lang/String;

.field public blacklist processClass:I

.field public blacklist uid:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 531
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 532
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->clear()Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    .line 533
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;
    .locals 2

    .line 508
    sget-object v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    if-nez v0, :cond_1

    .line 509
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 511
    :try_start_0
    sget-object v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    if-nez v1, :cond_0

    .line 512
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    sput-object v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    .line 514
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 516
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 635
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 629
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;
    .locals 1

    .line 536
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->process:Ljava/lang/String;

    .line 537
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->pid:I

    .line 538
    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->uid:I

    .line 539
    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->processClass:I

    .line 540
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->cachedSize:I

    .line 541
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 3

    .line 564
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 565
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->process:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 566
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->process:Ljava/lang/String;

    .line 567
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 569
    :cond_0
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->pid:I

    if-eqz v1, :cond_1

    .line 570
    const/4 v2, 0x2

    .line 571
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 573
    :cond_1
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->uid:I

    if-eqz v1, :cond_2

    .line 574
    const/4 v2, 0x3

    .line 575
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 577
    :cond_2
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->processClass:I

    if-eqz v1, :cond_3

    .line 578
    const/4 v2, 0x4

    .line 579
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 581
    :cond_3
    return v0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 502
    invoke-virtual {p0, p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;
    .locals 2
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 589
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 590
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 594
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 595
    return-object p0

    .line 612
    :sswitch_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 613
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 618
    :pswitch_0
    iput v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->processClass:I

    .line 621
    :goto_1
    goto :goto_2

    .line 608
    .end local v1    # "value":I
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->uid:I

    .line 609
    goto :goto_2

    .line 604
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->pid:I

    .line 605
    goto :goto_2

    .line 600
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->process:Ljava/lang/String;

    .line 601
    goto :goto_2

    .line 592
    :sswitch_4
    return-object p0

    .line 624
    .end local v0    # "tag":I
    :cond_0
    :goto_2
    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0xa -> :sswitch_3
        0x10 -> :sswitch_2
        0x18 -> :sswitch_1
        0x20 -> :sswitch_0
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
    .locals 2
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 547
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->process:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 548
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->process:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 550
    :cond_0
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->pid:I

    if-eqz v0, :cond_1

    .line 551
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 553
    :cond_1
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->uid:I

    if-eqz v0, :cond_2

    .line 554
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 556
    :cond_2
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->processClass:I

    if-eqz v0, :cond_3

    .line 557
    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 559
    :cond_3
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 560
    return-void
.end method
