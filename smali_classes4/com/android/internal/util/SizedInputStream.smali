.class public Lcom/android/internal/util/SizedInputStream;
.super Ljava/io/InputStream;
.source "SizedInputStream.java"


# instance fields
.field private blacklist mLength:J

.field private final blacklist mWrapped:Ljava/io/InputStream;


# direct methods
.method public constructor blacklist <init>(Ljava/io/InputStream;J)V
    .locals 0
    .param p1, "wrapped"    # Ljava/io/InputStream;
    .param p2, "length"    # J

    .line 32
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/internal/util/SizedInputStream;->mWrapped:Ljava/io/InputStream;

    .line 34
    iput-wide p2, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    .line 35
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    .line 40
    iget-object v0, p0, Lcom/android/internal/util/SizedInputStream;->mWrapped:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 41
    return-void
.end method

.method public whitelist test-api read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-static {p0}, Llibcore/io/Streams;->readSingleByte(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api read([BII)I
    .locals 8
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-wide v0, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, -0x1

    if-gtz v4, :cond_0

    .line 51
    return v5

    .line 52
    :cond_0
    int-to-long v6, p3

    cmp-long v4, v6, v0

    if-lez v4, :cond_1

    .line 53
    long-to-int p3, v0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/android/internal/util/SizedInputStream;->mWrapped:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 57
    .local v0, "n":I
    if-ne v0, v5, :cond_3

    .line 58
    iget-wide v4, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    cmp-long v1, v4, v2

    if-gtz v1, :cond_2

    goto :goto_0

    .line 59
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected EOF; expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " more bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_3
    iget-wide v1, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    .line 64
    :goto_0
    return v0
.end method
