.class Landroid/app/WallpaperManager$FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FastBitmapDrawable"
.end annotation


# instance fields
.field private final greylist-max-o mBitmap:Landroid/graphics/Bitmap;

.field private greylist-max-o mDrawLeft:I

.field private greylist-max-o mDrawTop:I

.field private final greylist-max-o mHeight:I

.field private final greylist-max-o mPaint:Landroid/graphics/Paint;

.field private final greylist-max-o mWidth:I


# direct methods
.method private constructor greylist-max-o <init>(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 308
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 309
    iput-object p1, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 310
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mWidth:I

    .line 311
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mHeight:I

    .line 313
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/app/WallpaperManager$FastBitmapDrawable;->setBounds(IIII)V

    .line 315
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 316
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 317
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/Bitmap;Landroid/app/WallpaperManager$FastBitmapDrawable-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 321
    iget-object v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mDrawLeft:I

    int-to-float v1, v1

    iget v2, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mDrawTop:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 322
    return-void
.end method

.method public whitelist getIntrinsicHeight()I
    .locals 1

    .line 362
    iget v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mHeight:I

    return v0
.end method

.method public whitelist getIntrinsicWidth()I
    .locals 1

    .line 357
    iget v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mWidth:I

    return v0
.end method

.method public whitelist getMinimumHeight()I
    .locals 1

    .line 372
    iget v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mHeight:I

    return v0
.end method

.method public whitelist getMinimumWidth()I
    .locals 1

    .line 367
    iget v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mWidth:I

    return v0
.end method

.method public whitelist getOpacity()I
    .locals 1

    .line 326
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist setAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .line 337
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported with this drawable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setBounds(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 331
    sub-int v0, p3, p1

    iget v1, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    iput v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mDrawLeft:I

    .line 332
    sub-int v0, p4, p2

    iget v1, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    iput v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mDrawTop:I

    .line 333
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 342
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported with this drawable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDither(Z)V
    .locals 2
    .param p1, "dither"    # Z

    .line 347
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported with this drawable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setFilterBitmap(Z)V
    .locals 2
    .param p1, "filter"    # Z

    .line 352
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported with this drawable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
