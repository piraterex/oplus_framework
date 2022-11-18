.class public final Landroid/media/ImageReader$Builder;
.super Ljava/lang/Object;
.source "ImageReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ImageReader;
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

.field private blacklist mUsage:J

.field private blacklist mUseLegacyImageFormat:Z

.field private blacklist mWidth:I


# direct methods
.method public constructor whitelist <init>(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 928
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/ImageReader$Builder;->mMaxImages:I

    .line 929
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/ImageReader$Builder;->mImageFormat:I

    .line 930
    iput v0, p0, Landroid/media/ImageReader$Builder;->mHardwareBufferFormat:I

    .line 931
    iput v1, p0, Landroid/media/ImageReader$Builder;->mDataSpace:I

    .line 932
    const-wide/16 v2, 0x3

    iput-wide v2, p0, Landroid/media/ImageReader$Builder;->mUsage:J

    .line 933
    iput-boolean v1, p0, Landroid/media/ImageReader$Builder;->mUseLegacyImageFormat:Z

    .line 945
    iput p1, p0, Landroid/media/ImageReader$Builder;->mWidth:I

    .line 946
    iput p2, p0, Landroid/media/ImageReader$Builder;->mHeight:I

    .line 947
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/ImageReader;
    .locals 21

    .line 1061
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/media/ImageReader$Builder;->mUseLegacyImageFormat:Z

    if-eqz v1, :cond_0

    .line 1062
    new-instance v1, Landroid/media/ImageReader;

    iget v3, v0, Landroid/media/ImageReader$Builder;->mWidth:I

    iget v4, v0, Landroid/media/ImageReader$Builder;->mHeight:I

    iget v5, v0, Landroid/media/ImageReader$Builder;->mImageFormat:I

    iget v6, v0, Landroid/media/ImageReader$Builder;->mMaxImages:I

    iget-wide v7, v0, Landroid/media/ImageReader$Builder;->mUsage:J

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Landroid/media/ImageReader;-><init>(IIIIJLandroid/hardware/camera2/MultiResolutionImageReader;Landroid/media/ImageReader-IA;)V

    return-object v1

    .line 1064
    :cond_0
    new-instance v1, Landroid/media/ImageReader;

    iget v12, v0, Landroid/media/ImageReader$Builder;->mWidth:I

    iget v13, v0, Landroid/media/ImageReader$Builder;->mHeight:I

    iget v14, v0, Landroid/media/ImageReader$Builder;->mMaxImages:I

    iget-wide v2, v0, Landroid/media/ImageReader$Builder;->mUsage:J

    const/16 v17, 0x0

    iget v4, v0, Landroid/media/ImageReader$Builder;->mHardwareBufferFormat:I

    iget v5, v0, Landroid/media/ImageReader$Builder;->mDataSpace:I

    const/16 v20, 0x0

    move-object v11, v1

    move-wide v15, v2

    move/from16 v18, v4

    move/from16 v19, v5

    invoke-direct/range {v11 .. v20}, Landroid/media/ImageReader;-><init>(IIIJLandroid/hardware/camera2/MultiResolutionImageReader;IILandroid/media/ImageReader-IA;)V

    return-object v1
.end method

.method public whitelist setDefaultDataSpace(I)Landroid/media/ImageReader$Builder;
    .locals 1
    .param p1, "dataSpace"    # I

    .line 1049
    iput p1, p0, Landroid/media/ImageReader$Builder;->mDataSpace:I

    .line 1050
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/ImageReader$Builder;->mUseLegacyImageFormat:Z

    .line 1051
    iput v0, p0, Landroid/media/ImageReader$Builder;->mImageFormat:I

    .line 1052
    return-object p0
.end method

.method public whitelist setDefaultHardwareBufferFormat(I)Landroid/media/ImageReader$Builder;
    .locals 1
    .param p1, "hardwareBufferFormat"    # I

    .line 1027
    iput p1, p0, Landroid/media/ImageReader$Builder;->mHardwareBufferFormat:I

    .line 1028
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/ImageReader$Builder;->mUseLegacyImageFormat:Z

    .line 1029
    iput v0, p0, Landroid/media/ImageReader$Builder;->mImageFormat:I

    .line 1030
    return-object p0
.end method

.method public whitelist setImageFormat(I)Landroid/media/ImageReader$Builder;
    .locals 1
    .param p1, "imageFormat"    # I

    .line 996
    iput p1, p0, Landroid/media/ImageReader$Builder;->mImageFormat:I

    .line 997
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/ImageReader$Builder;->mUseLegacyImageFormat:Z

    .line 998
    iput v0, p0, Landroid/media/ImageReader$Builder;->mHardwareBufferFormat:I

    .line 999
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/ImageReader$Builder;->mDataSpace:I

    .line 1000
    return-object p0
.end method

.method public whitelist setMaxImages(I)Landroid/media/ImageReader$Builder;
    .locals 0
    .param p1, "maxImages"    # I

    .line 958
    iput p1, p0, Landroid/media/ImageReader$Builder;->mMaxImages:I

    .line 959
    return-object p0
.end method

.method public whitelist setUsage(J)Landroid/media/ImageReader$Builder;
    .locals 0
    .param p1, "usage"    # J

    .line 973
    iput-wide p1, p0, Landroid/media/ImageReader$Builder;->mUsage:J

    .line 974
    return-object p0
.end method
