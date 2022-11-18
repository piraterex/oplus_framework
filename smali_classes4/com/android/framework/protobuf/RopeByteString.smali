.class final Lcom/android/framework/protobuf/RopeByteString;
.super Lcom/android/framework/protobuf/ByteString;
.source "RopeByteString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;,
        Lcom/android/framework/protobuf/RopeByteString$PieceIterator;,
        Lcom/android/framework/protobuf/RopeByteString$Balancer;
    }
.end annotation


# static fields
.field static final blacklist minLengthByDepth:[I

.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private final blacklist left:Lcom/android/framework/protobuf/ByteString;

.field private final blacklist leftLength:I

.field private final blacklist right:Lcom/android/framework/protobuf/ByteString;

.field private final blacklist totalLength:I

.field private final blacklist treeDepth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 83
    const/16 v0, 0x2f

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/framework/protobuf/RopeByteString;->minLengthByDepth:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x5
        0x8
        0xd
        0x15
        0x22
        0x37
        0x59
        0x90
        0xe9
        0x179
        0x262
        0x3db
        0x63d
        0xa18
        0x1055
        0x1a6d
        0x2ac2
        0x452f
        0x6ff1
        0xb520
        0x12511
        0x1da31
        0x2ff42
        0x4d973
        0x7d8b5
        0xcb228
        0x148add
        0x213d05
        0x35c7e2
        0x5704e7
        0x8cccc9
        0xe3d1b0
        0x1709e79
        0x2547029
        0x3c50ea2
        0x6197ecb
        0x9de8d6d
        0xff80c38
        0x19d699a5
        0x29cea5dd
        0x43a53f82
        0x6d73e55f
        0x7fffffff
    .end array-data
.end method

.method private constructor blacklist <init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)V
    .locals 2
    .param p1, "left"    # Lcom/android/framework/protobuf/ByteString;
    .param p2, "right"    # Lcom/android/framework/protobuf/ByteString;

    .line 146
    invoke-direct {p0}, Lcom/android/framework/protobuf/ByteString;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    .line 148
    iput-object p2, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    .line 149
    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    iput v0, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    .line 150
    invoke-virtual {p2}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/RopeByteString;->totalLength:I

    .line 151
    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->getTreeDepth()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/framework/protobuf/ByteString;->getTreeDepth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/RopeByteString;->treeDepth:I

    .line 152
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/RopeByteString$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/framework/protobuf/ByteString;
    .param p2, "x1"    # Lcom/android/framework/protobuf/ByteString;
    .param p3, "x2"    # Lcom/android/framework/protobuf/RopeByteString$1;

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/RopeByteString;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic blacklist access$400(Lcom/android/framework/protobuf/RopeByteString;)Lcom/android/framework/protobuf/ByteString;
    .locals 1
    .param p0, "x0"    # Lcom/android/framework/protobuf/RopeByteString;

    .line 68
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    return-object v0
.end method

.method static synthetic blacklist access$500(Lcom/android/framework/protobuf/RopeByteString;)Lcom/android/framework/protobuf/ByteString;
    .locals 1
    .param p0, "x0"    # Lcom/android/framework/protobuf/RopeByteString;

    .line 68
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    return-object v0
.end method

