.class public final Landroid/util/proto/ProtoOutputStream;
.super Landroid/util/proto/ProtoStream;
.source "ProtoOutputStream.java"


# static fields
.field public static final blacklist TAG:Ljava/lang/String; = "ProtoOutputStream"


# instance fields
.field private greylist-max-o mBuffer:Landroid/util/proto/EncodedBuffer;

.field private greylist-max-o mCompacted:Z

.field private greylist-max-o mCopyBegin:I

.field private greylist-max-o mDepth:I

.field private greylist-max-o mExpectedObjectToken:J

.field private greylist-max-o mNextObjectId:I

.field private greylist-max-o mStream:Ljava/io/OutputStream;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(I)V

    .line 167
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .locals 1
    .param p1, "chunkSize"    # I

    .line 174
    invoke-direct {p0}, Landroid/util/proto/ProtoStream;-><init>()V

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/proto/ProtoOutputStream;->mNextObjectId:I

    .line 175
    new-instance v0, Landroid/util/proto/EncodedBuffer;

    invoke-direct {v0, p1}, Landroid/util/proto/EncodedBuffer;-><init>(I)V

    iput-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 176
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 200
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 201
    return-void
.end method

.method public constructor whitelist <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/OutputStream;

    .line 186
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 187
    iput-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mStream:Ljava/io/OutputStream;

    .line 188
    return-void
.end method

.method private greylist-max-o assertNotCompacted()V
    .locals 2

    .line 2308
    iget-boolean v0, p0, Landroid/util/proto/ProtoOutputStream;->mCompacted:Z

    if-nez v0, :cond_0

    .line 2311
    return-void

    .line 2309
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "write called after compact"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist checkFieldId(JJ)I
    .locals 20
    .param p0, "fieldId"    # J
    .param p2, "expectedFlags"    # J

    .line 2209
    move-wide/from16 v0, p0

    const-wide v2, 0xf0000000000L

    and-long v4, v0, v2

    .line 2210
    .local v4, "fieldCount":J
    const-wide v6, 0xff00000000L

    and-long v8, v0, v6

    .line 2211
    .local v8, "fieldType":J
    and-long v2, p2, v2

    .line 2212
    .local v2, "expectedCount":J
    and-long v6, p2, v6

    .line 2213
    .local v6, "expectedType":J
    long-to-int v10, v0

    if-eqz v10, :cond_7

    .line 2217
    cmp-long v10, v8, v6

    const-wide v11, 0x50000000000L

    if-nez v10, :cond_1

    cmp-long v10, v4, v2

    if-eqz v10, :cond_0

    cmp-long v10, v4, v11

    if-nez v10, :cond_1

    const-wide v13, 0x20000000000L

    cmp-long v10, v2, v13

    if-eqz v10, :cond_0

    goto :goto_0

    .line 2265
    :cond_0
    long-to-int v10, v0

    return v10

    .line 2221
    :cond_1
    :goto_0
    invoke-static {v4, v5}, Landroid/util/proto/ProtoOutputStream;->getFieldCountString(J)Ljava/lang/String;

    move-result-object v10

    .line 2222
    .local v10, "countString":Ljava/lang/String;
    invoke-static {v8, v9}, Landroid/util/proto/ProtoOutputStream;->getFieldTypeString(J)Ljava/lang/String;

    move-result-object v13

    .line 2223
    .local v13, "typeString":Ljava/lang/String;
    const-string/jumbo v15, "start"

    const-string/jumbo v14, "write"

    const-wide v16, 0xb00000000L

    if-eqz v13, :cond_5

    if-eqz v10, :cond_5

    .line 2224
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v18

    .line 2225
    .local v19, "sb":Ljava/lang/StringBuilder;
    cmp-long v18, v6, v16

    if-nez v18, :cond_2

    .line 2226
    move-object/from16 v11, v19

    .end local v19    # "sb":Ljava/lang/StringBuilder;
    .local v11, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2228
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .restart local v19    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    move-object/from16 v11, v19

    .end local v19    # "sb":Ljava/lang/StringBuilder;
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2230
    :goto_1
    invoke-static {v2, v3}, Landroid/util/proto/ProtoOutputStream;->getFieldCountString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2231
    invoke-static {v6, v7}, Landroid/util/proto/ProtoOutputStream;->getFieldTypeString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2232
    const-string v12, " called for field "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2233
    long-to-int v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2234
    const-string v12, " which should be used with "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2235
    cmp-long v12, v8, v16

    if-nez v12, :cond_3

    .line 2236
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2238
    :cond_3
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2240
    :goto_2
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2241
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2242
    const-wide v14, 0x50000000000L

    cmp-long v12, v4, v14

    if-nez v12, :cond_4

    .line 2243
    const-string v12, " or writeRepeated"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2244
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2246
    :cond_4
    const/16 v12, 0x2e

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2247
    new-instance v12, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 2249
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 2250
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    cmp-long v12, v6, v16

    if-nez v12, :cond_6

    .line 2251
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2253
    :cond_6
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2255
    :goto_3
    invoke-static {v2, v3}, Landroid/util/proto/ProtoOutputStream;->getFieldCountString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2256
    invoke-static {v6, v7}, Landroid/util/proto/ProtoOutputStream;->getFieldTypeString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2257
    const-string v12, " called with an invalid fieldId: 0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2258
    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2259
    const-string v12, ". The proto field ID might be "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2260
    long-to-int v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2261
    const/16 v12, 0x2e

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2262
    new-instance v12, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 2214
    .end local v10    # "countString":Ljava/lang/String;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .end local v13    # "typeString":Ljava/lang/String;
    :cond_7
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid proto field "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    long-to-int v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " fieldId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2215
    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method private greylist-max-o compactIfNecessary()V
    .locals 4

    .line 2331
    iget-boolean v0, p0, Landroid/util/proto/ProtoOutputStream;->mCompacted:Z

    if-nez v0, :cond_2

    .line 2332
    iget v0, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    if-nez v0, :cond_1

    .line 2338
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->startEditing()V

    .line 2339
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getReadableSize()I

    move-result v0

    .line 2342
    .local v0, "readableSize":I
    invoke-direct {p0, v0}, Landroid/util/proto/ProtoOutputStream;->editEncodedSize(I)I

    .line 2348
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->rewindRead()V

    .line 2349
    invoke-direct {p0, v0}, Landroid/util/proto/ProtoOutputStream;->compactSizes(I)V

    .line 2352
    iget v1, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    if-ge v1, v0, :cond_0

    .line 2353
    iget-object v2, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    sub-int v3, v0, v1

    invoke-virtual {v2, v1, v3}, Landroid/util/proto/EncodedBuffer;->writeFromThisBuffer(II)V

    .line 2357
    :cond_0
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->startEditing()V

    .line 2362
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/proto/ProtoOutputStream;->mCompacted:Z

    goto :goto_0

    .line 2333
    .end local v0    # "readableSize":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to compact with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " missing calls to endObject"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2364
    :cond_2
    :goto_0
    return-void
.end method

