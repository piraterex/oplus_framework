.class Landroid/media/MediaCodec$BufferMap$CodecBuffer;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec$BufferMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CodecBuffer"
.end annotation


# instance fields
.field private greylist-max-o mByteBuffer:Ljava/nio/ByteBuffer;

.field private greylist-max-o mImage:Landroid/media/Image;


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 3761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/MediaCodec$BufferMap$CodecBuffer-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaCodec$BufferMap$CodecBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o free()V
    .locals 2

    .line 3766
    iget-object v0, p0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3768
    invoke-static {v0}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 3769
    iput-object v1, p0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 3771
    :cond_0
    iget-object v0, p0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->mImage:Landroid/media/Image;

    if-eqz v0, :cond_1

    .line 3772
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 3773
    iput-object v1, p0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->mImage:Landroid/media/Image;

    .line 3775
    :cond_1
    return-void
.end method

.method public greylist-max-o setByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 3783
    invoke-virtual {p0}, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->free()V

    .line 3784
    iput-object p1, p0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 3785
    return-void
.end method

.method public greylist-max-o setImage(Landroid/media/Image;)V
    .locals 0
    .param p1, "image"    # Landroid/media/Image;

    .line 3778
    invoke-virtual {p0}, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->free()V

    .line 3779
    iput-object p1, p0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->mImage:Landroid/media/Image;

    .line 3780
    return-void
.end method