.method static blacklist concatenate(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString;
    .locals 5
    .param p0, "left"    # Lcom/android/framework/protobuf/ByteString;
    .param p1, "right"    # Lcom/android/framework/protobuf/ByteString;

    .line 168
    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 169
    return-object p0

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 173
    return-object p1

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 177
    .local v0, "newLength":I
    const/16 v1, 0x80

    if-ge v0, v1, :cond_2

    .line 180
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/RopeByteString;->concatenateBytes(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    return-object v1

    .line 183
    :cond_2
    instance-of v2, p0, Lcom/android/framework/protobuf/RopeByteString;

    if-eqz v2, :cond_4

    .line 184
    move-object v2, p0

    check-cast v2, Lcom/android/framework/protobuf/RopeByteString;

    .line 185
    .local v2, "leftRope":Lcom/android/framework/protobuf/RopeByteString;
    iget-object v3, v2, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v3, v1, :cond_3

    .line 196
    iget-object v1, v2, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    invoke-static {v1, p1}, Lcom/android/framework/protobuf/RopeByteString;->concatenateBytes(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    .line 197
    .local v1, "newRight":Lcom/android/framework/protobuf/ByteString;
    new-instance v3, Lcom/android/framework/protobuf/RopeByteString;

    iget-object v4, v2, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-direct {v3, v4, v1}, Lcom/android/framework/protobuf/RopeByteString;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)V

    return-object v3

    .line 200
    .end local v1    # "newRight":Lcom/android/framework/protobuf/ByteString;
    :cond_3
    iget-object v1, v2, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/ByteString;->getTreeDepth()I

    move-result v1

    iget-object v3, v2, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/ByteString;->getTreeDepth()I

    move-result v3

    if-le v1, v3, :cond_4

    .line 201
    invoke-virtual {v2}, Lcom/android/framework/protobuf/RopeByteString;->getTreeDepth()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->getTreeDepth()I

    move-result v3

    if-le v1, v3, :cond_4

    .line 207
    new-instance v1, Lcom/android/framework/protobuf/RopeByteString;

    iget-object v3, v2, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    invoke-direct {v1, v3, p1}, Lcom/android/framework/protobuf/RopeByteString;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)V

    .line 208
    .restart local v1    # "newRight":Lcom/android/framework/protobuf/ByteString;
    new-instance v3, Lcom/android/framework/protobuf/RopeByteString;

    iget-object v4, v2, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-direct {v3, v4, v1}, Lcom/android/framework/protobuf/RopeByteString;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)V

    return-object v3

    .line 213
    .end local v1    # "newRight":Lcom/android/framework/protobuf/ByteString;
    .end local v2    # "leftRope":Lcom/android/framework/protobuf/RopeByteString;
    :cond_4
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString;->getTreeDepth()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->getTreeDepth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 214
    .local v1, "newDepth":I
    sget-object v2, Lcom/android/framework/protobuf/RopeByteString;->minLengthByDepth:[I

    aget v2, v2, v1

    if-lt v0, v2, :cond_5

    .line 216
    new-instance v2, Lcom/android/framework/protobuf/RopeByteString;

    invoke-direct {v2, p0, p1}, Lcom/android/framework/protobuf/RopeByteString;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)V

    return-object v2

    .line 219
    :cond_5
    new-instance v2, Lcom/android/framework/protobuf/RopeByteString$Balancer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/framework/protobuf/RopeByteString$Balancer;-><init>(Lcom/android/framework/protobuf/RopeByteString$1;)V

    invoke-static {v2, p0, p1}, Lcom/android/framework/protobuf/RopeByteString$Balancer;->access$100(Lcom/android/framework/protobuf/RopeByteString$Balancer;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist concatenateBytes(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString;
    .locals 4
    .param p0, "left"    # Lcom/android/framework/protobuf/ByteString;
    .param p1, "right"    # Lcom/android/framework/protobuf/ByteString;

    .line 231
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    .line 232
    .local v0, "leftSize":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v1

    .line 233
    .local v1, "rightSize":I
    add-int v2, v0, v1

    new-array v2, v2, [B

    .line 234
    .local v2, "bytes":[B
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3, v0}, Lcom/android/framework/protobuf/ByteString;->copyTo([BIII)V

    .line 235
    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/android/framework/protobuf/ByteString;->copyTo([BIII)V

    .line 236
    invoke-static {v2}, Lcom/android/framework/protobuf/ByteString;->wrap([B)Lcom/android/framework/protobuf/ByteString;

    move-result-object v3

    return-object v3
.end method

.method private blacklist equalsFragments(Lcom/android/framework/protobuf/ByteString;)Z
    .locals 12
    .param p1, "other"    # Lcom/android/framework/protobuf/ByteString;

    .line 525
    const/4 v0, 0x0

    .line 526
    .local v0, "thisOffset":I
    new-instance v1, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/RopeByteString$1;)V

    .line 527
    .local v1, "thisIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/framework/protobuf/ByteString$LeafByteString;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/framework/protobuf/ByteString$LeafByteString;

    .line 529
    .local v3, "thisString":Lcom/android/framework/protobuf/ByteString$LeafByteString;
    const/4 v4, 0x0

    .line 530
    .local v4, "thatOffset":I
    new-instance v5, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;

    invoke-direct {v5, p1, v2}, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/RopeByteString$1;)V

    move-object v2, v5

    .line 531
    .local v2, "thatIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/framework/protobuf/ByteString$LeafByteString;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/framework/protobuf/ByteString$LeafByteString;

    .line 533
    .local v5, "thatString":Lcom/android/framework/protobuf/ByteString$LeafByteString;
    const/4 v6, 0x0

    .line 535
    .local v6, "pos":I
    :goto_0
    invoke-virtual {v3}, Lcom/android/framework/protobuf/ByteString$LeafByteString;->size()I

    move-result v7

    sub-int/2addr v7, v0

    .line 536
    .local v7, "thisRemaining":I
    invoke-virtual {v5}, Lcom/android/framework/protobuf/ByteString$LeafByteString;->size()I

    move-result v8

    sub-int/2addr v8, v4

    .line 537
    .local v8, "thatRemaining":I
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 541
    .local v9, "bytesToCompare":I
    if-nez v0, :cond_0

    .line 542
    invoke-virtual {v3, v5, v4, v9}, Lcom/android/framework/protobuf/ByteString$LeafByteString;->equalsRange(Lcom/android/framework/protobuf/ByteString;II)Z

    move-result v10

    goto :goto_1

    .line 543
    :cond_0
    invoke-virtual {v5, v3, v0, v9}, Lcom/android/framework/protobuf/ByteString$LeafByteString;->equalsRange(Lcom/android/framework/protobuf/ByteString;II)Z

    move-result v10

    :goto_1
    nop

    .line 544
    .local v10, "stillEqual":Z
    if-nez v10, :cond_1

    .line 545
    const/4 v11, 0x0

    return v11

    .line 548
    :cond_1
    add-int/2addr v6, v9

    .line 549
    iget v11, p0, Lcom/android/framework/protobuf/RopeByteString;->totalLength:I

    if-lt v6, v11, :cond_3

    .line 550
    if-ne v6, v11, :cond_2

    .line 551
    const/4 v11, 0x1

    return v11

    .line 553
    :cond_2
    new-instance v11, Ljava/lang/IllegalStateException;

    invoke-direct {v11}, Ljava/lang/IllegalStateException;-><init>()V

    throw v11

    .line 556
    :cond_3
    if-ne v9, v7, :cond_4

    .line 557
    const/4 v0, 0x0

    .line 558
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v3, v11

    check-cast v3, Lcom/android/framework/protobuf/ByteString$LeafByteString;

    goto :goto_2

    .line 560
    :cond_4
    add-int/2addr v0, v9

    .line 562
    :goto_2
    if-ne v9, v8, :cond_5

    .line 563
    const/4 v4, 0x0

    .line 564
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v5, v11

    check-cast v5, Lcom/android/framework/protobuf/ByteString$LeafByteString;

    goto :goto_3

    .line 566
    :cond_5
    add-int/2addr v4, v9

    .line 568
    .end local v7    # "thisRemaining":I
    .end local v8    # "thatRemaining":I
    .end local v9    # "bytesToCompare":I
    .end local v10    # "stillEqual":Z
    :goto_3
    goto :goto_0
.end method

.method static blacklist newInstanceForTest(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/RopeByteString;
    .locals 1
    .param p0, "left"    # Lcom/android/framework/protobuf/ByteString;
    .param p1, "right"    # Lcom/android/framework/protobuf/ByteString;

    .line 250
    new-instance v0, Lcom/android/framework/protobuf/RopeByteString;

    invoke-direct {v0, p0, p1}, Lcom/android/framework/protobuf/RopeByteString;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)V

    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 792
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "RopeByteStream instances are not to be serialized directly"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 406
    invoke-virtual {p0}, Lcom/android/framework/protobuf/RopeByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 407
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public blacklist asReadOnlyByteBufferList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 415
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    new-instance v1, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/RopeByteString$1;)V

    .line 416
    .local v1, "pieces":Lcom/android/framework/protobuf/RopeByteString$PieceIterator;
    :goto_0
    invoke-virtual {v1}, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 417
    invoke-virtual {v1}, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;->next()Lcom/android/framework/protobuf/ByteString$LeafByteString;

    move-result-object v2

    .line 418
    .local v2, "byteString":Lcom/android/framework/protobuf/ByteString$LeafByteString;
    invoke-virtual {v2}, Lcom/android/framework/protobuf/ByteString$LeafByteString;->asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    .end local v2    # "byteString":Lcom/android/framework/protobuf/ByteString$LeafByteString;
    goto :goto_0

    .line 420
    :cond_0
    return-object v0
.end method

.method public blacklist byteAt(I)B
    .locals 1
    .param p1, "index"    # I

    .line 264
    iget v0, p0, Lcom/android/framework/protobuf/RopeByteString;->totalLength:I

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/RopeByteString;->checkIndex(II)V

    .line 265
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/RopeByteString;->internalByteAt(I)B

    move-result v0

    return v0
.end method

.method public blacklist copyTo(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "target"    # Ljava/nio/ByteBuffer;

    .line 400
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ByteString;->copyTo(Ljava/nio/ByteBuffer;)V

    .line 401
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ByteString;->copyTo(Ljava/nio/ByteBuffer;)V

    .line 402
    return-void
.end method

.method protected blacklist copyToInternal([BIII)V
    .locals 5
    .param p1, "target"    # [B
    .param p2, "sourceOffset"    # I
    .param p3, "targetOffset"    # I
    .param p4, "numberToCopy"    # I

    .line 387
    add-int v0, p2, p4

    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    if-gt v0, v1, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/ByteString;->copyToInternal([BIII)V

    goto :goto_0

    .line 389
    :cond_0
    if-lt p2, v1, :cond_1

    .line 390
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/android/framework/protobuf/ByteString;->copyToInternal([BIII)V

    goto :goto_0

    .line 392
    :cond_1
    sub-int/2addr v1, p2

    .line 393
    .local v1, "leftLength":I
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/framework/protobuf/ByteString;->copyToInternal([BIII)V

    .line 394
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    const/4 v2, 0x0

    add-int v3, p3, v1

    sub-int v4, p4, v1

    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/android/framework/protobuf/ByteString;->copyToInternal([BIII)V

    .line 396
    .end local v1    # "leftLength":I
    :goto_0
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 488
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 489
    return v0

    .line 491
    :cond_0
    instance-of v1, p1, Lcom/android/framework/protobuf/ByteString;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 492
    return v2

    .line 495
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/framework/protobuf/ByteString;

    .line 496
    .local v1, "otherByteString":Lcom/android/framework/protobuf/ByteString;
    iget v3, p0, Lcom/android/framework/protobuf/RopeByteString;->totalLength:I

    invoke-virtual {v1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 497
    return v2

    .line 499
    :cond_2
    iget v3, p0, Lcom/android/framework/protobuf/RopeByteString;->totalLength:I

    if-nez v3, :cond_3

    .line 500
    return v0

    .line 508
    :cond_3
    invoke-virtual {p0}, Lcom/android/framework/protobuf/RopeByteString;->peekCachedHashCode()I

    move-result v0

    .line 509
    .local v0, "thisHash":I
    invoke-virtual {v1}, Lcom/android/framework/protobuf/ByteString;->peekCachedHashCode()I

    move-result v3

    .line 510
    .local v3, "thatHash":I
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    if-eq v0, v3, :cond_4

    .line 511
    return v2

    .line 514
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/RopeByteString;->equalsFragments(Lcom/android/framework/protobuf/ByteString;)Z

    move-result v2

    return v2
.end method

.method protected blacklist getTreeDepth()I
    .locals 1

    .line 319
    iget v0, p0, Lcom/android/framework/protobuf/RopeByteString;->treeDepth:I

    return v0
.end method

.method blacklist internalByteAt(I)B
    .locals 2
    .param p1, "index"    # I

    .line 271
    iget v0, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    if-ge p1, v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ByteString;->internalByteAt(I)B

    move-result v0

    return v0

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/ByteString;->internalByteAt(I)B

    move-result v0

    return v0
.end method

.method protected blacklist isBalanced()Z
    .locals 3

    .line 331
    iget v0, p0, Lcom/android/framework/protobuf/RopeByteString;->totalLength:I

    sget-object v1, Lcom/android/framework/protobuf/RopeByteString;->minLengthByDepth:[I

    iget v2, p0, Lcom/android/framework/protobuf/RopeByteString;->treeDepth:I

    aget v1, v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isValidUtf8()Z
    .locals 4

    .line 464
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/android/framework/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v0

    .line 465
    .local v0, "leftPartial":I
    iget-object v1, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/framework/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v1

    .line 466
    .local v1, "state":I
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public blacklist iterator()Lcom/android/framework/protobuf/ByteString$ByteIterator;
    .locals 1

    .line 285
    new-instance v0, Lcom/android/framework/protobuf/RopeByteString$1;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/RopeByteString$1;-><init>(Lcom/android/framework/protobuf/RopeByteString;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api iterator()Ljava/util/Iterator;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/android/framework/protobuf/RopeByteString;->iterator()Lcom/android/framework/protobuf/ByteString$ByteIterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist newCodedInput()Lcom/android/framework/protobuf/CodedInputStream;
    .locals 1

    .line 590
    new-instance v0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;-><init>(Lcom/android/framework/protobuf/RopeByteString;)V

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public blacklist newInput()Ljava/io/InputStream;
    .locals 1

    .line 595
    new-instance v0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;-><init>(Lcom/android/framework/protobuf/RopeByteString;)V

    return-object v0
.end method

.method protected blacklist partialHash(III)I
    .locals 6
    .param p1, "h"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 573
    add-int v0, p2, p3

    .line 574
    .local v0, "toIndex":I
    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    if-gt v0, v1, :cond_0

    .line 575
    iget-object v1, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/framework/protobuf/ByteString;->partialHash(III)I

    move-result v1

    return v1

    .line 576
    :cond_0
    if-lt p2, v1, :cond_1

    .line 577
    iget-object v2, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    sub-int v1, p2, v1

    invoke-virtual {v2, p1, v1, p3}, Lcom/android/framework/protobuf/ByteString;->partialHash(III)I

    move-result v1

    return v1

    .line 579
    :cond_1
    sub-int/2addr v1, p2

    .line 580
    .local v1, "leftLength":I
    iget-object v2, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/framework/protobuf/ByteString;->partialHash(III)I

    move-result v2

    .line 581
    .local v2, "leftPartial":I
    iget-object v3, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    const/4 v4, 0x0

    sub-int v5, p3, v1

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/framework/protobuf/ByteString;->partialHash(III)I

    move-result v3

    return v3
.end method

.method protected blacklist partialIsValidUtf8(III)I
    .locals 6
    .param p1, "state"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 471
    add-int v0, p2, p3

    .line 472
    .local v0, "toIndex":I
    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    if-gt v0, v1, :cond_0

    .line 473
    iget-object v1, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/framework/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v1

    return v1

    .line 474
    :cond_0
    if-lt p2, v1, :cond_1

    .line 475
    iget-object v2, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    sub-int v1, p2, v1

    invoke-virtual {v2, p1, v1, p3}, Lcom/android/framework/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v1

    return v1

    .line 477
    :cond_1
    sub-int/2addr v1, p2

    .line 478
    .local v1, "leftLength":I
    iget-object v2, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/framework/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v2

    .line 479
    .local v2, "leftPartial":I
    iget-object v3, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    const/4 v4, 0x0

    sub-int v5, p3, v1

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/framework/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v3

    return v3
.end method

.method public blacklist size()I
    .locals 1

    .line 280
    iget v0, p0, Lcom/android/framework/protobuf/RopeByteString;->totalLength:I

    return v0
.end method

.method public blacklist substring(II)Lcom/android/framework/protobuf/ByteString;
    .locals 5
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 349
    iget v0, p0, Lcom/android/framework/protobuf/RopeByteString;->totalLength:I

    invoke-static {p1, p2, v0}, Lcom/android/framework/protobuf/RopeByteString;->checkRange(III)I

    move-result v0

    .line 351
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 353
    sget-object v1, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    return-object v1

    .line 356
    :cond_0
    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString;->totalLength:I

    if-ne v0, v1, :cond_1

    .line 358
    return-object p0

    .line 362
    :cond_1
    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    if-gt p2, v1, :cond_2

    .line 364
    iget-object v1, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v1, p1, p2}, Lcom/android/framework/protobuf/ByteString;->substring(II)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    return-object v1

    .line 367
    :cond_2
    if-lt p1, v1, :cond_3

    .line 369
    iget-object v2, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    sub-int v3, p1, v1

    sub-int v1, p2, v1

    invoke-virtual {v2, v3, v1}, Lcom/android/framework/protobuf/ByteString;->substring(II)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    return-object v1

    .line 373
    :cond_3
    iget-object v1, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v1, p1}, Lcom/android/framework/protobuf/ByteString;->substring(I)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    .line 374
    .local v1, "leftSub":Lcom/android/framework/protobuf/ByteString;
    iget-object v2, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    sub-int v4, p2, v4

    invoke-virtual {v2, v3, v4}, Lcom/android/framework/protobuf/ByteString;->substring(II)Lcom/android/framework/protobuf/ByteString;

    move-result-object v2

    .line 378
    .local v2, "rightSub":Lcom/android/framework/protobuf/ByteString;
    new-instance v3, Lcom/android/framework/protobuf/RopeByteString;

    invoke-direct {v3, v1, v2}, Lcom/android/framework/protobuf/RopeByteString;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)V

    return-object v3
.end method

.method protected blacklist toStringInternal(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 456
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/framework/protobuf/RopeByteString;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method whitelist writeReplace()Ljava/lang/Object;
    .locals 1

    .line 788
    invoke-virtual {p0}, Lcom/android/framework/protobuf/RopeByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/framework/protobuf/ByteString;->wrap([B)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method blacklist writeTo(Lcom/android/framework/protobuf/ByteOutput;)V
    .locals 1
    .param p1, "output"    # Lcom/android/framework/protobuf/ByteOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ByteString;->writeTo(Lcom/android/framework/protobuf/ByteOutput;)V

    .line 445
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ByteString;->writeTo(Lcom/android/framework/protobuf/ByteOutput;)V

    .line 446
    return-void
.end method

.method public blacklist writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 425
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ByteString;->writeTo(Ljava/io/OutputStream;)V

    .line 426
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ByteString;->writeTo(Ljava/io/OutputStream;)V

    .line 427
    return-void
.end method

.method blacklist writeToInternal(Ljava/io/OutputStream;II)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "sourceOffset"    # I
    .param p3, "numberToWrite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 431
    add-int v0, p2, p3

    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    if-gt v0, v1, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/framework/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    goto :goto_0

    .line 433
    :cond_0
    if-lt p2, v1, :cond_1

    .line 434
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/android/framework/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    goto :goto_0

    .line 436
    :cond_1
    sub-int/2addr v1, p2

    .line 437
    .local v1, "numberToWriteInLeft":I
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/framework/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    .line 438
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    const/4 v2, 0x0

    sub-int v3, p3, v1

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/framework/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    .line 440
    .end local v1    # "numberToWriteInLeft":I
    :goto_0
    return-void
.end method

.method blacklist writeToReverse(Lcom/android/framework/protobuf/ByteOutput;)V
    .locals 1
    .param p1, "output"    # Lcom/android/framework/protobuf/ByteOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ByteString;->writeToReverse(Lcom/android/framework/protobuf/ByteOutput;)V

    .line 451
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ByteString;->writeToReverse(Lcom/android/framework/protobuf/ByteOutput;)V

    .line 452
    return-void
.end method
