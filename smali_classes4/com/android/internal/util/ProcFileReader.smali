.class public Lcom/android/internal/util/ProcFileReader;
.super Ljava/lang/Object;
.source "ProcFileReader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final blacklist mBuffer:[B

.field private blacklist mLineFinished:Z

.field private final blacklist mStream:Ljava/io/InputStream;

.field private blacklist mTail:I


# direct methods
.method public constructor blacklist <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    const/16 v0, 0x1000

    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;I)V

    .line 46
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/internal/util/ProcFileReader;->mStream:Ljava/io/InputStream;

    .line 50
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    .line 51
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 56
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->fillBuf()I

    .line 57
    return-void
.end method

.method private blacklist consumeBuf(I)V
    .locals 3
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    :goto_0
    iget v0, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    if-ge p1, v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    aget-byte v1, v1, p1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 85
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    const/4 v2, 0x0

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    iget v0, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    .line 89
    if-nez v0, :cond_1

    .line 90
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->fillBuf()I

    .line 92
    :cond_1
    return-void
.end method

.method private blacklist fillBuf()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    array-length v1, v0

    iget v2, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    sub-int/2addr v1, v2

    .line 64
    .local v1, "length":I
    if-eqz v1, :cond_1

    .line 68
    iget-object v3, p0, Lcom/android/internal/util/ProcFileReader;->mStream:Ljava/io/InputStream;

    invoke-virtual {v3, v0, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 69
    .local v0, "read":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 70
    iget v2, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    .line 72
    :cond_0
    return v0

    .line 65
    .end local v0    # "read":I
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v2, "attempting to fill already-full buffer"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist invalidLong(I)Ljava/lang/NumberFormatException;
    .locals 6
    .param p1, "tokenIndex"    # I

    .line 237
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, p1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private blacklist nextTokenIndex()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget-boolean v0, p0, Lcom/android/internal/util/ProcFileReader;->mLineFinished:Z

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, -0x1

    return v0

    .line 106
    :cond_0
    const/4 v0, 0x0

    .line 109
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    if-ge v0, v1, :cond_3

    .line 110
    iget-object v1, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    aget-byte v1, v1, v0

    .line 111
    .local v1, "b":B
    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 112
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/util/ProcFileReader;->mLineFinished:Z

    .line 113
    return v0

    .line 115
    :cond_1
    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    .line 116
    return v0

    .line 109
    .end local v1    # "b":B
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->fillBuf()I

    move-result v1

    if-lez v1, :cond_4

    goto :goto_0

    .line 121
    :cond_4
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "End of stream while looking for token boundary"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist parseAndConsumeLong(IZ)J
    .locals 9
    .param p1, "tokenIndex"    # I
    .param p2, "stopAtInvalid"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v2, 0x1

    const/16 v3, 0x2d

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 212
    .local v0, "negative":Z
    :goto_0
    const-wide/16 v3, 0x0

    .line 213
    .local v3, "result":J
    if-eqz v0, :cond_1

    move v1, v2

    .local v1, "i":I
    :cond_1
    :goto_1
    if-ge v1, p1, :cond_6

    .line 214
    iget-object v2, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    aget-byte v2, v2, v1

    add-int/lit8 v2, v2, -0x30

    .line 215
    .local v2, "digit":I
    if-ltz v2, :cond_4

    const/16 v5, 0x9

    if-le v2, v5, :cond_2

    goto :goto_2

    .line 225
    :cond_2
    const-wide/16 v5, 0xa

    mul-long/2addr v5, v3

    int-to-long v7, v2

    sub-long/2addr v5, v7

    .line 226
    .local v5, "next":J
    cmp-long v7, v5, v3

    if-gtz v7, :cond_3

    .line 229
    move-wide v3, v5

    .line 213
    .end local v2    # "digit":I
    .end local v5    # "next":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 227
    .restart local v2    # "digit":I
    .restart local v5    # "next":J
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/util/ProcFileReader;->invalidLong(I)Ljava/lang/NumberFormatException;

    move-result-object v7

    throw v7

    .line 216
    .end local v5    # "next":J
    :cond_4
    :goto_2
    if-eqz p2, :cond_5

    .line 217
    goto :goto_3

    .line 219
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/internal/util/ProcFileReader;->invalidLong(I)Ljava/lang/NumberFormatException;

    move-result-object v5

    throw v5

    .line 232
    .end local v1    # "i":I
    .end local v2    # "digit":I
    :cond_6
    :goto_3
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/util/ProcFileReader;->consumeBuf(I)V

    .line 233
    if-eqz v0, :cond_7

    move-wide v1, v3

    goto :goto_4

    :cond_7
    neg-long v1, v3

    :goto_4
    return-wide v1
.end method

.method private blacklist parseAndConsumeString(I)Ljava/lang/String;
    .locals 4
    .param p1, "tokenIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, p1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 201
    .local v0, "s":Ljava/lang/String;
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/util/ProcFileReader;->consumeBuf(I)V

    .line 202
    return-object v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 285
    return-void
.end method

.method public blacklist finishLine()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    iget-boolean v0, p0, Lcom/android/internal/util/ProcFileReader;->mLineFinished:Z

    if-eqz v0, :cond_0

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/util/ProcFileReader;->mLineFinished:Z

    .line 138
    return-void

    .line 141
    :cond_0
    const/4 v0, 0x0

    .line 144
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    if-ge v0, v1, :cond_2

    .line 145
    iget-object v1, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    aget-byte v1, v1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 146
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/util/ProcFileReader;->consumeBuf(I)V

    .line 147
    return-void

    .line 144
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->fillBuf()I

    move-result v1

    if-lez v1, :cond_3

    goto :goto_0

    .line 152
    :cond_3
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "End of stream while looking for line boundary"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist hasMoreData()Z
    .locals 1

    .line 128
    iget v0, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist nextIgnored()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->nextTokenIndex()I

    move-result v0

    .line 257
    .local v0, "tokenIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 260
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/util/ProcFileReader;->consumeBuf(I)V

    .line 262
    return-void

    .line 258
    :cond_0
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "Missing required token"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist nextInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    invoke-virtual {p0}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v0

    .line 246
    .local v0, "value":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 249
    long-to-int v2, v0

    return v2

    .line 247
    :cond_0
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string/jumbo v3, "parsed value larger than integer"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist nextLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/ProcFileReader;->nextLong(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist nextLong(Z)J
    .locals 3
    .param p1, "stopAtInvalid"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->nextTokenIndex()I

    move-result v0

    .line 179
    .local v0, "tokenIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 182
    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/ProcFileReader;->parseAndConsumeLong(IZ)J

    move-result-wide v1

    return-wide v1

    .line 180
    :cond_0
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "Missing required long"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist nextOptionalLong(J)J
    .locals 3
    .param p1, "def"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->nextTokenIndex()I

    move-result v0

    .line 192
    .local v0, "tokenIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 193
    return-wide p1

    .line 195
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/ProcFileReader;->parseAndConsumeLong(IZ)J

    move-result-wide v1

    return-wide v1
.end method

.method public blacklist nextString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->nextTokenIndex()I

    move-result v0

    .line 160
    .local v0, "tokenIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 163
    invoke-direct {p0, v0}, Lcom/android/internal/util/ProcFileReader;->parseAndConsumeString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 161
    :cond_0
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "Missing required string"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist rewind()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mStream:Ljava/io/InputStream;

    instance-of v1, v0, Ljava/io/FileInputStream;

    if-eqz v1, :cond_0

    .line 270
    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    goto :goto_0

    .line 271
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 277
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    .line 278
    iput-boolean v0, p0, Lcom/android/internal/util/ProcFileReader;->mLineFinished:Z

    .line 279
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->fillBuf()I

    .line 280
    return-void

    .line 274
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The InputStream is NOT markable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
