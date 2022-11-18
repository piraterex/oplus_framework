.class public final Landroid/media/MediaCodec$BufferInfo;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BufferInfo"
.end annotation


# instance fields
.field public whitelist flags:I

.field public whitelist offset:I

.field public whitelist presentationTimeUs:J

.field public whitelist size:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 1589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o dup()Landroid/media/MediaCodec$BufferInfo;
    .locals 7

    .line 1647
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 1648
    .local v0, "copy":Landroid/media/MediaCodec$BufferInfo;
    iget v2, p0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, p0, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v4, p0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v6, p0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 1649
    return-object v0
.end method

.method public whitelist set(IIJI)V
    .locals 0
    .param p1, "newOffset"    # I
    .param p2, "newSize"    # I
    .param p3, "newTimeUs"    # J
    .param p5, "newFlags"    # I

    .line 1602
    iput p1, p0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 1603
    iput p2, p0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 1604
    iput-wide p3, p0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 1605
    iput p5, p0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 1606
    return-void
.end method
