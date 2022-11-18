.class public Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;
.super Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
.source "AssetFileDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/AssetFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoCloseOutputStream"
.end annotation


# instance fields
.field private greylist-max-o mRemaining:J


# direct methods
.method public constructor whitelist <init>(Landroid/content/res/AssetFileDescriptor;)V
    .locals 4
    .param p1, "fd"    # Landroid/content/res/AssetFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 297
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/ParcelFileDescriptor;->seekTo(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 300
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    .line 301
    return-void

    .line 298
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to seek"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api write(I)V
    .locals 5
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 333
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 334
    :cond_0
    invoke-super {p0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write(I)V

    .line 335
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    .line 336
    return-void

    .line 339
    :cond_1
    invoke-super {p0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write(I)V

    .line 340
    return-void
.end method

.method public whitelist test-api write([B)V
    .locals 5
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 319
    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    .line 320
    :cond_0
    array-length v2, p1

    .line 321
    .local v2, "count":I
    int-to-long v3, v2

    cmp-long v3, v3, v0

    if-lez v3, :cond_1

    long-to-int v2, v0

    .line 322
    :cond_1
    invoke-super {p0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write([B)V

    .line 323
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    int-to-long v3, v2

    sub-long/2addr v0, v3

    iput-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    .line 324
    return-void

    .line 327
    .end local v2    # "count":I
    :cond_2
    invoke-super {p0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write([B)V

    .line 328
    return-void
.end method

.method public whitelist test-api write([BII)V
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 306
    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    .line 307
    :cond_0
    int-to-long v2, p3

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    long-to-int p3, v0

    .line 308
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write([BII)V

    .line 309
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    .line 310
    return-void

    .line 313
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write([BII)V

    .line 314
    return-void
.end method
