.class public Landroid/content/pm/LimitedLengthInputStream;
.super Ljava/io/FilterInputStream;
.source "LimitedLengthInputStream.java"


# instance fields
.field private final greylist-max-o mEnd:J

.field private greylist-max-o mOffset:J


# direct methods
.method public constructor greylist-max-o <init>(Ljava/io/InputStream;JJ)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 36
    if-eqz p1, :cond_3

    .line 40
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    .line 44
    cmp-long v0, p4, v0

    if-ltz v0, :cond_1

    .line 48
    const-wide v0, 0x7fffffffffffffffL

    sub-long/2addr v0, p2

    cmp-long v0, p4, v0

    if-gtz v0, :cond_0

    .line 52
    add-long v0, p2, p4

    iput-wide v0, p0, Landroid/content/pm/LimitedLengthInputStream;->mEnd:J

    .line 54
    invoke-virtual {p0, p2, p3}, Landroid/content/pm/LimitedLengthInputStream;->skip(J)J

    .line 55
    iput-wide p2, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    .line 56
    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "offset + length > Long.MAX_VALUE"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "length < 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "offset < 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized whitelist test-api read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 60
    :try_start_0
    iget-wide v0, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    iget-wide v2, p0, Landroid/content/pm/LimitedLengthInputStream;->mEnd:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 61
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 64
    :cond_0
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :try_start_1
    iput-wide v0, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    .line 65
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 59
    .end local p0    # "this":Landroid/content/pm/LimitedLengthInputStream;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist test-api read([B)I
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/content/pm/LimitedLengthInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public whitelist test-api read([BII)I
    .locals 7
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-wide v0, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    iget-wide v2, p0, Landroid/content/pm/LimitedLengthInputStream;->mEnd:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 71
    const/4 v0, -0x1

    return v0

    .line 74
    :cond_0
    array-length v0, p1

    .line 75
    .local v0, "arrayLength":I
    invoke-static {v0, p2, p3}, Lcom/android/internal/util/ArrayUtils;->throwsIfOutOfBounds(III)V

    .line 77
    iget-wide v1, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    const-wide v3, 0x7fffffffffffffffL

    int-to-long v5, p3

    sub-long/2addr v3, v5

    cmp-long v3, v1, v3

    if-gtz v3, :cond_2

    .line 81
    int-to-long v3, p3

    add-long/2addr v3, v1

    iget-wide v5, p0, Landroid/content/pm/LimitedLengthInputStream;->mEnd:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 82
    sub-long/2addr v5, v1

    long-to-int p3, v5

    .line 85
    :cond_1
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v1

    .line 86
    .local v1, "numRead":I
    iget-wide v2, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    .line 88
    return v1

    .line 78
    .end local v1    # "numRead":I
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "offset out of bounds: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
