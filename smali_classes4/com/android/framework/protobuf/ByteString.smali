.class public abstract Lcom/android/framework/protobuf/ByteString;
.super Ljava/lang/Object;
.source "ByteString.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/ByteString$BoundedByteString;,
        Lcom/android/framework/protobuf/ByteString$LiteralByteString;,
        Lcom/android/framework/protobuf/ByteString$CodedBuilder;,
        Lcom/android/framework/protobuf/ByteString$Output;,
        Lcom/android/framework/protobuf/ByteString$LeafByteString;,
        Lcom/android/framework/protobuf/ByteString$AbstractByteIterator;,
        Lcom/android/framework/protobuf/ByteString$ByteIterator;,
        Lcom/android/framework/protobuf/ByteString$ArraysByteArrayCopier;,
        Lcom/android/framework/protobuf/ByteString$SystemByteArrayCopier;,
        Lcom/android/framework/protobuf/ByteString$ByteArrayCopier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Byte;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final blacklist CONCATENATE_BY_COPY_SIZE:I = 0x80

.field public static final blacklist EMPTY:Lcom/android/framework/protobuf/ByteString;

.field static final blacklist MAX_READ_FROM_CHUNK_SIZE:I = 0x2000

.field static final blacklist MIN_READ_FROM_CHUNK_SIZE:I = 0x100

.field private static final blacklist UNSIGNED_BYTE_MASK:I = 0xff

.field private static final blacklist UNSIGNED_LEXICOGRAPHICAL_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/framework/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist byteArrayCopier:Lcom/android/framework/protobuf/ByteString$ByteArrayCopier;


