.class public final Landroid/util/proto/EncodedBuffer;
.super Ljava/lang/Object;
.source "EncodedBuffer.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "EncodedBuffer"


# instance fields
.field private greylist-max-o mBufferCount:I

.field private final greylist-max-o mBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mChunkSize:I

.field private greylist-max-o mReadBufIndex:I

.field private greylist-max-o mReadBuffer:[B

.field private greylist-max-o mReadIndex:I

.field private greylist-max-o mReadLimit:I

.field private greylist-max-o mReadableSize:I

.field private greylist-max-o mWriteBufIndex:I

.field private greylist-max-o mWriteBuffer:[B

.field private greylist-max-o mWriteIndex:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/util/proto/EncodedBuffer;-><init>(I)V

    .line 96
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 2
    .param p1, "chunkSize"    # I

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    .line 87
    const/4 v1, -0x1

    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mReadLimit:I

    .line 92
    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mReadableSize:I

    .line 105
    if-gtz p1, :cond_0

    .line 106
    const/16 p1, 0x2000

    .line 108
    :cond_0
    iput p1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    .line 109
    new-array v1, p1, [B

    iput-object v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    .line 110
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    const/4 v0, 0x1

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mBufferCount:I

    .line 112
    return-void
.end method

.method private static greylist-max-o dumpByteString(Ljava/lang/String;Ljava/lang/String;I[B)I
    .locals 8
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "buf"    # [B

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 652
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p3

    .line 653
    .local v1, "length":I
    const/16 v2, 0x10

    .line 655
    .local v2, "lineLen":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_4

    .line 656
    rem-int/lit8 v4, v3, 0x10

    const/16 v5, 0x20

    if-nez v4, :cond_1

    .line 657
    if-eqz v3, :cond_0

    .line 658
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    .line 661
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    const/16 v4, 0x5b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 663
    add-int v4, p2, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 664
    const/16 v4, 0x5d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 665
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 667
    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 669
    :goto_1
    aget-byte v4, p3, v3

    .line 670
    .local v4, "b":B
    shr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    int-to-byte v5, v5

    .line 671
    .local v5, "c":B
    const/16 v6, 0xa

    if-ge v5, v6, :cond_2

    .line 672
    add-int/lit8 v7, v5, 0x30

    int-to-char v7, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 674
    :cond_2
    add-int/lit8 v7, v5, 0x57

    int-to-char v7, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 676
    :goto_2
    and-int/lit8 v7, v4, 0xf

    int-to-byte v7, v7

    .line 677
    .local v7, "d":B
    if-ge v7, v6, :cond_3

    .line 678
    add-int/lit8 v6, v7, 0x30

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 680
    :cond_3
    add-int/lit8 v6, v7, 0x57

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 655
    .end local v4    # "b":B
    .end local v5    # "c":B
    .end local v7    # "d":B
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 683
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    return v1
.end method

.method public static blacklist dumpByteString(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "buf"    # [B

    .line 644
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Landroid/util/proto/EncodedBuffer;->dumpByteString(Ljava/lang/String;Ljava/lang/String;I[B)I

    .line 645
    return-void
.end method

.method public static blacklist getRawVarint32Size(I)I
    .locals 1
    .param p0, "val"    # I

    .line 282
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 283
    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 v0, 0x2

    return v0

    .line 284
    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    return v0

    .line 285
    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    return v0

    .line 286
    :cond_3
    const/4 v0, 0x5

    return v0
.end method

.method public static blacklist getRawVarint64Size(J)I
    .locals 4
    .param p0, "val"    # J

    .line 326
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 327
    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x2

    return v0

    .line 328
    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x3

    return v0

    .line 329
    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x4

    return v0

    .line 330
    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x5

    return v0

    .line 331
    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x6

    return v0

    .line 332
    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 v0, 0x7

    return v0

    .line 333
    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 v0, 0x8

    return v0

    .line 334
    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    const/16 v0, 0x9

    return v0

    .line 335
    :cond_8
    const/16 v0, 0xa

    return v0
.end method

.method public static blacklist getRawZigZag32Size(I)I
    .locals 1
    .param p0, "val"    # I

    .line 310
    invoke-static {p0}, Landroid/util/proto/EncodedBuffer;->zigZag32(I)I

    move-result v0

    invoke-static {v0}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method public static blacklist getRawZigZag64Size(J)I
    .locals 2
    .param p0, "val"    # J

    .line 357
    invoke-static {p0, p1}, Landroid/util/proto/EncodedBuffer;->zigZag64(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/util/proto/EncodedBuffer;->getRawVarint64Size(J)I

    move-result v0

    return v0
.end method

.method private greylist-max-o nextWriteBuffer()V
    .locals 2

    .line 257
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    .line 258
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mBufferCount:I

    if-lt v0, v1, :cond_0

    .line 259
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    .line 260
    iget-object v1, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mBufferCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mBufferCount:I

    goto :goto_0

    .line 263
    :cond_0
    iget-object v1, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    .line 265
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 266
    return-void
.end method

.method private static greylist-max-o zigZag32(I)I
    .locals 2
    .param p0, "val"    # I

    .line 553
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method

.method private static greylist-max-o zigZag64(J)J
    .locals 4
    .param p0, "val"    # J

    .line 560
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long v2, p0, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public blacklist dumpBuffers(Ljava/lang/String;)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;

    .line 633
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 634
    .local v0, "N":I
    const/4 v1, 0x0

    .line 635
    .local v1, "start":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 636
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "} "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {p1, v3, v1, v4}, Landroid/util/proto/EncodedBuffer;->dumpByteString(Ljava/lang/String;Ljava/lang/String;I[B)I

    move-result v3

    add-int/2addr v1, v3

    .line 635
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 638
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public blacklist editRawFixed32(II)V
    .locals 4
    .param p1, "pos"    # I
    .param p2, "val"    # I

    .line 539
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    div-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int v2, p1, v1

    int-to-byte v3, p2

    aput-byte v3, v0, v2

    .line 540
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, 0x1

    div-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int/2addr v1, v2

    shr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 541
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, 0x2

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    add-int/lit8 v1, p1, 0x2

    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int/2addr v1, v2

    shr-int/lit8 v3, p2, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 542
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, 0x3

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    add-int/lit8 v1, p1, 0x3

    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int/2addr v1, v2

    shr-int/lit8 v2, p2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 543
    return-void
.end method

.method public blacklist getBytes(I)[B
    .locals 7
    .param p1, "size"    # I

    .line 575
    new-array v0, p1, [B

    .line 577
    .local v0, "result":[B
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    div-int v1, p1, v1

    .line 579
    .local v1, "bufCount":I
    const/4 v2, 0x0

    .line 581
    .local v2, "writeIndex":I
    const/4 v3, 0x0

    .local v3, "bufIndex":I
    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_0

    .line 582
    iget-object v5, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    iget v6, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    invoke-static {v5, v4, v0, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 583
    iget v4, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    add-int/2addr v2, v4

    .line 581
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 586
    :cond_0
    iget v5, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    mul-int/2addr v5, v1

    sub-int v5, p1, v5

    .line 587
    .local v5, "lastSize":I
    if-lez v5, :cond_1

    .line 588
    iget-object v6, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v4, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 591
    :cond_1
    return-object v0
.end method

.method public blacklist getChunkCount()I
    .locals 1

    .line 599
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getDebugString()Ljava/lang/String;
    .locals 2

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EncodedBuffer( mChunkSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mBuffers.size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mBufferCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mBufferCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWriteIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWriteBufIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mReadBufIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mReadIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mReadableSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadableSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mReadLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRawFixed32At(I)I
    .locals 4
    .param p1, "pos"    # I

    .line 527
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    div-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int v2, p1, v1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    iget-object v2, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, 0x1

    div-int/2addr v3, v1

    .line 528
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int/2addr v2, v3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, 0x2

    div-int/2addr v2, v3

    .line 529
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    add-int/lit8 v2, p1, 0x2

    iget v3, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int/2addr v2, v3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, 0x3

    div-int/2addr v2, v3

    .line 530
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    add-int/lit8 v2, p1, 0x3

    iget v3, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int/2addr v2, v3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 527
    return v0
.end method

.method public blacklist getReadPos()I
    .locals 2

    .line 166
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist getReadableSize()I
    .locals 1

    .line 147
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mReadableSize:I

    return v0
.end method

.method public blacklist getSize()I
    .locals 2

    .line 155
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mBufferCount:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist getWriteBufIndex()I
    .locals 1

    .line 615
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    return v0
.end method

.method public blacklist getWriteIndex()I
    .locals 1

    .line 607
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    return v0
.end method

.method public blacklist getWritePos()I
    .locals 2

    .line 500
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist readRawByte()B
    .locals 3

    .line 201
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mBufferCount:I

    if-gt v0, v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mReadLimit:I

    if-ge v1, v2, :cond_2

    .line 207
    :cond_0
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    if-lt v1, v2, :cond_1

    .line 208
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    .line 209
    iget-object v1, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBuffer:[B

    .line 210
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    .line 212
    :cond_1
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBuffer:[B

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    aget-byte v0, v0, v1

    return v0

    .line 203
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to read too much data mReadBufIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mBufferCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mBufferCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mReadIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mReadLimit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mReadLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist readRawFixed32()I
    .locals 2

    .line 238
    invoke-virtual {p0}, Landroid/util/proto/EncodedBuffer;->readRawByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 239
    invoke-virtual {p0}, Landroid/util/proto/EncodedBuffer;->readRawByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 240
    invoke-virtual {p0}, Landroid/util/proto/EncodedBuffer;->readRawByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 241
    invoke-virtual {p0}, Landroid/util/proto/EncodedBuffer;->readRawByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 238
    return v0
.end method

.method public blacklist readRawUnsigned()J
    .locals 7

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "bits":I
    const-wide/16 v1, 0x0

    .line 222
    .local v1, "result":J
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/EncodedBuffer;->readRawByte()B

    move-result v3

    .line 223
    .local v3, "b":B
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    .line 224
    and-int/lit16 v4, v3, 0x80

    if-nez v4, :cond_0

    .line 225
    return-wide v1

    .line 227
    :cond_0
    add-int/lit8 v0, v0, 0x7

    .line 228
    const/16 v4, 0x40

    if-gt v0, v4, :cond_1

    .line 231
    .end local v3    # "b":B
    goto :goto_0

    .line 229
    .restart local v3    # "b":B
    :cond_1
    new-instance v4, Landroid/util/proto/ProtoParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Varint too long -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public blacklist rewindRead()V
    .locals 2

    .line 138
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBuffer:[B

    .line 139
    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    .line 140
    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    .line 141
    return-void
.end method

.method public blacklist rewindWriteTo(I)V
    .locals 3
    .param p1, "writePos"    # I

    .line 507
    invoke-virtual {p0}, Landroid/util/proto/EncodedBuffer;->getWritePos()I

    move-result v0

    if-gt p1, v0, :cond_1

    .line 510
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    div-int v1, p1, v0

    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    .line 511
    rem-int v2, p1, v0

    iput v2, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 512
    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 515
    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 516
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    .line 518
    :cond_0
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    .line 519
    return-void

    .line 508
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rewindWriteTo only can go backwards"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist skipRead(I)V
    .locals 3
    .param p1, "amount"    # I

    .line 173
    if-ltz p1, :cond_3

    .line 176
    if-nez p1, :cond_0

    .line 177
    return-void

    .line 179
    :cond_0
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    sub-int v2, v0, v1

    if-gt p1, v2, :cond_1

    .line 180
    add-int/2addr v1, p1

    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    goto :goto_1

    .line 182
    :cond_1
    sub-int v1, v0, v1

    sub-int/2addr p1, v1

    .line 183
    rem-int v1, p1, v0

    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    .line 184
    if-nez v1, :cond_2

    .line 185
    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    .line 186
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    div-int v0, p1, v0

    add-int/2addr v1, v0

    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    goto :goto_0

    .line 188
    :cond_2
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    div-int v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    .line 190
    :goto_0
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBuffer:[B

    .line 192
    :goto_1
    return-void

    .line 174
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "skipRead with negative amount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist startEditing()V
    .locals 2

    .line 122
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mReadableSize:I

    .line 123
    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mReadLimit:I

    .line 125
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    .line 126
    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 127
    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    .line 129
    iput-object v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBuffer:[B

    .line 130
    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    .line 131
    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    .line 132
    return-void
.end method

.method public blacklist writeFromThisBuffer(II)V
    .locals 8
    .param p1, "srcOffset"    # I
    .param p2, "size"    # I

    .line 431
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mReadLimit:I

    if-ltz v0, :cond_9

    .line 434
    invoke-virtual {p0}, Landroid/util/proto/EncodedBuffer;->getWritePos()I

    move-result v0

    const-string v1, " "

    const-string v2, " size="

    if-lt p1, v0, :cond_8

    .line 438
    add-int v0, p1, p2

    iget v3, p0, Landroid/util/proto/EncodedBuffer;->mReadableSize:I

    if-gt v0, v3, :cond_7

    .line 442
    if-nez p2, :cond_0

    .line 443
    return-void

    .line 445
    :cond_0
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    mul-int v2, v0, v1

    iget v3, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    add-int/2addr v2, v3

    if-ne p1, v2, :cond_3

    .line 449
    sub-int v2, v1, v3

    if-gt p2, v2, :cond_1

    .line 450
    add-int/2addr v3, p2

    iput v3, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    goto :goto_2

    .line 452
    :cond_1
    sub-int v2, v1, v3

    sub-int/2addr p2, v2

    .line 453
    rem-int v2, p2, v1

    iput v2, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 454
    if-nez v2, :cond_2

    .line 458
    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 459
    div-int v1, p2, v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    goto :goto_0

    .line 461
    :cond_2
    div-int v1, p2, v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    .line 463
    :goto_0
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    goto :goto_2

    .line 469
    :cond_3
    div-int v0, p1, v1

    .line 470
    .local v0, "readBufIndex":I
    iget-object v1, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 471
    .local v1, "readBuffer":[B
    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int v2, p1, v2

    .line 472
    .local v2, "readIndex":I
    :goto_1
    if-lez p2, :cond_6

    .line 473
    iget v3, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    iget v4, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    if-lt v3, v4, :cond_4

    .line 474
    invoke-direct {p0}, Landroid/util/proto/EncodedBuffer;->nextWriteBuffer()V

    .line 476
    :cond_4
    iget v3, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    if-lt v2, v3, :cond_5

    .line 477
    add-int/lit8 v0, v0, 0x1

    .line 478
    iget-object v3, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, [B

    .line 479
    const/4 v2, 0x0

    .line 481
    :cond_5
    iget v3, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    iget v4, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    sub-int v4, v3, v4

    .line 482
    .local v4, "spaceInWriteBuffer":I
    sub-int/2addr v3, v2

    .line 483
    .local v3, "availableInReadBuffer":I
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 484
    .local v5, "amt":I
    iget-object v6, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    iget v7, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    invoke-static {v1, v2, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 485
    iget v6, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    add-int/2addr v6, v5

    iput v6, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 486
    add-int/2addr v2, v5

    .line 487
    sub-int/2addr p2, v5

    .line 488
    .end local v3    # "availableInReadBuffer":I
    .end local v4    # "spaceInWriteBuffer":I
    .end local v5    # "amt":I
    goto :goto_1

    .line 490
    .end local v0    # "readBufIndex":I
    .end local v1    # "readBuffer":[B
    .end local v2    # "readIndex":I
    :cond_6
    :goto_2
    return-void

    .line 439
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to move more data than there is -- srcOffset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 440
    invoke-virtual {p0}, Landroid/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can only move forward in the buffer -- srcOffset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 436
    invoke-virtual {p0}, Landroid/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "writeFromThisBuffer before startEditing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist writeRawBuffer([B)V
    .locals 2
    .param p1, "val"    # [B

    .line 395
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 396
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([BII)V

    .line 398
    :cond_0
    return-void
.end method

.method public blacklist writeRawBuffer([BII)V
    .locals 3
    .param p1, "val"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 404
    if-nez p1, :cond_0

    .line 405
    return-void

    .line 408
    :cond_0
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    sub-int v2, v0, v1

    if-ge p3, v2, :cond_1

    move v0, p3

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v1

    .line 409
    .local v0, "amt":I
    :goto_0
    if-lez v0, :cond_2

    .line 410
    iget-object v2, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    invoke-static {p1, p2, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 411
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 412
    sub-int/2addr p3, v0

    .line 413
    add-int/2addr p2, v0

    .line 415
    :cond_2
    :goto_1
    if-lez p3, :cond_4

    .line 417
    invoke-direct {p0}, Landroid/util/proto/EncodedBuffer;->nextWriteBuffer()V

    .line 418
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    if-ge p3, v1, :cond_3

    move v1, p3

    :cond_3
    move v0, v1

    .line 419
    iget-object v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 421
    sub-int/2addr p3, v0

    .line 422
    add-int/2addr p2, v0

    goto :goto_1

    .line 424
    :cond_4
    return-void
.end method

.method public blacklist writeRawByte(B)V
    .locals 3
    .param p1, "val"    # B

    .line 272
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    if-lt v0, v1, :cond_0

    .line 273
    invoke-direct {p0}, Landroid/util/proto/EncodedBuffer;->nextWriteBuffer()V

    .line 275
    :cond_0
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    aput-byte p1, v0, v1

    .line 276
    return-void
.end method

.method public blacklist writeRawFixed32(I)V
    .locals 1
    .param p1, "val"    # I

    .line 371
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 372
    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 373
    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 374
    shr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 375
    return-void
.end method

.method public blacklist writeRawFixed64(J)V
    .locals 2
    .param p1, "val"    # J

    .line 381
    long-to-int v0, p1

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 382
    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 383
    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 384
    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 385
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 386
    const/16 v0, 0x28

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 387
    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 388
    const/16 v0, 0x38

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 389
    return-void
.end method

.method public blacklist writeRawVarint32(I)V
    .locals 1
    .param p1, "val"    # I

    .line 296
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 297
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 298
    return-void

    .line 300
    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 301
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public blacklist writeRawVarint64(J)V
    .locals 4
    .param p1, "val"    # J

    .line 343
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 344
    long-to-int v0, p1

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 345
    return-void

    .line 347
    :cond_0
    const-wide/16 v0, 0x7f

    and-long/2addr v0, p1

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 348
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public blacklist writeRawZigZag32(I)V
    .locals 1
    .param p1, "val"    # I

    .line 319
    invoke-static {p1}, Landroid/util/proto/EncodedBuffer;->zigZag32(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    .line 320
    return-void
.end method

.method public blacklist writeRawZigZag64(J)V
    .locals 2
    .param p1, "val"    # J

    .line 364
    invoke-static {p1, p2}, Landroid/util/proto/EncodedBuffer;->zigZag64(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 365
    return-void
.end method
