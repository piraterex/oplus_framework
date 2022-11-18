.class public final Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "CriticalEventProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/criticalevents/nano/CriticalEventProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HalfWatchdog"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;


# instance fields
.field public blacklist subject:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 135
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;->clear()Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;

    .line 136
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;
    .locals 2

    .line 120
    sget-object v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;

    if-nez v0, :cond_1

    .line 121
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_0
    sget-object v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;

    if-nez v1, :cond_0

    .line 124
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;

    sput-object v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;

    .line 126
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 128
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 188
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;
    .locals 1

    .line 139
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;->subject:Ljava/lang/String;

    .line 140
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;->cachedSize:I

    .line 141
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 3

    .line 155
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 156
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;->subject:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;->subject:Ljava/lang/String;

    .line 158
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 160
    :cond_0
    return v0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    invoke-virtual {p0, p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;
    .locals 2
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 169
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 173
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    return-object p0

    .line 179
    :sswitch_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;->subject:Ljava/lang/String;

    goto :goto_1

    .line 171
    :sswitch_1
    return-object p0

    .line 183
    .end local v0    # "tag":I
    :cond_0
    :goto_1
    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;->subject:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;->subject:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 150
    :cond_0
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 151
    return-void
.end method
