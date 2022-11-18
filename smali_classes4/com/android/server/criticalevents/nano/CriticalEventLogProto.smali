.class public final Lcom/android/server/criticalevents/nano/CriticalEventLogProto;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "CriticalEventLogProto.java"


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventLogProto;


# instance fields
.field public blacklist capacity:I

.field public blacklist events:[Lcom/android/server/criticalevents/nano/CriticalEventProto;

.field public blacklist timestampMs:J

.field public blacklist windowMs:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 36
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;->clear()Lcom/android/server/criticalevents/nano/CriticalEventLogProto;

    .line 37
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/criticalevents/nano/CriticalEventLogProto;
    .locals 2

    .line 12
    sget-object v0, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventLogProto;

    if-nez v0, :cond_1

    .line 13
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_0
    sget-object v1, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventLogProto;

    if-nez v1, :cond_0

    .line 16
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/criticalevents/nano/CriticalEventLogProto;

    sput-object v1, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventLogProto;

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
    sget-object v0, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventLogProto;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventLogProto;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventLogProto;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/criticalevents/nano/CriticalEventLogProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 151
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/criticalevents/nano/CriticalEventLogProto;
    .locals 2

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;->timestampMs:J

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;->windowMs:I

    .line 42
    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;->capacity:I

    .line 43
    invoke-static {}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->emptyArray()[Lcom/android/server/criticalevents/nano/CriticalEventProto;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;->events:[Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;->cachedSize:I

    .line 45
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 5

    .line 73
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 74
    .local v0, "size":I
    iget-wide v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;->timestampMs:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 75
    nop

    .line 76
    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 78
    :cond_0
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;->windowMs:I

    if-eqz v1, :cond_1

    .line 79
    const/4 v2, 0x2

    .line 80
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 82
    :cond_1
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;->capacity:I

    if-eqz v1, :cond_2

    .line 83
    const/4 v2, 0x3

    .line 84
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 86
    :cond_2
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;->events:[Lcom/android/server/criticalevents/nano/CriticalEventProto;

    if-eqz v1, :cond_4

    array-length v1, v1

    if-lez v1, :cond_4

    .line 87
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;->events:[Lcom/android/server/criticalevents/nano/CriticalEventProto;

    array-length v3, v2

    if-ge v1, v3, :cond_4

    .line 88
    aget-object v2, v2, v1

    .line 89
    .local v2, "element":Lcom/android/server/criticalevents/nano/CriticalEventProto;
    if-eqz v2, :cond_3

    .line 90
    const/4 v3, 0x4

    .line 91
    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    .line 87
    .end local v2    # "element":Lcom/android/server/criticalevents/nano/CriticalEventProto;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    .end local v1    # "i":I
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

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventLogProto;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventLogProto;
    .locals 6
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 104
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 108
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 109
    return-object p0

    .line 126
    :sswitch_0
    const/16 v1, 0x22

    .line 127
    invoke-static {p1, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 128
    .local v1, "arrayLength":I
    iget-object v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;->events:[Lcom/android/server/criticalevents/nano/CriticalEventProto;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    array-length v4, v2

    .line 129
    .local v4, "i":I
    :goto_1
    add-int v5, v4, v1

    new-array v5, v5, [Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 131
    .local v5, "newArray":[Lcom/android/server/criticalevents/nano/CriticalEventProto;
    if-eqz v4, :cond_1

    .line 132
    invoke-static {v2, v3, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    :cond_1
    :goto_2
    array-length v2, v5

    add-int/lit8 v2, v2, -0x1

    if-ge v4, v2, :cond_2

    .line 135
    new-instance v2, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    invoke-direct {v2}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    aput-object v2, v5, v4

    .line 136
    aget-object v2, v5, v4

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 137
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 134
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 140
    :cond_2
    new-instance v2, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    invoke-direct {v2}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    aput-object v2, v5, v4

    .line 141
    aget-object v2, v5, v4

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 142
    iput-object v5, p0, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;->events:[Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 143
    goto :goto_3

    .line 122
    .end local v1    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[Lcom/android/server/criticalevents/nano/CriticalEventProto;
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;->capacity:I

    .line 123
    goto :goto_3

    .line 118
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;->windowMs:I

    .line 119
    goto :goto_3

    .line 114
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;->timestampMs:J

    .line 115
    goto :goto_3

    .line 106
    :sswitch_4
    return-object p0

    .line 146
    .end local v0    # "tag":I
    :cond_3
    :goto_3
    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x8 -> :sswitch_3
        0x10 -> :sswitch_2
        0x18 -> :sswitch_1
        0x22 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-wide v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;->timestampMs:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 52
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 54
    :cond_0
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;->windowMs:I

    if-eqz v0, :cond_1

    .line 55
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 57
    :cond_1
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;->capacity:I

    if-eqz v0, :cond_2

    .line 58
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;->events:[Lcom/android/server/criticalevents/nano/CriticalEventProto;

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    .line 61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;->events:[Lcom/android/server/criticalevents/nano/CriticalEventProto;

    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 62
    aget-object v1, v1, v0

    .line 63
    .local v1, "element":Lcom/android/server/criticalevents/nano/CriticalEventProto;
    if-eqz v1, :cond_3

    .line 64
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 61
    .end local v1    # "element":Lcom/android/server/criticalevents/nano/CriticalEventProto;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    .end local v0    # "i":I
    :cond_4
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 69
    return-void
.end method
