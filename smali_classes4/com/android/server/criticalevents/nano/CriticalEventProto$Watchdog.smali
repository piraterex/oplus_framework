.class public final Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "CriticalEventProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/criticalevents/nano/CriticalEventProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Watchdog"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;


# instance fields
.field public blacklist subject:Ljava/lang/String;

.field public blacklist uuid:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 39
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->clear()Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;

    .line 40
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;
    .locals 2

    .line 21
    sget-object v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;

    if-nez v0, :cond_1

    .line 22
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;

    if-nez v1, :cond_0

    .line 25
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;

    sput-object v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;

    .line 27
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 29
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 104
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;
    .locals 1

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->subject:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->uuid:Ljava/lang/String;

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->cachedSize:I

    .line 46
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 4

    .line 63
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 64
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->subject:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->subject:Ljava/lang/String;

    .line 66
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->uuid:Ljava/lang/String;

    .line 70
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 72
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

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;
    .locals 2
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 81
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 85
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    return-object p0

    .line 95
    :sswitch_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->uuid:Ljava/lang/String;

    goto :goto_1

    .line 91
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->subject:Ljava/lang/String;

    .line 92
    goto :goto_1

    .line 83
    :sswitch_2
    return-object p0

    .line 99
    .end local v0    # "tag":I
    :cond_0
    :goto_1
    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0xa -> :sswitch_1
        0x12 -> :sswitch_0
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

    .line 52
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->subject:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->subject:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->uuid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 58
    :cond_1
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 59
    return-void
.end method
