.class Landroid/media/ExifInterface$1;
.super Landroid/media/MediaDataSource;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/ExifInterface;->getHeifAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist mPosition:J

.field final synthetic blacklist this$0:Landroid/media/ExifInterface;

.field final synthetic blacklist val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;


# direct methods
.method constructor blacklist <init>(Landroid/media/ExifInterface;Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/ExifInterface;

    .line 3090
    iput-object p1, p0, Landroid/media/ExifInterface$1;->this$0:Landroid/media/ExifInterface;

    iput-object p2, p0, Landroid/media/ExifInterface$1;->val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {p0}, Landroid/media/MediaDataSource;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3094
    return-void
.end method

.method public whitelist getSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3137
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public whitelist readAt(J[BII)I
    .locals 6
    .param p1, "position"    # J
    .param p3, "buffer"    # [B
    .param p4, "offset"    # I
    .param p5, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3099
    if-nez p5, :cond_0

    .line 3100
    const/4 v0, 0x0

    return v0

    .line 3102
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, -0x1

    if-gez v2, :cond_1

    .line 3103
    return v3

    .line 3106
    :cond_1
    :try_start_0
    iget-wide v4, p0, Landroid/media/ExifInterface$1;->mPosition:J

    cmp-long v2, v4, p1

    if-eqz v2, :cond_3

    .line 3111
    cmp-long v0, v4, v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Landroid/media/ExifInterface$1;->val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v4, v0

    cmp-long v0, p1, v4

    if-ltz v0, :cond_2

    .line 3112
    return v3

    .line 3114
    :cond_2
    iget-object v0, p0, Landroid/media/ExifInterface$1;->val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-virtual {v0, p1, p2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 3115
    iput-wide p1, p0, Landroid/media/ExifInterface$1;->mPosition:J

    .line 3121
    :cond_3
    iget-object v0, p0, Landroid/media/ExifInterface$1;->val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v0

    if-le p5, v0, :cond_4

    .line 3122
    iget-object v0, p0, Landroid/media/ExifInterface$1;->val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v0

    move p5, v0

    .line 3125
    :cond_4
    iget-object v0, p0, Landroid/media/ExifInterface$1;->val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-virtual {v0, p3, p4, p5}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([BII)I

    move-result v0

    .line 3126
    .local v0, "bytesRead":I
    if-ltz v0, :cond_5

    .line 3127
    iget-wide v1, p0, Landroid/media/ExifInterface$1;->mPosition:J

    int-to-long v4, v0

    add-long/2addr v1, v4

    iput-wide v1, p0, Landroid/media/ExifInterface$1;->mPosition:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3128
    return v0

    .line 3126
    .end local v0    # "bytesRead":I
    :cond_5
    goto :goto_0

    .line 3130
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 3131
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/ExifInterface$1;->mPosition:J

    .line 3132
    return v3
.end method
