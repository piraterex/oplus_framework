.class public Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;
.super Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
.source "AssetFileDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/AssetFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoCloseInputStream"
.end annotation


# instance fields
.field private greylist-max-o mRemaining:J


# direct methods
.method public constructor whitelist <init>(Landroid/content/res/AssetFileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Landroid/content/res/AssetFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 210
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v0

    invoke-super {p0, v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->skip(J)J

    .line 211
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    .line 212
    return-void
.end method


# virtual methods
.method public whitelist test-api available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 217
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    long-to-int v0, v0

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0

    .line 218
    :cond_1
    invoke-super {p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->available()I

    move-result v0

    .line 216
    :goto_0
    return v0
.end method

.method public whitelist test-api mark(I)V
    .locals 4
    .param p1, "readlimit"    # I

    .line 261
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 263
    return-void

    .line 265
    :cond_0
    invoke-super {p0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->mark(I)V

    .line 266
    return-void
.end method

.method public whitelist test-api markSupported()Z
    .locals 4

    .line 270
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 271
    const/4 v0, 0x0

    return v0

    .line 273
    :cond_0
    invoke-super {p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 224
    .local v1, "buffer":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->read([BII)I

    move-result v0

    .line 225
    .local v0, "result":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    aget-byte v2, v1, v2

    and-int/lit16 v3, v2, 0xff

    :goto_0
    return v3
.end method

.method public whitelist test-api read([B)I
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public whitelist test-api read([BII)I
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    .line 231
    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, -0x1

    return v0

    .line 232
    :cond_0
    int-to-long v2, p3

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    long-to-int p3, v0

    .line 233
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read([BII)I

    move-result v0

    .line 234
    .local v0, "res":I
    if-ltz v0, :cond_2

    iget-wide v1, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    .line 235
    :cond_2
    return v0

    .line 238
    .end local v0    # "res":I
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized whitelist test-api reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 278
    :try_start_0
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 280
    monitor-exit p0

    return-void

    .line 282
    :cond_0
    :try_start_1
    invoke-super {p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    monitor-exit p0

    return-void

    .line 277
    .end local p0    # "this":Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist test-api skip(J)J
    .locals 5
    .param p1, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    .line 249
    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 250
    :cond_0
    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    iget-wide p1, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    .line 251
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->skip(J)J

    move-result-wide v0

    .line 252
    .local v0, "res":J
    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    .line 253
    :cond_2
    return-wide v0

    .line 256
    .end local v0    # "res":J
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
