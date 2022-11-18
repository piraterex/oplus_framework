.class Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;
.super Landroid/media/Image$Plane;
.source "ImageWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ImageWriter$WriterSurfaceImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfacePlane"
.end annotation


# instance fields
.field private greylist-max-o mBuffer:Ljava/nio/ByteBuffer;

.field private final greylist-max-o mPixelStride:I

.field private final greylist-max-o mRowStride:I

.field final synthetic blacklist this$0:Landroid/media/ImageWriter$WriterSurfaceImage;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mclearBuffer(Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->clearBuffer()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/media/ImageWriter$WriterSurfaceImage;IILjava/nio/ByteBuffer;)V
    .locals 0
    .param p2, "rowStride"    # I
    .param p3, "pixelStride"    # I
    .param p4, "buffer"    # Ljava/nio/ByteBuffer;

    .line 1227
    iput-object p1, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->this$0:Landroid/media/ImageWriter$WriterSurfaceImage;

    invoke-direct {p0}, Landroid/media/Image$Plane;-><init>()V

    .line 1228
    iput p2, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mRowStride:I

    .line 1229
    iput p3, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mPixelStride:I

    .line 1230
    iput-object p4, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    .line 1236
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1237
    return-void
.end method

.method private greylist-max-o clearBuffer()V
    .locals 1

    .line 1260
    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 1261
    return-void

    .line 1264
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1265
    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 1267
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    .line 1268
    return-void
.end method


# virtual methods
.method public whitelist getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1253
    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->this$0:Landroid/media/ImageWriter$WriterSurfaceImage;

    invoke-virtual {v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1254
    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public whitelist getPixelStride()I
    .locals 1

    .line 1247
    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->this$0:Landroid/media/ImageWriter$WriterSurfaceImage;

    invoke-virtual {v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1248
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mPixelStride:I

    return v0
.end method

.method public whitelist getRowStride()I
    .locals 1

    .line 1241
    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->this$0:Landroid/media/ImageWriter$WriterSurfaceImage;

    invoke-virtual {v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1242
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mRowStride:I

    return v0
.end method
