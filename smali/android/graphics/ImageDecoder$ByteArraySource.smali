.class Landroid/graphics/ImageDecoder$ByteArraySource;
.super Landroid/graphics/ImageDecoder$Source;
.source "ImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteArraySource"
.end annotation


# instance fields
.field private final greylist-max-o mData:[B

.field private final greylist-max-o mLength:I

.field private final greylist-max-o mOffset:I


# direct methods
.method constructor greylist-max-o <init>([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/ImageDecoder$Source;-><init>(Landroid/graphics/ImageDecoder$Source-IA;)V

    .line 220
    iput-object p1, p0, Landroid/graphics/ImageDecoder$ByteArraySource;->mData:[B

    .line 221
    iput p2, p0, Landroid/graphics/ImageDecoder$ByteArraySource;->mOffset:I

    .line 222
    iput p3, p0, Landroid/graphics/ImageDecoder$ByteArraySource;->mLength:I

    .line 223
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

    .line 230
    iget-object v0, p0, Landroid/graphics/ImageDecoder$ByteArraySource;->mData:[B

    iget v1, p0, Landroid/graphics/ImageDecoder$ByteArraySource;->mOffset:I

    iget v2, p0, Landroid/graphics/ImageDecoder$ByteArraySource;->mLength:I

    invoke-static {v0, v1, v2, p1, p0}, Landroid/graphics/ImageDecoder;->-$$Nest$smnCreate([BIIZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v0

    return-object v0
.end method
