.class final Landroid/hardware/LegacySensorManager$LmsFilter;
.super Ljava/lang/Object;
.source "LegacySensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/LegacySensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LmsFilter"
.end annotation


# static fields
.field private static final greylist-max-o COUNT:I = 0xc

.field private static final greylist-max-o PREDICTION_RATIO:F = 0.33333334f

.field private static final greylist-max-o PREDICTION_TIME:F = 0.08f

.field private static final greylist-max-o SENSORS_RATE_MS:I = 0x14


# instance fields
.field private greylist-max-o mIndex:I

.field private greylist-max-o mT:[J

.field private greylist-max-o mV:[F


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 2

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    const/16 v0, 0x18

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    .line 376
    new-array v0, v0, [J

    iput-object v0, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    .line 380
    const/16 v0, 0xc

    iput v0, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    .line 381
    return-void
.end method


# virtual methods
.method public greylist-max-o filter(JF)F
    .locals 23
    .param p1, "time"    # J
    .param p3, "in"    # F

    .line 384
    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 385
    .local v1, "v":F
    const v2, 0x3089705f    # 1.0E-9f

    .line 386
    .local v2, "ns":F
    iget-object v3, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    iget v4, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    aget v5, v3, v4

    .line 387
    .local v5, "v1":F
    sub-float v6, v1, v5

    const/high16 v7, 0x43340000    # 180.0f

    cmpl-float v6, v6, v7

    const/high16 v8, 0x43b40000    # 360.0f

    if-lez v6, :cond_0

    .line 388
    sub-float/2addr v1, v8

    goto :goto_0

    .line 389
    :cond_0
    sub-float v6, v5, v1

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 390
    add-float/2addr v1, v8

    .line 396
    :cond_1
    :goto_0
    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    .line 397
    const/16 v6, 0x18

    const/16 v7, 0xc

    if-lt v4, v6, :cond_2

    .line 398
    iput v7, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    .line 400
    :cond_2
    iget v4, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    aput v1, v3, v4

    .line 401
    iget-object v6, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    aput-wide p1, v6, v4

    .line 402
    add-int/lit8 v9, v4, -0xc

    aput v1, v3, v9

    .line 403
    sub-int/2addr v4, v7

    aput-wide p1, v6, v4

    .line 409
    const/4 v3, 0x0

    move v4, v3

    .local v4, "E":F
    move v6, v3

    .local v6, "D":F
    move v7, v3

    .local v7, "C":F
    move v9, v3

    .local v9, "B":F
    move v10, v3

    .line 410
    .local v10, "A":F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    const/16 v12, 0xb

    if-ge v11, v12, :cond_3

    .line 411
    iget v12, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    add-int/lit8 v12, v12, -0x1

    sub-int/2addr v12, v11

    .line 412
    .local v12, "j":I
    iget-object v13, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    aget v13, v13, v12

    .line 413
    .local v13, "Z":F
    iget-object v14, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    aget-wide v15, v14, v12

    const-wide/16 v17, 0x2

    div-long v19, v15, v17

    add-int/lit8 v21, v12, 0x1

    aget-wide v21, v14, v21

    div-long v21, v21, v17

    add-long v19, v19, v21

    move/from16 v18, v4

    .end local v4    # "E":F
    .local v18, "E":F
    sub-long v3, v19, p1

    long-to-float v3, v3

    const v4, 0x3089705f    # 1.0E-9f

    mul-float/2addr v3, v4

    .line 414
    .local v3, "T":F
    add-int/lit8 v19, v12, 0x1

    aget-wide v19, v14, v19

    sub-long v14, v15, v19

    long-to-float v14, v14

    mul-float/2addr v14, v4

    .line 415
    .local v14, "dT":F
    mul-float/2addr v14, v14

    .line 416
    mul-float v4, v13, v14

    add-float/2addr v10, v4

    .line 417
    mul-float v4, v3, v14

    mul-float/2addr v4, v3

    add-float/2addr v9, v4

    .line 418
    mul-float v4, v3, v14

    add-float/2addr v7, v4

    .line 419
    mul-float v4, v3, v14

    mul-float/2addr v4, v13

    add-float/2addr v6, v4

    .line 420
    add-float v4, v18, v14

    .line 410
    .end local v3    # "T":F
    .end local v12    # "j":I
    .end local v13    # "Z":F
    .end local v14    # "dT":F
    .end local v18    # "E":F
    .restart local v4    # "E":F
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    goto :goto_1

    .line 422
    :cond_3
    move/from16 v18, v4

    .end local v4    # "E":F
    .restart local v18    # "E":F
    mul-float v3, v10, v9

    mul-float v4, v7, v6

    add-float/2addr v3, v4

    mul-float v4, v18, v9

    mul-float v12, v7, v7

    add-float/2addr v4, v12

    div-float/2addr v3, v4

    .line 423
    .local v3, "b":F
    mul-float v4, v18, v3

    sub-float/2addr v4, v10

    div-float/2addr v4, v7

    .line 424
    .local v4, "a":F
    const v12, 0x3da3d70a    # 0.08f

    mul-float/2addr v12, v4

    add-float/2addr v12, v3

    .line 427
    .local v12, "f":F
    const v13, 0x3b360b61

    mul-float/2addr v12, v13

    .line 428
    const/4 v13, 0x0

    cmpl-float v14, v12, v13

    if-ltz v14, :cond_4

    move v13, v12

    goto :goto_2

    :cond_4
    neg-float v13, v12

    :goto_2
    const/high16 v14, 0x3f000000    # 0.5f

    cmpl-float v13, v13, v14

    const/high16 v15, 0x3f800000    # 1.0f

    if-ltz v13, :cond_5

    .line 429
    add-float/2addr v14, v12

    float-to-double v13, v14

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-float v13, v13

    sub-float v13, v12, v13

    add-float v12, v13, v15

    .line 431
    :cond_5
    const/4 v13, 0x0

    cmpg-float v13, v12, v13

    if-gez v13, :cond_6

    .line 432
    add-float/2addr v12, v15

    .line 434
    :cond_6
    mul-float/2addr v12, v8

    .line 435
    return v12
.end method
