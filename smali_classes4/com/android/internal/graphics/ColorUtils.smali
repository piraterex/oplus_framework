.class public final Lcom/android/internal/graphics/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/graphics/ColorUtils$ContrastCalculator;
    }
.end annotation


# static fields
.field private static final blacklist MIN_ALPHA_SEARCH_MAX_ITERATIONS:I = 0xa

.field private static final blacklist MIN_ALPHA_SEARCH_PRECISION:I = 0x1

.field private static final blacklist TEMP_ARRAY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[D>;"
        }
    .end annotation
.end field

.field private static final blacklist XYZ_EPSILON:D = 0.008856

.field private static final blacklist XYZ_KAPPA:D = 903.3

.field private static final blacklist XYZ_WHITE_REFERENCE_X:D = 95.047

.field private static final blacklist XYZ_WHITE_REFERENCE_Y:D = 100.0

.field private static final blacklist XYZ_WHITE_REFERENCE_Z:D = 108.883


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/internal/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist CAMToColor(FFF)I
    .locals 1
    .param p0, "hue"    # F
    .param p1, "chroma"    # F
    .param p2, "lstar"    # F

    .line 366
    invoke-static {p0, p1, p2}, Lcom/android/internal/graphics/cam/Cam;->getInt(FFF)I

    move-result v0

    return v0
.end method

