.class public final Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "GnssLogsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/nano/GnssLogsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GnssLog"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;


# instance fields
.field public blacklist hardwareRevision:Ljava/lang/String;

.field public blacklist meanL5TopFourAverageCn0DbHz:D

.field public blacklist meanPositionAccuracyMeters:I

.field public blacklist meanTimeToFirstFixSecs:I

.field public blacklist meanTopFourAverageCn0DbHz:D

.field public blacklist numL5SvStatusProcessed:I

.field public blacklist numL5SvStatusUsedInFix:I

.field public blacklist numL5TopFourAverageCn0Processed:I

.field public blacklist numLocationReportProcessed:I

.field public blacklist numPositionAccuracyProcessed:I

.field public blacklist numSvStatusProcessed:I

.field public blacklist numSvStatusUsedInFix:I

.field public blacklist numTimeToFirstFixProcessed:I

.field public blacklist numTopFourAverageCn0Processed:I

.field public blacklist percentageLocationFailure:I

.field public blacklist powerMetrics:Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

.field public blacklist standardDeviationL5TopFourAverageCn0DbHz:D

.field public blacklist standardDeviationPositionAccuracyMeters:I

.field public blacklist standardDeviationTimeToFirstFixSecs:I

.field public blacklist standardDeviationTopFourAverageCn0DbHz:D


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 86
    invoke-virtual {p0}, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->clear()Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;

    .line 87
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;
    .locals 2

    .line 14
    sget-object v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->_emptyArray:[Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;

    if-nez v0, :cond_1

    .line 15
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->_emptyArray:[Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;

    if-nez v1, :cond_0

    .line 18
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;

    sput-object v1, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->_emptyArray:[Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;

    .line 20
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 22
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->_emptyArray:[Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    new-instance v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;

    invoke-direct {v0}, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 378
    new-instance v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;

    invoke-direct {v0}, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;
    .locals 4

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numLocationReportProcessed:I

    .line 91
    iput v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->percentageLocationFailure:I

    .line 92
    iput v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numTimeToFirstFixProcessed:I

    .line 93
    iput v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanTimeToFirstFixSecs:I

    .line 94
    iput v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationTimeToFirstFixSecs:I

    .line 95
    iput v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numPositionAccuracyProcessed:I

    .line 96
    iput v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanPositionAccuracyMeters:I

    .line 97
    iput v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationPositionAccuracyMeters:I

    .line 98
    iput v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numTopFourAverageCn0Processed:I

    .line 99
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanTopFourAverageCn0DbHz:D

    .line 100
    iput-wide v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationTopFourAverageCn0DbHz:D

    .line 101
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->powerMetrics:Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    .line 102
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->hardwareRevision:Ljava/lang/String;

    .line 103
    iput v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numSvStatusProcessed:I

    .line 104
    iput v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numL5SvStatusProcessed:I

    .line 105
    iput v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numSvStatusUsedInFix:I

    .line 106
    iput v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numL5SvStatusUsedInFix:I

    .line 107
    iput v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numL5TopFourAverageCn0Processed:I

    .line 108
    iput-wide v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanL5TopFourAverageCn0DbHz:D

    .line 109
    iput-wide v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationL5TopFourAverageCn0DbHz:D

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->cachedSize:I

    .line 111
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 7

    .line 186
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 187
    .local v0, "size":I
    iget v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numLocationReportProcessed:I

    if-eqz v1, :cond_0

    .line 188
    const/4 v2, 0x1

    .line 189
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 191
    :cond_0
    iget v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->percentageLocationFailure:I

    if-eqz v1, :cond_1

    .line 192
    const/4 v2, 0x2

    .line 193
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 195
    :cond_1
    iget v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numTimeToFirstFixProcessed:I

    if-eqz v1, :cond_2

    .line 196
    const/4 v2, 0x3

    .line 197
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 199
    :cond_2
    iget v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanTimeToFirstFixSecs:I

    if-eqz v1, :cond_3

    .line 200
    const/4 v2, 0x4

    .line 201
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 203
    :cond_3
    iget v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationTimeToFirstFixSecs:I

    if-eqz v1, :cond_4

    .line 204
    const/4 v2, 0x5

    .line 205
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 207
    :cond_4
    iget v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numPositionAccuracyProcessed:I

    if-eqz v1, :cond_5

    .line 208
    const/4 v2, 0x6

    .line 209
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 211
    :cond_5
    iget v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanPositionAccuracyMeters:I

    if-eqz v1, :cond_6

    .line 212
    const/4 v2, 0x7

    .line 213
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 215
    :cond_6
    iget v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationPositionAccuracyMeters:I

    if-eqz v1, :cond_7

    .line 216
    const/16 v2, 0x8

    .line 217
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 219
    :cond_7
    iget v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numTopFourAverageCn0Processed:I

    if-eqz v1, :cond_8

    .line 220
    const/16 v2, 0x9

    .line 221
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 223
    :cond_8
    iget-wide v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanTopFourAverageCn0DbHz:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 224
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-eqz v1, :cond_9

    .line 225
    const/16 v1, 0xa

    iget-wide v5, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanTopFourAverageCn0DbHz:D

    .line 226
    invoke-static {v1, v5, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 228
    :cond_9
    iget-wide v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationTopFourAverageCn0DbHz:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 229
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-eqz v1, :cond_a

    .line 230
    const/16 v1, 0xb

    iget-wide v5, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationTopFourAverageCn0DbHz:D

    .line 231
    invoke-static {v1, v5, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 233
    :cond_a
    iget-object v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->powerMetrics:Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    if-eqz v1, :cond_b

    .line 234
    const/16 v2, 0xc

    .line 235
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 237
    :cond_b
    iget-object v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->hardwareRevision:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 238
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->hardwareRevision:Ljava/lang/String;

    .line 239
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 241
    :cond_c
    iget v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numSvStatusProcessed:I

    if-eqz v1, :cond_d

    .line 242
    const/16 v2, 0xe

    .line 243
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 245
    :cond_d
    iget v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numL5SvStatusProcessed:I

    if-eqz v1, :cond_e

    .line 246
    const/16 v2, 0xf

    .line 247
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 249
    :cond_e
    iget v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numSvStatusUsedInFix:I

    if-eqz v1, :cond_f

    .line 250
    const/16 v2, 0x10

    .line 251
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 253
    :cond_f
    iget v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numL5SvStatusUsedInFix:I

    if-eqz v1, :cond_10

    .line 254
    const/16 v2, 0x11

    .line 255
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 257
    :cond_10
    iget v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numL5TopFourAverageCn0Processed:I

    if-eqz v1, :cond_11

    .line 258
    const/16 v2, 0x12

    .line 259
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 261
    :cond_11
    iget-wide v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanL5TopFourAverageCn0DbHz:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 262
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-eqz v1, :cond_12

    .line 263
    const/16 v1, 0x13

    iget-wide v5, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanL5TopFourAverageCn0DbHz:D

    .line 264
    invoke-static {v1, v5, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 266
    :cond_12
    iget-wide v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationL5TopFourAverageCn0DbHz:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 267
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_13

    .line 268
    const/16 v1, 0x14

    iget-wide v2, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationL5TopFourAverageCn0DbHz:D

    .line 269
    invoke-static {v1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 271
    :cond_13
    return v0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;
    .locals 3
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 280
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 284
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 285
    return-object p0

    .line 369
    :sswitch_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationL5TopFourAverageCn0DbHz:D

    goto/16 :goto_1

    .line 365
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanL5TopFourAverageCn0DbHz:D

    .line 366
    goto/16 :goto_1

    .line 361
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numL5TopFourAverageCn0Processed:I

    .line 362
    goto/16 :goto_1

    .line 357
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numL5SvStatusUsedInFix:I

    .line 358
    goto/16 :goto_1

    .line 353
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numSvStatusUsedInFix:I

    .line 354
    goto/16 :goto_1

    .line 349
    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numL5SvStatusProcessed:I

    .line 350
    goto/16 :goto_1

    .line 345
    :sswitch_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numSvStatusProcessed:I

    .line 346
    goto/16 :goto_1

    .line 341
    :sswitch_7
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->hardwareRevision:Ljava/lang/String;

    .line 342
    goto :goto_1

    .line 334
    :sswitch_8
    iget-object v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->powerMetrics:Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    if-nez v1, :cond_0

    .line 335
    new-instance v1, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    invoke-direct {v1}, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->powerMetrics:Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->powerMetrics:Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 338
    goto :goto_1

    .line 330
    :sswitch_9
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationTopFourAverageCn0DbHz:D

    .line 331
    goto :goto_1

    .line 326
    :sswitch_a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanTopFourAverageCn0DbHz:D

    .line 327
    goto :goto_1

    .line 322
    :sswitch_b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numTopFourAverageCn0Processed:I

    .line 323
    goto :goto_1

    .line 318
    :sswitch_c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationPositionAccuracyMeters:I

    .line 319
    goto :goto_1

    .line 314
    :sswitch_d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanPositionAccuracyMeters:I

    .line 315
    goto :goto_1

    .line 310
    :sswitch_e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numPositionAccuracyProcessed:I

    .line 311
    goto :goto_1

    .line 306
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationTimeToFirstFixSecs:I

    .line 307
    goto :goto_1

    .line 302
    :sswitch_10
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanTimeToFirstFixSecs:I

    .line 303
    goto :goto_1

    .line 298
    :sswitch_11
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numTimeToFirstFixProcessed:I

    .line 299
    goto :goto_1

    .line 294
    :sswitch_12
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->percentageLocationFailure:I

    .line 295
    goto :goto_1

    .line 290
    :sswitch_13
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numLocationReportProcessed:I

    .line 291
    goto :goto_1

    .line 282
    :sswitch_14
    return-object p0

    .line 373
    .end local v0    # "tag":I
    :cond_1
    :goto_1
    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_14
        0x8 -> :sswitch_13
        0x10 -> :sswitch_12
        0x18 -> :sswitch_11
        0x20 -> :sswitch_10
        0x28 -> :sswitch_f
        0x30 -> :sswitch_e
        0x38 -> :sswitch_d
        0x40 -> :sswitch_c
        0x48 -> :sswitch_b
        0x51 -> :sswitch_a
        0x59 -> :sswitch_9
        0x62 -> :sswitch_8
        0x6a -> :sswitch_7
        0x70 -> :sswitch_6
        0x78 -> :sswitch_5
        0x80 -> :sswitch_4
        0x88 -> :sswitch_3
        0x90 -> :sswitch_2
        0x99 -> :sswitch_1
        0xa1 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numLocationReportProcessed:I

    if-eqz v0, :cond_0

    .line 118
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 120
    :cond_0
    iget v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->percentageLocationFailure:I

    if-eqz v0, :cond_1

    .line 121
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 123
    :cond_1
    iget v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numTimeToFirstFixProcessed:I

    if-eqz v0, :cond_2

    .line 124
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 126
    :cond_2
    iget v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanTimeToFirstFixSecs:I

    if-eqz v0, :cond_3

    .line 127
    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 129
    :cond_3
    iget v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationTimeToFirstFixSecs:I

    if-eqz v0, :cond_4

    .line 130
    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 132
    :cond_4
    iget v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numPositionAccuracyProcessed:I

    if-eqz v0, :cond_5

    .line 133
    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 135
    :cond_5
    iget v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanPositionAccuracyMeters:I

    if-eqz v0, :cond_6

    .line 136
    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 138
    :cond_6
    iget v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationPositionAccuracyMeters:I

    if-eqz v0, :cond_7

    .line 139
    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 141
    :cond_7
    iget v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numTopFourAverageCn0Processed:I

    if-eqz v0, :cond_8

    .line 142
    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 144
    :cond_8
    iget-wide v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanTopFourAverageCn0DbHz:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 145
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_9

    .line 146
    const/16 v0, 0xa

    iget-wide v4, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanTopFourAverageCn0DbHz:D

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 148
    :cond_9
    iget-wide v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationTopFourAverageCn0DbHz:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 149
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_a

    .line 150
    const/16 v0, 0xb

    iget-wide v4, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationTopFourAverageCn0DbHz:D

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 152
    :cond_a
    iget-object v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->powerMetrics:Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    if-eqz v0, :cond_b

    .line 153
    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 155
    :cond_b
    iget-object v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->hardwareRevision:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 156
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->hardwareRevision:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 158
    :cond_c
    iget v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numSvStatusProcessed:I

    if-eqz v0, :cond_d

    .line 159
    const/16 v1, 0xe

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 161
    :cond_d
    iget v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numL5SvStatusProcessed:I

    if-eqz v0, :cond_e

    .line 162
    const/16 v1, 0xf

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 164
    :cond_e
    iget v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numSvStatusUsedInFix:I

    if-eqz v0, :cond_f

    .line 165
    const/16 v1, 0x10

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 167
    :cond_f
    iget v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numL5SvStatusUsedInFix:I

    if-eqz v0, :cond_10

    .line 168
    const/16 v1, 0x11

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 170
    :cond_10
    iget v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numL5TopFourAverageCn0Processed:I

    if-eqz v0, :cond_11

    .line 171
    const/16 v1, 0x12

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 173
    :cond_11
    iget-wide v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanL5TopFourAverageCn0DbHz:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 174
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_12

    .line 175
    const/16 v0, 0x13

    iget-wide v4, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanL5TopFourAverageCn0DbHz:D

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 177
    :cond_12
    iget-wide v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationL5TopFourAverageCn0DbHz:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 178
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    .line 179
    const/16 v0, 0x14

    iget-wide v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationL5TopFourAverageCn0DbHz:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 181
    :cond_13
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 182
    return-void
.end method
