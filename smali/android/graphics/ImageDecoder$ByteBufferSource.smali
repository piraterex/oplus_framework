.class Landroid/graphics/ImageDecoder$ByteBufferSource;
.super Landroid/graphics/ImageDecoder$Source;
.source "ImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteBufferSource"
.end annotation


# instance fields
.field private final greylist-max-o mBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor greylist-max-o <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 235
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/ImageDecoder$Source;-><init>(Landroid/graphics/ImageDecoder$Source-IA;)V

    .line 236
    iput-object p1, p0, Landroid/graphics/ImageDecoder$ByteBufferSource;->mBuffer:Ljava/nio/ByteBuffer;

    .line 237
    return-void
.end method


# virtual methods
.method public blacklist createImageDecoder(Z)Landroid/graphics/ImageDecoder;
    .locals 3
    .param p1, "preferAnimation"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Landroid/graphics/ImageDecoder$ByteBufferSource;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/graphics/ImageDecoder$ByteBufferSource;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Landroid/graphics/ImageDecoder$ByteBufferSource;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/ImageDecoder$ByteBufferSource;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    .line 244
    .local v0, "offset":I
    iget-object v1, p0, Landroid/graphics/ImageDecoder$ByteBufferSource;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Landroid/graphics/ImageDecoder$ByteBufferSource;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v1, v2

    .line 245
    .local v1, "length":I
    iget-object v2, p0, Landroid/graphics/ImageDecoder$ByteBufferSource;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v2, v0, v1, p1, p0}, Landroid/graphics/ImageDecoder;->-$$Nest$smnCreate([BIIZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v2

    return-object v2

    .line 247
    .end local v0    # "offset":I
    .end local v1    # "length":I
    :cond_0
    iget-object v0, p0, Landroid/graphics/ImageDecoder$ByteBufferSource;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 248
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-static {v0, v1, v2, p1, p0}, Landroid/graphics/ImageDecoder;->-$$Nest$smnCreate(Ljava/nio/ByteBuffer;IIZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v1

    return-object v1
.end method
