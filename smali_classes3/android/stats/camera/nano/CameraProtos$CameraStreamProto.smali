.class public final Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "CameraProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/stats/camera/nano/CameraProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CameraStreamProto"
.end annotation


# static fields
.field public static final blacklist CAPTURE_LATENCY:I = 0x1

.field public static final blacklist UNKNOWN:I

.field private static volatile blacklist _emptyArray:[Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;


# instance fields
.field public blacklist dataSpace:I

.field public blacklist dynamicRangeProfile:J

.field public blacklist errorCount:J

.field public blacklist firstCaptureLatencyMillis:I

.field public blacklist format:I

.field public blacklist height:I

.field public blacklist histogramBins:[F

.field public blacklist histogramCounts:[J

.field public blacklist histogramType:I

.field public blacklist maxAppBuffers:I

.field public blacklist maxHalBuffers:I

.field public blacklist requestCount:J

.field public blacklist streamUseCase:J

.field public blacklist usage:J

.field public blacklist width:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 75
    invoke-virtual {p0}, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->clear()Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    .line 76
    return-void
.end method

.method public static blacklist emptyArray()[Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;
    .locals 2

    .line 18
    sget-object v0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->_emptyArray:[Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    if-nez v0, :cond_1

    .line 19
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->_emptyArray:[Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    if-nez v1, :cond_0

    .line 22
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    sput-object v1, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->_emptyArray:[Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    .line 24
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 26
    :cond_1
    :goto_0
    sget-object v0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->_emptyArray:[Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    new-instance v0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    invoke-direct {v0}, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;-><init>()V

    invoke-virtual {v0, p0}, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 378
    new-instance v0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    invoke-direct {v0}, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;
    .locals 3

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->width:I

    .line 80
    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->height:I

    .line 81
    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->format:I

    .line 82
    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dataSpace:I

    .line 83
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->usage:J

    .line 84
    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->requestCount:J

    .line 85
    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->errorCount:J

    .line 86
    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->firstCaptureLatencyMillis:I

    .line 87
    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxHalBuffers:I

    .line 88
    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxAppBuffers:I

    .line 89
    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramType:I

    .line 90
    sget-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    .line 91
    sget-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_LONG_ARRAY:[J

    iput-object v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    .line 92
    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dynamicRangeProfile:J

    .line 93
    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->streamUseCase:J

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->cachedSize:I

    .line 95
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 9

    .line 155
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 156
    .local v0, "size":I
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->width:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 157
    nop

    .line 158
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 160
    :cond_0
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->height:I

    if-eqz v1, :cond_1

    .line 161
    const/4 v3, 0x2

    .line 162
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 164
    :cond_1
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->format:I

    if-eqz v1, :cond_2

    .line 165
    const/4 v3, 0x3

    .line 166
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 168
    :cond_2
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dataSpace:I

    const/4 v3, 0x4

    if-eqz v1, :cond_3

    .line 169
    nop

    .line 170
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 172
    :cond_3
    iget-wide v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->usage:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_4

    .line 173
    const/4 v1, 0x5

    .line 174
    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 176
    :cond_4
    iget-wide v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->requestCount:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    .line 177
    const/4 v1, 0x6

    .line 178
    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 180
    :cond_5
    iget-wide v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->errorCount:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_6

    .line 181
    const/4 v1, 0x7

    .line 182
    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 184
    :cond_6
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->firstCaptureLatencyMillis:I

    if-eqz v1, :cond_7

    .line 185
    const/16 v4, 0x8

    .line 186
    invoke-static {v4, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 188
    :cond_7
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxHalBuffers:I

    if-eqz v1, :cond_8

    .line 189
    const/16 v4, 0x9

    .line 190
    invoke-static {v4, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 192
    :cond_8
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxAppBuffers:I

    if-eqz v1, :cond_9

    .line 193
    const/16 v4, 0xa

    .line 194
    invoke-static {v4, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 196
    :cond_9
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramType:I

    if-eqz v1, :cond_a

    .line 197
    const/16 v4, 0xb

    .line 198
    invoke-static {v4, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 200
    :cond_a
    iget-object v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    if-eqz v1, :cond_b

    array-length v4, v1

    if-lez v4, :cond_b

    .line 201
    array-length v4, v1

    mul-int/2addr v4, v3

    .line 202
    .local v4, "dataSize":I
    add-int/2addr v0, v4

    .line 203
    array-length v1, v1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 205
    .end local v4    # "dataSize":I
    :cond_b
    iget-object v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    if-eqz v1, :cond_d

    array-length v1, v1

    if-lez v1, :cond_d

    .line 206
    const/4 v1, 0x0

    .line 207
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    array-length v5, v4

    if-ge v3, v5, :cond_c

    .line 208
    aget-wide v4, v4, v3

    .line 209
    .local v4, "element":J
    nop

    .line 210
    invoke-static {v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result v8

    add-int/2addr v1, v8

    .line 207
    .end local v4    # "element":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 212
    .end local v3    # "i":I
    :cond_c
    add-int/2addr v0, v1

    .line 213
    array-length v3, v4

    mul-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 215
    .end local v1    # "dataSize":I
    :cond_d
    iget-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dynamicRangeProfile:J

    cmp-long v3, v1, v6

    if-eqz v3, :cond_e

    .line 216
    const/16 v3, 0xe

    .line 217
    invoke-static {v3, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 219
    :cond_e
    iget-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->streamUseCase:J

    cmp-long v3, v1, v6

    if-eqz v3, :cond_f

    .line 220
    const/16 v3, 0xf

    .line 221
    invoke-static {v3, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 223
    :cond_f
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;
    .locals 11
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 232
    .local v0, "tag":I
    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 236
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 237
    return-object p0

    .line 369
    :sswitch_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->streamUseCase:J

    goto/16 :goto_b

    .line 365
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dynamicRangeProfile:J

    .line 366
    goto/16 :goto_b

    .line 342
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 343
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 345
    .local v3, "limit":I
    const/4 v4, 0x0

    .line 346
    .local v4, "arrayLength":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 347
    .local v5, "startPos":I
    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_0

    .line 348
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    .line 349
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 351
    :cond_0
    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 352
    iget-object v6, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    if-nez v6, :cond_1

    move v7, v1

    goto :goto_2

    :cond_1
    array-length v7, v6

    .line 353
    .local v7, "i":I
    :goto_2
    add-int v8, v7, v4

    new-array v8, v8, [J

    .line 354
    .local v8, "newArray":[J
    if-eqz v7, :cond_2

    .line 355
    invoke-static {v6, v1, v8, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 357
    :cond_2
    :goto_3
    array-length v1, v8

    if-ge v7, v1, :cond_3

    .line 358
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v9

    aput-wide v9, v8, v7

    .line 357
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 360
    :cond_3
    iput-object v8, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    .line 361
    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    .line 362
    goto/16 :goto_b

    .line 325
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "arrayLength":I
    .end local v5    # "startPos":I
    .end local v7    # "i":I
    .end local v8    # "newArray":[J
    :sswitch_3
    const/16 v2, 0x68

    .line 326
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 327
    .local v2, "arrayLength":I
    iget-object v3, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    if-nez v3, :cond_4

    move v4, v1

    goto :goto_4

    :cond_4
    array-length v4, v3

    .line 328
    .local v4, "i":I
    :goto_4
    add-int v5, v4, v2

    new-array v5, v5, [J

    .line 329
    .local v5, "newArray":[J
    if-eqz v4, :cond_5

    .line 330
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    :cond_5
    :goto_5
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    if-ge v4, v1, :cond_6

    .line 333
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v6

    aput-wide v6, v5, v4

    .line 334
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 332
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 337
    :cond_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v6

    aput-wide v6, v5, v4

    .line 338
    iput-object v5, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    .line 339
    goto/16 :goto_b

    .line 292
    .end local v2    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[J
    :sswitch_4
    const/16 v2, 0x65

    .line 293
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 294
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    if-nez v3, :cond_7

    move v4, v1

    goto :goto_6

    :cond_7
    array-length v4, v3

    .line 295
    .restart local v4    # "i":I
    :goto_6
    add-int v5, v4, v2

    new-array v5, v5, [F

    .line 296
    .local v5, "newArray":[F
    if-eqz v4, :cond_8

    .line 297
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    :cond_8
    :goto_7
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    if-ge v4, v1, :cond_9

    .line 300
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v5, v4

    .line 301
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 299
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 304
    :cond_9
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v5, v4

    .line 305
    iput-object v5, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    .line 306
    goto/16 :goto_b

    .line 309
    .end local v2    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[F
    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 310
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 311
    .restart local v3    # "limit":I
    div-int/lit8 v4, v2, 0x4

    .line 312
    .local v4, "arrayLength":I
    iget-object v5, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    if-nez v5, :cond_a

    move v6, v1

    goto :goto_8

    :cond_a
    array-length v6, v5

    .line 313
    .local v6, "i":I
    :goto_8
    add-int v7, v6, v4

    new-array v7, v7, [F

    .line 314
    .local v7, "newArray":[F
    if-eqz v6, :cond_b

    .line 315
    invoke-static {v5, v1, v7, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    :cond_b
    :goto_9
    array-length v1, v7

    if-ge v6, v1, :cond_c

    .line 318
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v7, v6

    .line 317
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 320
    :cond_c
    iput-object v7, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    .line 321
    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    .line 322
    goto :goto_b

    .line 282
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "arrayLength":I
    .end local v6    # "i":I
    .end local v7    # "newArray":[F
    :sswitch_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 283
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_a

    .line 286
    :pswitch_0
    iput v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramType:I

    .line 289
    :goto_a
    goto :goto_b

    .line 278
    .end local v1    # "value":I
    :sswitch_7
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxAppBuffers:I

    .line 279
    goto :goto_b

    .line 274
    :sswitch_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxHalBuffers:I

    .line 275
    goto :goto_b

    .line 270
    :sswitch_9
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->firstCaptureLatencyMillis:I

    .line 271
    goto :goto_b

    .line 266
    :sswitch_a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->errorCount:J

    .line 267
    goto :goto_b

    .line 262
    :sswitch_b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->requestCount:J

    .line 263
    goto :goto_b

    .line 258
    :sswitch_c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->usage:J

    .line 259
    goto :goto_b

    .line 254
    :sswitch_d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dataSpace:I

    .line 255
    goto :goto_b

    .line 250
    :sswitch_e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->format:I

    .line 251
    goto :goto_b

    .line 246
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->height:I

    .line 247
    goto :goto_b

    .line 242
    :sswitch_10
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->width:I

    .line 243
    goto :goto_b

    .line 234
    :sswitch_11
    return-object p0

    .line 373
    .end local v0    # "tag":I
    :cond_d
    :goto_b
    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_11
        0x8 -> :sswitch_10
        0x10 -> :sswitch_f
        0x18 -> :sswitch_e
        0x20 -> :sswitch_d
        0x28 -> :sswitch_c
        0x30 -> :sswitch_b
        0x38 -> :sswitch_a
        0x40 -> :sswitch_9
        0x48 -> :sswitch_8
        0x50 -> :sswitch_7
        0x58 -> :sswitch_6
        0x62 -> :sswitch_5
        0x65 -> :sswitch_4
        0x68 -> :sswitch_3
        0x6a -> :sswitch_2
        0x70 -> :sswitch_1
        0x78 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    move-result-object p1

    return-object p1
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 7
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->width:I

    if-eqz v0, :cond_0

    .line 102
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 104
    :cond_0
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->height:I

    if-eqz v0, :cond_1

    .line 105
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 107
    :cond_1
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->format:I

    if-eqz v0, :cond_2

    .line 108
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 110
    :cond_2
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dataSpace:I

    if-eqz v0, :cond_3

    .line 111
    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 113
    :cond_3
    iget-wide v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->usage:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    .line 114
    const/4 v4, 0x5

    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 116
    :cond_4
    iget-wide v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->requestCount:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    .line 117
    const/4 v4, 0x6

    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 119
    :cond_5
    iget-wide v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->errorCount:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6

    .line 120
    const/4 v4, 0x7

    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 122
    :cond_6
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->firstCaptureLatencyMillis:I

    if-eqz v0, :cond_7

    .line 123
    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 125
    :cond_7
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxHalBuffers:I

    if-eqz v0, :cond_8

    .line 126
    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 128
    :cond_8
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxAppBuffers:I

    if-eqz v0, :cond_9

    .line 129
    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 131
    :cond_9
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramType:I

    if-eqz v0, :cond_a

    .line 132
    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 134
    :cond_a
    iget-object v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    if-eqz v0, :cond_b

    array-length v0, v0

    if-lez v0, :cond_b

    .line 135
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    array-length v4, v1

    if-ge v0, v4, :cond_b

    .line 136
    const/16 v4, 0xc

    aget v1, v1, v0

    invoke-virtual {p1, v4, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    .end local v0    # "i":I
    :cond_b
    iget-object v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    if-eqz v0, :cond_c

    array-length v0, v0

    if-lez v0, :cond_c

    .line 140
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    array-length v4, v1

    if-ge v0, v4, :cond_c

    .line 141
    const/16 v4, 0xd

    aget-wide v5, v1, v0

    invoke-virtual {p1, v4, v5, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 144
    .end local v0    # "i":I
    :cond_c
    iget-wide v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dynamicRangeProfile:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    .line 145
    const/16 v4, 0xe

    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 147
    :cond_d
    iget-wide v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->streamUseCase:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_e

    .line 148
    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 150
    :cond_e
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 151
    return-void
.end method