.method public static blacklist HSLToColor([F)I
    .locals 13
    .param p0, "hsl"    # [F

    .line 287
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 288
    .local v1, "h":F
    const/4 v2, 0x1

    aget v2, p0, v2

    .line 289
    .local v2, "s":F
    const/4 v3, 0x2

    aget v3, p0, v3

    .line 291
    .local v3, "l":F
    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v3, v4

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v5, v6, v5

    mul-float/2addr v5, v2

    .line 292
    .local v5, "c":F
    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, v5

    sub-float v7, v3, v7

    .line 293
    .local v7, "m":F
    const/high16 v8, 0x42700000    # 60.0f

    div-float v8, v1, v8

    rem-float/2addr v8, v4

    sub-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v6, v4

    mul-float/2addr v6, v5

    .line 295
    .local v6, "x":F
    float-to-int v4, v1

    div-int/lit8 v4, v4, 0x3c

    .line 297
    .local v4, "hueSegment":I
    const/4 v8, 0x0

    .local v8, "r":I
    const/4 v9, 0x0

    .local v9, "g":I
    const/4 v10, 0x0

    .line 299
    .local v10, "b":I
    const/high16 v11, 0x437f0000    # 255.0f

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    .line 327
    :pswitch_0
    add-float v12, v5, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 328
    mul-float v12, v7, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 329
    add-float v12, v6, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v10

    goto :goto_0

    .line 321
    :pswitch_1
    add-float v12, v6, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 322
    mul-float v12, v7, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 323
    add-float v12, v5, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 324
    goto :goto_0

    .line 316
    :pswitch_2
    mul-float v12, v7, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 317
    add-float v12, v6, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 318
    add-float v12, v5, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 319
    goto :goto_0

    .line 311
    :pswitch_3
    mul-float v12, v7, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 312
    add-float v12, v5, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 313
    add-float v12, v6, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 314
    goto :goto_0

    .line 306
    :pswitch_4
    add-float v12, v6, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 307
    add-float v12, v5, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 308
    mul-float/2addr v11, v7

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 309
    goto :goto_0

    .line 301
    :pswitch_5
    add-float v12, v5, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 302
    add-float v12, v6, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 303
    mul-float/2addr v11, v7

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 304
    nop

    .line 333
    :goto_0
    const/16 v11, 0xff

    invoke-static {v8, v0, v11}, Lcom/android/internal/graphics/ColorUtils;->constrain(III)I

    move-result v8

    .line 334
    invoke-static {v9, v0, v11}, Lcom/android/internal/graphics/ColorUtils;->constrain(III)I

    move-result v9

    .line 335
    invoke-static {v10, v0, v11}, Lcom/android/internal/graphics/ColorUtils;->constrain(III)I

    move-result v0

    .line 337
    .end local v10    # "b":I
    .local v0, "b":I
    invoke-static {v8, v9, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    return v10

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist LABToColor(DDD)I
    .locals 8
    .param p0, "l"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D

    .line 580
    invoke-static {}, Lcom/android/internal/graphics/ColorUtils;->getTempDouble3Array()[D

    move-result-object v7

    .line 581
    .local v7, "result":[D
    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, v7

    invoke-static/range {v0 .. v6}, Lcom/android/internal/graphics/ColorUtils;->LABToXYZ(DDD[D)V

    .line 582
    const/4 v0, 0x0

    aget-wide v1, v7, v0

    const/4 v0, 0x1

    aget-wide v3, v7, v0

    const/4 v0, 0x2

    aget-wide v5, v7, v0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/graphics/ColorUtils;->XYZToColor(DDD)I

    move-result v0

    return v0
.end method

.method public static blacklist LABToXYZ(DDD[D)V
    .locals 23
    .param p0, "l"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D
    .param p6, "outXyz"    # [D

    .line 523
    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    add-double v2, p0, v0

    const-wide/high16 v4, 0x405d000000000000L    # 116.0

    div-double/2addr v2, v4

    .line 524
    .local v2, "fy":D
    const-wide v6, 0x407f400000000000L    # 500.0

    div-double v6, p2, v6

    add-double/2addr v6, v2

    .line 525
    .local v6, "fx":D
    const-wide/high16 v8, 0x4069000000000000L    # 200.0

    div-double v8, p4, v8

    sub-double v8, v2, v8

    .line 527
    .local v8, "fz":D
    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    .line 528
    .local v12, "tmp":D
    const-wide v14, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v16, v12, v14

    const-wide v17, 0x408c3a6666666666L    # 903.3

    if-lez v16, :cond_0

    move-wide/from16 v19, v12

    goto :goto_0

    :cond_0
    mul-double v19, v6, v4

    sub-double v19, v19, v0

    div-double v19, v19, v17

    .line 529
    .local v19, "xr":D
    :goto_0
    const-wide v21, 0x401fff9da4c11507L    # 7.9996247999999985

    cmpl-double v16, p0, v21

    if-lez v16, :cond_1

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v21

    goto :goto_1

    :cond_1
    div-double v21, p0, v17

    .line 531
    .local v21, "yr":D
    :goto_1
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    .line 532
    .end local v12    # "tmp":D
    .local v10, "tmp":D
    cmpl-double v12, v10, v14

    if-lez v12, :cond_2

    move-wide v4, v10

    goto :goto_2

    :cond_2
    mul-double/2addr v4, v8

    sub-double/2addr v4, v0

    div-double v4, v4, v17

    :goto_2
    move-wide v0, v4

    .line 534
    .local v0, "zr":D
    const/4 v4, 0x0

    const-wide v12, 0x4057c3020c49ba5eL    # 95.047

    mul-double v12, v12, v19

    aput-wide v12, p6, v4

    .line 535
    const/4 v4, 0x1

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double v12, v12, v21

    aput-wide v12, p6, v4

    .line 536
    const/4 v4, 0x2

    const-wide v12, 0x405b3883126e978dL    # 108.883

    mul-double/2addr v12, v0

    aput-wide v12, p6, v4

    .line 537
    return-void
.end method

.method public static blacklist RGBToHSL(III[F)V
    .locals 16
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .param p3, "outHsl"    # [F

    .line 222
    move/from16 v0, p0

    int-to-float v1, v0

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    .line 223
    .local v1, "rf":F
    move/from16 v3, p1

    int-to-float v4, v3

    div-float/2addr v4, v2

    .line 224
    .local v4, "gf":F
    move/from16 v5, p2

    int-to-float v6, v5

    div-float/2addr v6, v2

    .line 226
    .local v6, "bf":F
    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 227
    .local v2, "max":F
    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 228
    .local v7, "min":F
    sub-float v8, v2, v7

    .line 231
    .local v8, "deltaMaxMin":F
    add-float v9, v2, v7

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    .line 233
    .local v9, "l":F
    cmpl-float v11, v2, v7

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    if-nez v11, :cond_0

    .line 235
    move v10, v13

    .local v10, "s":F
    move v11, v13

    .local v11, "h":F
    goto :goto_1

    .line 237
    .end local v10    # "s":F
    .end local v11    # "h":F
    :cond_0
    cmpl-float v11, v2, v1

    if-nez v11, :cond_1

    .line 238
    sub-float v11, v4, v6

    div-float/2addr v11, v8

    const/high16 v14, 0x40c00000    # 6.0f

    rem-float/2addr v11, v14

    .restart local v11    # "h":F
    goto :goto_0

    .line 239
    .end local v11    # "h":F
    :cond_1
    cmpl-float v11, v2, v4

    if-nez v11, :cond_2

    .line 240
    sub-float v11, v6, v1

    div-float/2addr v11, v8

    add-float/2addr v11, v10

    .restart local v11    # "h":F
    goto :goto_0

    .line 242
    .end local v11    # "h":F
    :cond_2
    sub-float v11, v1, v4

    div-float/2addr v11, v8

    const/high16 v14, 0x40800000    # 4.0f

    add-float/2addr v11, v14

    .line 245
    .restart local v11    # "h":F
    :goto_0
    mul-float/2addr v10, v9

    sub-float/2addr v10, v12

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sub-float v10, v12, v10

    div-float v10, v8, v10

    .line 248
    .restart local v10    # "s":F
    :goto_1
    const/high16 v14, 0x42700000    # 60.0f

    mul-float/2addr v14, v11

    const/high16 v15, 0x43b40000    # 360.0f

    rem-float/2addr v14, v15

    .line 249
    .end local v11    # "h":F
    .local v14, "h":F
    cmpg-float v11, v14, v13

    if-gez v11, :cond_3

    .line 250
    add-float/2addr v14, v15

    .line 253
    :cond_3
    const/4 v11, 0x0

    invoke-static {v14, v13, v15}, Lcom/android/internal/graphics/ColorUtils;->constrain(FFF)F

    move-result v15

    aput v15, p3, v11

    .line 254
    const/4 v11, 0x1

    invoke-static {v10, v13, v12}, Lcom/android/internal/graphics/ColorUtils;->constrain(FFF)F

    move-result v15

    aput v15, p3, v11

    .line 255
    const/4 v11, 0x2

    invoke-static {v9, v13, v12}, Lcom/android/internal/graphics/ColorUtils;->constrain(FFF)F

    move-result v12

    aput v12, p3, v11

    .line 256
    return-void
.end method

.method public static blacklist RGBToLAB(III[D)V
    .locals 8
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .param p3, "outLab"    # [D

    .line 409
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/graphics/ColorUtils;->RGBToXYZ(III[D)V

    .line 411
    const/4 v0, 0x0

    aget-wide v1, p3, v0

    const/4 v0, 0x1

    aget-wide v3, p3, v0

    const/4 v0, 0x2

    aget-wide v5, p3, v0

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Lcom/android/internal/graphics/ColorUtils;->XYZToLAB(DDD[D)V

    .line 413
    return-void
.end method

.method public static blacklist RGBToXYZ(III[D)V
    .locals 21
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .param p3, "outXyz"    # [D

    .line 454
    move-object/from16 v0, p3

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 458
    move/from16 v1, p0

    int-to-double v2, v1

    const-wide v4, 0x406fe00000000000L    # 255.0

    div-double/2addr v2, v4

    .line 459
    .local v2, "sr":D
    const-wide v6, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v8, v2, v6

    const-wide v9, 0x4029d70a3d70a3d7L    # 12.92

    const-wide v11, 0x4003333333333333L    # 2.4

    const-wide v13, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v15, 0x3fac28f5c28f5c29L    # 0.055

    if-gez v8, :cond_0

    div-double v17, v2, v9

    goto :goto_0

    :cond_0
    add-double v17, v2, v15

    div-double v9, v17, v13

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    :goto_0
    move-wide/from16 v2, v17

    .line 460
    move/from16 v8, p1

    int-to-double v9, v8

    div-double/2addr v9, v4

    .line 461
    .local v9, "sg":D
    cmpg-double v17, v9, v6

    if-gez v17, :cond_1

    const-wide v17, 0x4029d70a3d70a3d7L    # 12.92

    div-double v19, v9, v17

    move-wide/from16 v6, v19

    goto :goto_1

    :cond_1
    add-double v17, v9, v15

    div-double v6, v17, v13

    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    .line 462
    .end local v9    # "sg":D
    .local v6, "sg":D
    :goto_1
    move/from16 v9, p2

    int-to-double v11, v9

    div-double/2addr v11, v4

    .line 463
    .local v11, "sb":D
    const-wide v4, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v4, v11, v4

    if-gez v4, :cond_2

    const-wide v4, 0x4029d70a3d70a3d7L    # 12.92

    div-double v4, v11, v4

    goto :goto_2

    :cond_2
    add-double/2addr v15, v11

    div-double v4, v15, v13

    const-wide v13, 0x4003333333333333L    # 2.4

    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 465
    .end local v11    # "sb":D
    .local v4, "sb":D
    :goto_2
    const/4 v10, 0x0

    const-wide v11, 0x3fda64c2f837b4a2L    # 0.4124

    mul-double/2addr v11, v2

    const-wide v13, 0x3fd6e2eb1c432ca5L    # 0.3576

    mul-double/2addr v13, v6

    add-double/2addr v11, v13

    const-wide v13, 0x3fc71a9fbe76c8b4L    # 0.1805

    mul-double/2addr v13, v4

    add-double/2addr v11, v13

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    mul-double/2addr v11, v13

    aput-wide v11, v0, v10

    .line 466
    const/4 v10, 0x1

    const-wide v11, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v11, v2

    const-wide v15, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v15, v6

    add-double/2addr v11, v15

    const-wide v15, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v15, v4

    add-double/2addr v11, v15

    mul-double/2addr v11, v13

    aput-wide v11, v0, v10

    .line 467
    const/4 v10, 0x2

    const-wide v11, 0x3f93c36113404ea5L    # 0.0193

    mul-double/2addr v11, v2

    const-wide v15, 0x3fbe83e425aee632L    # 0.1192

    mul-double/2addr v15, v6

    add-double/2addr v11, v15

    const-wide v15, 0x3fee6a7ef9db22d1L    # 0.9505

    mul-double/2addr v15, v4

    add-double/2addr v11, v15

    mul-double/2addr v11, v13

    aput-wide v11, v0, v10

    .line 468
    return-void

    .line 455
    .end local v2    # "sr":D
    .end local v4    # "sb":D
    .end local v6    # "sg":D
    :cond_3
    move/from16 v1, p0

    move/from16 v8, p1

    move/from16 v9, p2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "outXyz must have a length of 3."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static blacklist XYZToColor(DDD)I
    .locals 19
    .param p0, "x"    # D
    .param p2, "y"    # D
    .param p4, "z"    # D

    .line 554
    const-wide v0, 0x4009ecbfb15b573fL    # 3.2406

    mul-double v0, v0, p0

    const-wide v2, -0x400767a0f9096bbaL    # -1.5372

    mul-double v2, v2, p2

    add-double/2addr v0, v2

    const-wide v2, -0x402016f0068db8bbL    # -0.4986

    mul-double v2, v2, p4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    .line 555
    .local v0, "r":D
    const-wide v4, -0x4010fec56d5cfaadL    # -0.9689

    mul-double v4, v4, p0

    const-wide v6, 0x3ffe0346dc5d6388L    # 1.8758

    mul-double v6, v6, p2

    add-double/2addr v4, v6

    const-wide v6, 0x3fa53f7ced916873L    # 0.0415

    mul-double v6, v6, p4

    add-double/2addr v4, v6

    div-double/2addr v4, v2

    .line 556
    .local v4, "g":D
    const-wide v6, 0x3fac84b5dcc63f14L    # 0.0557

    mul-double v6, v6, p0

    const-wide v8, -0x4035e353f7ced917L    # -0.204

    mul-double v8, v8, p2

    add-double/2addr v6, v8

    const-wide v8, 0x3ff0e978d4fdf3b6L    # 1.057

    mul-double v8, v8, p4

    add-double/2addr v6, v8

    div-double/2addr v6, v2

    .line 558
    .local v6, "b":D
    const-wide v2, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v8, v0, v2

    const-wide v9, 0x3fac28f5c28f5c29L    # 0.055

    const-wide v11, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    const-wide v13, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v15, 0x4029d70a3d70a3d7L    # 12.92

    if-lez v8, :cond_0

    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    mul-double v17, v17, v13

    sub-double v17, v17, v9

    goto :goto_0

    :cond_0
    mul-double v17, v0, v15

    :goto_0
    move-wide/from16 v0, v17

    .line 559
    cmpl-double v8, v4, v2

    if-lez v8, :cond_1

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    mul-double v17, v17, v13

    sub-double v17, v17, v9

    goto :goto_1

    :cond_1
    mul-double v17, v4, v15

    :goto_1
    move-wide/from16 v4, v17

    .line 560
    cmpl-double v2, v6, v2

    if-lez v2, :cond_2

    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v2, v13

    sub-double/2addr v2, v9

    goto :goto_2

    :cond_2
    mul-double v2, v6, v15

    .line 562
    .end local v6    # "b":D
    .local v2, "b":D
    :goto_2
    const-wide v6, 0x406fe00000000000L    # 255.0

    mul-double v8, v0, v6

    .line 563
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    const/4 v9, 0x0

    const/16 v10, 0xff

    invoke-static {v8, v9, v10}, Lcom/android/internal/graphics/ColorUtils;->constrain(III)I

    move-result v8

    mul-double v11, v4, v6

    .line 564
    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v11, v9, v10}, Lcom/android/internal/graphics/ColorUtils;->constrain(III)I

    move-result v11

    mul-double/2addr v6, v2

    .line 565
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-static {v6, v9, v10}, Lcom/android/internal/graphics/ColorUtils;->constrain(III)I

    move-result v6

    .line 562
    invoke-static {v8, v11, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    return v6
.end method

.method public static blacklist XYZToLAB(DDD[D)V
    .locals 7
    .param p0, "x"    # D
    .param p2, "y"    # D
    .param p4, "z"    # D
    .param p6, "outLab"    # [D

    .line 491
    array-length v0, p6

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 494
    const-wide v0, 0x4057c3020c49ba5eL    # 95.047

    div-double v0, p0, v0

    invoke-static {v0, v1}, Lcom/android/internal/graphics/ColorUtils;->pivotXyzComponent(D)D

    move-result-wide p0

    .line 495
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double v0, p2, v0

    invoke-static {v0, v1}, Lcom/android/internal/graphics/ColorUtils;->pivotXyzComponent(D)D

    move-result-wide p2

    .line 496
    const-wide v0, 0x405b3883126e978dL    # 108.883

    div-double v0, p4, v0

    invoke-static {v0, v1}, Lcom/android/internal/graphics/ColorUtils;->pivotXyzComponent(D)D

    move-result-wide p4

    .line 497
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const-wide/high16 v3, 0x405d000000000000L    # 116.0

    mul-double/2addr v3, p2

    const-wide/high16 v5, 0x4030000000000000L    # 16.0

    sub-double/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    aput-wide v1, p6, v0

    .line 498
    const/4 v0, 0x1

    const-wide v1, 0x407f400000000000L    # 500.0

    sub-double v3, p0, p2

    mul-double/2addr v3, v1

    aput-wide v3, p6, v0

    .line 499
    const/4 v0, 0x2

    const-wide/high16 v1, 0x4069000000000000L    # 200.0

    sub-double v3, p2, p4

    mul-double/2addr v3, v1

    aput-wide v3, p6, v0

    .line 500
    return-void

    .line 492
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "outLab must have a length of 3."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist binaryAlphaSearch(IIFLcom/android/internal/graphics/ColorUtils$ContrastCalculator;)I
    .locals 8
    .param p0, "foreground"    # I
    .param p1, "background"    # I
    .param p2, "minContrastRatio"    # F
    .param p3, "calculator"    # Lcom/android/internal/graphics/ColorUtils$ContrastCalculator;

    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "numIterations":I
    const/4 v1, 0x0

    .line 185
    .local v1, "minAlpha":I
    const/16 v2, 0xff

    .line 187
    .local v2, "maxAlpha":I
    :goto_0
    const/16 v3, 0xa

    if-gt v0, v3, :cond_1

    sub-int v3, v2, v1

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 189
    add-int v3, v1, v2

    div-int/lit8 v3, v3, 0x2

    .line 191
    .local v3, "testAlpha":I
    invoke-interface {p3, p0, p1, v3}, Lcom/android/internal/graphics/ColorUtils$ContrastCalculator;->calculateContrast(III)D

    move-result-wide v4

    .line 193
    .local v4, "testRatio":D
    float-to-double v6, p2

    cmpg-double v6, v4, v6

    if-gez v6, :cond_0

    .line 194
    move v1, v3

    goto :goto_1

    .line 196
    :cond_0
    move v2, v3

    .line 199
    :goto_1
    nop

    .end local v3    # "testAlpha":I
    .end local v4    # "testRatio":D
    add-int/lit8 v0, v0, 0x1

    .line 200
    goto :goto_0

    .line 203
    :cond_1
    return v2
.end method

.method public static blacklist blendARGB(IIF)I
    .locals 9
    .param p0, "color1"    # I
    .param p1, "color2"    # I
    .param p2, "ratio"    # F

    .line 621
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 622
    .local v0, "inverseRatio":F
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    .line 623
    .local v1, "a":F
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    .line 624
    .local v2, "r":F
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    .line 625
    .local v3, "g":F
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    .line 626
    .local v4, "b":F
    float-to-int v5, v1

    float-to-int v6, v2

    float-to-int v7, v3

    float-to-int v8, v4

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    return v5
.end method

.method public static blacklist blendHSL([F[FF[F)V
    .locals 4
    .param p0, "hsl1"    # [F
    .param p1, "hsl2"    # [F
    .param p2, "ratio"    # F
    .param p3, "outResult"    # [F

    .line 643
    array-length v0, p3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 646
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 648
    .local v0, "inverseRatio":F
    const/4 v1, 0x0

    aget v2, p0, v1

    aget v3, p1, v1

    invoke-static {v2, v3, p2}, Lcom/android/internal/graphics/ColorUtils;->circularInterpolate(FFF)F

    move-result v2

    aput v2, p3, v1

    .line 649
    const/4 v1, 0x1

    aget v2, p0, v1

    mul-float/2addr v2, v0

    aget v3, p1, v1

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    aput v2, p3, v1

    .line 650
    const/4 v1, 0x2

    aget v2, p0, v1

    mul-float/2addr v2, v0

    aget v3, p1, v1

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    aput v2, p3, v1

    .line 651
    return-void

    .line 644
    .end local v0    # "inverseRatio":F
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "result must have a length of 3."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist blendLAB([D[DD[D)V
    .locals 7
    .param p0, "lab1"    # [D
    .param p1, "lab2"    # [D
    .param p2, "ratio"    # D
    .param p4, "outResult"    # [D

    .line 666
    array-length v0, p4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 669
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p2

    .line 670
    .local v0, "inverseRatio":D
    const/4 v2, 0x0

    aget-wide v3, p0, v2

    mul-double/2addr v3, v0

    aget-wide v5, p1, v2

    mul-double/2addr v5, p2

    add-double/2addr v3, v5

    aput-wide v3, p4, v2

    .line 671
    const/4 v2, 0x1

    aget-wide v3, p0, v2

    mul-double/2addr v3, v0

    aget-wide v5, p1, v2

    mul-double/2addr v5, p2

    add-double/2addr v3, v5

    aput-wide v3, p4, v2

    .line 672
    const/4 v2, 0x2

    aget-wide v3, p0, v2

    mul-double/2addr v3, v0

    aget-wide v5, p1, v2

    mul-double/2addr v5, p2

    add-double/2addr v3, v5

    aput-wide v3, p4, v2

    .line 673
    return-void

    .line 667
    .end local v0    # "inverseRatio":D
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "outResult must have a length of 3."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist calculateContrast(II)D
    .locals 8
    .param p0, "foreground"    # I
    .param p1, "background"    # I

    .line 97
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1

    .line 101
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 103
    invoke-static {p0, p1}, Lcom/android/internal/graphics/ColorUtils;->compositeColors(II)I

    move-result p0

    .line 106
    :cond_0
    invoke-static {p0}, Lcom/android/internal/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    add-double/2addr v0, v2

    .line 107
    .local v0, "luminance1":D
    invoke-static {p1}, Lcom/android/internal/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v4

    add-double/2addr v4, v2

    .line 110
    .local v4, "luminance2":D
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    div-double/2addr v2, v6

    return-wide v2

    .line 98
    .end local v0    # "luminance1":D
    .end local v4    # "luminance2":D
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "background can not be translucent: #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 99
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist calculateLuminance(I)D
    .locals 5
    .param p0, "color"    # I

    .line 83
    invoke-static {}, Lcom/android/internal/graphics/ColorUtils;->getTempDouble3Array()[D

    move-result-object v0

    .line 84
    .local v0, "result":[D
    invoke-static {p0, v0}, Lcom/android/internal/graphics/ColorUtils;->colorToXYZ(I[D)V

    .line 86
    const/4 v1, 0x1

    aget-wide v1, v0, v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    return-wide v1
.end method

.method public static blacklist calculateMinimumAlpha(IIF)I
    .locals 6
    .param p0, "foreground"    # I
    .param p1, "background"    # I
    .param p2, "minContrastRatio"    # F

    .line 150
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1

    .line 155
    new-instance v0, Lcom/android/internal/graphics/ColorUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/graphics/ColorUtils$$ExternalSyntheticLambda1;-><init>()V

    .line 161
    .local v0, "contrastCalculator":Lcom/android/internal/graphics/ColorUtils$ContrastCalculator;
    invoke-interface {v0, p0, p1, v1}, Lcom/android/internal/graphics/ColorUtils$ContrastCalculator;->calculateContrast(III)D

    move-result-wide v2

    .line 162
    .local v2, "testRatio":D
    float-to-double v4, p2

    cmpg-double v4, v2, v4

    if-gez v4, :cond_0

    .line 164
    const/4 v1, -0x1

    return v1

    .line 166
    :cond_0
    invoke-static {p0, v1}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    .line 167
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/graphics/ColorUtils;->binaryAlphaSearch(IIFLcom/android/internal/graphics/ColorUtils$ContrastCalculator;)I

    move-result v1

    return v1

    .line 151
    .end local v0    # "contrastCalculator":Lcom/android/internal/graphics/ColorUtils$ContrastCalculator;
    .end local v2    # "testRatio":D
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "background can not be translucent: #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 152
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist calculateMinimumBackgroundAlpha(IIF)I
    .locals 2
    .param p0, "foreground"    # I
    .param p1, "background"    # I
    .param p2, "minContrastRatio"    # F

    .line 127
    const/16 v0, 0xff

    invoke-static {p1, v0}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    .line 128
    invoke-static {p0, v0}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    .line 129
    .local v0, "leastContrastyColor":I
    new-instance v1, Lcom/android/internal/graphics/ColorUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/internal/graphics/ColorUtils$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {p0, p1, p2, v1}, Lcom/android/internal/graphics/ColorUtils;->binaryAlphaSearch(IIFLcom/android/internal/graphics/ColorUtils$ContrastCalculator;)I

    move-result v1

    return v1
.end method

.method static blacklist circularInterpolate(FFF)F
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "f"    # F

    .line 676
    sub-float v0, p1, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v0, v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    if-lez v0, :cond_1

    .line 677
    cmpl-float v0, p1, p0

    if-lez v0, :cond_0

    .line 678
    add-float/2addr p0, v1

    goto :goto_0

    .line 680
    :cond_0
    add-float/2addr p1, v1

    .line 683
    :cond_1
    :goto_0
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    rem-float/2addr v0, v1

    return v0
.end method

.method public static blacklist colorToCAM(I)Lcom/android/internal/graphics/cam/Cam;
    .locals 1
    .param p0, "color"    # I

    .line 349
    invoke-static {p0}, Lcom/android/internal/graphics/cam/Cam;->fromInt(I)Lcom/android/internal/graphics/cam/Cam;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist colorToHSL(I[F)V
    .locals 3
    .param p0, "color"    # I
    .param p1, "outHsl"    # [F

    .line 270
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/graphics/ColorUtils;->RGBToHSL(III[F)V

    .line 271
    return-void
.end method

.method public static blacklist colorToLAB(I[D)V
    .locals 3
    .param p0, "color"    # I
    .param p1, "outLab"    # [D

    .line 388
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/graphics/ColorUtils;->RGBToLAB(III[D)V

    .line 389
    return-void
.end method

.method public static blacklist colorToXYZ(I[D)V
    .locals 3
    .param p0, "color"    # I
    .param p1, "outXyz"    # [D

    .line 431
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/graphics/ColorUtils;->RGBToXYZ(III[D)V

    .line 432
    return-void
.end method

.method public static blacklist compositeAlpha(II)I
    .locals 2
    .param p0, "foregroundAlpha"    # I
    .param p1, "backgroundAlpha"    # I

    .line 69
    rsub-int v0, p1, 0xff

    rsub-int v1, p0, 0xff

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0xff

    rsub-int v0, v0, 0xff

    return v0
.end method

.method public static blacklist compositeColors(II)I
    .locals 7
    .param p0, "foreground"    # I
    .param p1, "background"    # I

    .line 51
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 52
    .local v0, "bgAlpha":I
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 53
    .local v1, "fgAlpha":I
    invoke-static {v1, v0}, Lcom/android/internal/graphics/ColorUtils;->compositeAlpha(II)I

    move-result v2

    .line 55
    .local v2, "a":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 56
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 55
    invoke-static {v3, v1, v4, v0, v2}, Lcom/android/internal/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v3

    .line 57
    .local v3, "r":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 58
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 57
    invoke-static {v4, v1, v5, v0, v2}, Lcom/android/internal/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v4

    .line 59
    .local v4, "g":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 60
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 59
    invoke-static {v5, v1, v6, v0, v2}, Lcom/android/internal/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v5

    .line 62
    .local v5, "b":I
    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    return v6
.end method

.method private static blacklist compositeComponent(IIIII)I
    .locals 3
    .param p0, "fgC"    # I
    .param p1, "fgA"    # I
    .param p2, "bgC"    # I
    .param p3, "bgA"    # I
    .param p4, "a"    # I

    .line 73
    if-nez p4, :cond_0

    const/4 v0, 0x0

    return v0

    .line 74
    :cond_0
    mul-int/lit16 v0, p0, 0xff

    mul-int/2addr v0, p1

    mul-int v1, p2, p3

    rsub-int v2, p1, 0xff

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit16 v1, p4, 0xff

    div-int/2addr v0, v1

    return v0
.end method

.method private static blacklist constrain(FFF)F
    .locals 1
    .param p0, "amount"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .line 595
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method private static blacklist constrain(III)I
    .locals 1
    .param p0, "amount"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 599
    if-ge p0, p1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    if-le p0, p2, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method public static blacklist distanceEuclidean([D[D)D
    .locals 9
    .param p0, "labX"    # [D
    .param p1, "labY"    # [D

    .line 589
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    sub-double/2addr v1, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const/4 v2, 0x1

    aget-wide v5, p0, v2

    aget-wide v7, p1, v2

    sub-double/2addr v5, v7

    .line 590
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v0, v5

    const/4 v2, 0x2

    aget-wide v5, p0, v2

    aget-wide v7, p1, v2

    sub-double/2addr v5, v7

    .line 591
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 589
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static blacklist getTempDouble3Array()[D
    .locals 3

    .line 687
    sget-object v0, Lcom/android/internal/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    .line 688
    .local v1, "result":[D
    if-nez v1, :cond_0

    .line 689
    const/4 v2, 0x3

    new-array v1, v2, [D

    .line 690
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 692
    :cond_0
    return-object v1
.end method

.method static synthetic blacklist lambda$calculateMinimumAlpha$1(III)D
    .locals 3
    .param p0, "fg"    # I
    .param p1, "bg"    # I
    .param p2, "alpha"    # I

    .line 156
    invoke-static {p0, p2}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    .line 157
    .local v0, "testForeground":I
    invoke-static {v0, p1}, Lcom/android/internal/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v1

    return-wide v1
.end method

.method static synthetic blacklist lambda$calculateMinimumBackgroundAlpha$0(IIII)D
    .locals 3
    .param p0, "leastContrastyColor"    # I
    .param p1, "fg"    # I
    .param p2, "bg"    # I
    .param p3, "alpha"    # I

    .line 130
    int-to-float v0, p3

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-static {p0, p2, v0}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    .line 133
    .local v0, "testBackground":I
    const/16 v1, 0xff

    invoke-static {v0, v1}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    .line 134
    invoke-static {p1, v0}, Lcom/android/internal/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v1

    return-wide v1
.end method

.method private static blacklist pivotXyzComponent(D)D
    .locals 4
    .param p0, "component"    # D

    .line 603
    const-wide v0, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    .line 604
    const-wide v0, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_0

    .line 605
    :cond_0
    const-wide v0, 0x408c3a6666666666L    # 903.3

    mul-double/2addr v0, p0

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x405d000000000000L    # 116.0

    div-double/2addr v0, v2

    .line 603
    :goto_0
    return-wide v0
.end method

.method public static blacklist setAlphaComponent(II)I
    .locals 2
    .param p0, "color"    # I
    .param p1, "alpha"    # I

    .line 375
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 378
    const v0, 0xffffff

    and-int/2addr v0, p0

    shl-int/lit8 v1, p1, 0x18

    or-int/2addr v0, v1

    return v0

    .line 376
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "alpha must be between 0 and 255."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
