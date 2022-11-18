.class public final Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "CriticalEventLogStorageProto.java"


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;


# instance fields
.field public blacklist events:[Lcom/android/server/criticalevents/nano/CriticalEventProto;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 27
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;->clear()Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;

    .line 28
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;
    .locals 2

    .line 12
    sget-object v0, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;

    if-nez v0, :cond_1

    .line 13
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_0
    sget-object v1, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;

    if-nez v1, :cond_0

    .line 16
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;

    sput-object v1, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;

    .line 18
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 20
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 106
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;
    .locals 1

    .line 31
    invoke-static {}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->emptyArray()[Lcom/android/server/criticalevents/nano/CriticalEventProto;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;->events:[Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;->cachedSize:I

    .line 33
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 4

    .line 52
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 53
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;->events:[Lcom/android/server/criticalevents/nano/CriticalEventProto;

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    .line 54
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;->events:[Lcom/android/server/criticalevents/nano/CriticalEventProto;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 55
    aget-object v2, v2, v1

    .line 56
    .local v2, "element":Lcom/android/server/criticalevents/nano/CriticalEventProto;
    if-eqz v2, :cond_0

    .line 57
    nop

    .line 58
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    .line 54
    .end local v2    # "element":Lcom/android/server/criticalevents/nano/CriticalEventProto;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;
    .locals 6
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 71
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 75
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 76
    return-object p0

    .line 81
    :sswitch_0
    const/16 v1, 0xa

    .line 82
    invoke-static {p1, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 83
    .local v1, "arrayLength":I
    iget-object v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;->events:[Lcom/android/server/criticalevents/nano/CriticalEventProto;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    array-length v4, v2

    .line 84
    .local v4, "i":I
    :goto_1
    add-int v5, v4, v1

    new-array v5, v5, [Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 86
    .local v5, "newArray":[Lcom/android/server/criticalevents/nano/CriticalEventProto;
    if-eqz v4, :cond_1

    .line 87
    invoke-static {v2, v3, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    :cond_1
    :goto_2
    array-length v2, v5

    add-int/lit8 v2, v2, -0x1

    if-ge v4, v2, :cond_2

    .line 90
    new-instance v2, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    invoke-direct {v2}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    aput-object v2, v5, v4

    .line 91
    aget-object v2, v5, v4

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 92
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 89
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 95
    :cond_2
    new-instance v2, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    invoke-direct {v2}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    aput-object v2, v5, v4

    .line 96
    aget-object v2, v5, v4

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 97
    iput-object v5, p0, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;->events:[Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 98
    goto :goto_3

    .line 73
    .end local v1    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[Lcom/android/server/criticalevents/nano/CriticalEventProto;
    :sswitch_1
    return-object p0

    .line 101
    .end local v0    # "tag":I
    :cond_3
    :goto_3
    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;->events:[Lcom/android/server/criticalevents/nano/CriticalEventProto;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    .line 40
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;->events:[Lcom/android/server/criticalevents/nano/CriticalEventProto;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 41
    aget-object v1, v1, v0

    .line 42
    .local v1, "element":Lcom/android/server/criticalevents/nano/CriticalEventProto;
    if-eqz v1, :cond_0

    .line 43
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 40
    .end local v1    # "element":Lcom/android/server/criticalevents/nano/CriticalEventProto;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    .end local v0    # "i":I
    :cond_1
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 48
    return-void
.end method
