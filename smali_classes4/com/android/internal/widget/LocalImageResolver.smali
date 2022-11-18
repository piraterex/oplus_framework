.class public Lcom/android/internal/widget/LocalImageResolver;
.super Ljava/lang/Object;
.source "LocalImageResolver.java"


# static fields
.field static final blacklist DEFAULT_MAX_SAFE_ICON_SIZE_PX:I = 0x1e0

.field public static final blacklist NO_MAX_SIZE:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "LocalImageResolver"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getPowerOfTwoForSampleRatio(D)I
    .locals 2
    .param p0, "ratio"    # D

    .line 229
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    .line 230
    .local v0, "k":I
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private static blacklist getResolvableUri(Landroid/graphics/drawable/Icon;)Landroid/net/Uri;
    .locals 2
    .param p0, "icon"    # Landroid/graphics/drawable/Icon;

    .line 249
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 250
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 251
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic blacklist lambda$resolveImage$0(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 1
    .param p0, "decoder"    # Landroid/graphics/ImageDecoder;
    .param p1, "info"    # Landroid/graphics/ImageDecoder$ImageInfo;
    .param p2, "s"    # Landroid/graphics/ImageDecoder$Source;

    .line 59
    const/16 v0, 0x1e0

    invoke-static {p0, p1, v0, v0}, Lcom/android/internal/widget/LocalImageResolver;->onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;II)V

    return-void
.end method

.method static synthetic blacklist lambda$resolveImage$1(IILandroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 3
    .param p0, "maxWidth"    # I
    .param p1, "maxHeight"    # I
    .param p2, "decoder"    # Landroid/graphics/ImageDecoder;
    .param p3, "info"    # Landroid/graphics/ImageDecoder$ImageInfo;
    .param p4, "unused"    # Landroid/graphics/ImageDecoder$Source;

    .line 196
    if-lez p0, :cond_4

    if-gtz p1, :cond_0

    goto :goto_1

    .line 200
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v0

    .line 201
    .local v0, "size":Landroid/util/Size;
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-gt v1, p0, :cond_1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-gt v1, p1, :cond_1

    .line 203
    return-void

    .line 206
    :cond_1
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 207
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-le v1, p0, :cond_3

    .line 208
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    mul-int/2addr v1, p0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    div-int/2addr v1, v2

    .line 209
    .local v1, "targetHeight":I
    invoke-virtual {p2, p0, v1}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    .line 210
    .end local v1    # "targetHeight":I
    goto :goto_0

    .line 212
    :cond_2
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-le v1, p1, :cond_3

    .line 213
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    mul-int/2addr v1, p1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    div-int/2addr v1, v2

    .line 214
    .local v1, "targetWidth":I
    invoke-virtual {p2, v1, p1}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    .line 217
    .end local v1    # "targetWidth":I
    :cond_3
    :goto_0
    return-void

    .line 197
    .end local v0    # "size":Landroid/util/Size;
    :cond_4
    :goto_1
    return-void
.end method

.method private static blacklist onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;II)V
    .locals 6
    .param p0, "decoder"    # Landroid/graphics/ImageDecoder;
    .param p1, "info"    # Landroid/graphics/ImageDecoder$ImageInfo;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I

    .line 235
    invoke-virtual {p1}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v0

    .line 236
    .local v0, "size":Landroid/util/Size;
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 237
    .local v1, "originalSize":I
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 238
    .local v2, "maxSize":I
    if-le v1, v2, :cond_0

    .line 239
    int-to-float v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    int-to-float v4, v2

    div-float/2addr v3, v4

    float-to-double v3, v3

    goto :goto_0

    .line 240
    :cond_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    :goto_0
    nop

    .line 241
    .local v3, "ratio":D
    invoke-static {v3, v4}, Lcom/android/internal/widget/LocalImageResolver;->getPowerOfTwoForSampleRatio(D)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/graphics/ImageDecoder;->setTargetSampleSize(I)V

    .line 242
    return-void
.end method