.method private greylist-max-o compactSizes(I)V
    .locals 9
    .param p1, "rawSize"    # I

    .line 2440
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v0

    .line 2441
    .local v0, "objectStart":I
    add-int v1, v0, p1

    .line 2443
    .local v1, "objectEnd":I
    :goto_0
    iget-object v2, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v2}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v2

    move v3, v2

    .local v3, "tagPos":I
    if-ge v2, v1, :cond_2

    .line 2444
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->readRawTag()I

    move-result v2

    .line 2449
    .local v2, "tag":I
    and-int/lit8 v4, v2, 0x7

    .line 2450
    .local v4, "wireType":I
    packed-switch v4, :pswitch_data_0

    .line 2484
    new-instance v5, Landroid/util/proto/ProtoParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "compactSizes Bad tag tag=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2485
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " wireType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 2486
    invoke-virtual {v7}, Landroid/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2481
    :pswitch_0
    iget-object v5, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    .line 2482
    goto :goto_2

    .line 2479
    :pswitch_1
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "groups not supported at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2459
    :pswitch_2
    iget-object v5, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget v6, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    invoke-virtual {v5}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v7

    iget v8, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    sub-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/util/proto/EncodedBuffer;->writeFromThisBuffer(II)V

    .line 2461
    iget-object v5, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v5}, Landroid/util/proto/EncodedBuffer;->readRawFixed32()I

    move-result v5

    .line 2462
    .local v5, "childRawSize":I
    iget-object v6, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v6}, Landroid/util/proto/EncodedBuffer;->readRawFixed32()I

    move-result v6

    .line 2463
    .local v6, "childEncodedSize":I
    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7, v6}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    .line 2465
    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v7

    iput v7, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    .line 2466
    if-ltz v5, :cond_0

    .line 2469
    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7, v6}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    goto :goto_2

    .line 2471
    :cond_0
    neg-int v7, v5

    invoke-direct {p0, v7}, Landroid/util/proto/ProtoOutputStream;->compactSizes(I)V

    .line 2473
    goto :goto_2

    .line 2455
    .end local v5    # "childRawSize":I
    .end local v6    # "childEncodedSize":I
    :pswitch_3
    iget-object v5, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    .line 2456
    goto :goto_2

    .line 2452
    :goto_1
    :pswitch_4
    iget-object v5, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v5}, Landroid/util/proto/EncodedBuffer;->readRawByte()B

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_1

    goto :goto_1

    .line 2488
    .end local v2    # "tag":I
    .end local v4    # "wireType":I
    :cond_1
    :goto_2
    goto/16 :goto_0

    .line 2489
    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o editEncodedSize(I)I
    .locals 12
    .param p1, "rawSize"    # I

    .line 2371
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v0

    .line 2372
    .local v0, "objectStart":I
    add-int v1, v0, p1

    .line 2373
    .local v1, "objectEnd":I
    const/4 v2, 0x0

    .line 2376
    .local v2, "encodedSize":I
    :goto_0
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v3}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v3

    move v4, v3

    .local v4, "tagPos":I
    if-ge v3, v1, :cond_3

    .line 2377
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->readRawTag()I

    move-result v3

    .line 2378
    .local v3, "tag":I
    invoke-static {v3}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v5

    add-int/2addr v2, v5

    .line 2380
    and-int/lit8 v5, v3, 0x7

    .line 2381
    .local v5, "wireType":I
    packed-switch v5, :pswitch_data_0

    .line 2425
    new-instance v6, Landroid/util/proto/ProtoParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "editEncodedSize Bad tag tag=0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2426
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " wireType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 2427
    invoke-virtual {v8}, Landroid/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2421
    :pswitch_0
    add-int/lit8 v2, v2, 0x4

    .line 2422
    iget-object v6, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    .line 2423
    goto/16 :goto_3

    .line 2419
    :pswitch_1
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "groups not supported at index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2395
    :pswitch_2
    iget-object v6, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v6}, Landroid/util/proto/EncodedBuffer;->readRawFixed32()I

    move-result v6

    .line 2396
    .local v6, "childRawSize":I
    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v7

    .line 2397
    .local v7, "childEncodedSizePos":I
    iget-object v8, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v8}, Landroid/util/proto/EncodedBuffer;->readRawFixed32()I

    move-result v8

    .line 2398
    .local v8, "childEncodedSize":I
    if-ltz v6, :cond_1

    .line 2400
    if-ne v8, v6, :cond_0

    .line 2407
    iget-object v9, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v9, v6}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    goto :goto_1

    .line 2401
    :cond_0
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Pre-computed size where the precomputed size and the raw size in the buffer don\'t match! childRawSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " childEncodedSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " childEncodedSizePos="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2410
    :cond_1
    neg-int v9, v6

    invoke-direct {p0, v9}, Landroid/util/proto/ProtoOutputStream;->editEncodedSize(I)I

    move-result v8

    .line 2411
    iget-object v9, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v9, v7, v8}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    .line 2413
    :goto_1
    invoke-static {v8}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v9

    add-int/2addr v9, v8

    add-int/2addr v2, v9

    .line 2415
    goto :goto_3

    .line 2389
    .end local v6    # "childRawSize":I
    .end local v7    # "childEncodedSizePos":I
    .end local v8    # "childEncodedSize":I
    :pswitch_3
    add-int/lit8 v2, v2, 0x8

    .line 2390
    iget-object v6, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    .line 2391
    goto :goto_3

    .line 2383
    :pswitch_4
    add-int/lit8 v2, v2, 0x1

    .line 2384
    :goto_2
    iget-object v6, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v6}, Landroid/util/proto/EncodedBuffer;->readRawByte()B

    move-result v6

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_2

    .line 2385
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2429
    .end local v3    # "tag":I
    .end local v5    # "wireType":I
    :cond_2
    :goto_3
    goto/16 :goto_0

    .line 2431
    :cond_3
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o endObjectImpl(JZ)V
    .locals 10
    .param p1, "token"    # J
    .param p3, "repeated"    # Z

    .line 2094
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getDepthFromToken(J)I

    move-result v0

    .line 2095
    .local v0, "depth":I
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getRepeatedFromToken(J)Z

    move-result v1

    .line 2096
    .local v1, "expectedRepeated":Z
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getOffsetFromToken(J)I

    move-result v2

    .line 2097
    .local v2, "sizePos":I
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v3}, Landroid/util/proto/EncodedBuffer;->getWritePos()I

    move-result v3

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x8

    .line 2099
    .local v3, "childRawSize":I
    if-eq p3, v1, :cond_1

    .line 2100
    if-eqz p3, :cond_0

    .line 2101
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "endRepeatedObject called where endObject should have been"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2104
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "endObject called where endRepeatedObject should have been"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2110
    :cond_1
    iget v4, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    and-int/lit16 v4, v4, 0x1ff

    if-ne v4, v0, :cond_4

    iget-wide v4, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_4

    .line 2120
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v4, v2}, Landroid/util/proto/EncodedBuffer;->getRawFixed32At(I)I

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    const-wide v6, 0xffffffffL

    iget-object v8, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    add-int/lit8 v9, v2, 0x4

    .line 2121
    invoke-virtual {v8, v9}, Landroid/util/proto/EncodedBuffer;->getRawFixed32At(I)I

    move-result v8

    int-to-long v8, v8

    and-long/2addr v6, v8

    or-long/2addr v4, v6

    iput-wide v4, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    .line 2123
    iget v4, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    .line 2124
    if-lez v3, :cond_2

    .line 2125
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    neg-int v5, v3

    invoke-virtual {v4, v2, v5}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    .line 2126
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    add-int/lit8 v5, v2, 0x4

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    goto :goto_0

    .line 2127
    :cond_2
    if-eqz p3, :cond_3

    .line 2128
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    .line 2129
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    add-int/lit8 v6, v2, 0x4

    invoke-virtual {v4, v6, v5}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    goto :goto_0

    .line 2132
    :cond_3
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getTagSizeFromToken(J)I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual {v4, v5}, Landroid/util/proto/EncodedBuffer;->rewindWriteTo(I)V

    .line 2134
    :goto_0
    return-void

    .line 2113
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mismatched startObject/endObject calls. Current depth "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2115
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->token2String(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " expectedToken="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    .line 2116
    invoke-static {v6, v7}, Landroid/util/proto/ProtoOutputStream;->token2String(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static greylist-max-o getTagSize(I)I
    .locals 1
    .param p0, "id"    # I

    .line 2272
    shl-int/lit8 v0, p0, 0x3

    invoke-static {v0}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method public static whitelist makeFieldId(IJ)J
    .locals 4
    .param p0, "id"    # I
    .param p1, "fieldFlags"    # J

    .line 2186
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long/2addr v0, p1

    return-wide v0
.end method

.method private greylist-max-o readRawTag()I
    .locals 2

    .line 2526
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v0

    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->getReadableSize()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2527
    const/4 v0, 0x0

    return v0

    .line 2529
    :cond_0
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->readRawUnsigned()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private greylist-max-o startObjectImpl(IZ)J
    .locals 6
    .param p1, "id"    # I
    .param p2, "repeated"    # Z

    .line 2067
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 2068
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getWritePos()I

    move-result v0

    .line 2069
    .local v0, "sizePos":I
    iget v1, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    .line 2070
    iget v1, p0, Landroid/util/proto/ProtoOutputStream;->mNextObjectId:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/util/proto/ProtoOutputStream;->mNextObjectId:I

    .line 2075
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget-wide v2, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 2076
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget-wide v2, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 2078
    iget-wide v1, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    .line 2080
    .local v1, "old":J
    invoke-static {p1}, Landroid/util/proto/ProtoOutputStream;->getTagSize(I)I

    move-result v3

    iget v4, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    iget v5, p0, Landroid/util/proto/ProtoOutputStream;->mNextObjectId:I

    invoke-static {v3, p2, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->makeToken(IZIII)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    .line 2081
    return-wide v3
.end method

.method private greylist-max-o writeBoolImpl(IZ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "val"    # Z

    .line 1769
    if-eqz p2, :cond_0

    .line 1770
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1772
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 1774
    :cond_0
    return-void
.end method

.method private greylist-max-o writeBytesImpl(I[B)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # [B

    .line 1904
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 1905
    array-length v0, p2

    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1906
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V

    .line 1908
    :cond_0
    return-void
.end method

.method private greylist-max-o writeDoubleImpl(ID)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "val"    # D

    .line 905
    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-eqz v0, :cond_0

    .line 906
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 907
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 909
    :cond_0
    return-void
.end method

.method private greylist-max-o writeEnumImpl(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # I

    .line 1952
    if-eqz p2, :cond_0

    .line 1953
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1954
    invoke-direct {p0, p2}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    .line 1956
    :cond_0
    return-void
.end method

.method private greylist-max-o writeFixed32Impl(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # I

    .line 1502
    if-eqz p2, :cond_0

    .line 1503
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1504
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 1506
    :cond_0
    return-void
.end method

.method private greylist-max-o writeFixed64Impl(IJ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "val"    # J

    .line 1569
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 1570
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1571
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 1573
    :cond_0
    return-void
.end method

.method private greylist-max-o writeFloatImpl(IF)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "val"    # F

    .line 972
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    .line 973
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 974
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 976
    :cond_0
    return-void
.end method

.method private greylist-max-o writeInt32Impl(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # I

    .line 1062
    if-eqz p2, :cond_0

    .line 1063
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1064
    invoke-direct {p0, p2}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    .line 1066
    :cond_0
    return-void
.end method

.method private greylist-max-o writeInt64Impl(IJ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "val"    # J

    .line 1143
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 1144
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1145
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 1147
    :cond_0
    return-void
.end method

.method private greylist-max-o writeKnownLengthHeader(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "size"    # I

    .line 2291
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 2294
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 2295
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 2296
    return-void
.end method

.method private greylist-max-o writeRepeatedBoolImpl(IZ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "val"    # Z

    .line 1791
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1792
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    int-to-byte v1, p2

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 1793
    return-void
.end method

.method private greylist-max-o writeRepeatedBytesImpl(I[B)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # [B

    .line 1925
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p2

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1926
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V

    .line 1927
    return-void
.end method

.method private greylist-max-o writeRepeatedDoubleImpl(ID)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "val"    # D

    .line 926
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 927
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 928
    return-void
.end method

.method private greylist-max-o writeRepeatedEnumImpl(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # I

    .line 1973
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1974
    invoke-direct {p0, p2}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    .line 1975
    return-void
.end method

.method private greylist-max-o writeRepeatedFixed32Impl(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # I

    .line 1523
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1524
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 1525
    return-void
.end method

.method private greylist-max-o writeRepeatedFixed64Impl(IJ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # J

    .line 1590
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1591
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 1592
    return-void
.end method

.method private greylist-max-o writeRepeatedFloatImpl(IF)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "val"    # F

    .line 993
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 994
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 995
    return-void
.end method

.method private greylist-max-o writeRepeatedInt32Impl(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # I

    .line 1087
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1088
    invoke-direct {p0, p2}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    .line 1089
    return-void
.end method

.method private greylist-max-o writeRepeatedInt64Impl(IJ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # J

    .line 1164
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1165
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 1166
    return-void
.end method

.method private greylist-max-o writeRepeatedSFixed32Impl(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # I

    .line 1656
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1657
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 1658
    return-void
.end method

.method private greylist-max-o writeRepeatedSFixed64Impl(IJ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # J

    .line 1723
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1724
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 1725
    return-void
.end method

.method private greylist-max-o writeRepeatedSInt32Impl(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # I

    .line 1380
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1381
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag32(I)V

    .line 1382
    return-void
.end method

.method private greylist-max-o writeRepeatedSInt64Impl(IJ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # J

    .line 1452
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1453
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag64(J)V

    .line 1454
    return-void
.end method

.method private greylist-max-o writeRepeatedStringImpl(ILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # Ljava/lang/String;

    .line 1861
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1864
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeUtf8String(ILjava/lang/String;)V

    goto :goto_1

    .line 1862
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1866
    :goto_1
    return-void
.end method

.method private greylist-max-o writeRepeatedUInt32Impl(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # I

    .line 1236
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1237
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    .line 1238
    return-void
.end method

.method private greylist-max-o writeRepeatedUInt64Impl(IJ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # J

    .line 1308
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1309
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 1310
    return-void
.end method

.method private greylist-max-o writeSFixed32Impl(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # I

    .line 1635
    if-eqz p2, :cond_0

    .line 1636
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1637
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 1639
    :cond_0
    return-void
.end method

.method private greylist-max-o writeSFixed64Impl(IJ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "val"    # J

    .line 1702
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 1703
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1704
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 1706
    :cond_0
    return-void
.end method

.method private greylist-max-o writeSInt32Impl(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # I

    .line 1359
    if-eqz p2, :cond_0

    .line 1360
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1361
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag32(I)V

    .line 1363
    :cond_0
    return-void
.end method

.method private greylist-max-o writeSInt64Impl(IJ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "val"    # J

    .line 1431
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 1432
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1433
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag64(J)V

    .line 1435
    :cond_0
    return-void
.end method

.method private greylist-max-o writeStringImpl(ILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # Ljava/lang/String;

    .line 1841
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1842
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeUtf8String(ILjava/lang/String;)V

    .line 1844
    :cond_0
    return-void
.end method

.method private greylist-max-o writeUInt32Impl(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # I

    .line 1215
    if-eqz p2, :cond_0

    .line 1216
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1217
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    .line 1219
    :cond_0
    return-void
.end method

.method private greylist-max-o writeUInt64Impl(IJ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "val"    # J

    .line 1287
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 1288
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 1289
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 1291
    :cond_0
    return-void
.end method

.method private greylist-max-o writeUnsignedVarintFromSignedInt(I)V
    .locals 3
    .param p1, "val"    # I

    .line 1036
    if-ltz p1, :cond_0

    .line 1037
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p1}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    goto :goto_0

    .line 1039
    :cond_0
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 1041
    :goto_0
    return-void
.end method

.method private greylist-max-o writeUtf8String(ILjava/lang/String;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "val"    # Ljava/lang/String;

    .line 1874
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1875
    .local v0, "buf":[B
    array-length v1, v0

    invoke-direct {p0, p1, v1}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1876
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1, v0}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1879
    .end local v0    # "buf":[B
    nop

    .line 1880
    return-void

    .line 1877
    :catch_0
    move-exception v0

    .line 1878
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "not possible"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist dump(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 2536
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p1}, Landroid/util/proto/EncodedBuffer;->dumpBuffers(Ljava/lang/String;)V

    .line 2538
    return-void
.end method

.method public whitelist end(J)V
    .locals 1
    .param p1, "token"    # J

    .line 880
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getRepeatedFromToken(J)Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->endObjectImpl(JZ)V

    .line 881
    return-void
.end method

.method public blacklist endObject(J)V
    .locals 1
    .param p1, "token"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2028
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2030
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->endObjectImpl(JZ)V

    .line 2031
    return-void
.end method

.method public blacklist endRepeatedObject(J)V
    .locals 1
    .param p1, "token"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2058
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2060
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->endObjectImpl(JZ)V

    .line 2061
    return-void
.end method

.method public whitelist flush()V
    .locals 4

    .line 2500
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mStream:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 2501
    return-void

    .line 2503
    :cond_0
    iget v0, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    if-eqz v0, :cond_1

    .line 2506
    return-void

    .line 2508
    :cond_1
    iget-boolean v0, p0, Landroid/util/proto/ProtoOutputStream;->mCompacted:Z

    if-eqz v0, :cond_2

    .line 2510
    return-void

    .line 2512
    :cond_2
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->compactIfNecessary()V

    .line 2513
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getReadableSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->getBytes(I)[B

    move-result-object v0

    .line 2515
    .local v0, "data":[B
    :try_start_0
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mStream:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 2516
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2519
    nop

    .line 2520
    return-void

    .line 2517
    :catch_0
    move-exception v1

    .line 2518
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error flushing proto to stream"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public whitelist getBytes()[B
    .locals 2

    .line 2321
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->compactIfNecessary()V

    .line 2323
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getReadableSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->getBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRawSize()I
    .locals 1

    .line 210
    iget-boolean v0, p0, Landroid/util/proto/ProtoOutputStream;->mCompacted:Z

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    return v0

    .line 213
    :cond_0
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getSize()I

    move-result v0

    return v0
.end method

.method public whitelist start(J)J
    .locals 5
    .param p1, "fieldId"    # J

    .line 859
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 860
    long-to-int v0, p1

    .line 862
    .local v0, "id":I
    const-wide v1, 0xff00000000L

    and-long/2addr v1, p1

    const-wide v3, 0xb00000000L

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 863
    const-wide v1, 0xf0000000000L

    and-long/2addr v1, p1

    .line 864
    .local v1, "count":J
    const-wide v3, 0x10000000000L

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 865
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Landroid/util/proto/ProtoOutputStream;->startObjectImpl(IZ)J

    move-result-wide v3

    return-wide v3

    .line 866
    :cond_0
    const-wide v3, 0x20000000000L

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    const-wide v3, 0x50000000000L

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    .line 867
    :cond_1
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Landroid/util/proto/ProtoOutputStream;->startObjectImpl(IZ)J

    move-result-wide v3

    return-wide v3

    .line 870
    .end local v1    # "count":J
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to call start(long) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 871
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist startObject(J)J
    .locals 3
    .param p1, "fieldId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2014
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2015
    const-wide v0, 0x10b00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 2017
    .local v0, "id":I
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->startObjectImpl(IZ)J

    move-result-wide v1

    return-wide v1
.end method

.method public blacklist startRepeatedObject(J)J
    .locals 3
    .param p1, "fieldId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2044
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2045
    const-wide v0, 0x20b00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 2047
    .local v0, "id":I
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->startObjectImpl(IZ)J

    move-result-wide v1

    return-wide v1
.end method

.method public whitelist write(JD)V
    .locals 6
    .param p1, "fieldId"    # J
    .param p3, "val"    # D

    .line 228
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 229
    long-to-int v0, p1

    .line 231
    .local v0, "id":I
    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    sparse-switch v1, :sswitch_data_0

    .line 346
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to call write(long, double) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 347
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 294
    :sswitch_0
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    .line 295
    goto/16 :goto_2

    .line 286
    :sswitch_1
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    .line 287
    goto/16 :goto_2

    .line 326
    :sswitch_2
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    .line 327
    goto/16 :goto_2

    .line 318
    :sswitch_3
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    .line 319
    goto/16 :goto_2

    .line 342
    :sswitch_4
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    .line 343
    goto/16 :goto_2

    .line 270
    :sswitch_5
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    .line 271
    goto/16 :goto_2

    .line 334
    :sswitch_6
    cmpl-double v1, p3, v4

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    .line 335
    goto/16 :goto_2

    .line 302
    :sswitch_7
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    .line 303
    goto/16 :goto_2

    .line 310
    :sswitch_8
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    .line 311
    goto/16 :goto_2

    .line 254
    :sswitch_9
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    .line 255
    goto/16 :goto_2

    .line 278
    :sswitch_a
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    .line 279
    goto/16 :goto_2

    .line 262
    :sswitch_b
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    .line 263
    goto :goto_2

    .line 246
    :sswitch_c
    double-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    .line 247
    goto :goto_2

    .line 238
    :sswitch_d
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    .line 239
    goto :goto_2

    .line 290
    :sswitch_e
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    .line 291
    goto :goto_2

    .line 282
    :sswitch_f
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    .line 283
    goto :goto_2

    .line 322
    :sswitch_10
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    .line 323
    goto :goto_2

    .line 314
    :sswitch_11
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    .line 315
    goto :goto_2

    .line 338
    :sswitch_12
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    .line 339
    goto :goto_2

    .line 266
    :sswitch_13
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    .line 267
    goto :goto_2

    .line 330
    :sswitch_14
    cmpl-double v1, p3, v4

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    .line 331
    goto :goto_2

    .line 298
    :sswitch_15
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    .line 299
    goto :goto_2

    .line 306
    :sswitch_16
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    .line 307
    goto :goto_2

    .line 250
    :sswitch_17
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    .line 251
    goto :goto_2

    .line 274
    :sswitch_18
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    .line 275
    goto :goto_2

    .line 258
    :sswitch_19
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    .line 259
    goto :goto_2

    .line 242
    :sswitch_1a
    double-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    .line 243
    goto :goto_2

    .line 234
    :sswitch_1b
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    .line 235
    nop

    .line 350
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x101 -> :sswitch_1b
        0x102 -> :sswitch_1a
        0x103 -> :sswitch_19
        0x104 -> :sswitch_18
        0x105 -> :sswitch_17
        0x106 -> :sswitch_16
        0x107 -> :sswitch_15
        0x108 -> :sswitch_14
        0x10d -> :sswitch_13
        0x10e -> :sswitch_12
        0x10f -> :sswitch_11
        0x110 -> :sswitch_10
        0x111 -> :sswitch_f
        0x112 -> :sswitch_e
        0x201 -> :sswitch_d
        0x202 -> :sswitch_c
        0x203 -> :sswitch_b
        0x204 -> :sswitch_a
        0x205 -> :sswitch_9
        0x206 -> :sswitch_8
        0x207 -> :sswitch_7
        0x208 -> :sswitch_6
        0x20d -> :sswitch_5
        0x20e -> :sswitch_4
        0x20f -> :sswitch_3
        0x210 -> :sswitch_2
        0x211 -> :sswitch_1
        0x212 -> :sswitch_0
        0x501 -> :sswitch_d
        0x502 -> :sswitch_c
        0x503 -> :sswitch_b
        0x504 -> :sswitch_a
        0x505 -> :sswitch_9
        0x506 -> :sswitch_8
        0x507 -> :sswitch_7
        0x508 -> :sswitch_6
        0x50d -> :sswitch_5
        0x50e -> :sswitch_4
        0x50f -> :sswitch_3
        0x510 -> :sswitch_2
        0x511 -> :sswitch_1
        0x512 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist write(JF)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # F

    .line 363
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 364
    long-to-int v0, p1

    .line 366
    .local v0, "id":I
    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    sparse-switch v1, :sswitch_data_0

    .line 481
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to call write(long, float) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 482
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 429
    :sswitch_0
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    .line 430
    goto/16 :goto_2

    .line 421
    :sswitch_1
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    .line 422
    goto/16 :goto_2

    .line 461
    :sswitch_2
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    .line 462
    goto/16 :goto_2

    .line 453
    :sswitch_3
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    .line 454
    goto/16 :goto_2

    .line 477
    :sswitch_4
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    .line 478
    goto/16 :goto_2

    .line 405
    :sswitch_5
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    .line 406
    goto/16 :goto_2

    .line 469
    :sswitch_6
    cmpl-float v1, p3, v4

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    .line 470
    goto/16 :goto_2

    .line 437
    :sswitch_7
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    .line 438
    goto/16 :goto_2

    .line 445
    :sswitch_8
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    .line 446
    goto/16 :goto_2

    .line 389
    :sswitch_9
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    .line 390
    goto/16 :goto_2

    .line 413
    :sswitch_a
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    .line 414
    goto/16 :goto_2

    .line 397
    :sswitch_b
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    .line 398
    goto :goto_2

    .line 381
    :sswitch_c
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    .line 382
    goto :goto_2

    .line 373
    :sswitch_d
    float-to-double v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    .line 374
    goto :goto_2

    .line 425
    :sswitch_e
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    .line 426
    goto :goto_2

    .line 417
    :sswitch_f
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    .line 418
    goto :goto_2

    .line 457
    :sswitch_10
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    .line 458
    goto :goto_2

    .line 449
    :sswitch_11
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    .line 450
    goto :goto_2

    .line 473
    :sswitch_12
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    .line 474
    goto :goto_2

    .line 401
    :sswitch_13
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    .line 402
    goto :goto_2

    .line 465
    :sswitch_14
    cmpl-float v1, p3, v4

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    .line 466
    goto :goto_2

    .line 433
    :sswitch_15
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    .line 434
    goto :goto_2

    .line 441
    :sswitch_16
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    .line 442
    goto :goto_2

    .line 385
    :sswitch_17
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    .line 386
    goto :goto_2

    .line 409
    :sswitch_18
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    .line 410
    goto :goto_2

    .line 393
    :sswitch_19
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    .line 394
    goto :goto_2

    .line 377
    :sswitch_1a
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    .line 378
    goto :goto_2

    .line 369
    :sswitch_1b
    float-to-double v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    .line 370
    nop

    .line 485
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x101 -> :sswitch_1b
        0x102 -> :sswitch_1a
        0x103 -> :sswitch_19
        0x104 -> :sswitch_18
        0x105 -> :sswitch_17
        0x106 -> :sswitch_16
        0x107 -> :sswitch_15
        0x108 -> :sswitch_14
        0x10d -> :sswitch_13
        0x10e -> :sswitch_12
        0x10f -> :sswitch_11
        0x110 -> :sswitch_10
        0x111 -> :sswitch_f
        0x112 -> :sswitch_e
        0x201 -> :sswitch_d
        0x202 -> :sswitch_c
        0x203 -> :sswitch_b
        0x204 -> :sswitch_a
        0x205 -> :sswitch_9
        0x206 -> :sswitch_8
        0x207 -> :sswitch_7
        0x208 -> :sswitch_6
        0x20d -> :sswitch_5
        0x20e -> :sswitch_4
        0x20f -> :sswitch_3
        0x210 -> :sswitch_2
        0x211 -> :sswitch_1
        0x212 -> :sswitch_0
        0x501 -> :sswitch_d
        0x502 -> :sswitch_c
        0x503 -> :sswitch_b
        0x504 -> :sswitch_a
        0x505 -> :sswitch_9
        0x506 -> :sswitch_8
        0x507 -> :sswitch_7
        0x508 -> :sswitch_6
        0x50d -> :sswitch_5
        0x50e -> :sswitch_4
        0x50f -> :sswitch_3
        0x510 -> :sswitch_2
        0x511 -> :sswitch_1
        0x512 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist write(JI)V
    .locals 4
    .param p1, "fieldId"    # J
    .param p3, "val"    # I

    .line 498
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 499
    long-to-int v0, p1

    .line 501
    .local v0, "id":I
    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    .line 616
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to call write(long, int) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 617
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 564
    :sswitch_0
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    .line 565
    goto/16 :goto_2

    .line 556
    :sswitch_1
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    .line 557
    goto/16 :goto_2

    .line 596
    :sswitch_2
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    .line 597
    goto/16 :goto_2

    .line 588
    :sswitch_3
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    .line 589
    goto/16 :goto_2

    .line 612
    :sswitch_4
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    .line 613
    goto/16 :goto_2

    .line 540
    :sswitch_5
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    .line 541
    goto/16 :goto_2

    .line 604
    :sswitch_6
    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    .line 605
    goto/16 :goto_2

    .line 572
    :sswitch_7
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    .line 573
    goto/16 :goto_2

    .line 580
    :sswitch_8
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    .line 581
    goto/16 :goto_2

    .line 524
    :sswitch_9
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    .line 525
    goto/16 :goto_2

    .line 548
    :sswitch_a
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    .line 549
    goto :goto_2

    .line 532
    :sswitch_b
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    .line 533
    goto :goto_2

    .line 516
    :sswitch_c
    int-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    .line 517
    goto :goto_2

    .line 508
    :sswitch_d
    int-to-double v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    .line 509
    goto :goto_2

    .line 560
    :sswitch_e
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    .line 561
    goto :goto_2

    .line 552
    :sswitch_f
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    .line 553
    goto :goto_2

    .line 592
    :sswitch_10
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    .line 593
    goto :goto_2

    .line 584
    :sswitch_11
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    .line 585
    goto :goto_2

    .line 608
    :sswitch_12
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    .line 609
    goto :goto_2

    .line 536
    :sswitch_13
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    .line 537
    goto :goto_2

    .line 600
    :sswitch_14
    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    .line 601
    goto :goto_2

    .line 568
    :sswitch_15
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    .line 569
    goto :goto_2

    .line 576
    :sswitch_16
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    .line 577
    goto :goto_2

    .line 520
    :sswitch_17
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    .line 521
    goto :goto_2

    .line 544
    :sswitch_18
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    .line 545
    goto :goto_2

    .line 528
    :sswitch_19
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    .line 529
    goto :goto_2

    .line 512
    :sswitch_1a
    int-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    .line 513
    goto :goto_2

    .line 504
    :sswitch_1b
    int-to-double v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    .line 505
    nop

    .line 620
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x101 -> :sswitch_1b
        0x102 -> :sswitch_1a
        0x103 -> :sswitch_19
        0x104 -> :sswitch_18
        0x105 -> :sswitch_17
        0x106 -> :sswitch_16
        0x107 -> :sswitch_15
        0x108 -> :sswitch_14
        0x10d -> :sswitch_13
        0x10e -> :sswitch_12
        0x10f -> :sswitch_11
        0x110 -> :sswitch_10
        0x111 -> :sswitch_f
        0x112 -> :sswitch_e
        0x201 -> :sswitch_d
        0x202 -> :sswitch_c
        0x203 -> :sswitch_b
        0x204 -> :sswitch_a
        0x205 -> :sswitch_9
        0x206 -> :sswitch_8
        0x207 -> :sswitch_7
        0x208 -> :sswitch_6
        0x20d -> :sswitch_5
        0x20e -> :sswitch_4
        0x20f -> :sswitch_3
        0x210 -> :sswitch_2
        0x211 -> :sswitch_1
        0x212 -> :sswitch_0
        0x501 -> :sswitch_d
        0x502 -> :sswitch_c
        0x503 -> :sswitch_b
        0x504 -> :sswitch_a
        0x505 -> :sswitch_9
        0x506 -> :sswitch_8
        0x507 -> :sswitch_7
        0x508 -> :sswitch_6
        0x50d -> :sswitch_5
        0x50e -> :sswitch_4
        0x50f -> :sswitch_3
        0x510 -> :sswitch_2
        0x511 -> :sswitch_1
        0x512 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist write(JJ)V
    .locals 6
    .param p1, "fieldId"    # J
    .param p3, "val"    # J

    .line 633
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 634
    long-to-int v0, p1

    .line 636
    .local v0, "id":I
    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    sparse-switch v1, :sswitch_data_0

    .line 751
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to call write(long, long) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 752
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 699
    :sswitch_0
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    .line 700
    goto/16 :goto_2

    .line 691
    :sswitch_1
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    .line 692
    goto/16 :goto_2

    .line 731
    :sswitch_2
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    .line 732
    goto/16 :goto_2

    .line 723
    :sswitch_3
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    .line 724
    goto/16 :goto_2

    .line 747
    :sswitch_4
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    .line 748
    goto/16 :goto_2

    .line 675
    :sswitch_5
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    .line 676
    goto/16 :goto_2

    .line 739
    :sswitch_6
    cmp-long v1, p3, v4

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    .line 740
    goto/16 :goto_2

    .line 707
    :sswitch_7
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    .line 708
    goto/16 :goto_2

    .line 715
    :sswitch_8
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    .line 716
    goto/16 :goto_2

    .line 659
    :sswitch_9
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    .line 660
    goto/16 :goto_2

    .line 683
    :sswitch_a
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    .line 684
    goto :goto_2

    .line 667
    :sswitch_b
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    .line 668
    goto :goto_2

    .line 651
    :sswitch_c
    long-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    .line 652
    goto :goto_2

    .line 643
    :sswitch_d
    long-to-double v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    .line 644
    goto :goto_2

    .line 695
    :sswitch_e
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    .line 696
    goto :goto_2

    .line 687
    :sswitch_f
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    .line 688
    goto :goto_2

    .line 727
    :sswitch_10
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    .line 728
    goto :goto_2

    .line 719
    :sswitch_11
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    .line 720
    goto :goto_2

    .line 743
    :sswitch_12
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    .line 744
    goto :goto_2

    .line 671
    :sswitch_13
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    .line 672
    goto :goto_2

    .line 735
    :sswitch_14
    cmp-long v1, p3, v4

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    .line 736
    goto :goto_2

    .line 703
    :sswitch_15
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    .line 704
    goto :goto_2

    .line 711
    :sswitch_16
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    .line 712
    goto :goto_2

    .line 655
    :sswitch_17
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    .line 656
    goto :goto_2

    .line 679
    :sswitch_18
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    .line 680
    goto :goto_2

    .line 663
    :sswitch_19
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    .line 664
    goto :goto_2

    .line 647
    :sswitch_1a
    long-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    .line 648
    goto :goto_2

    .line 639
    :sswitch_1b
    long-to-double v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    .line 640
    nop

    .line 755
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x101 -> :sswitch_1b
        0x102 -> :sswitch_1a
        0x103 -> :sswitch_19
        0x104 -> :sswitch_18
        0x105 -> :sswitch_17
        0x106 -> :sswitch_16
        0x107 -> :sswitch_15
        0x108 -> :sswitch_14
        0x10d -> :sswitch_13
        0x10e -> :sswitch_12
        0x10f -> :sswitch_11
        0x110 -> :sswitch_10
        0x111 -> :sswitch_f
        0x112 -> :sswitch_e
        0x201 -> :sswitch_d
        0x202 -> :sswitch_c
        0x203 -> :sswitch_b
        0x204 -> :sswitch_a
        0x205 -> :sswitch_9
        0x206 -> :sswitch_8
        0x207 -> :sswitch_7
        0x208 -> :sswitch_6
        0x20d -> :sswitch_5
        0x20e -> :sswitch_4
        0x20f -> :sswitch_3
        0x210 -> :sswitch_2
        0x211 -> :sswitch_1
        0x212 -> :sswitch_0
        0x501 -> :sswitch_d
        0x502 -> :sswitch_c
        0x503 -> :sswitch_b
        0x504 -> :sswitch_a
        0x505 -> :sswitch_9
        0x506 -> :sswitch_8
        0x507 -> :sswitch_7
        0x508 -> :sswitch_6
        0x50d -> :sswitch_5
        0x50e -> :sswitch_4
        0x50f -> :sswitch_3
        0x510 -> :sswitch_2
        0x511 -> :sswitch_1
        0x512 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist write(JLjava/lang/String;)V
    .locals 4
    .param p1, "fieldId"    # J
    .param p3, "val"    # Ljava/lang/String;

    .line 795
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 796
    long-to-int v0, p1

    .line 798
    .local v0, "id":I
    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    sparse-switch v1, :sswitch_data_0

    .line 809
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to call write(long, String) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 810
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 805
    :sswitch_0
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedStringImpl(ILjava/lang/String;)V

    .line 806
    goto :goto_0

    .line 801
    :sswitch_1
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeStringImpl(ILjava/lang/String;)V

    .line 802
    nop

    .line 813
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x109 -> :sswitch_1
        0x209 -> :sswitch_0
        0x509 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist write(JZ)V
    .locals 4
    .param p1, "fieldId"    # J
    .param p3, "val"    # Z

    .line 766
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 767
    long-to-int v0, p1

    .line 769
    .local v0, "id":I
    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    sparse-switch v1, :sswitch_data_0

    .line 780
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to call write(long, boolean) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 781
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 776
    :sswitch_0
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    .line 777
    goto :goto_0

    .line 772
    :sswitch_1
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    .line 773
    nop

    .line 784
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x108 -> :sswitch_1
        0x208 -> :sswitch_0
        0x508 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist write(J[B)V
    .locals 4
    .param p1, "fieldId"    # J
    .param p3, "val"    # [B

    .line 824
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 825
    long-to-int v0, p1

    .line 827
    .local v0, "id":I
    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    sparse-switch v1, :sswitch_data_0

    .line 846
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to call write(long, byte[]) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 847
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 834
    :sswitch_0
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBytesImpl(I[B)V

    .line 835
    goto :goto_0

    .line 842
    :sswitch_1
    invoke-virtual {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedObjectImpl(I[B)V

    .line 843
    goto :goto_0

    .line 830
    :sswitch_2
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeBytesImpl(I[B)V

    .line 831
    goto :goto_0

    .line 838
    :sswitch_3
    invoke-virtual {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeObjectImpl(I[B)V

    .line 839
    nop

    .line 850
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x10b -> :sswitch_3
        0x10c -> :sswitch_2
        0x20b -> :sswitch_1
        0x20c -> :sswitch_0
        0x50b -> :sswitch_1
        0x50c -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist writeBool(JZ)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1762
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1763
    const-wide v0, 0x10800000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1765
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    .line 1766
    return-void
.end method

.method public blacklist writeBytes(J[B)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1897
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1898
    const-wide v0, 0x10c00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1900
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeBytesImpl(I[B)V

    .line 1901
    return-void
.end method

.method public blacklist writeDouble(JD)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 898
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 899
    const-wide v0, 0x10100000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 901
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    .line 902
    return-void
.end method

.method public blacklist writeEnum(JI)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1945
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1946
    const-wide v0, 0x10e00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1948
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    .line 1949
    return-void
.end method

.method public blacklist writeFixed32(JI)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1495
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1496
    const-wide v0, 0x10700000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1498
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    .line 1499
    return-void
.end method

.method public blacklist writeFixed64(JJ)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1562
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1563
    const-wide v0, 0x10600000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1565
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    .line 1566
    return-void
.end method

.method public blacklist writeFloat(JF)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 965
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 966
    const-wide v0, 0x10200000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 968
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    .line 969
    return-void
.end method

.method public blacklist writeInt32(JI)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1055
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1056
    const-wide v0, 0x10500000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1058
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    .line 1059
    return-void
.end method

.method public blacklist writeInt64(JJ)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1136
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1137
    const-wide v0, 0x10300000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1139
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    .line 1140
    return-void
.end method

.method public blacklist writeObject(J[B)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "value"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2144
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2145
    const-wide v0, 0x10b00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 2147
    .local v0, "id":I
    invoke-virtual {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeObjectImpl(I[B)V

    .line 2148
    return-void
.end method

.method greylist-max-o writeObjectImpl(I[B)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "value"    # [B

    .line 2151
    if-eqz p2, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    .line 2152
    array-length v0, p2

    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 2153
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V

    .line 2155
    :cond_0
    return-void
.end method

.method public blacklist writePackedBool(J[Z)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # [Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1803
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1804
    const-wide v0, 0x50800000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1806
    .local v0, "id":I
    if-eqz p3, :cond_0

    array-length v1, p3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1807
    .local v1, "N":I
    :goto_0
    if-lez v1, :cond_1

    .line 1809
    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1812
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1814
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-boolean v4, p3, v2

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 1812
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1817
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public blacklist writePackedDouble(J[D)V
    .locals 6
    .param p1, "fieldId"    # J
    .param p3, "val"    # [D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 938
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 939
    const-wide v0, 0x50100000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 941
    .local v0, "id":I
    if-eqz p3, :cond_0

    array-length v1, p3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 942
    .local v1, "N":I
    :goto_0
    if-lez v1, :cond_1

    .line 943
    mul-int/lit8 v2, v1, 0x8

    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 944
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 945
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v4, p3, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 944
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 948
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public blacklist writePackedEnum(J[I)V
    .locals 6
    .param p1, "fieldId"    # J
    .param p3, "val"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1985
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1986
    const-wide v0, 0x50e00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1988
    .local v0, "id":I
    if-eqz p3, :cond_0

    array-length v1, p3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1989
    .local v1, "N":I
    :goto_0
    if-lez v1, :cond_3

    .line 1990
    const/4 v2, 0x0

    .line 1991
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 1992
    aget v4, p3, v3

    .line 1993
    .local v4, "v":I
    if-ltz v4, :cond_1

    invoke-static {v4}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v5

    goto :goto_2

    :cond_1
    const/16 v5, 0xa

    :goto_2
    add-int/2addr v2, v5

    .line 1991
    .end local v4    # "v":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1995
    .end local v3    # "i":I
    :cond_2
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1996
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v1, :cond_3

    .line 1997
    aget v4, p3, v3

    invoke-direct {p0, v4}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    .line 1996
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2000
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method public blacklist writePackedFixed32(J[I)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1535
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1536
    const-wide v0, 0x50700000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1538
    .local v0, "id":I
    if-eqz p3, :cond_0

    array-length v1, p3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1539
    .local v1, "N":I
    :goto_0
    if-lez v1, :cond_1

    .line 1540
    mul-int/lit8 v2, v1, 0x4

    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1541
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1542
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget v4, p3, v2

    invoke-virtual {v3, v4}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 1541
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1545
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public blacklist writePackedFixed64(J[J)V
    .locals 6
    .param p1, "fieldId"    # J
    .param p3, "val"    # [J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1602
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1603
    const-wide v0, 0x50600000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1605
    .local v0, "id":I
    if-eqz p3, :cond_0

    array-length v1, p3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1606
    .local v1, "N":I
    :goto_0
    if-lez v1, :cond_1

    .line 1607
    mul-int/lit8 v2, v1, 0x8

    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1608
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1609
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v4, p3, v2

    invoke-virtual {v3, v4, v5}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 1608
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1612
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public blacklist writePackedFloat(J[F)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # [F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1005
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1006
    const-wide v0, 0x50200000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1008
    .local v0, "id":I
    if-eqz p3, :cond_0

    array-length v1, p3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1009
    .local v1, "N":I
    :goto_0
    if-lez v1, :cond_1

    .line 1010
    mul-int/lit8 v2, v1, 0x4

    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1011
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1012
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget v4, p3, v2

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 1011
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1015
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public blacklist writePackedInt32(J[I)V
    .locals 6
    .param p1, "fieldId"    # J
    .param p3, "val"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1103
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1104
    const-wide v0, 0x50500000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1106
    .local v0, "id":I
    if-eqz p3, :cond_0

    array-length v1, p3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1107
    .local v1, "N":I
    :goto_0
    if-lez v1, :cond_3

    .line 1108
    const/4 v2, 0x0

    .line 1109
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 1110
    aget v4, p3, v3

    .line 1111
    .local v4, "v":I
    if-ltz v4, :cond_1

    invoke-static {v4}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v5

    goto :goto_2

    :cond_1
    const/16 v5, 0xa

    :goto_2
    add-int/2addr v2, v5

    .line 1109
    .end local v4    # "v":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1113
    .end local v3    # "i":I
    :cond_2
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1114
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v1, :cond_3

    .line 1115
    aget v4, p3, v3

    invoke-direct {p0, v4}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    .line 1114
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1118
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method public blacklist writePackedInt64(J[J)V
    .locals 7
    .param p1, "fieldId"    # J
    .param p3, "val"    # [J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1176
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1177
    const-wide v0, 0x50300000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1179
    .local v0, "id":I
    if-eqz p3, :cond_0

    array-length v1, p3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1180
    .local v1, "N":I
    :goto_0
    if-lez v1, :cond_2

    .line 1181
    const/4 v2, 0x0

    .line 1182
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 1183
    aget-wide v4, p3, v3

    invoke-static {v4, v5}, Landroid/util/proto/EncodedBuffer;->getRawVarint64Size(J)I

    move-result v4

    add-int/2addr v2, v4

    .line 1182
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1185
    .end local v3    # "i":I
    :cond_1
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1186
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v1, :cond_2

    .line 1187
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v5, p3, v3

    invoke-virtual {v4, v5, v6}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 1186
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1190
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method public blacklist writePackedSFixed32(J[I)V
    .locals 5
    .param p1, "fieldId"    # J
    .param p3, "val"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1668
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1669
    const-wide v0, 0x50f00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1671
    .local v0, "id":I
    if-eqz p3, :cond_0

    array-length v1, p3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1672
    .local v1, "N":I
    :goto_0
    if-lez v1, :cond_1

    .line 1673
    mul-int/lit8 v2, v1, 0x4

    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1674
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1675
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget v4, p3, v2

    invoke-virtual {v3, v4}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 1674
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1678
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public blacklist writePackedSFixed64(J[J)V
    .locals 6
    .param p1, "fieldId"    # J
    .param p3, "val"    # [J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1735
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1736
    const-wide v0, 0x51000000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1738
    .local v0, "id":I
    if-eqz p3, :cond_0

    array-length v1, p3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1739
    .local v1, "N":I
    :goto_0
    if-lez v1, :cond_1

    .line 1740
    mul-int/lit8 v2, v1, 0x8

    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1741
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1742
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v4, p3, v2

    invoke-virtual {v3, v4, v5}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 1741
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1745
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public blacklist writePackedSInt32(J[I)V
    .locals 6
    .param p1, "fieldId"    # J
    .param p3, "val"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1392
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1393
    const-wide v0, 0x51100000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1395
    .local v0, "id":I
    if-eqz p3, :cond_0

    array-length v1, p3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1396
    .local v1, "N":I
    :goto_0
    if-lez v1, :cond_2

    .line 1397
    const/4 v2, 0x0

    .line 1398
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 1399
    aget v4, p3, v3

    invoke-static {v4}, Landroid/util/proto/EncodedBuffer;->getRawZigZag32Size(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 1398
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1401
    .end local v3    # "i":I
    :cond_1
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1402
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v1, :cond_2

    .line 1403
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget v5, p3, v3

    invoke-virtual {v4, v5}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag32(I)V

    .line 1402
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1406
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method public blacklist writePackedSInt64(J[J)V
    .locals 7
    .param p1, "fieldId"    # J
    .param p3, "val"    # [J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1464
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1465
    const-wide v0, 0x51200000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1467
    .local v0, "id":I
    if-eqz p3, :cond_0

    array-length v1, p3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1468
    .local v1, "N":I
    :goto_0
    if-lez v1, :cond_2

    .line 1469
    const/4 v2, 0x0

    .line 1470
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 1471
    aget-wide v4, p3, v3

    invoke-static {v4, v5}, Landroid/util/proto/EncodedBuffer;->getRawZigZag64Size(J)I

    move-result v4

    add-int/2addr v2, v4

    .line 1470
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1473
    .end local v3    # "i":I
    :cond_1
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1474
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v1, :cond_2

    .line 1475
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v5, p3, v3

    invoke-virtual {v4, v5, v6}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag64(J)V

    .line 1474
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1478
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method public blacklist writePackedUInt32(J[I)V
    .locals 6
    .param p1, "fieldId"    # J
    .param p3, "val"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1248
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1249
    const-wide v0, 0x50d00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1251
    .local v0, "id":I
    if-eqz p3, :cond_0

    array-length v1, p3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1252
    .local v1, "N":I
    :goto_0
    if-lez v1, :cond_2

    .line 1253
    const/4 v2, 0x0

    .line 1254
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 1255
    aget v4, p3, v3

    invoke-static {v4}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 1254
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1257
    .end local v3    # "i":I
    :cond_1
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1258
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v1, :cond_2

    .line 1259
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget v5, p3, v3

    invoke-virtual {v4, v5}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    .line 1258
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1262
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method public blacklist writePackedUInt64(J[J)V
    .locals 7
    .param p1, "fieldId"    # J
    .param p3, "val"    # [J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1320
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1321
    const-wide v0, 0x50400000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1323
    .local v0, "id":I
    if-eqz p3, :cond_0

    array-length v1, p3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1324
    .local v1, "N":I
    :goto_0
    if-lez v1, :cond_2

    .line 1325
    const/4 v2, 0x0

    .line 1326
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 1327
    aget-wide v4, p3, v3

    invoke-static {v4, v5}, Landroid/util/proto/EncodedBuffer;->getRawVarint64Size(J)I

    move-result v4

    add-int/2addr v2, v4

    .line 1326
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1329
    .end local v3    # "i":I
    :cond_1
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 1330
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v1, :cond_2

    .line 1331
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v5, p3, v3

    invoke-virtual {v4, v5, v6}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 1330
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1334
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method public blacklist writeRepeatedBool(JZ)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1784
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1785
    const-wide v0, 0x20800000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1787
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    .line 1788
    return-void
.end method

.method public blacklist writeRepeatedBytes(J[B)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1918
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1919
    const-wide v0, 0x20c00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1921
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBytesImpl(I[B)V

    .line 1922
    return-void
.end method

.method public blacklist writeRepeatedDouble(JD)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 919
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 920
    const-wide v0, 0x20100000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 922
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    .line 923
    return-void
.end method

.method public blacklist writeRepeatedEnum(JI)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1966
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1967
    const-wide v0, 0x20e00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1969
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    .line 1970
    return-void
.end method

.method public blacklist writeRepeatedFixed32(JI)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1516
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1517
    const-wide v0, 0x20700000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1519
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    .line 1520
    return-void
.end method

.method public blacklist writeRepeatedFixed64(JJ)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1583
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1584
    const-wide v0, 0x20600000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1586
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    .line 1587
    return-void
.end method

.method public blacklist writeRepeatedFloat(JF)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 986
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 987
    const-wide v0, 0x20200000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 989
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    .line 990
    return-void
.end method

.method public blacklist writeRepeatedInt32(JI)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1080
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1081
    const-wide v0, 0x20500000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1083
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    .line 1084
    return-void
.end method

.method public blacklist writeRepeatedInt64(JJ)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1157
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1158
    const-wide v0, 0x20300000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1160
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    .line 1161
    return-void
.end method

.method public blacklist writeRepeatedObject(J[B)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "value"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2165
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2166
    const-wide v0, 0x20b00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 2168
    .local v0, "id":I
    invoke-virtual {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedObjectImpl(I[B)V

    .line 2169
    return-void
.end method

.method greylist-max-o writeRepeatedObjectImpl(I[B)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "value"    # [B

    .line 2172
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p2

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 2173
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V

    .line 2174
    return-void
.end method

.method public blacklist writeRepeatedSFixed32(JI)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1649
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1650
    const-wide v0, 0x20f00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1652
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    .line 1653
    return-void
.end method

.method public blacklist writeRepeatedSFixed64(JJ)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1716
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1717
    const-wide v0, 0x21000000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1719
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    .line 1720
    return-void
.end method

.method public blacklist writeRepeatedSInt32(JI)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1373
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1374
    const-wide v0, 0x21100000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1376
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    .line 1377
    return-void
.end method

.method public blacklist writeRepeatedSInt64(JJ)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1445
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1446
    const-wide v0, 0x21200000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1448
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    .line 1449
    return-void
.end method

.method public blacklist writeRepeatedString(JLjava/lang/String;)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1854
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1855
    const-wide v0, 0x20900000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1857
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedStringImpl(ILjava/lang/String;)V

    .line 1858
    return-void
.end method

.method public blacklist writeRepeatedUInt32(JI)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1229
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1230
    const-wide v0, 0x20d00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1232
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    .line 1233
    return-void
.end method

.method public blacklist writeRepeatedUInt64(JJ)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1301
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1302
    const-wide v0, 0x20400000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1304
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    .line 1305
    return-void
.end method

.method public blacklist writeSFixed32(JI)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1628
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1629
    const-wide v0, 0x10f00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1631
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    .line 1632
    return-void
.end method

.method public blacklist writeSFixed64(JJ)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1695
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1696
    const-wide v0, 0x11000000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1698
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    .line 1699
    return-void
.end method

.method public blacklist writeSInt32(JI)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1352
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1353
    const-wide v0, 0x11100000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1355
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    .line 1356
    return-void
.end method

.method public blacklist writeSInt64(JJ)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1424
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1425
    const-wide v0, 0x11200000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1427
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    .line 1428
    return-void
.end method

.method public blacklist writeString(JLjava/lang/String;)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1834
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1835
    const-wide v0, 0x10900000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1837
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeStringImpl(ILjava/lang/String;)V

    .line 1838
    return-void
.end method

.method public whitelist writeTag(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "wireType"    # I

    .line 2282
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    shl-int/lit8 v1, p1, 0x3

    or-int/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    .line 2283
    return-void
.end method

.method public blacklist writeUInt32(JI)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1208
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1209
    const-wide v0, 0x10d00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1211
    .local v0, "id":I
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    .line 1212
    return-void
.end method

.method public blacklist writeUInt64(JJ)V
    .locals 2
    .param p1, "fieldId"    # J
    .param p3, "val"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1280
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 1281
    const-wide v0, 0x10400000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    .line 1283
    .local v0, "id":I
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    .line 1284
    return-void
.end method
