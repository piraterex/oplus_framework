.class public Landroid/graphics/BitmapFactory$Options;
.super Ljava/lang/Object;
.source "BitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/BitmapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field public whitelist inBitmap:Landroid/graphics/Bitmap;

.field public whitelist inDensity:I

.field public whitelist inDither:Z

.field public whitelist inInputShareable:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist inJustDecodeBounds:Z

.field public whitelist inMutable:Z

.field public blacklist inPostProc:Z

.field public blacklist inPostProcFlag:I

.field public whitelist inPreferQualityOverSpeed:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist inPreferredColorSpace:Landroid/graphics/ColorSpace;

.field public whitelist inPreferredConfig:Landroid/graphics/Bitmap$Config;

.field public whitelist inPremultiplied:Z

.field public whitelist inPurgeable:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist inSampleSize:I

.field public whitelist inScaled:Z

.field public whitelist inScreenDensity:I

.field public whitelist inTargetDensity:I

.field public whitelist inTempStorage:[B

.field public whitelist mCancel:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist outColorSpace:Landroid/graphics/ColorSpace;

.field public whitelist outConfig:Landroid/graphics/Bitmap$Config;

.field public whitelist outHeight:I

.field public whitelist outMimeType:Ljava/lang/String;

.field public whitelist outWidth:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 63
    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inPostProc:Z

    .line 68
    iput v0, p0, Landroid/graphics/BitmapFactory$Options;->inPostProcFlag:I

    .line 71
    return-void
.end method

.method static blacklist nativeColorSpace(Landroid/graphics/BitmapFactory$Options;)J
    .locals 2
    .param p0, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 524
    if-eqz p0, :cond_1

    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    if-nez v0, :cond_0

    goto :goto_0

    .line 528
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v0

    return-wide v0

    .line 525
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method static blacklist nativeInBitmap(Landroid/graphics/BitmapFactory$Options;)J
    .locals 2
    .param p0, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 510
    if-eqz p0, :cond_1

    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    goto :goto_0

    .line 514
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v0

    return-wide v0

    .line 511
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method static greylist-max-o validate(Landroid/graphics/BitmapFactory$Options;)V
    .locals 2
    .param p0, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 476
    if-nez p0, :cond_0

    return-void

    .line 478
    :cond_0
    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 479
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_2

    .line 483
    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 484
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot reuse a recycled Bitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmaps with Config.HARDWARE are always immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_3
    :goto_0
    iget-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_4

    goto :goto_1

    .line 490
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmaps with Config.HARDWARE cannot be decoded into - they are immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :cond_5
    :goto_1
    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    if-eqz v0, :cond_8

    .line 495
    instance-of v1, v0, Landroid/graphics/ColorSpace$Rgb;

    if-eqz v1, :cond_7

    .line 499
    check-cast v0, Landroid/graphics/ColorSpace$Rgb;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Rgb;->getTransferParameters()Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    move-result-object v0

    if-eqz v0, :cond_6

    goto :goto_2

    .line 500
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The destination color space must use an ICC parametric transfer function"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The destination color space must use the RGB color model"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 504
    :cond_8
    :goto_2
    return-void
.end method


# virtual methods
.method public whitelist requestCancelDecode()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 472
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    .line 473
    return-void
.end method
