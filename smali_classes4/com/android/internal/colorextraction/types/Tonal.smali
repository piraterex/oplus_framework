.class public Lcom/android/internal/colorextraction/types/Tonal;
.super Ljava/lang/Object;
.source "Tonal.java"

# interfaces
.implements Lcom/android/internal/colorextraction/types/ExtractionType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;,
        Lcom/android/internal/colorextraction/types/Tonal$ColorRange;,
        Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = true

.field private static final blacklist FIT_WEIGHT_H:F = 1.0f

.field private static final blacklist FIT_WEIGHT_L:F = 10.0f

.field private static final blacklist FIT_WEIGHT_S:F = 1.0f

.field public static final blacklist MAIN_COLOR_DARK:I = -0xdfdedc

.field public static final blacklist MAIN_COLOR_LIGHT:I = -0x252320

.field public static final blacklist MAIN_COLOR_REGULAR:I = -0x1000000

.field private static final blacklist TAG:Ljava/lang/String; = "Tonal"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mGreyPalette:Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

.field private blacklist mTmpHSL:[F

.field private final blacklist mTonalPalettes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    .line 68
    new-instance v0, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;

    invoke-direct {v0, p1}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;-><init>(Landroid/content/Context;)V

    .line 69
    .local v0, "parser":Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;
    invoke-virtual {v0}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->getTonalPalettes()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTonalPalettes:Ljava/util/ArrayList;

    .line 70
    iput-object p1, p0, Lcom/android/internal/colorextraction/types/Tonal;->mContext:Landroid/content/Context;

    .line 72
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    iput-object v3, p0, Lcom/android/internal/colorextraction/types/Tonal;->mGreyPalette:Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    .line 73
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method private blacklist applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .locals 0
    .param p1, "inWallpaperColors"    # Landroid/app/WallpaperColors;
    .param p2, "outColorsNormal"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .param p3, "outColorsDark"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .param p4, "outColorsExtraDark"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/colorextraction/types/Tonal;->applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 239
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/colorextraction/types/Tonal;->applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 240
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/colorextraction/types/Tonal;->applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 241
    return-void
.end method

.method private static blacklist bestFit(Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;FFF)I
    .locals 6
    .param p0, "palette"    # Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    .param p1, "h"    # F
    .param p2, "s"    # F
    .param p3, "l"    # F

    .line 327
    const/4 v0, -0x1

    .line 328
    .local v0, "minErrorIndex":I
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 330
    .local v1, "minError":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->h:[F

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 331
    iget-object v3, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->h:[F

    aget v3, v3, v2

    sub-float v3, p1, v3

    .line 332
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    iget-object v5, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->s:[F

    aget v5, v5, v2

    sub-float v5, p2, v5

    .line 333
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    const/high16 v4, 0x41200000    # 10.0f

    iget-object v5, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->l:[F

    aget v5, v5, v2

    sub-float v5, p3, v5

    .line 334
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    .line 335
    .local v3, "error":F
    cmpg-float v4, v3, v1

    if-gez v4, :cond_0

    .line 336
    move v1, v3

    .line 337
    move v0, v2

    .line 330
    .end local v3    # "error":F
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 341
    .end local v2    # "i":I
    :cond_1
    return v0
.end method

.method private blacklist findTonalPalette(FF)Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    .locals 8
    .param p1, "h"    # F
    .param p2, "s"    # F

    .line 348
    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mGreyPalette:Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    return-object v0

    .line 352
    :cond_0
    const/4 v0, 0x0

    .line 353
    .local v0, "best":Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 355
    .local v1, "error":F
    iget-object v2, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTonalPalettes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 356
    .local v2, "tonalPalettesCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_8

    .line 357
    iget-object v4, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTonalPalettes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    .line 359
    .local v4, "candidate":Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_1

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_1

    .line 360
    move-object v0, v4

    .line 361
    goto/16 :goto_2

    .line 364
    :cond_1
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    const/4 v7, 0x0

    if-lez v5, :cond_2

    cmpl-float v5, p1, v7

    if-ltz v5, :cond_2

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_2

    .line 365
    move-object v0, v4

    .line 366
    goto/16 :goto_2

    .line 369
    :cond_2
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_3

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_3

    cmpg-float v5, p1, v6

    if-gtz v5, :cond_3

    .line 370
    move-object v0, v4

    .line 371
    goto/16 :goto_2

    .line 374
    :cond_3
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_4

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    sub-float/2addr v5, p1

    cmpg-float v5, v5, v1

    if-gez v5, :cond_4

    .line 375
    move-object v0, v4

    .line 376
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    sub-float/2addr v5, p1

    move v1, v5

    .end local v1    # "error":F
    .local v5, "error":F
    goto :goto_1

    .line 377
    .end local v5    # "error":F
    .restart local v1    # "error":F
    :cond_4
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_5

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    sub-float v5, p1, v5

    cmpg-float v5, v5, v1

    if-gez v5, :cond_5

    .line 378
    move-object v0, v4

    .line 379
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    sub-float v1, p1, v5

    goto :goto_1

    .line 380
    :cond_5
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_6

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    .line 381
    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    sub-float v5, p1, v5

    cmpg-float v5, v5, v1

    if-gez v5, :cond_6

    .line 382
    move-object v0, v4

    .line 383
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    sub-float v1, p1, v5

    goto :goto_1

    .line 384
    :cond_6
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_7

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_7

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    .line 385
    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    sub-float/2addr v5, p1

    cmpg-float v5, v5, v1

    if-gez v5, :cond_7

    .line 386
    move-object v0, v4

    .line 387
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    sub-float/2addr v5, p1

    move v1, v5

    .line 356
    .end local v4    # "candidate":Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    :cond_7
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 391
    .end local v3    # "i":I
    :cond_8
    :goto_2
    return-object v0
.end method

.method private static blacklist fit([FFIFF)[F
    .locals 4
    .param p0, "data"    # [F
    .param p1, "v"    # F
    .param p2, "index"    # I
    .param p3, "min"    # F
    .param p4, "max"    # F

    .line 307
    array-length v0, p0

    new-array v0, v0, [F

    .line 308
    .local v0, "fitData":[F
    aget v1, p0, p2

    sub-float v1, p1, v1

    .line 310
    .local v1, "delta":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 311
    aget v3, p0, v2

    add-float/2addr v3, v1

    invoke-static {v3, p3, p4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v3

    aput v3, v0, v2

    .line 310
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 314
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method private static blacklist fract(F)F
    .locals 2
    .param p0, "v"    # F

    .line 395
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float v0, p0, v0

    return v0
.end method

.method private blacklist getColorInt(I[F[F[F)I
    .locals 3
    .param p1, "fitIndex"    # I
    .param p2, "h"    # [F
    .param p3, "s"    # [F
    .param p4, "l"    # [F

    .line 278
    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    aget v1, p2, p1

    invoke-static {v1}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v1

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 279
    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    aget v1, p3, p1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 280
    aget v1, p4, p1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 281
    invoke-static {v0}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v0

    return v0
.end method

.method private blacklist getColorPalette(Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;)[I
    .locals 3
    .param p1, "palette"    # Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    .line 293
    iget-object v0, p1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->h:[F

    iget-object v1, p1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->s:[F

    iget-object v2, p1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->l:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/colorextraction/types/Tonal;->getColorPalette([F[F[F)[I

    move-result-object v0

    return-object v0
.end method

.method private blacklist getColorPalette([F[F[F)[I
    .locals 3
    .param p1, "h"    # [F
    .param p2, "s"    # [F
    .param p3, "l"    # [F

    .line 285
    array-length v0, p1

    new-array v0, v0, [I

    .line 286
    .local v0, "colorPalette":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 287
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v2

    aput v2, v0, v1

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private blacklist runTonalExtraction(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)Z
    .locals 28
    .param p1, "inWallpaperColors"    # Landroid/app/WallpaperColors;
    .param p2, "outColorsNormal"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .param p3, "outColorsDark"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .param p4, "outColorsExtraDark"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 108
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v4, 0x0

    if-nez p1, :cond_0

    .line 109
    return v4

    .line 112
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    move-result-object v5

    .line 113
    .local v5, "mainColors":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Color;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 114
    .local v6, "mainColorsSize":I
    invoke-virtual/range {p1 .. p1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v7

    .line 115
    .local v7, "hints":I
    and-int/lit8 v8, v7, 0x1

    const/4 v9, 0x1

    if-eqz v8, :cond_1

    move v8, v9

    goto :goto_0

    :cond_1
    move v8, v4

    .line 117
    .local v8, "supportsDarkText":Z
    :goto_0
    if-nez v6, :cond_2

    .line 118
    return v4

    .line 122
    :cond_2
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Color;

    .line 128
    .local v10, "bestColor":Landroid/graphics/Color;
    invoke-virtual {v10}, Landroid/graphics/Color;->toArgb()I

    move-result v11

    .line 129
    .local v11, "colorValue":I
    const/4 v12, 0x3

    new-array v13, v12, [F

    .line 130
    .local v13, "hsl":[F
    invoke-static {v11}, Landroid/graphics/Color;->red(I)I

    move-result v14

    invoke-static {v11}, Landroid/graphics/Color;->green(I)I

    move-result v15

    invoke-static {v11}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    invoke-static {v14, v15, v12, v13}, Lcom/android/internal/graphics/ColorUtils;->RGBToHSL(III[F)V

    .line 135
    aget v12, v13, v4

    const/high16 v14, 0x43b40000    # 360.0f

    div-float/2addr v12, v14

    aput v12, v13, v4

    .line 138
    aget v12, v13, v4

    aget v14, v13, v9

    invoke-direct {v0, v12, v14}, Lcom/android/internal/colorextraction/types/Tonal;->findTonalPalette(FF)Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    move-result-object v12

    .line 139
    .local v12, "palette":Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    const-string v14, "Tonal"

    if-nez v12, :cond_3

    .line 140
    const-string v9, "Could not find a tonal palette!"

    invoke-static {v14, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return v4

    .line 145
    :cond_3
    aget v15, v13, v4

    aget v4, v13, v9

    const/4 v9, 0x2

    move-object/from16 v19, v5

    .end local v5    # "mainColors":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Color;>;"
    .local v19, "mainColors":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Color;>;"
    aget v5, v13, v9

    invoke-static {v12, v15, v4, v5}, Lcom/android/internal/colorextraction/types/Tonal;->bestFit(Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;FFF)I

    move-result v4

    .line 146
    .local v4, "fitIndex":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 147
    const-string v5, "Could not find best fit!"

    invoke-static {v14, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v5, 0x0

    return v5

    .line 152
    :cond_4
    const/4 v5, 0x0

    iget-object v15, v12, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->h:[F

    aget v9, v13, v5

    const/high16 v5, -0x800000    # Float.NEGATIVE_INFINITY

    move/from16 v21, v6

    .end local v6    # "mainColorsSize":I
    .local v21, "mainColorsSize":I
    const/high16 v6, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-static {v15, v9, v4, v5, v6}, Lcom/android/internal/colorextraction/types/Tonal;->fit([FFIFF)[F

    move-result-object v5

    .line 154
    .local v5, "h":[F
    iget-object v6, v12, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->s:[F

    const/4 v9, 0x1

    aget v15, v13, v9

    const/4 v9, 0x0

    move/from16 v22, v7

    .end local v7    # "hints":I
    .local v22, "hints":I
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v15, v4, v9, v7}, Lcom/android/internal/colorextraction/types/Tonal;->fit([FFIFF)[F

    move-result-object v6

    .line 155
    .local v6, "s":[F
    iget-object v15, v12, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->l:[F

    move-object/from16 v23, v10

    const/16 v20, 0x2

    .end local v10    # "bestColor":Landroid/graphics/Color;
    .local v23, "bestColor":Landroid/graphics/Color;
    aget v10, v13, v20

    invoke-static {v15, v10, v4, v9, v7}, Lcom/android/internal/colorextraction/types/Tonal;->fit([FFIFF)[F

    move-result-object v7

    .line 156
    .local v7, "l":[F
    invoke-direct {v0, v5, v6, v7}, Lcom/android/internal/colorextraction/types/Tonal;->getColorPalette([F[F[F)[I

    move-result-object v9

    .line 159
    .local v9, "colorPalette":[I
    new-instance v10, Ljava/lang/StringBuilder;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v11

    .end local v11    # "colorValue":I
    .local v24, "colorValue":I
    const-string v11, "Tonal Palette - index: "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, ". Main color: "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 160
    invoke-direct {v0, v4, v5, v6, v7}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, "\nColors: "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .local v10, "builder":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    array-length v15, v5

    if-ge v11, v15, :cond_6

    .line 164
    invoke-direct {v0, v11, v5, v6, v7}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    array-length v15, v5

    const/16 v18, 0x1

    add-int/lit8 v15, v15, -0x1

    if-ge v11, v15, :cond_5

    .line 166
    const-string v15, ", "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 169
    .end local v11    # "i":I
    :cond_6
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .end local v10    # "builder":Ljava/lang/StringBuilder;
    move v10, v4

    .line 173
    .local v10, "primaryIndex":I
    invoke-direct {v0, v10, v5, v6, v7}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v11

    .line 177
    .local v11, "mainColor":I
    iget-object v15, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    invoke-static {v11, v15}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 178
    iget-object v15, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    const/16 v20, 0x2

    aget v25, v15, v20

    .line 179
    .local v25, "mainLuminosity":F
    move/from16 v26, v10

    .end local v10    # "primaryIndex":I
    .local v26, "primaryIndex":I
    const v10, -0x252320

    invoke-static {v10, v15}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 180
    iget-object v10, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    aget v15, v10, v20

    .line 181
    .local v15, "lightLuminosity":F
    cmpl-float v27, v25, v15

    if-lez v27, :cond_7

    .line 182
    const/16 v17, 0x0

    return v17

    .line 184
    :cond_7
    const/16 v17, 0x0

    move-object/from16 v27, v12

    .end local v12    # "palette":Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    .local v27, "palette":Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    const v12, -0xdfdedc

    invoke-static {v12, v10}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 185
    iget-object v10, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    aget v10, v10, v20

    .line 186
    .local v10, "darkLuminosity":F
    cmpg-float v12, v25, v10

    if-gez v12, :cond_8

    .line 187
    return v17

    .line 191
    :cond_8
    invoke-virtual {v1, v11}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    .line 192
    invoke-virtual {v1, v11}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    .line 193
    invoke-virtual {v1, v9}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setColorPalette([I)V

    .line 197
    if-eqz v8, :cond_9

    .line 198
    array-length v12, v5

    const/16 v16, 0x1

    add-int/lit8 v12, v12, -0x1

    .end local v26    # "primaryIndex":I
    .local v12, "primaryIndex":I
    goto :goto_2

    .line 199
    .end local v12    # "primaryIndex":I
    .restart local v26    # "primaryIndex":I
    :cond_9
    const/4 v12, 0x2

    if-ge v4, v12, :cond_a

    .line 200
    const/4 v12, 0x0

    .end local v26    # "primaryIndex":I
    .restart local v12    # "primaryIndex":I
    goto :goto_2

    .line 202
    .end local v12    # "primaryIndex":I
    .restart local v26    # "primaryIndex":I
    :cond_a
    const/4 v12, 0x3

    invoke-static {v4, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 204
    .end local v26    # "primaryIndex":I
    .restart local v12    # "primaryIndex":I
    :goto_2
    invoke-direct {v0, v12, v5, v6, v7}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v11

    .line 205
    invoke-virtual {v2, v11}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    .line 206
    invoke-virtual {v2, v11}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    .line 207
    invoke-virtual {v2, v9}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setColorPalette([I)V

    .line 211
    if-eqz v8, :cond_b

    .line 212
    move/from16 v16, v10

    .end local v10    # "darkLuminosity":F
    .local v16, "darkLuminosity":F
    array-length v10, v5

    const/16 v17, 0x1

    add-int/lit8 v10, v10, -0x1

    .end local v12    # "primaryIndex":I
    .local v10, "primaryIndex":I
    goto :goto_3

    .line 213
    .end local v16    # "darkLuminosity":F
    .local v10, "darkLuminosity":F
    .restart local v12    # "primaryIndex":I
    :cond_b
    move/from16 v16, v10

    .end local v10    # "darkLuminosity":F
    .restart local v16    # "darkLuminosity":F
    const/4 v10, 0x2

    if-ge v4, v10, :cond_c

    .line 214
    const/4 v10, 0x0

    .end local v12    # "primaryIndex":I
    .local v10, "primaryIndex":I
    goto :goto_3

    .line 216
    .end local v10    # "primaryIndex":I
    .restart local v12    # "primaryIndex":I
    :cond_c
    const/4 v10, 0x2

    .line 218
    .end local v12    # "primaryIndex":I
    .restart local v10    # "primaryIndex":I
    :goto_3
    invoke-direct {v0, v10, v5, v6, v7}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v11

    .line 219
    invoke-virtual {v3, v11}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    .line 220
    invoke-virtual {v3, v11}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    .line 221
    invoke-virtual {v3, v9}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setColorPalette([I)V

    .line 223
    invoke-virtual {v1, v8}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSupportsDarkText(Z)V

    .line 224
    invoke-virtual {v2, v8}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSupportsDarkText(Z)V

    .line 225
    invoke-virtual {v3, v8}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSupportsDarkText(Z)V

    .line 228
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Gradients: \n\tNormal "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, "\n\tDark "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, "\n\tExtra dark: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public blacklist applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .locals 7
    .param p1, "inWallpaperColors"    # Landroid/app/WallpaperColors;
    .param p2, "outGradientColors"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 251
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 252
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v2

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 254
    .local v2, "light":Z
    :goto_0
    if-eqz p1, :cond_1

    .line 255
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    .line 258
    .local v3, "dark":Z
    :goto_1
    iget-object v4, p0, Lcom/android/internal/colorextraction/types/Tonal;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0x30

    const/16 v5, 0x20

    if-ne v4, v5, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v0

    .line 261
    .local v4, "inNightMode":Z
    :goto_2
    if-eqz v2, :cond_3

    .line 262
    const v5, -0x252320

    .local v5, "color":I
    goto :goto_4

    .line 263
    .end local v5    # "color":I
    :cond_3
    if-nez v3, :cond_5

    if-eqz v4, :cond_4

    goto :goto_3

    .line 266
    :cond_4
    const/high16 v5, -0x1000000

    .restart local v5    # "color":I
    goto :goto_4

    .line 264
    .end local v5    # "color":I
    :cond_5
    :goto_3
    const v5, -0xdfdedc

    .line 268
    .restart local v5    # "color":I
    :goto_4
    const/4 v6, 0x3

    new-array v6, v6, [F

    .line 269
    .local v6, "hsl":[F
    invoke-static {v5, v6}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 271
    invoke-virtual {p2, v5}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    .line 272
    invoke-virtual {p2, v5}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    .line 273
    invoke-virtual {p2, v2}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSupportsDarkText(Z)V

    .line 274
    aget v0, v6, v0

    aget v1, v6, v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/colorextraction/types/Tonal;->findTonalPalette(FF)Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/colorextraction/types/Tonal;->getColorPalette(Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;)[I

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setColorPalette([I)V

    .line 275
    return-void
.end method

.method public blacklist extractInto(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .locals 1
    .param p1, "inWallpaperColors"    # Landroid/app/WallpaperColors;
    .param p2, "outColorsNormal"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .param p3, "outColorsDark"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .param p4, "outColorsExtraDark"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/colorextraction/types/Tonal;->runTonalExtraction(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)Z

    move-result v0

    .line 90
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/colorextraction/types/Tonal;->applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 93
    :cond_0
    return-void
.end method
