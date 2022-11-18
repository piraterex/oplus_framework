.class public final Landroid/media/ImageWriter$Builder;
.super Ljava/lang/Object;
.source "ImageWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ImageWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDataSpace:I

.field private blacklist mHardwareBufferFormat:I

.field private blacklist mHeight:I

.field private blacklist mImageFormat:I

.field private blacklist mMaxImages:I

.field private blacklist mSurface:Landroid/view/Surface;

.field private blacklist mUsage:J

.field private blacklist mUseLegacyImageFormat:Z

.field private blacklist mUseSurfaceImageFormatInfo:Z

.field private blacklist mWidth:I


# direct methods
.method public constructor whitelist <init>(Landroid/view/Surface;)V
    .locals 4
    .param p1, "surface"    # Landroid/view/Surface;

    .line 903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 886
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/ImageWriter$Builder;->mWidth:I

    .line 887
    iput v0, p0, Landroid/media/ImageWriter$Builder;->mHeight:I

    .line 888
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/ImageWriter$Builder;->mMaxImages:I

    .line 889
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/ImageWriter$Builder;->mImageFormat:I

    .line 890
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/media/ImageWriter$Builder;->mUsage:J

    .line 891
    iput v0, p0, Landroid/media/ImageWriter$Builder;->mHardwareBufferFormat:I

    .line 892
    iput v1, p0, Landroid/media/ImageWriter$Builder;->mDataSpace:I

    .line 893
    iput-boolean v0, p0, Landroid/media/ImageWriter$Builder;->mUseSurfaceImageFormatInfo:Z

    .line 894
    iput-boolean v1, p0, Landroid/media/ImageWriter$Builder;->mUseLegacyImageFormat:Z

    .line 904
    iput-object p1, p0, Landroid/media/ImageWriter$Builder;->mSurface:Landroid/view/Surface;

    .line 905
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/ImageWriter;
    .locals 23

    .line 1025
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/media/ImageWriter$Builder;->mUseLegacyImageFormat:Z

    if-eqz v1, :cond_0

    .line 1026
    new-instance v1, Landroid/media/ImageWriter;

    iget-object v3, v0, Landroid/media/ImageWriter$Builder;->mSurface:Landroid/view/Surface;

    iget v4, v0, Landroid/media/ImageWriter$Builder;->mMaxImages:I

    iget-boolean v5, v0, Landroid/media/ImageWriter$Builder;->mUseSurfaceImageFormatInfo:Z

    iget v6, v0, Landroid/media/ImageWriter$Builder;->mImageFormat:I

    iget v7, v0, Landroid/media/ImageWriter$Builder;->mWidth:I

    iget v8, v0, Landroid/media/ImageWriter$Builder;->mHeight:I

    iget-wide v9, v0, Landroid/media/ImageWriter$Builder;->mUsage:J

    const/4 v11, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v11}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;IZIIIJLandroid/media/ImageWriter-IA;)V

    return-object v1

    .line 1029
    :cond_0
    new-instance v1, Landroid/media/ImageWriter;

    iget-object v13, v0, Landroid/media/ImageWriter$Builder;->mSurface:Landroid/view/Surface;

    iget v14, v0, Landroid/media/ImageWriter$Builder;->mMaxImages:I

    iget-boolean v15, v0, Landroid/media/ImageWriter$Builder;->mUseSurfaceImageFormatInfo:Z

    iget v2, v0, Landroid/media/ImageWriter$Builder;->mHardwareBufferFormat:I

    iget v3, v0, Landroid/media/ImageWriter$Builder;->mDataSpace:I

    iget v4, v0, Landroid/media/ImageWriter$Builder;->mWidth:I

    iget v5, v0, Landroid/media/ImageWriter$Builder;->mHeight:I

    iget-wide v6, v0, Landroid/media/ImageWriter$Builder;->mUsage:J

    const/16 v22, 0x0

    move-object v12, v1

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    move-wide/from16 v20, v6

    invoke-direct/range {v12 .. v22}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;IZIIIIJLandroid/media/ImageWriter-IA;)V

    return-object v1
.end method

.method public whitelist setDataSpace(I)Landroid/media/ImageWriter$Builder;
    .locals 1
    .param p1, "dataSpace"    # I

    .line 994
    iput p1, p0, Landroid/media/ImageWriter$Builder;->mDataSpace:I

    .line 995
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/ImageWriter$Builder;->mImageFormat:I

    .line 996
    iput-boolean v0, p0, Landroid/media/ImageWriter$Builder;->mUseLegacyImageFormat:Z

    .line 997
    iput-boolean v0, p0, Landroid/media/ImageWriter$Builder;->mUseSurfaceImageFormatInfo:Z

    .line 998
    return-object p0
.end method

.method public whitelist setHardwareBufferFormat(I)Landroid/media/ImageWriter$Builder;
    .locals 1
    .param p1, "hardwareBufferFormat"    # I

    .line 977
    iput p1, p0, Landroid/media/ImageWriter$Builder;->mHardwareBufferFormat:I

    .line 978
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/ImageWriter$Builder;->mImageFormat:I

    .line 979
    iput-boolean v0, p0, Landroid/media/ImageWriter$Builder;->mUseLegacyImageFormat:Z

    .line 980
    iput-boolean v0, p0, Landroid/media/ImageWriter$Builder;->mUseSurfaceImageFormatInfo:Z

    .line 981
    return-object p0
.end method

.method public whitelist setImageFormat(I)Landroid/media/ImageWriter$Builder;
    .locals 3
    .param p1, "imageFormat"    # I

    .line 947
    invoke-static {p1}, Landroid/graphics/ImageFormat;->isPublicFormat(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 948
    invoke-static {p1}, Landroid/graphics/PixelFormat;->isPublicFormat(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 949
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid imageFormat is specified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 952
    :cond_1
    :goto_0
    iput p1, p0, Landroid/media/ImageWriter$Builder;->mImageFormat:I

    .line 953
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/ImageWriter$Builder;->mUseLegacyImageFormat:Z

    .line 954
    iput v0, p0, Landroid/media/ImageWriter$Builder;->mHardwareBufferFormat:I

    .line 955
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/ImageWriter$Builder;->mDataSpace:I

    .line 956
    iput-boolean v0, p0, Landroid/media/ImageWriter$Builder;->mUseSurfaceImageFormatInfo:Z

    .line 957
    return-object p0
.end method

.method public whitelist setMaxImages(I)Landroid/media/ImageWriter$Builder;
    .locals 0
    .param p1, "maxImages"    # I

    .line 931
    iput p1, p0, Landroid/media/ImageWriter$Builder;->mMaxImages:I

    .line 932
    return-object p0
.end method

.method public whitelist setUsage(J)Landroid/media/ImageWriter$Builder;
    .locals 0
    .param p1, "usage"    # J

    .line 1015
    iput-wide p1, p0, Landroid/media/ImageWriter$Builder;->mUsage:J

    .line 1016
    return-object p0
.end method

.method public whitelist setWidthAndHeight(II)Landroid/media/ImageWriter$Builder;
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 918
    iput p1, p0, Landroid/media/ImageWriter$Builder;->mWidth:I

    .line 919
    iput p2, p0, Landroid/media/ImageWriter$Builder;->mHeight:I

    .line 920
    return-object p0
.end method
