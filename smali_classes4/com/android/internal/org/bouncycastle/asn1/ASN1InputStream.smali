.class public Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
.super Ljava/io/FilterInputStream;
.source "ASN1InputStream.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/BERTags;


# instance fields
.field private final blacklist lazyEvaluate:Z

.field private final blacklist limit:I

.field private final blacklist tmpBuffers:[[B


# direct methods
.method public constructor blacklist <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .line 31
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/StreamUtil;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 32
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "limit"    # I

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 71
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;IZ)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "limit"    # I
    .param p3, "lazyEvaluate"    # Z

    .line 100
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 101
    iput p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    .line 102
    iput-boolean p3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    .line 103
    const/16 v0, 0xb

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->tmpBuffers:[[B

    .line 104
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;Z)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "lazyEvaluate"    # Z

    .line 84
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/StreamUtil;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 85
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .locals 2
    .param p1, "input"    # [B

    .line 43
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 44
    return-void
.end method

.method public constructor blacklist <init>([BZ)V
    .locals 2
    .param p1, "input"    # [B
    .param p2, "lazyEvaluate"    # Z

    .line 57
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 58
    return-void
.end method

.method static blacklist createPrimitiveDERObject(ILcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 3
    .param p0, "tagNo"    # I
    .param p1, "defIn"    # Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;
    .param p2, "tmpBuffers"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 462
    packed-switch p0, :pswitch_data_0

    .line 505
    :pswitch_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " encountered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :pswitch_1
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->getBMPCharBuffer(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)[C

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;-><init>([C)V

    return-object v0

    .line 493
    :pswitch_2
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;-><init>([B)V

    return-object v0

    .line 475
    :pswitch_3
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralString;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralString;-><init>([B)V

    return-object v0

    .line 499
    :pswitch_4
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERVisibleString;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERVisibleString;-><init>([B)V

    return-object v0

    .line 501
    :pswitch_5
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERGraphicString;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERGraphicString;-><init>([B)V

    return-object v0

    .line 473
    :pswitch_6
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;-><init>([B)V

    return-object v0

    .line 495
    :pswitch_7
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;-><init>([B)V

    return-object v0

    .line 477
    :pswitch_8
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;-><init>([B)V

    return-object v0

    .line 503
    :pswitch_9
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERVideotexString;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERVideotexString;-><init>([B)V

    return-object v0

    .line 491
    :pswitch_a
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERT61String;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERT61String;-><init>([B)V

    return-object v0

    .line 489
    :pswitch_b
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERPrintableString;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERPrintableString;-><init>([B)V

    return-object v0

    .line 483
    :pswitch_c
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERNumericString;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERNumericString;-><init>([B)V

    return-object v0

    .line 497
    :pswitch_d
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERUTF8String;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERUTF8String;-><init>([B)V

    return-object v0

    .line 471
    :pswitch_e
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->getBuffer(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->fromOctetString([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v0

    return-object v0

    .line 485
    :pswitch_f
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->getBuffer(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->fromOctetString([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0

    .line 481
    :pswitch_10
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    return-object v0

    .line 487
    :pswitch_11
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0

    .line 465
    :pswitch_12
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->fromInputStream(ILjava/io/InputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    return-object v0

    .line 479
    :pswitch_13
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>([BZ)V

    return-object v0

    .line 469
    :pswitch_14
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->getBuffer(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->fromOctetString([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static blacklist getBMPCharBuffer(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)[C
    .locals 10
    .param p0, "defIn"    # Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    .line 408
    .local v0, "remainingBytes":I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_6

    .line 413
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [C

    .line 414
    .local v1, "string":[C
    const/4 v2, 0x0

    .line 416
    .local v2, "stringPos":I
    const/16 v3, 0x8

    new-array v4, v3, [B

    .line 417
    .local v4, "buf":[B
    :goto_0
    const-string v5, "EOF encountered in middle of BMPString"

    const/4 v6, 0x0

    if-lt v0, v3, :cond_1

    .line 419
    invoke-static {p0, v4, v6, v3}, Lcom/android/internal/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    move-result v7

    if-ne v7, v3, :cond_0

    .line 424
    aget-byte v5, v4, v6

    shl-int/2addr v5, v3

    const/4 v6, 0x1

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v1, v2

    .line 425
    add-int/lit8 v5, v2, 0x1

    const/4 v6, 0x2

    aget-byte v6, v4, v6

    shl-int/2addr v6, v3

    const/4 v7, 0x3

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v5

    .line 426
    add-int/lit8 v5, v2, 0x2

    const/4 v6, 0x4

    aget-byte v6, v4, v6

    shl-int/2addr v6, v3

    const/4 v7, 0x5

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v5

    .line 427
    add-int/lit8 v5, v2, 0x3

    const/4 v6, 0x6

    aget-byte v6, v4, v6

    shl-int/2addr v6, v3

    const/4 v7, 0x7

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v5

    .line 428
    add-int/lit8 v2, v2, 0x4

    .line 429
    add-int/lit8 v0, v0, -0x8

    goto :goto_0

    .line 421
    :cond_0
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 431
    :cond_1
    if-lez v0, :cond_4

    .line 433
    invoke-static {p0, v4, v6, v0}, Lcom/android/internal/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    move-result v6

    if-ne v6, v0, :cond_3

    .line 438
    const/4 v5, 0x0

    .line 441
    .local v5, "bufPos":I
    :goto_1
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufPos":I
    .local v6, "bufPos":I
    aget-byte v5, v4, v5

    shl-int/2addr v5, v3

    .line 442
    .local v5, "b1":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "bufPos":I
    .local v7, "bufPos":I
    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    .line 443
    .local v6, "b2":I
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "stringPos":I
    .local v8, "stringPos":I
    or-int v9, v5, v6

    int-to-char v9, v9

    aput-char v9, v1, v2

    .line 445
    .end local v5    # "b1":I
    .end local v6    # "b2":I
    if-lt v7, v0, :cond_2

    move v2, v8

    goto :goto_2

    :cond_2
    move v5, v7

    move v2, v8

    goto :goto_1

    .line 435
    .end local v7    # "bufPos":I
    .end local v8    # "stringPos":I
    .restart local v2    # "stringPos":I
    :cond_3
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 448
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v3

    if-nez v3, :cond_5

    array-length v3, v1

    if-ne v3, v2, :cond_5

    .line 453
    return-object v1

    .line 450
    :cond_5
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 410
    .end local v1    # "string":[C
    .end local v2    # "stringPos":I
    .end local v4    # "buf":[B
    :cond_6
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "malformed BMPString encoding encountered"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist getBuffer(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B
    .locals 3
    .param p0, "defIn"    # Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;
    .param p1, "tmpBuffers"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 387
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    .line 388
    .local v0, "len":I
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 393
    :cond_0
    aget-object v1, p1, v0

    .line 394
    .local v1, "buf":[B
    if-nez v1, :cond_1

    .line 396
    new-array v2, v0, [B

    aput-object v2, p1, v0

    move-object v1, v2

    .line 399
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->readAllIntoByteArray([B)V

    .line 401
    return-object v1
.end method

.method static blacklist readLength(Ljava/io/InputStream;IZ)I
    .locals 6
    .param p0, "s"    # Ljava/io/InputStream;
    .param p1, "limit"    # I
    .param p2, "isParsing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 337
    .local v0, "length":I
    if-ltz v0, :cond_7

    .line 342
    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 344
    const/4 v1, -0x1

    return v1

    .line 347
    :cond_0
    const/16 v1, 0x7f

    if-le v0, v1, :cond_6

    .line 349
    and-int/lit8 v1, v0, 0x7f

    .line 352
    .local v1, "size":I
    const/4 v2, 0x4

    if-gt v1, v2, :cond_5

    .line 357
    const/4 v0, 0x0

    .line 358
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 360
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 362
    .local v3, "next":I
    if-ltz v3, :cond_1

    .line 367
    shl-int/lit8 v4, v0, 0x8

    add-int v0, v4, v3

    .line 358
    .end local v3    # "next":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 364
    .restart local v3    # "next":I
    :cond_1
    new-instance v4, Ljava/io/EOFException;

    const-string v5, "EOF found reading length"

    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 370
    .end local v2    # "i":I
    .end local v3    # "next":I
    :cond_2
    if-ltz v0, :cond_4

    .line 375
    if-lt v0, p1, :cond_6

    if-eqz p2, :cond_3

    goto :goto_1

    .line 377
    :cond_3
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "corrupted stream - out of bounds length found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " >= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 372
    :cond_4
    new-instance v2, Ljava/io/IOException;

    const-string v3, "corrupted stream - negative length found"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 354
    :cond_5
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DER length more than 4 bytes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 381
    .end local v1    # "size":I
    :cond_6
    :goto_1
    return v0

    .line 339
    :cond_7
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "EOF found when length expected"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static blacklist readTagNumber(Ljava/io/InputStream;I)I
    .locals 4
    .param p0, "s"    # Ljava/io/InputStream;
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    and-int/lit8 v0, p1, 0x1f

    .line 302
    .local v0, "tagNo":I
    const/16 v1, 0x1f

    if-ne v0, v1, :cond_3

    .line 304
    const/4 v0, 0x0

    .line 306
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 310
    .local v1, "b":I
    and-int/lit8 v2, v1, 0x7f

    if-eqz v2, :cond_2

    .line 315
    :goto_0
    if-ltz v1, :cond_0

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    .line 317
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    .line 318
    shl-int/lit8 v0, v0, 0x7

    .line 319
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    goto :goto_0

    .line 322
    :cond_0
    if-ltz v1, :cond_1

    .line 327
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    goto :goto_1

    .line 324
    :cond_1
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "EOF found inside tag value."

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 312
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "corrupted stream - invalid high tag number found"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 330
    .end local v1    # "b":I
    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method protected blacklist buildObject(III)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 9
    .param p1, "tag"    # I
    .param p2, "tagNo"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 144
    .local v0, "isConstructed":Z
    :goto_0
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v1, p0, p3, v2}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;II)V

    .line 146
    .local v1, "defIn":Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;
    and-int/lit8 v2, p1, 0x40

    if-eqz v2, :cond_1

    .line 148
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DLApplicationSpecific;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v0, p2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DLApplicationSpecific;-><init>(ZI[B)V

    return-object v2

    .line 151
    :cond_1
    and-int/lit16 v2, p1, 0x80

    if-eqz v2, :cond_2

    .line 153
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2, v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->readTaggedObject(ZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    return-object v2

    .line 156
    :cond_2
    if-eqz v0, :cond_6

    .line 159
    sparse-switch p2, :sswitch_data_0

    .line 196
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " encountered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 192
    :sswitch_0
    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readVector(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/DLFactory;->createSet(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    return-object v2

    .line 183
    :sswitch_1
    iget-boolean v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    if-eqz v2, :cond_3

    .line 185
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;-><init>([B)V

    return-object v2

    .line 189
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readVector(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/DLFactory;->createSequence(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    return-object v2

    .line 194
    :sswitch_2
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DLExternal;

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readVector(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DLExternal;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v2

    .line 165
    :sswitch_3
    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readVector(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    .line 166
    .local v2, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 168
    .local v3, "strings":[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v3

    if-eq v4, v5, :cond_5

    .line 170
    invoke-virtual {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    .line 171
    .local v5, "asn1Obj":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    instance-of v6, v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v6, :cond_4

    .line 173
    move-object v6, v5

    check-cast v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    aput-object v6, v3, v4

    .line 168
    .end local v5    # "asn1Obj":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 177
    .restart local v5    # "asn1Obj":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :cond_4
    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unknown object encountered in constructed OCTET STRING: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 181
    .end local v4    # "i":I
    .end local v5    # "asn1Obj":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :cond_5
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;

    invoke-direct {v4, v3}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V

    return-object v4

    .line 200
    .end local v2    # "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v3    # "strings":[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    :cond_6
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->tmpBuffers:[[B

    invoke-static {p2, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->createPrimitiveDERObject(ILcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    return-object v2

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x8 -> :sswitch_2
        0x10 -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method blacklist getLimit()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    return v0
.end method

.method protected blacklist readFully([B)V
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v0

    array-length v1, p1

    if-ne v0, v1, :cond_0

    .line 125
    return-void

    .line 123
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF encountered in middle of object"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist readLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readLength(Ljava/io/InputStream;IZ)I

    move-result v0

    return v0
.end method

.method public blacklist readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->read()I

    move-result v0

    .line 224
    .local v0, "tag":I
    if-gtz v0, :cond_1

    .line 226
    if-eqz v0, :cond_0

    .line 231
    const/4 v1, 0x0

    return-object v1

    .line 228
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "unexpected end-of-contents marker"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    :cond_1
    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readTagNumber(Ljava/io/InputStream;I)I

    move-result v1

    .line 239
    .local v1, "tagNo":I
    and-int/lit8 v2, v0, 0x20

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 244
    .local v2, "isConstructed":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readLength()I

    move-result v4

    .line 246
    .local v4, "length":I
    if-gez v4, :cond_6

    .line 248
    if-eqz v2, :cond_5

    .line 253
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    iget v6, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v5, p0, v6}, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 254
    .local v5, "indIn":Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;
    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    iget v7, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v6, v5, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    .line 256
    .local v6, "sp":Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_3

    .line 258
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/BERApplicationSpecificParser;

    invoke-direct {v3, v1, v6}, Lcom/android/internal/org/bouncycastle/asn1/BERApplicationSpecificParser;-><init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/BERApplicationSpecificParser;->getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    return-object v3

    .line 261
    :cond_3
    and-int/lit16 v7, v0, 0x80

    if-eqz v7, :cond_4

    .line 263
    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;

    invoke-direct {v7, v3, v1, v6}, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    return-object v3

    .line 267
    :cond_4
    sparse-switch v1, :sswitch_data_0

    .line 278
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v7, "unknown BER object encountered"

    invoke-direct {v3, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 274
    :sswitch_0
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/BERSetParser;

    invoke-direct {v3, v6}, Lcom/android/internal/org/bouncycastle/asn1/BERSetParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/BERSetParser;->getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    return-object v3

    .line 272
    :sswitch_1
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/BERSequenceParser;

    invoke-direct {v3, v6}, Lcom/android/internal/org/bouncycastle/asn1/BERSequenceParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/BERSequenceParser;->getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    return-object v3

    .line 276
    :sswitch_2
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERExternalParser;

    invoke-direct {v3, v6}, Lcom/android/internal/org/bouncycastle/asn1/DERExternalParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/DERExternalParser;->getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    return-object v3

    .line 270
    :sswitch_3
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringParser;

    invoke-direct {v3, v6}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringParser;->getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    return-object v3

    .line 250
    .end local v5    # "indIn":Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;
    .end local v6    # "sp":Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;
    :cond_5
    new-instance v3, Ljava/io/IOException;

    const-string v5, "indefinite-length primitive encoding encountered"

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 285
    :cond_6
    :try_start_0
    invoke-virtual {p0, v0, v1, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->buildObject(III)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 287
    :catch_0
    move-exception v3

    .line 289
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;

    const-string v6, "corrupted stream detected"

    invoke-direct {v5, v6, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x8 -> :sswitch_2
        0x10 -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method blacklist readVector(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .locals 4
    .param p1, "dIn"    # Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 207
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    return-object v0

    .line 210
    :cond_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 211
    .local v0, "subStream":Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 213
    .local v1, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    move-object v3, v2

    .local v3, "p":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    if-eqz v2, :cond_1

    .line 215
    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 217
    :cond_1
    return-object v1
.end method