# instance fields
.field private blacklist hash:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 85
    new-instance v0, Lcom/android/framework/protobuf/ByteString$LiteralByteString;

    sget-object v1, Lcom/android/framework/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;-><init>([B)V

    sput-object v0, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    .line 125
    invoke-static {}, Lcom/android/framework/protobuf/Android;->isOnAndroidDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/framework/protobuf/ByteString$SystemByteArrayCopier;

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/ByteString$SystemByteArrayCopier;-><init>(Lcom/android/framework/protobuf/ByteString$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/framework/protobuf/ByteString$ArraysByteArrayCopier;

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/ByteString$ArraysByteArrayCopier;-><init>(Lcom/android/framework/protobuf/ByteString$1;)V

    :goto_0
    sput-object v0, Lcom/android/framework/protobuf/ByteString;->byteArrayCopier:Lcom/android/framework/protobuf/ByteString$ByteArrayCopier;

    .line 253
    new-instance v0, Lcom/android/framework/protobuf/ByteString$2;

    invoke-direct {v0}, Lcom/android/framework/protobuf/ByteString$2;-><init>()V

    sput-object v0, Lcom/android/framework/protobuf/ByteString;->UNSIGNED_LEXICOGRAPHICAL_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/framework/protobuf/ByteString;->hash:I

    .line 136
    return-void
.end method

.method static synthetic blacklist access$200(B)I
    .locals 1
    .param p0, "x0"    # B

    .line 67
    invoke-static {p0}, Lcom/android/framework/protobuf/ByteString;->toInt(B)I

    move-result v0

    return v0
.end method

.method private static blacklist balancedConcat(Ljava/util/Iterator;I)Lcom/android/framework/protobuf/ByteString;
    .locals 4
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lcom/android/framework/protobuf/ByteString;",
            ">;I)",
            "Lcom/android/framework/protobuf/ByteString;"
        }
    .end annotation

    .line 603
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/framework/protobuf/ByteString;>;"
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 607
    if-ne p1, v0, :cond_0

    .line 608
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/ByteString;

    .local v0, "result":Lcom/android/framework/protobuf/ByteString;
    goto :goto_0

    .line 610
    .end local v0    # "result":Lcom/android/framework/protobuf/ByteString;
    :cond_0
    ushr-int/lit8 v0, p1, 0x1

    .line 611
    .local v0, "halfLength":I
    invoke-static {p0, v0}, Lcom/android/framework/protobuf/ByteString;->balancedConcat(Ljava/util/Iterator;I)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    .line 612
    .local v1, "left":Lcom/android/framework/protobuf/ByteString;
    sub-int v2, p1, v0

    invoke-static {p0, v2}, Lcom/android/framework/protobuf/ByteString;->balancedConcat(Ljava/util/Iterator;I)Lcom/android/framework/protobuf/ByteString;

    move-result-object v2

    .line 613
    .local v2, "right":Lcom/android/framework/protobuf/ByteString;
    invoke-virtual {v1, v2}, Lcom/android/framework/protobuf/ByteString;->concat(Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v3

    move-object v0, v3

    .line 615
    .end local v1    # "left":Lcom/android/framework/protobuf/ByteString;
    .end local v2    # "right":Lcom/android/framework/protobuf/ByteString;
    .local v0, "result":Lcom/android/framework/protobuf/ByteString;
    :goto_0
    return-object v0

    .line 604
    .end local v0    # "result":Lcom/android/framework/protobuf/ByteString;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string/jumbo v2, "length (%s) must be >= 1"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static blacklist checkIndex(II)V
    .locals 3
    .param p0, "index"    # I
    .param p1, "size"    # I

    .line 1235
    add-int/lit8 v0, p0, 0x1

    sub-int v0, p1, v0

    or-int/2addr v0, p0

    if-gez v0, :cond_1

    .line 1236
    if-gez p0, :cond_0

    .line 1237
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1239
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index > length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1241
    :cond_1
    return-void
.end method

.method static blacklist checkRange(III)I
    .locals 4
    .param p0, "startIndex"    # I
    .param p1, "endIndex"    # I
    .param p2, "size"    # I

    .line 1253
    sub-int v0, p1, p0

    .line 1254
    .local v0, "length":I
    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_2

    .line 1255
    if-ltz p0, :cond_1

    .line 1258
    if-ge p1, p0, :cond_0

    .line 1259
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Beginning index larger than ending index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1263
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1256
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Beginning index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1265
    :cond_2
    return v0
.end method

.method public static blacklist copyFrom(Ljava/lang/Iterable;)Lcom/android/framework/protobuf/ByteString;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/android/framework/protobuf/ByteString;",
            ">;)",
            "Lcom/android/framework/protobuf/ByteString;"
        }
    .end annotation

    .line 582
    .local p0, "byteStrings":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/framework/protobuf/ByteString;>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-nez v0, :cond_1

    .line 583
    const/4 v0, 0x0

    .line 584
    .local v0, "tempSize":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 585
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/framework/protobuf/ByteString;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 586
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 587
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/framework/protobuf/ByteString;>;"
    :cond_0
    nop

    .line 588
    .local v0, "size":I
    goto :goto_1

    .line 589
    .end local v0    # "size":I
    :cond_1
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 592
    .restart local v0    # "size":I
    :goto_1
    if-nez v0, :cond_2

    .line 593
    sget-object v1, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    return-object v1

    .line 596
    :cond_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/framework/protobuf/ByteString;->balancedConcat(Ljava/util/Iterator;I)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist copyFrom(Ljava/lang/String;Ljava/lang/String;)Lcom/android/framework/protobuf/ByteString;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 430
    new-instance v0, Lcom/android/framework/protobuf/ByteString$LiteralByteString;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v0
.end method

.method public static blacklist copyFrom(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/android/framework/protobuf/ByteString;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 442
    new-instance v0, Lcom/android/framework/protobuf/ByteString$LiteralByteString;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v0
.end method

.method public static blacklist copyFrom(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/ByteString;
    .locals 1
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;

    .line 416
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/ByteString;->copyFrom(Ljava/nio/ByteBuffer;I)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist copyFrom(Ljava/nio/ByteBuffer;I)Lcom/android/framework/protobuf/ByteString;
    .locals 2
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .param p1, "size"    # I

    .line 403
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, p1, v0}, Lcom/android/framework/protobuf/ByteString;->checkRange(III)I

    .line 404
    new-array v0, p1, [B

    .line 405
    .local v0, "copy":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 406
    new-instance v1, Lcom/android/framework/protobuf/ByteString$LiteralByteString;

    invoke-direct {v1, v0}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v1
.end method

.method public static blacklist copyFrom([B)Lcom/android/framework/protobuf/ByteString;
    .locals 2
    .param p0, "bytes"    # [B

    .line 363
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/framework/protobuf/ByteString;->copyFrom([BII)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist copyFrom([BII)Lcom/android/framework/protobuf/ByteString;
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "size"    # I

    .line 352
    add-int v0, p1, p2

    array-length v1, p0

    invoke-static {p1, v0, v1}, Lcom/android/framework/protobuf/ByteString;->checkRange(III)I

    .line 353
    new-instance v0, Lcom/android/framework/protobuf/ByteString$LiteralByteString;

    sget-object v1, Lcom/android/framework/protobuf/ByteString;->byteArrayCopier:Lcom/android/framework/protobuf/ByteString$ByteArrayCopier;

    invoke-interface {v1, p0, p1, p2}, Lcom/android/framework/protobuf/ByteString$ByteArrayCopier;->copyFrom([BII)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v0
.end method

.method public static blacklist copyFromUtf8(Ljava/lang/String;)Lcom/android/framework/protobuf/ByteString;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .line 453
    new-instance v0, Lcom/android/framework/protobuf/ByteString$LiteralByteString;

    sget-object v1, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v0
.end method

.method static blacklist newCodedBuilder(I)Lcom/android/framework/protobuf/ByteString$CodedBuilder;
    .locals 2
    .param p0, "size"    # I

    .line 1159
    new-instance v0, Lcom/android/framework/protobuf/ByteString$CodedBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/framework/protobuf/ByteString$CodedBuilder;-><init>(ILcom/android/framework/protobuf/ByteString$1;)V

    return-object v0
.end method

.method public static blacklist newOutput()Lcom/android/framework/protobuf/ByteString$Output;
    .locals 2

    .line 968
    new-instance v0, Lcom/android/framework/protobuf/ByteString$Output;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/ByteString$Output;-><init>(I)V

    return-object v0
.end method

.method public static blacklist newOutput(I)Lcom/android/framework/protobuf/ByteString$Output;
    .locals 1
    .param p0, "initialCapacity"    # I

    .line 954
    new-instance v0, Lcom/android/framework/protobuf/ByteString$Output;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/ByteString$Output;-><init>(I)V

    return-object v0
.end method

.method private static blacklist readChunk(Ljava/io/InputStream;I)Lcom/android/framework/protobuf/ByteString;
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "chunkSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 528
    new-array v0, p1, [B

    .line 529
    .local v0, "buf":[B
    const/4 v1, 0x0

    .line 530
    .local v1, "bytesRead":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 531
    sub-int v2, p1, v1

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 532
    .local v2, "count":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 533
    goto :goto_1

    .line 535
    :cond_0
    add-int/2addr v1, v2

    .line 536
    .end local v2    # "count":I
    goto :goto_0

    .line 538
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 539
    const/4 v2, 0x0

    return-object v2

    .line 543
    :cond_2
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/framework/protobuf/ByteString;->copyFrom([BII)Lcom/android/framework/protobuf/ByteString;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist readFrom(Ljava/io/InputStream;)Lcom/android/framework/protobuf/ByteString;
    .locals 2
    .param p0, "streamToDrain"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 476
    const/16 v0, 0x100

    const/16 v1, 0x2000

    invoke-static {p0, v0, v1}, Lcom/android/framework/protobuf/ByteString;->readFrom(Ljava/io/InputStream;II)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist readFrom(Ljava/io/InputStream;I)Lcom/android/framework/protobuf/ByteString;
    .locals 1
    .param p0, "streamToDrain"    # Ljava/io/InputStream;
    .param p1, "chunkSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 496
    invoke-static {p0, p1, p1}, Lcom/android/framework/protobuf/ByteString;->readFrom(Ljava/io/InputStream;II)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist readFrom(Ljava/io/InputStream;II)Lcom/android/framework/protobuf/ByteString;
    .locals 4
    .param p0, "streamToDrain"    # Ljava/io/InputStream;
    .param p1, "minChunkSize"    # I
    .param p2, "maxChunkSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 506
    .local v0, "results":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/framework/protobuf/ByteString;>;"
    move v1, p1

    .line 508
    .local v1, "chunkSize":I
    :goto_0
    invoke-static {p0, v1}, Lcom/android/framework/protobuf/ByteString;->readChunk(Ljava/io/InputStream;I)Lcom/android/framework/protobuf/ByteString;

    move-result-object v2

    .line 509
    .local v2, "chunk":Lcom/android/framework/protobuf/ByteString;
    if-nez v2, :cond_0

    .line 510
    nop

    .line 516
    .end local v2    # "chunk":Lcom/android/framework/protobuf/ByteString;
    invoke-static {v0}, Lcom/android/framework/protobuf/ByteString;->copyFrom(Ljava/lang/Iterable;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v2

    return-object v2

    .line 512
    .restart local v2    # "chunk":Lcom/android/framework/protobuf/ByteString;
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 513
    mul-int/lit8 v3, v1, 0x2

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 514
    .end local v2    # "chunk":Lcom/android/framework/protobuf/ByteString;
    goto :goto_0
.end method

.method private static blacklist toInt(B)I
    .locals 1
    .param p0, "value"    # B

    .line 243
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static blacklist unsignedLexicographicalComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/android/framework/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 287
    sget-object v0, Lcom/android/framework/protobuf/ByteString;->UNSIGNED_LEXICOGRAPHICAL_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method static blacklist wrap(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/ByteString;
    .locals 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 368
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 370
    .local v0, "offset":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/framework/protobuf/ByteString;->wrap([BII)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    return-object v1

    .line 372
    .end local v0    # "offset":I
    :cond_0
    new-instance v0, Lcom/android/framework/protobuf/NioByteString;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/NioByteString;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method static blacklist wrap([B)Lcom/android/framework/protobuf/ByteString;
    .locals 1
    .param p0, "bytes"    # [B

    .line 382
    new-instance v0, Lcom/android/framework/protobuf/ByteString$LiteralByteString;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v0
.end method

.method static blacklist wrap([BII)Lcom/android/framework/protobuf/ByteString;
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 390
    new-instance v0, Lcom/android/framework/protobuf/ByteString$BoundedByteString;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/framework/protobuf/ByteString$BoundedByteString;-><init>([BII)V

    return-object v0
.end method


# virtual methods
.method public abstract blacklist asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;
.end method

.method public abstract blacklist asReadOnlyByteBufferList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist byteAt(I)B
.end method

.method public final blacklist concat(Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString;
    .locals 3
    .param p1, "other"    # Lcom/android/framework/protobuf/ByteString;

    .line 560
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    const v1, 0x7fffffff

    sub-int/2addr v1, v0

    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 565
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/RopeByteString;->concatenate(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0

    .line 561
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ByteString would be too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 562
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract blacklist copyTo(Ljava/nio/ByteBuffer;)V
.end method

.method public blacklist copyTo([BI)V
    .locals 2
    .param p1, "target"    # [B
    .param p2, "offset"    # I

    .line 632
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/android/framework/protobuf/ByteString;->copyTo([BIII)V

    .line 633
    return-void
.end method

.method public final blacklist copyTo([BIII)V
    .locals 2
    .param p1, "target"    # [B
    .param p2, "sourceOffset"    # I
    .param p3, "targetOffset"    # I
    .param p4, "numberToCopy"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 648
    add-int v0, p2, p4

    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/android/framework/protobuf/ByteString;->checkRange(III)I

    .line 649
    add-int v0, p3, p4

    array-length v1, p1

    invoke-static {p3, v0, v1}, Lcom/android/framework/protobuf/ByteString;->checkRange(III)I

    .line 650
    if-lez p4, :cond_0

    .line 651
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/ByteString;->copyToInternal([BIII)V

    .line 653
    :cond_0
    return-void
.end method

.method protected abstract blacklist copyToInternal([BIII)V
.end method

.method public final blacklist endsWith(Lcom/android/framework/protobuf/ByteString;)Z
    .locals 2
    .param p1, "suffix"    # Lcom/android/framework/protobuf/ByteString;

    .line 336
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/ByteString;->substring(I)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract whitelist test-api equals(Ljava/lang/Object;)Z
.end method

.method protected abstract blacklist getTreeDepth()I
.end method

.method public final whitelist test-api hashCode()I
    .locals 3

    .line 899
    iget v0, p0, Lcom/android/framework/protobuf/ByteString;->hash:I

    .line 901
    .local v0, "h":I
    if-nez v0, :cond_1

    .line 902
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v1

    .line 903
    .local v1, "size":I
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v1}, Lcom/android/framework/protobuf/ByteString;->partialHash(III)I

    move-result v0

    .line 904
    if-nez v0, :cond_0

    .line 905
    const/4 v0, 0x1

    .line 907
    :cond_0
    iput v0, p0, Lcom/android/framework/protobuf/ByteString;->hash:I

    .line 909
    .end local v1    # "size":I
    :cond_1
    return v0
.end method

.method abstract blacklist internalByteAt(I)B
.end method

.method protected abstract blacklist isBalanced()Z
.end method

.method public final blacklist isEmpty()Z
    .locals 1

    .line 226
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract blacklist isValidUtf8()Z
.end method

.method public blacklist iterator()Lcom/android/framework/protobuf/ByteString$ByteIterator;
    .locals 1

    .line 166
    new-instance v0, Lcom/android/framework/protobuf/ByteString$1;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/ByteString$1;-><init>(Lcom/android/framework/protobuf/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api iterator()Ljava/util/Iterator;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString;->iterator()Lcom/android/framework/protobuf/ByteString$ByteIterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist newCodedInput()Lcom/android/framework/protobuf/CodedInputStream;
.end method

.method public abstract blacklist newInput()Ljava/io/InputStream;
.end method

.method protected abstract blacklist partialHash(III)I
.end method

.method protected abstract blacklist partialIsValidUtf8(III)I
.end method

.method protected final blacklist peekCachedHashCode()I
    .locals 1

    .line 1212
    iget v0, p0, Lcom/android/framework/protobuf/ByteString;->hash:I

    return v0
.end method

.method public abstract blacklist size()I
.end method

.method public final blacklist startsWith(Lcom/android/framework/protobuf/ByteString;)Z
    .locals 3
    .param p1, "prefix"    # Lcom/android/framework/protobuf/ByteString;

    .line 324
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/android/framework/protobuf/ByteString;->substring(II)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public final blacklist substring(I)Lcom/android/framework/protobuf/ByteString;
    .locals 1
    .param p1, "beginIndex"    # I

    .line 301
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/ByteString;->substring(II)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist substring(II)Lcom/android/framework/protobuf/ByteString;
.end method

.method public final blacklist toByteArray()[B
    .locals 3

    .line 681
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    .line 682
    .local v0, "size":I
    if-nez v0, :cond_0

    .line 683
    sget-object v1, Lcom/android/framework/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    return-object v1

    .line 685
    :cond_0
    new-array v1, v0, [B

    .line 686
    .local v1, "result":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2, v0}, Lcom/android/framework/protobuf/ByteString;->copyToInternal([BIII)V

    .line 687
    return-object v1
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 1270
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1271
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1270
    const-string v1, "<ByteString@%s size=%d>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 775
    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/ByteString;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 776
    :catch_0
    move-exception v0

    .line 777
    .local v0, "e":Ljava/nio/charset/UnsupportedCharsetException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 778
    .local v1, "exception":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 779
    throw v1
.end method

.method public final blacklist toString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 791
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/ByteString;->toStringInternal(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected abstract blacklist toStringInternal(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public final blacklist toStringUtf8()Ljava/lang/String;
    .locals 1

    .line 811
    sget-object v0, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/ByteString;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract blacklist writeTo(Lcom/android/framework/protobuf/ByteOutput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final blacklist writeTo(Ljava/io/OutputStream;II)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "sourceOffset"    # I
    .param p3, "numberToWrite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 708
    add-int v0, p2, p3

    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/android/framework/protobuf/ByteString;->checkRange(III)I

    .line 709
    if-lez p3, :cond_0

    .line 710
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    .line 712
    :cond_0
    return-void
.end method

.method abstract blacklist writeToInternal(Ljava/io/OutputStream;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract blacklist writeToReverse(Lcom/android/framework/protobuf/ByteOutput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
