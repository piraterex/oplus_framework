.class public final Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "CriticalEventProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/criticalevents/nano/CriticalEventProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppNotResponding"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;


# instance fields
.field public blacklist pid:I

.field public blacklist process:Ljava/lang/String;

.field public blacklist processClass:I

.field public blacklist subject:Ljava/lang/String;

.field public blacklist uid:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 230
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 231
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->clear()Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    .line 232
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;
    .locals 2

    .line 204
    sget-object v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    if-nez v0, :cond_1

    .line 205
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_0
    sget-object v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    if-nez v1, :cond_0

    .line 208
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    sput-object v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    .line 210
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 212
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 340
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;
    .locals 1

    .line 235
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->subject:Ljava/lang/String;

    .line 236
    iput-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->process:Ljava/lang/String;

    .line 237
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->pid:I

    .line 238
    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->uid:I

    .line 239
    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->processClass:I

    .line 240
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->cachedSize:I

    .line 241
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 4

    .line 267
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 268
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->subject:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->subject:Ljava/lang/String;

    .line 270
    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->process:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 273
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->process:Ljava/lang/String;

    .line 274
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 276
    :cond_1
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->pid:I

    if-eqz v1, :cond_2

    .line 277
    const/4 v2, 0x3

    .line 278
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 280
    :cond_2
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->uid:I

    if-eqz v1, :cond_3

    .line 281
    const/4 v2, 0x4

    .line 282
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 284
    :cond_3
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->processClass:I

    if-eqz v1, :cond_4

    .line 285
    const/4 v2, 0x5

    .line 286
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 288
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

    .line 198
    invoke-virtual {p0, p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;
    .locals 2
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 297
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 301
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 302
    return-object p0

    .line 323
    :sswitch_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 324
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 329
    :pswitch_0
    iput v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->processClass:I

    .line 332
    :goto_1
    goto :goto_2

    .line 319
    .end local v1    # "value":I
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->uid:I

    .line 320
    goto :goto_2

    .line 315
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->pid:I

    .line 316
    goto :goto_2

    .line 311
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->process:Ljava/lang/String;

    .line 312
    goto :goto_2

    .line 307
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->subject:Ljava/lang/String;

    .line 308
    goto :goto_2

    .line 299
    :sswitch_5
    return-object p0

    .line 335
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

    .line 247
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->subject:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->subject:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->process:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 251
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->process:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 253
    :cond_1
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->pid:I

    if-eqz v0, :cond_2

    .line 254
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 256
    :cond_2
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->uid:I

    if-eqz v0, :cond_3

    .line 257
    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 259
    :cond_3
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->processClass:I

    if-eqz v0, :cond_4

    .line 260
    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 262
    :cond_4
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 263
    return-void
.end method