.method private static blacklist resolveBitmapImage(Landroid/graphics/drawable/Icon;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "icon"    # Landroid/graphics/drawable/Icon;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I

    .line 158
    if-lez p2, :cond_3

    if-lez p3, :cond_3

    .line 159
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 160
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 161
    const/4 v1, 0x0

    return-object v1

    .line 164
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v1, p2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v1, p3, :cond_3

    .line 165
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 166
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 168
    .local v1, "smallerIcon":Landroid/graphics/drawable/Icon;
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getTintList()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Icon;->setTintList(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    .line 169
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Icon;->setTintBlendMode(Landroid/graphics/BlendMode;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    .line 170
    invoke-virtual {v2, p2, p3}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    .line 171
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2

    .line 175
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "smallerIcon":Landroid/graphics/drawable/Icon;
    :cond_3
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist resolveImage(ILandroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "resId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/res/Resources;I)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    .line 151
    .local v0, "source":Landroid/graphics/ImageDecoder$Source;
    invoke-static {v0, p2, p3}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(Landroid/graphics/ImageDecoder$Source;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist resolveImage(Landroid/graphics/ImageDecoder$Source;II)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "source"    # Landroid/graphics/ImageDecoder$Source;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .line 195
    :try_start_0
    new-instance v0, Lcom/android/internal/widget/LocalImageResolver$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/widget/LocalImageResolver$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-static {p0, v0}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LocalImageResolver"

    const-string v2, "Couldn\'t use ImageDecoder for drawable, falling back to non-resized load."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist resolveImage(Landroid/graphics/drawable/Icon;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "icon"    # Landroid/graphics/drawable/Icon;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    const/16 v0, 0x1e0

    invoke-static {p0, p1, v0, v0}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(Landroid/graphics/drawable/Icon;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist resolveImage(Landroid/graphics/drawable/Icon;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "icon"    # Landroid/graphics/drawable/Icon;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I

    .line 95
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 96
    return-object v0

    .line 99
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 102
    :pswitch_1
    invoke-static {p0}, Lcom/android/internal/widget/LocalImageResolver;->getResolvableUri(Landroid/graphics/drawable/Icon;)Landroid/net/Uri;

    move-result-object v1

    .line 103
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_2

    .line 104
    invoke-static {v1, p1, p2, p3}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(Landroid/net/Uri;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 105
    .local v2, "result":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 106
    invoke-static {p0, v2}, Lcom/android/internal/widget/LocalImageResolver;->tintDrawable(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 108
    .end local v2    # "result":Landroid/graphics/drawable/Drawable;
    :cond_1
    goto :goto_0

    .line 111
    .end local v1    # "uri":Landroid/net/Uri;
    :pswitch_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    invoke-static {v1, p1, p2, p3}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(ILandroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 112
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 113
    invoke-static {p0, v1}, Lcom/android/internal/widget/LocalImageResolver;->tintDrawable(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 118
    .end local v1    # "result":Landroid/graphics/drawable/Drawable;
    :pswitch_3
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/widget/LocalImageResolver;->resolveBitmapImage(Landroid/graphics/drawable/Icon;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 126
    :cond_2
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 127
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public static blacklist resolveImage(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    nop

    .line 57
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    .line 58
    .local v0, "source":Landroid/graphics/ImageDecoder$Source;
    new-instance v1, Lcom/android/internal/widget/LocalImageResolver$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/widget/LocalImageResolver$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 61
    .end local v0    # "source":Landroid/graphics/ImageDecoder$Source;
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist resolveImage(Landroid/net/Uri;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I

    .line 137
    nop

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    .line 139
    .local v0, "source":Landroid/graphics/ImageDecoder$Source;
    invoke-static {v0, p2, p3}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(Landroid/graphics/ImageDecoder$Source;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist tintDrawable(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "icon"    # Landroid/graphics/drawable/Icon;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 180
    if-nez p1, :cond_0

    .line 181
    const/4 v0, 0x0

    return-object v0

    .line 184
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->hasTint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 186
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 187
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 190
    :cond_1
    return-object p1
.end method
