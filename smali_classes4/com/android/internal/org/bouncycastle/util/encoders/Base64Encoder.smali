.class public Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;
.super Ljava/lang/Object;
.source "Base64Encoder.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/util/encoders/Encoder;


# instance fields
.field protected final blacklist decodingTable:[B

.field protected final blacklist encodingTable:[B

.field protected blacklist padding:B


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    .line 30
    const/16 v0, 0x3d

    iput-byte v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    .line 35
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    .line 52
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->initialiseDecodingTable()V

    .line 53
    return-void

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method private blacklist decodeLastBlock(Ljava/io/OutputStream;CCCC)I
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "c1"    # C
    .param p3, "c2"    # C
    .param p4, "c3"    # C
    .param p5, "c4"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    iget-byte v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    const-string v1, "invalid characters encountered at end of base64 data"

    if-ne p4, v0, :cond_2

    .line 344
    if-ne p5, v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v2, v0, p2

    .line 350
    .local v2, "b1":B
    aget-byte v0, v0, p3

    .line 352
    .local v0, "b2":B
    or-int v3, v2, v0

    if-ltz v3, :cond_0

    .line 357
    shl-int/lit8 v1, v2, 0x2

    shr-int/lit8 v3, v0, 0x4

    or-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 359
    const/4 v1, 0x1

    return v1

    .line 354
    :cond_0
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 346
    .end local v0    # "b2":B
    .end local v2    # "b1":B
    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_2
    if-ne p5, v0, :cond_4

    .line 363
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v2, v0, p2

    .line 364
    .restart local v2    # "b1":B
    aget-byte v3, v0, p3

    .line 365
    .local v3, "b2":B
    aget-byte v0, v0, p4

    .line 367
    .local v0, "b3":B
    or-int v4, v2, v3

    or-int/2addr v4, v0

    if-ltz v4, :cond_3

    .line 372
    shl-int/lit8 v1, v2, 0x2

    shr-int/lit8 v4, v3, 0x4

    or-int/2addr v1, v4

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 373
    shl-int/lit8 v1, v3, 0x4

    shr-int/lit8 v4, v0, 0x2

    or-int/2addr v1, v4

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 375
    const/4 v1, 0x2

    return v1

    .line 369
    :cond_3
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 379
    .end local v0    # "b3":B
    .end local v2    # "b1":B
    .end local v3    # "b2":B
    :cond_4
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v2, v0, p2

    .line 380
    .restart local v2    # "b1":B
    aget-byte v3, v0, p3

    .line 381
    .restart local v3    # "b2":B
    aget-byte v4, v0, p4

    .line 382
    .local v4, "b3":B
    aget-byte v0, v0, p5

    .line 384
    .local v0, "b4":B
    or-int v5, v2, v3

    or-int/2addr v5, v4

    or-int/2addr v5, v0

    if-ltz v5, :cond_5

    .line 389
    shl-int/lit8 v1, v2, 0x2

    shr-int/lit8 v5, v3, 0x4

    or-int/2addr v1, v5

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 390
    shl-int/lit8 v1, v3, 0x4

    shr-int/lit8 v5, v4, 0x2

    or-int/2addr v1, v5

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 391
    shl-int/lit8 v1, v4, 0x6

    or-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 393
    const/4 v1, 0x3

    return v1

    .line 386
    :cond_5
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private blacklist ignore(C)Z
    .locals 1
    .param p1, "c"    # C

    .line 124
    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private blacklist nextI(Ljava/lang/String;II)I
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "finish"    # I

    .line 399
    :goto_0
    if-ge p2, p3, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 403
    :cond_0
    return p2
.end method

.method private blacklist nextI([BII)I
    .locals 1
    .param p1, "data"    # [B
    .param p2, "i"    # I
    .param p3, "finish"    # I

    .line 231
    :goto_0
    if-ge p2, p3, :cond_0

    aget-byte v0, p1, p2

    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 235
    :cond_0
    return p2
.end method


# virtual methods
.method public blacklist decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    .locals 20
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const/16 v0, 0x36

    new-array v9, v0, [B

    .line 251
    .local v9, "outBuffer":[B
    const/4 v0, 0x0

    .line 252
    .local v0, "bufOff":I
    const/4 v1, 0x0

    .line 254
    .local v1, "length":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    move v10, v2

    .line 256
    .local v10, "end":I
    :goto_0
    if-lez v10, :cond_1

    .line 258
    add-int/lit8 v2, v10, -0x1

    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {v6, v2}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 260
    goto :goto_1

    .line 263
    :cond_0
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 267
    :cond_1
    :goto_1
    const/4 v2, 0x0

    if-nez v10, :cond_2

    .line 269
    return v2

    .line 272
    :cond_2
    const/4 v3, 0x0

    .line 273
    .local v3, "i":I
    move v4, v10

    move v11, v4

    .line 275
    .local v11, "finish":I
    :goto_2
    if-lez v11, :cond_4

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    .line 277
    add-int/lit8 v4, v11, -0x1

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {v6, v4}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v4

    if-nez v4, :cond_3

    .line 279
    add-int/lit8 v3, v3, 0x1

    .line 282
    :cond_3
    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    .line 285
    :cond_4
    invoke-direct {v6, v7, v2, v11}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v3

    move v12, v0

    move v13, v1

    move v14, v3

    .line 287
    .end local v0    # "bufOff":I
    .end local v1    # "length":I
    .end local v3    # "i":I
    .local v12, "bufOff":I
    .local v13, "length":I
    .local v14, "i":I
    :goto_3
    if-ge v14, v11, :cond_7

    .line 289
    iget-object v0, v6, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v1, v14, 0x1

    .end local v14    # "i":I
    .local v1, "i":I
    invoke-virtual {v7, v14}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v0, v0, v3

    .line 291
    .local v0, "b1":B
    invoke-direct {v6, v7, v1, v11}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v1

    .line 293
    iget-object v3, v6, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget-byte v1, v3, v1

    .line 295
    .local v1, "b2":B
    invoke-direct {v6, v7, v4, v11}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v3

    .line 297
    .end local v4    # "i":I
    .restart local v3    # "i":I
    iget-object v4, v6, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .local v5, "i":I
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v3, v4, v3

    .line 299
    .local v3, "b3":B
    invoke-direct {v6, v7, v5, v11}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v4

    .line 301
    .end local v5    # "i":I
    .restart local v4    # "i":I
    iget-object v5, v6, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v14, v4, 0x1

    .end local v4    # "i":I
    .restart local v14    # "i":I
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-byte v4, v5, v4

    .line 303
    .local v4, "b4":B
    or-int v5, v0, v1

    or-int/2addr v5, v3

    or-int/2addr v5, v4

    if-ltz v5, :cond_6

    .line 308
    add-int/lit8 v5, v12, 0x1

    .end local v12    # "bufOff":I
    .local v5, "bufOff":I
    shl-int/lit8 v15, v0, 0x2

    shr-int/lit8 v16, v1, 0x4

    or-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v9, v12

    .line 309
    add-int/lit8 v12, v5, 0x1

    .end local v5    # "bufOff":I
    .restart local v12    # "bufOff":I
    shl-int/lit8 v15, v1, 0x4

    shr-int/lit8 v16, v3, 0x2

    or-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v9, v5

    .line 310
    add-int/lit8 v5, v12, 0x1

    .end local v12    # "bufOff":I
    .restart local v5    # "bufOff":I
    shl-int/lit8 v15, v3, 0x6

    or-int/2addr v15, v4

    int-to-byte v15, v15

    aput-byte v15, v9, v12

    .line 312
    add-int/lit8 v13, v13, 0x3

    .line 313
    array-length v12, v9

    if-ne v5, v12, :cond_5

    .line 315
    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write([B)V

    .line 316
    const/4 v5, 0x0

    move v12, v5

    goto :goto_4

    .line 313
    :cond_5
    move v12, v5

    .line 319
    .end local v5    # "bufOff":I
    .restart local v12    # "bufOff":I
    :goto_4
    invoke-direct {v6, v7, v14, v11}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v14

    goto :goto_3

    .line 305
    :cond_6
    new-instance v2, Ljava/io/IOException;

    const-string v5, "invalid characters encountered in base64 data"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 322
    .end local v0    # "b1":B
    .end local v1    # "b2":B
    .end local v3    # "b3":B
    .end local v4    # "b4":B
    :cond_7
    if-lez v12, :cond_8

    .line 324
    invoke-virtual {v8, v9, v2, v12}, Ljava/io/OutputStream;->write([BII)V

    .line 327
    :cond_8
    invoke-direct {v6, v7, v14, v10}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v15

    .line 328
    .local v15, "e0":I
    add-int/lit8 v0, v15, 0x1

    invoke-direct {v6, v7, v0, v10}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v5

    .line 329
    .local v5, "e1":I
    add-int/lit8 v0, v5, 0x1

    invoke-direct {v6, v7, v0, v10}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v4

    .line 330
    .local v4, "e2":I
    add-int/lit8 v0, v4, 0x1

    invoke-direct {v6, v7, v0, v10}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v3

    .line 332
    .local v3, "e3":I
    invoke-virtual {v7, v15}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v16

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v19, v3

    .end local v3    # "e3":I
    .local v19, "e3":I
    move/from16 v3, v16

    move/from16 v16, v4

    .end local v4    # "e2":I
    .local v16, "e2":I
    move/from16 v4, v17

    move/from16 v17, v5

    .end local v5    # "e1":I
    .local v17, "e1":I
    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodeLastBlock(Ljava/io/OutputStream;CCCC)I

    move-result v0

    add-int/2addr v13, v0

    .line 334
    return v13
.end method

.method public blacklist decode([BIILjava/io/OutputStream;)I
    .locals 20
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "length"    # I
    .param p4, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p4

    const/16 v0, 0x36

    new-array v10, v0, [B

    .line 142
    .local v10, "outBuffer":[B
    const/4 v0, 0x0

    .line 143
    .local v0, "bufOff":I
    const/4 v1, 0x0

    .line 145
    .local v1, "outLen":I
    add-int v2, v8, p3

    move v11, v2

    .line 147
    .local v11, "end":I
    :goto_0
    if-le v11, v8, :cond_1

    .line 149
    add-int/lit8 v2, v11, -0x1

    aget-byte v2, v7, v2

    int-to-char v2, v2

    invoke-direct {v6, v2}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 151
    goto :goto_1

    .line 154
    :cond_0
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 158
    :cond_1
    :goto_1
    const/4 v2, 0x0

    if-nez v11, :cond_2

    .line 160
    return v2

    .line 163
    :cond_2
    const/4 v3, 0x0

    .line 164
    .local v3, "i":I
    move v4, v11

    move v12, v4

    .line 166
    .local v12, "finish":I
    :goto_2
    if-le v12, v8, :cond_4

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    .line 168
    add-int/lit8 v4, v12, -0x1

    aget-byte v4, v7, v4

    int-to-char v4, v4

    invoke-direct {v6, v4}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v4

    if-nez v4, :cond_3

    .line 170
    add-int/lit8 v3, v3, 0x1

    .line 173
    :cond_3
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    .line 176
    :cond_4
    invoke-direct {v6, v7, v8, v12}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v3

    move v13, v0

    move v14, v1

    move v15, v3

    .line 178
    .end local v0    # "bufOff":I
    .end local v1    # "outLen":I
    .end local v3    # "i":I
    .local v13, "bufOff":I
    .local v14, "outLen":I
    .local v15, "i":I
    :goto_3
    if-ge v15, v12, :cond_7

    .line 180
    iget-object v0, v6, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v1, v15, 0x1

    .end local v15    # "i":I
    .local v1, "i":I
    aget-byte v3, v7, v15

    aget-byte v0, v0, v3

    .line 182
    .local v0, "b1":B
    invoke-direct {v6, v7, v1, v12}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v1

    .line 184
    iget-object v3, v6, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    aget-byte v1, v7, v1

    aget-byte v1, v3, v1

    .line 186
    .local v1, "b2":B
    invoke-direct {v6, v7, v4, v12}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v3

    .line 188
    .end local v4    # "i":I
    .restart local v3    # "i":I
    iget-object v4, v6, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .local v5, "i":I
    aget-byte v3, v7, v3

    aget-byte v3, v4, v3

    .line 190
    .local v3, "b3":B
    invoke-direct {v6, v7, v5, v12}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v4

    .line 192
    .end local v5    # "i":I
    .restart local v4    # "i":I
    iget-object v5, v6, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v15, v4, 0x1

    .end local v4    # "i":I
    .restart local v15    # "i":I
    aget-byte v4, v7, v4

    aget-byte v4, v5, v4

    .line 194
    .local v4, "b4":B
    or-int v5, v0, v1

    or-int/2addr v5, v3

    or-int/2addr v5, v4

    if-ltz v5, :cond_6

    .line 199
    add-int/lit8 v5, v13, 0x1

    .end local v13    # "bufOff":I
    .local v5, "bufOff":I
    shl-int/lit8 v16, v0, 0x2

    shr-int/lit8 v17, v1, 0x4

    or-int v2, v16, v17

    int-to-byte v2, v2

    aput-byte v2, v10, v13

    .line 200
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "bufOff":I
    .local v2, "bufOff":I
    shl-int/lit8 v13, v1, 0x4

    shr-int/lit8 v16, v3, 0x2

    or-int v13, v13, v16

    int-to-byte v13, v13

    aput-byte v13, v10, v5

    .line 201
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "bufOff":I
    .restart local v5    # "bufOff":I
    shl-int/lit8 v13, v3, 0x6

    or-int/2addr v13, v4

    int-to-byte v13, v13

    aput-byte v13, v10, v2

    .line 203
    array-length v2, v10

    if-ne v5, v2, :cond_5

    .line 205
    invoke-virtual {v9, v10}, Ljava/io/OutputStream;->write([B)V

    .line 206
    const/4 v2, 0x0

    move v13, v2

    .end local v5    # "bufOff":I
    .restart local v2    # "bufOff":I
    goto :goto_4

    .line 203
    .end local v2    # "bufOff":I
    .restart local v5    # "bufOff":I
    :cond_5
    move v13, v5

    .line 209
    .end local v5    # "bufOff":I
    .restart local v13    # "bufOff":I
    :goto_4
    add-int/lit8 v14, v14, 0x3

    .line 211
    invoke-direct {v6, v7, v15, v12}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v15

    const/4 v2, 0x0

    goto :goto_3

    .line 196
    :cond_6
    new-instance v2, Ljava/io/IOException;

    const-string v5, "invalid characters encountered in base64 data"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 214
    .end local v0    # "b1":B
    .end local v1    # "b2":B
    .end local v3    # "b3":B
    .end local v4    # "b4":B
    :cond_7
    if-lez v13, :cond_8

    .line 216
    const/4 v0, 0x0

    invoke-virtual {v9, v10, v0, v13}, Ljava/io/OutputStream;->write([BII)V

    .line 219
    :cond_8
    invoke-direct {v6, v7, v15, v11}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v16

    .line 220
    .local v16, "e0":I
    add-int/lit8 v0, v16, 0x1

    invoke-direct {v6, v7, v0, v11}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v17

    .line 221
    .local v17, "e1":I
    add-int/lit8 v0, v17, 0x1

    invoke-direct {v6, v7, v0, v11}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v18

    .line 222
    .local v18, "e2":I
    add-int/lit8 v0, v18, 0x1

    invoke-direct {v6, v7, v0, v11}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v19

    .line 224
    .local v19, "e3":I
    aget-byte v0, v7, v16

    int-to-char v2, v0

    aget-byte v0, v7, v17

    int-to-char v3, v0

    aget-byte v0, v7, v18

    int-to-char v4, v0

    aget-byte v0, v7, v19

    int-to-char v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodeLastBlock(Ljava/io/OutputStream;CCCC)I

    move-result v0

    add-int/2addr v14, v0

    .line 226
    return v14
.end method

.method public blacklist encode([BIILjava/io/OutputStream;)I
    .locals 8
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    const/16 v0, 0x48

    new-array v0, v0, [B

    .line 110
    .local v0, "tmp":[B
    :goto_0
    if-lez p3, :cond_0

    .line 112
    const/16 v1, 0x36

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 113
    .local v7, "inLen":I
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, v7

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->encode([BII[BI)I

    move-result v1

    .line 114
    .local v1, "outLen":I
    const/4 v2, 0x0

    invoke-virtual {p4, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 115
    add-int/2addr p2, v7

    .line 116
    sub-int/2addr p3, v7

    .line 117
    .end local v1    # "outLen":I
    .end local v7    # "inLen":I
    goto :goto_0

    .line 118
    :cond_0
    add-int/lit8 v1, p3, 0x2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    return v1
.end method

.method public blacklist encode([BII[BI)I
    .locals 10
    .param p1, "inBuf"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .param p4, "outBuf"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    move v0, p2

    .line 58
    .local v0, "inPos":I
    add-int v1, p2, p3

    add-int/lit8 v1, v1, -0x2

    .line 59
    .local v1, "inEnd":I
    move v2, p5

    .line 61
    .local v2, "outPos":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 63
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "inPos":I
    .local v3, "inPos":I
    aget-byte v0, p1, v0

    .line 64
    .local v0, "a1":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "inPos":I
    .local v4, "inPos":I
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 65
    .local v3, "a2":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "inPos":I
    .local v5, "inPos":I
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    .line 67
    .local v4, "a3":I
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "outPos":I
    .local v6, "outPos":I
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    ushr-int/lit8 v8, v0, 0x2

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v7, v8

    aput-byte v8, p4, v2

    .line 68
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "outPos":I
    .restart local v2    # "outPos":I
    shl-int/lit8 v8, v0, 0x4

    ushr-int/lit8 v9, v3, 0x4

    or-int/2addr v8, v9

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v7, v8

    aput-byte v8, p4, v6

    .line 69
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "outPos":I
    .restart local v6    # "outPos":I
    shl-int/lit8 v8, v3, 0x2

    ushr-int/lit8 v9, v4, 0x6

    or-int/2addr v8, v9

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v7, v8

    aput-byte v8, p4, v2

    .line 70
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "outPos":I
    .restart local v2    # "outPos":I
    and-int/lit8 v8, v4, 0x3f

    aget-byte v7, v7, v8

    aput-byte v7, p4, v6

    .line 71
    .end local v0    # "a1":I
    .end local v3    # "a2":I
    .end local v4    # "a3":I
    move v0, v5

    goto :goto_0

    .line 73
    .end local v5    # "inPos":I
    .local v0, "inPos":I
    :cond_0
    sub-int v3, v0, p2

    sub-int v3, p3, v3

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 87
    :pswitch_0
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "inPos":I
    .local v3, "inPos":I
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 88
    .local v0, "a1":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "inPos":I
    .local v4, "inPos":I
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 90
    .local v3, "a2":I
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "outPos":I
    .local v5, "outPos":I
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    ushr-int/lit8 v7, v0, 0x2

    and-int/lit8 v7, v7, 0x3f

    aget-byte v7, v6, v7

    aput-byte v7, p4, v2

    .line 91
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "outPos":I
    .restart local v2    # "outPos":I
    shl-int/lit8 v7, v0, 0x4

    ushr-int/lit8 v8, v3, 0x4

    or-int/2addr v7, v8

    and-int/lit8 v7, v7, 0x3f

    aget-byte v7, v6, v7

    aput-byte v7, p4, v5

    .line 92
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "outPos":I
    .restart local v5    # "outPos":I
    shl-int/lit8 v7, v3, 0x2

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, p4, v2

    .line 93
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "outPos":I
    .restart local v2    # "outPos":I
    iget-byte v6, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    aput-byte v6, p4, v5

    .line 94
    move v0, v4

    goto :goto_1

    .line 77
    .end local v3    # "a2":I
    .end local v4    # "inPos":I
    .local v0, "inPos":I
    :pswitch_1
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "inPos":I
    .local v3, "inPos":I
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 79
    .local v0, "a1":I
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "outPos":I
    .local v4, "outPos":I
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    ushr-int/lit8 v6, v0, 0x2

    and-int/lit8 v6, v6, 0x3f

    aget-byte v6, v5, v6

    aput-byte v6, p4, v2

    .line 80
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "outPos":I
    .restart local v2    # "outPos":I
    shl-int/lit8 v6, v0, 0x4

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, p4, v4

    .line 81
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "outPos":I
    .restart local v4    # "outPos":I
    iget-byte v5, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    aput-byte v5, p4, v2

    .line 82
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "outPos":I
    .restart local v2    # "outPos":I
    aput-byte v5, p4, v4

    .line 83
    move v0, v3

    .line 98
    .end local v3    # "inPos":I
    .local v0, "inPos":I
    :goto_1
    sub-int v3, v2, p5

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected blacklist initialiseDecodingTable()V
    .locals 4

    .line 39
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 41
    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 46
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v1, v1, v0

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 48
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
