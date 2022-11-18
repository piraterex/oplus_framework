.class public abstract Lcom/android/internal/org/bouncycastle/math/raw/Mod;
.super Ljava/lang/Object;
.source "Mod.java"


# static fields
.field private static final blacklist M30:I = 0x3fffffff

.field private static final blacklist M32L:J = 0xffffffffL


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist add([I[I[I[I)V
    .locals 2
    .param p0, "p"    # [I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "z"    # [I

    .line 24
    array-length v0, p0

    .line 25
    .local v0, "len":I
    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v1

    .line 26
    .local v1, "c":I
    if-eqz v1, :cond_0

    .line 28
    invoke-static {v0, p0, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    .line 30
    :cond_0
    return-void
.end method

.method private static blacklist add30(I[I[I)I
    .locals 5
    .param p0, "len30"    # I
    .param p1, "D"    # [I
    .param p2, "M"    # [I

    .line 252
    const/4 v0, 0x0

    .local v0, "c":I
    add-int/lit8 v1, p0, -0x1

    .line 253
    .local v1, "last":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 255
    aget v3, p1, v2

    aget v4, p2, v2

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 256
    const v3, 0x3fffffff    # 1.9999999f

    and-int/2addr v3, v0

    aput v3, p1, v2

    shr-int/lit8 v0, v0, 0x1e

    .line 253
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 258
    .end local v2    # "i":I
    :cond_0
    aget v2, p1, v1

    aget v3, p2, v1

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 259
    aput v0, p1, v1

    shr-int/lit8 v0, v0, 0x1e

    .line 260
    return v0
.end method

.method public static blacklist checkedModOddInverse([I[I[I)V
    .locals 2
    .param p0, "m"    # [I
    .param p1, "x"    # [I
    .param p2, "z"    # [I

    .line 34
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->modOddInverse([I[I[I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Inverse does not exist."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkedModOddInverseVar([I[I[I)V
    .locals 2
    .param p0, "m"    # [I
    .param p1, "x"    # [I
    .param p2, "z"    # [I

    .line 42
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->modOddInverseVar([I[I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    return-void

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Inverse does not exist."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist cnegate30(II[I)V
    .locals 4
    .param p0, "len30"    # I
    .param p1, "cond"    # I
    .param p2, "D"    # [I

    .line 268
    const/4 v0, 0x0

    .local v0, "c":I
    add-int/lit8 v1, p0, -0x1

    .line 269
    .local v1, "last":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 271
    aget v3, p2, v2

    xor-int/2addr v3, p1

    sub-int/2addr v3, p1

    add-int/2addr v0, v3

    .line 272
    const v3, 0x3fffffff    # 1.9999999f

    and-int/2addr v3, v0

    aput v3, p2, v2

    shr-int/lit8 v0, v0, 0x1e

    .line 269
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 274
    .end local v2    # "i":I
    :cond_0
    aget v2, p2, v1

    xor-int/2addr v2, p1

    sub-int/2addr v2, p1

    add-int/2addr v0, v2

    .line 275
    aput v0, p2, v1

    .line 276
    return-void
.end method

.method private static blacklist cnormalize30(II[I[I)V
    .locals 7
    .param p0, "len30"    # I
    .param p1, "condNegate"    # I
    .param p2, "D"    # [I
    .param p3, "M"    # [I

    .line 284
    add-int/lit8 v0, p0, -0x1

    .line 287
    .local v0, "last":I
    const/4 v1, 0x0

    .local v1, "c":I
    aget v2, p2, v0

    shr-int/lit8 v2, v2, 0x1f

    .line 288
    .local v2, "condAdd":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const v4, 0x3fffffff    # 1.9999999f

    if-ge v3, v0, :cond_0

    .line 290
    aget v5, p2, v3

    aget v6, p3, v3

    and-int/2addr v6, v2

    add-int/2addr v5, v6

    .line 291
    .local v5, "di":I
    xor-int v6, v5, p1

    sub-int/2addr v6, p1

    .line 292
    .end local v5    # "di":I
    .local v6, "di":I
    add-int/2addr v1, v6

    and-int/2addr v4, v1

    aput v4, p2, v3

    shr-int/lit8 v1, v1, 0x1e

    .line 288
    .end local v6    # "di":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 295
    .end local v3    # "i":I
    :cond_0
    aget v3, p2, v0

    aget v5, p3, v0

    and-int/2addr v5, v2

    add-int/2addr v3, v5

    .line 296
    .local v3, "di":I
    xor-int v5, v3, p1

    sub-int/2addr v5, p1

    .line 297
    .end local v3    # "di":I
    .restart local v5    # "di":I
    add-int/2addr v1, v5

    aput v1, p2, v0

    .line 302
    .end local v1    # "c":I
    .end local v2    # "condAdd":I
    .end local v5    # "di":I
    const/4 v1, 0x0

    .restart local v1    # "c":I
    aget v2, p2, v0

    shr-int/lit8 v2, v2, 0x1f

    .line 303
    .restart local v2    # "condAdd":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 305
    aget v5, p2, v3

    aget v6, p3, v3

    and-int/2addr v6, v2

    add-int/2addr v5, v6

    .line 306
    .restart local v5    # "di":I
    add-int/2addr v1, v5

    and-int v6, v1, v4

    aput v6, p2, v3

    shr-int/lit8 v1, v1, 0x1e

    .line 303
    .end local v5    # "di":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 309
    .end local v3    # "i":I
    :cond_1
    aget v3, p2, v0

    aget v4, p3, v0

    and-int/2addr v4, v2

    add-int/2addr v3, v4

    .line 310
    .local v3, "di":I
    add-int/2addr v1, v3

    aput v1, p2, v0

    .line 314
    .end local v1    # "c":I
    .end local v2    # "condAdd":I
    .end local v3    # "di":I
    return-void
.end method

.method private static blacklist decode30(I[II[II)V
    .locals 6
    .param p0, "bits"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, "avail":I
    const-wide/16 v1, 0x0

    .line 324
    .local v1, "data":J
    :goto_0
    if-lez p0, :cond_1

    .line 326
    :goto_1
    const/16 v3, 0x20

    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 328
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "xOff":I
    .local v3, "xOff":I
    aget p2, p1, p2

    int-to-long v4, p2

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    .line 329
    add-int/lit8 v0, v0, 0x1e

    move p2, v3

    goto :goto_1

    .line 332
    .end local v3    # "xOff":I
    .restart local p2    # "xOff":I
    :cond_0
    add-int/lit8 v4, p4, 0x1

    .end local p4    # "zOff":I
    .local v4, "zOff":I
    long-to-int v5, v1

    aput v5, p3, p4

    ushr-long/2addr v1, v3

    .line 333
    add-int/lit8 v0, v0, -0x20

    .line 334
    add-int/lit8 p0, p0, -0x20

    move p4, v4

    goto :goto_0

    .line 336
    .end local v4    # "zOff":I
    .restart local p4    # "zOff":I
    :cond_1
    return-void
.end method

.method private static blacklist divsteps30(III[I)I
    .locals 16
    .param p0, "eta"    # I
    .param p1, "f0"    # I
    .param p2, "g0"    # I
    .param p3, "t"    # [I

    .line 340
    const/4 v0, 0x1

    .local v0, "u":I
    const/4 v1, 0x0

    .local v1, "v":I
    const/4 v2, 0x0

    .local v2, "q":I
    const/4 v3, 0x1

    .line 341
    .local v3, "r":I
    move/from16 v4, p1

    .local v4, "f":I
    move/from16 v5, p2

    .line 343
    .local v5, "g":I
    const/4 v6, 0x0

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    move/from16 v0, p0

    .end local p0    # "eta":I
    .local v0, "eta":I
    .local v1, "u":I
    .local v2, "v":I
    .local v3, "q":I
    .local v4, "r":I
    .local v5, "f":I
    .local v6, "g":I
    .local v7, "i":I
    :goto_0
    const/16 v8, 0x1e

    const/4 v9, 0x1

    if-ge v7, v8, :cond_0

    .line 349
    shr-int/lit8 v8, v0, 0x1f

    .line 350
    .local v8, "c1":I
    and-int/lit8 v10, v6, 0x1

    neg-int v10, v10

    .line 352
    .local v10, "c2":I
    xor-int v11, v5, v8

    sub-int/2addr v11, v8

    .line 353
    .local v11, "x":I
    xor-int v12, v1, v8

    sub-int/2addr v12, v8

    .line 354
    .local v12, "y":I
    xor-int v13, v2, v8

    sub-int/2addr v13, v8

    .line 356
    .local v13, "z":I
    and-int v14, v11, v10

    add-int/2addr v6, v14

    .line 357
    and-int v14, v12, v10

    add-int/2addr v3, v14

    .line 358
    and-int v14, v13, v10

    add-int/2addr v4, v14

    .line 360
    and-int/2addr v8, v10

    .line 361
    xor-int v14, v0, v8

    add-int/lit8 v15, v8, 0x1

    sub-int v0, v14, v15

    .line 363
    and-int v14, v6, v8

    add-int/2addr v5, v14

    .line 364
    and-int v14, v3, v8

    add-int/2addr v1, v14

    .line 365
    and-int v14, v4, v8

    add-int/2addr v2, v14

    .line 367
    shr-int/2addr v6, v9

    .line 368
    shl-int/2addr v1, v9

    .line 369
    shl-int/2addr v2, v9

    .line 343
    .end local v8    # "c1":I
    .end local v10    # "c2":I
    .end local v11    # "x":I
    .end local v12    # "y":I
    .end local v13    # "z":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 372
    .end local v7    # "i":I
    :cond_0
    const/4 v7, 0x0

    aput v1, p3, v7

    .line 373
    aput v2, p3, v9

    .line 374
    const/4 v7, 0x2

    aput v3, p3, v7

    .line 375
    const/4 v7, 0x3

    aput v4, p3, v7

    .line 377
    return v0
.end method

.method private static blacklist divsteps30Var(III[I)I
    .locals 17
    .param p0, "eta"    # I
    .param p1, "f0"    # I
    .param p2, "g0"    # I
    .param p3, "t"    # [I

    .line 382
    const/4 v0, 0x1

    .local v0, "u":I
    const/4 v1, 0x0

    .local v1, "v":I
    const/4 v2, 0x0

    .local v2, "q":I
    const/4 v3, 0x1

    .line 383
    .local v3, "r":I
    move/from16 v4, p1

    .local v4, "f":I
    move/from16 v5, p2

    .line 384
    .local v5, "g":I
    const/16 v6, 0x1e

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    move/from16 v0, p0

    .line 389
    .end local p0    # "eta":I
    .local v0, "eta":I
    .local v1, "u":I
    .local v2, "v":I
    .local v3, "q":I
    .local v4, "r":I
    .local v5, "f":I
    .local v6, "g":I
    .local v7, "i":I
    :goto_0
    const/4 v8, -0x1

    shl-int v9, v8, v7

    or-int/2addr v9, v6

    invoke-static {v9}, Lcom/android/internal/org/bouncycastle/util/Integers;->numberOfTrailingZeros(I)I

    move-result v9

    .line 391
    .local v9, "zeros":I
    shr-int/2addr v6, v9

    .line 392
    shl-int/2addr v1, v9

    .line 393
    shl-int/2addr v2, v9

    .line 394
    sub-int/2addr v0, v9

    .line 395
    sub-int/2addr v7, v9

    .line 397
    const/4 v10, 0x2

    const/4 v11, 0x1

    if-gtz v7, :cond_0

    .line 399
    nop

    .line 437
    const/4 v8, 0x0

    aput v1, p3, v8

    .line 438
    aput v2, p3, v11

    .line 439
    aput v3, p3, v10

    .line 440
    const/4 v8, 0x3

    aput v4, p3, v8

    .line 442
    return v0

    .line 407
    :cond_0
    if-gez v0, :cond_2

    .line 409
    neg-int v0, v0

    .line 410
    move v11, v5

    .local v11, "x":I
    move v5, v6

    neg-int v6, v11

    .line 411
    move v12, v1

    .local v12, "y":I
    move v1, v3

    neg-int v3, v12

    .line 412
    move v13, v2

    .local v13, "z":I
    move v2, v4

    neg-int v4, v13

    .line 415
    add-int/lit8 v14, v0, 0x1

    if-le v14, v7, :cond_1

    move v14, v7

    goto :goto_1

    :cond_1
    add-int/lit8 v14, v0, 0x1

    .line 416
    .local v14, "limit":I
    :goto_1
    rsub-int/lit8 v15, v14, 0x20

    ushr-int/2addr v8, v15

    and-int/lit8 v8, v8, 0x3f

    .line 418
    .local v8, "m":I
    mul-int v15, v5, v6

    mul-int v16, v5, v5

    add-int/lit8 v16, v16, -0x2

    mul-int v15, v15, v16

    and-int v10, v15, v8

    .local v10, "w":I
    goto :goto_3

    .line 423
    .end local v8    # "m":I
    .end local v10    # "w":I
    .end local v11    # "x":I
    .end local v12    # "y":I
    .end local v13    # "z":I
    .end local v14    # "limit":I
    :cond_2
    add-int/lit8 v10, v0, 0x1

    if-le v10, v7, :cond_3

    move v10, v7

    goto :goto_2

    :cond_3
    add-int/lit8 v10, v0, 0x1

    :goto_2
    move v14, v10

    .line 424
    .restart local v14    # "limit":I
    rsub-int/lit8 v10, v14, 0x20

    ushr-int/2addr v8, v10

    and-int/lit8 v8, v8, 0xf

    .line 426
    .restart local v8    # "m":I
    add-int/lit8 v10, v5, 0x1

    and-int/lit8 v10, v10, 0x4

    shl-int/2addr v10, v11

    add-int/2addr v10, v5

    .line 427
    .restart local v10    # "w":I
    neg-int v11, v10

    mul-int/2addr v11, v6

    and-int v10, v11, v8

    .line 430
    :goto_3
    mul-int v11, v5, v10

    add-int/2addr v6, v11

    .line 431
    mul-int v11, v1, v10

    add-int/2addr v3, v11

    .line 432
    mul-int v11, v2, v10

    add-int/2addr v4, v11

    goto :goto_0
.end method

.method private static blacklist encode30(I[II[II)V
    .locals 9
    .param p0, "bits"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .line 450
    const/4 v0, 0x0

    .line 451
    .local v0, "avail":I
    const-wide/16 v1, 0x0

    .line 453
    .local v1, "data":J
    :goto_0
    if-lez p0, :cond_1

    .line 455
    const/16 v3, 0x1e

    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 457
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "xOff":I
    .local v4, "xOff":I
    aget p2, p1, p2

    int-to-long v5, p2

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    shl-long/2addr v5, v0

    or-long/2addr v1, v5

    .line 458
    add-int/lit8 v0, v0, 0x20

    move p2, v4

    .line 461
    .end local v4    # "xOff":I
    .restart local p2    # "xOff":I
    :cond_0
    add-int/lit8 v4, p4, 0x1

    .end local p4    # "zOff":I
    .local v4, "zOff":I
    long-to-int v5, v1

    const v6, 0x3fffffff    # 1.9999999f

    and-int/2addr v5, v6

    aput v5, p3, p4

    ushr-long/2addr v1, v3

    .line 462
    add-int/lit8 v0, v0, -0x1e

    .line 463
    add-int/lit8 p0, p0, -0x1e

    move p4, v4

    goto :goto_0

    .line 465
    .end local v4    # "zOff":I
    .restart local p4    # "zOff":I
    :cond_1
    return-void
.end method

.method private static blacklist getMaximumDivsteps(I)I
    .locals 2
    .param p0, "bits"    # I

    .line 469
    mul-int/lit8 v0, p0, 0x31

    const/16 v1, 0x2e

    if-ge p0, v1, :cond_0

    const/16 v1, 0x50

    goto :goto_0

    :cond_0
    const/16 v1, 0x2f

    :goto_0
    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x11

    return v0
.end method

.method public static blacklist inverse32(I)I
    .locals 2
    .param p0, "d"    # I

    .line 52
    move v0, p0

    .line 53
    .local v0, "x":I
    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    .line 54
    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    .line 55
    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    .line 56
    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    .line 58
    return v0
.end method

.method public static blacklist invert([I[I[I)V
    .locals 0
    .param p0, "m"    # [I
    .param p1, "x"    # [I
    .param p2, "z"    # [I

    .line 64
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->checkedModOddInverseVar([I[I[I)V

    .line 65
    return-void
.end method

.method public static blacklist modOddInverse([I[I[I)I
    .locals 20
    .param p0, "m"    # [I
    .param p1, "x"    # [I
    .param p2, "z"    # [I

    .line 69
    move-object/from16 v0, p0

    array-length v1, v0

    .line 74
    .local v1, "len32":I
    shl-int/lit8 v2, v1, 0x5

    add-int/lit8 v3, v1, -0x1

    aget v3, v0, v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 75
    .local v2, "bits":I
    add-int/lit8 v3, v2, 0x1d

    div-int/lit8 v3, v3, 0x1e

    .line 77
    .local v3, "len30":I
    const/4 v4, 0x4

    new-array v10, v4, [I

    .line 78
    .local v10, "t":[I
    new-array v11, v3, [I

    .line 79
    .local v11, "D":[I
    new-array v12, v3, [I

    .line 80
    .local v12, "E":[I
    new-array v13, v3, [I

    .line 81
    .local v13, "F":[I
    new-array v14, v3, [I

    .line 82
    .local v14, "G":[I
    new-array v15, v3, [I

    .line 84
    .local v15, "M":[I
    const/4 v9, 0x0

    const/4 v8, 0x1

    aput v8, v12, v9

    .line 85
    move-object/from16 v7, p1

    invoke-static {v2, v7, v9, v14, v9}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->encode30(I[II[II)V

    .line 86
    invoke-static {v2, v0, v9, v15, v9}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->encode30(I[II[II)V

    .line 87
    invoke-static {v15, v9, v13, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    const/4 v4, -0x1

    .line 90
    .local v4, "eta":I
    aget v5, v15, v9

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->inverse32(I)I

    move-result v16

    .line 91
    .local v16, "m0Inv32":I
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->getMaximumDivsteps(I)I

    move-result v6

    .line 93
    .local v6, "maxDivsteps":I
    const/4 v5, 0x0

    .local v5, "divSteps":I
    :goto_0
    if-ge v5, v6, :cond_0

    .line 95
    aget v8, v13, v9

    aget v0, v14, v9

    invoke-static {v4, v8, v0, v10}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->divsteps30(III[I)I

    move-result v0

    .line 96
    .end local v4    # "eta":I
    .local v0, "eta":I
    move v4, v3

    move/from16 v17, v5

    .end local v5    # "divSteps":I
    .local v17, "divSteps":I
    move-object v5, v11

    move/from16 v18, v6

    .end local v6    # "maxDivsteps":I
    .local v18, "maxDivsteps":I
    move-object v6, v12

    move-object v7, v10

    move/from16 v19, v0

    const/4 v0, 0x1

    .end local v0    # "eta":I
    .local v19, "eta":I
    move/from16 v8, v16

    move v0, v9

    move-object v9, v15

    invoke-static/range {v4 .. v9}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->updateDE30(I[I[I[II[I)V

    .line 97
    invoke-static {v3, v13, v14, v10}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->updateFG30(I[I[I[I)V

    .line 93
    add-int/lit8 v5, v17, 0x1e

    move-object/from16 v7, p1

    move v9, v0

    move/from16 v6, v18

    move/from16 v4, v19

    const/4 v8, 0x1

    move-object/from16 v0, p0

    .end local v17    # "divSteps":I
    .restart local v5    # "divSteps":I
    goto :goto_0

    .end local v18    # "maxDivsteps":I
    .end local v19    # "eta":I
    .restart local v4    # "eta":I
    .restart local v6    # "maxDivsteps":I
    :cond_0
    move/from16 v17, v5

    move/from16 v18, v6

    move v0, v9

    .line 100
    .end local v5    # "divSteps":I
    .end local v6    # "maxDivsteps":I
    .restart local v18    # "maxDivsteps":I
    add-int/lit8 v5, v3, -0x1

    aget v5, v13, v5

    shr-int/lit8 v5, v5, 0x1f

    .line 101
    .local v5, "signF":I
    invoke-static {v3, v5, v13}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->cnegate30(II[I)V

    .line 108
    invoke-static {v3, v5, v11, v15}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->cnormalize30(II[I[I)V

    .line 110
    move-object/from16 v6, p2

    invoke-static {v2, v11, v0, v6, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->decode30(I[II[II)V

    .line 113
    const/4 v0, 0x1

    invoke-static {v3, v13, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->equalTo(I[II)I

    move-result v0

    invoke-static {v3, v14}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->equalToZero(I[I)I

    move-result v7

    and-int/2addr v0, v7

    return v0
.end method

.method public static blacklist modOddInverseVar([I[I[I)Z
    .locals 25
    .param p0, "m"    # [I
    .param p1, "x"    # [I
    .param p2, "z"    # [I

    .line 118
    move-object/from16 v0, p0

    array-length v1, v0

    .line 123
    .local v1, "len32":I
    shl-int/lit8 v2, v1, 0x5

    add-int/lit8 v3, v1, -0x1

    aget v3, v0, v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 124
    .local v2, "bits":I
    add-int/lit8 v3, v2, 0x1d

    div-int/lit8 v3, v3, 0x1e

    .line 126
    .local v3, "len30":I
    const/4 v4, 0x4

    new-array v4, v4, [I

    .line 127
    .local v4, "t":[I
    new-array v11, v3, [I

    .line 128
    .local v11, "D":[I
    new-array v12, v3, [I

    .line 129
    .local v12, "E":[I
    new-array v13, v3, [I

    .line 130
    .local v13, "F":[I
    new-array v14, v3, [I

    .line 131
    .local v14, "G":[I
    new-array v15, v3, [I

    .line 133
    .local v15, "M":[I
    const/4 v10, 0x0

    const/16 v16, 0x1

    aput v16, v12, v10

    .line 134
    move-object/from16 v9, p1

    invoke-static {v2, v9, v10, v14, v10}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->encode30(I[II[II)V

    .line 135
    invoke-static {v2, v0, v10, v15, v10}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->encode30(I[II[II)V

    .line 136
    invoke-static {v15, v10, v13, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    add-int/lit8 v5, v3, -0x1

    aget v5, v14, v5

    or-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v5

    mul-int/lit8 v6, v3, 0x1e

    add-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, v2

    sub-int v17, v5, v6

    .line 139
    .local v17, "clzG":I
    rsub-int/lit8 v5, v17, -0x1

    .line 140
    .local v5, "eta":I
    move v8, v3

    .local v8, "lenDE":I
    move v6, v3

    .line 141
    .local v6, "lenFG":I
    aget v7, v15, v10

    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->inverse32(I)I

    move-result v18

    .line 142
    .local v18, "m0Inv32":I
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->getMaximumDivsteps(I)I

    move-result v7

    .line 144
    .local v7, "maxDivsteps":I
    const/16 v19, 0x0

    move/from16 v10, v19

    .line 145
    .local v10, "divsteps":I
    :goto_0
    invoke-static {v6, v14}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    move-result v20

    if-nez v20, :cond_2

    .line 147
    if-lt v10, v7, :cond_0

    .line 149
    const/16 v19, 0x0

    return v19

    .line 152
    :cond_0
    const/16 v19, 0x0

    add-int/lit8 v20, v10, 0x1e

    .line 154
    .end local v10    # "divsteps":I
    .local v20, "divsteps":I
    aget v10, v13, v19

    aget v0, v14, v19

    invoke-static {v5, v10, v0, v4}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->divsteps30Var(III[I)I

    move-result v0

    .line 155
    .end local v5    # "eta":I
    .local v0, "eta":I
    move v5, v8

    move v10, v6

    .end local v6    # "lenFG":I
    .local v10, "lenFG":I
    move-object v6, v11

    move/from16 v21, v7

    .end local v7    # "maxDivsteps":I
    .local v21, "maxDivsteps":I
    move-object v7, v12

    move/from16 v22, v0

    move v0, v8

    .end local v8    # "lenDE":I
    .local v0, "lenDE":I
    .local v22, "eta":I
    move-object v8, v4

    move/from16 v9, v18

    move/from16 v23, v1

    move v1, v10

    move/from16 v24, v19

    move/from16 v19, v3

    move/from16 v3, v24

    .end local v3    # "len30":I
    .end local v10    # "lenFG":I
    .local v1, "lenFG":I
    .local v19, "len30":I
    .local v23, "len32":I
    move-object v10, v15

    invoke-static/range {v5 .. v10}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->updateDE30(I[I[I[II[I)V

    .line 156
    invoke-static {v1, v13, v14, v4}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->updateFG30(I[I[I[I)V

    .line 158
    add-int/lit8 v6, v1, -0x1

    aget v5, v13, v6

    .line 159
    .local v5, "fn":I
    add-int/lit8 v6, v1, -0x1

    aget v6, v14, v6

    .line 161
    .local v6, "gn":I
    add-int/lit8 v7, v1, -0x2

    shr-int/lit8 v7, v7, 0x1f

    .line 162
    .local v7, "cond":I
    shr-int/lit8 v8, v5, 0x1f

    xor-int/2addr v8, v5

    or-int/2addr v7, v8

    .line 163
    shr-int/lit8 v8, v6, 0x1f

    xor-int/2addr v8, v6

    or-int/2addr v7, v8

    .line 165
    if-nez v7, :cond_1

    .line 167
    add-int/lit8 v8, v1, -0x2

    aget v9, v13, v8

    shl-int/lit8 v10, v5, 0x1e

    or-int/2addr v9, v10

    aput v9, v13, v8

    .line 168
    add-int/lit8 v8, v1, -0x2

    aget v9, v14, v8

    shl-int/lit8 v10, v6, 0x1e

    or-int/2addr v9, v10

    aput v9, v14, v8

    .line 169
    add-int/lit8 v1, v1, -0x1

    move v6, v1

    goto :goto_1

    .line 165
    :cond_1
    move v6, v1

    .line 171
    .end local v1    # "lenFG":I
    .end local v5    # "fn":I
    .end local v7    # "cond":I
    .local v6, "lenFG":I
    :goto_1
    move-object/from16 v9, p1

    move v8, v0

    move/from16 v3, v19

    move/from16 v10, v20

    move/from16 v7, v21

    move/from16 v5, v22

    move/from16 v1, v23

    move-object/from16 v0, p0

    goto :goto_0

    .line 173
    .end local v0    # "lenDE":I
    .end local v19    # "len30":I
    .end local v20    # "divsteps":I
    .end local v21    # "maxDivsteps":I
    .end local v22    # "eta":I
    .end local v23    # "len32":I
    .local v1, "len32":I
    .restart local v3    # "len30":I
    .local v5, "eta":I
    .local v7, "maxDivsteps":I
    .restart local v8    # "lenDE":I
    .local v10, "divsteps":I
    :cond_2
    move/from16 v23, v1

    move/from16 v19, v3

    move v1, v6

    move/from16 v21, v7

    move v0, v8

    const/4 v3, 0x0

    .end local v3    # "len30":I
    .end local v6    # "lenFG":I
    .end local v7    # "maxDivsteps":I
    .end local v8    # "lenDE":I
    .restart local v0    # "lenDE":I
    .local v1, "lenFG":I
    .restart local v19    # "len30":I
    .restart local v21    # "maxDivsteps":I
    .restart local v23    # "len32":I
    add-int/lit8 v6, v1, -0x1

    aget v6, v13, v6

    shr-int/lit8 v6, v6, 0x1f

    .line 180
    .local v6, "signF":I
    add-int/lit8 v8, v0, -0x1

    aget v7, v11, v8

    shr-int/lit8 v7, v7, 0x1f

    .line 181
    .local v7, "signD":I
    if-gez v7, :cond_3

    .line 183
    invoke-static {v0, v11, v15}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->add30(I[I[I)I

    move-result v7

    .line 185
    :cond_3
    if-gez v6, :cond_4

    .line 187
    invoke-static {v0, v11}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->negate30(I[I)I

    move-result v7

    .line 188
    invoke-static {v1, v13}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->negate30(I[I)I

    move-result v6

    .line 192
    :cond_4
    invoke-static {v1, v13}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->isOne(I[I)Z

    move-result v8

    if-nez v8, :cond_5

    .line 194
    return v3

    .line 197
    :cond_5
    if-gez v7, :cond_6

    .line 199
    invoke-static {v0, v11, v15}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->add30(I[I[I)I

    move-result v7

    .line 203
    :cond_6
    move-object/from16 v8, p2

    invoke-static {v2, v11, v3, v8, v3}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->decode30(I[II[II)V

    .line 206
    return v16
.end method

.method private static blacklist negate30(I[I)I
    .locals 4
    .param p0, "len30"    # I
    .param p1, "D"    # [I

    .line 477
    const/4 v0, 0x0

    .local v0, "c":I
    add-int/lit8 v1, p0, -0x1

    .line 478
    .local v1, "last":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 480
    aget v3, p1, v2

    sub-int/2addr v0, v3

    .line 481
    const v3, 0x3fffffff    # 1.9999999f

    and-int/2addr v3, v0

    aput v3, p1, v2

    shr-int/lit8 v0, v0, 0x1e

    .line 478
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 483
    .end local v2    # "i":I
    :cond_0
    aget v2, p1, v1

    sub-int/2addr v0, v2

    .line 484
    aput v0, p1, v1

    shr-int/lit8 v0, v0, 0x1e

    .line 485
    return v0
.end method

.method public static blacklist random([I)[I
    .locals 6
    .param p0, "p"    # [I

    .line 211
    array-length v0, p0

    .line 212
    .local v0, "len":I
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 213
    .local v1, "rand":Ljava/util/Random;
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v2

    .line 215
    .local v2, "s":[I
    add-int/lit8 v3, v0, -0x1

    aget v3, p0, v3

    .line 216
    .local v3, "m":I
    ushr-int/lit8 v4, v3, 0x1

    or-int/2addr v3, v4

    .line 217
    ushr-int/lit8 v4, v3, 0x2

    or-int/2addr v3, v4

    .line 218
    ushr-int/lit8 v4, v3, 0x4

    or-int/2addr v3, v4

    .line 219
    ushr-int/lit8 v4, v3, 0x8

    or-int/2addr v3, v4

    .line 220
    ushr-int/lit8 v4, v3, 0x10

    or-int/2addr v3, v4

    .line 224
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-eq v4, v0, :cond_0

    .line 226
    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v5

    aput v5, v2, v4

    .line 224
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 228
    .end local v4    # "i":I
    :cond_0
    add-int/lit8 v4, v0, -0x1

    aget v5, v2, v4

    and-int/2addr v5, v3

    aput v5, v2, v4

    .line 230
    invoke-static {v0, v2, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 232
    return-object v2

    .line 230
    :cond_1
    goto :goto_0
.end method

.method public static blacklist subtract([I[I[I[I)V
    .locals 2
    .param p0, "p"    # [I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "z"    # [I

    .line 238
    array-length v0, p0

    .line 239
    .local v0, "len":I
    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v1

    .line 240
    .local v1, "c":I
    if-eqz v1, :cond_0

    .line 242
    invoke-static {v0, p0, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    .line 244
    :cond_0
    return-void
.end method

.method private static blacklist updateDE30(I[I[I[II[I)V
    .locals 26
    .param p0, "len30"    # I
    .param p1, "D"    # [I
    .param p2, "E"    # [I
    .param p3, "t"    # [I
    .param p4, "m0Inv32"    # I
    .param p5, "M"    # [I

    .line 496
    move/from16 v0, p0

    const/4 v1, 0x0

    aget v2, p3, v1

    .local v2, "u":I
    const/4 v3, 0x1

    aget v3, p3, v3

    .local v3, "v":I
    const/4 v4, 0x2

    aget v4, p3, v4

    .local v4, "q":I
    const/4 v5, 0x3

    aget v5, p3, v5

    .line 505
    .local v5, "r":I
    add-int/lit8 v6, v0, -0x1

    aget v6, p1, v6

    shr-int/lit8 v6, v6, 0x1f

    .line 506
    .local v6, "sd":I
    add-int/lit8 v7, v0, -0x1

    aget v7, p2, v7

    shr-int/lit8 v7, v7, 0x1f

    .line 508
    .local v7, "se":I
    and-int v8, v2, v6

    and-int v9, v3, v7

    add-int/2addr v8, v9

    .line 509
    .local v8, "md":I
    and-int v9, v4, v6

    and-int v10, v5, v7

    add-int/2addr v9, v10

    .line 511
    .local v9, "me":I
    aget v10, p5, v1

    .line 512
    .local v10, "mi":I
    aget v11, p1, v1

    .line 513
    .local v11, "di":I
    aget v1, p2, v1

    .line 515
    .local v1, "ei":I
    int-to-long v12, v2

    int-to-long v14, v11

    mul-long/2addr v12, v14

    int-to-long v14, v3

    move/from16 v16, v6

    move/from16 v17, v7

    .end local v6    # "sd":I
    .end local v7    # "se":I
    .local v16, "sd":I
    .local v17, "se":I
    int-to-long v6, v1

    mul-long/2addr v14, v6

    add-long/2addr v12, v14

    .line 516
    .local v12, "cd":J
    int-to-long v6, v4

    int-to-long v14, v11

    mul-long/2addr v6, v14

    int-to-long v14, v5

    move/from16 v18, v4

    move/from16 v19, v5

    .end local v4    # "q":I
    .end local v5    # "r":I
    .local v18, "q":I
    .local v19, "r":I
    int-to-long v4, v1

    mul-long/2addr v14, v4

    add-long/2addr v6, v14

    .line 523
    .local v6, "ce":J
    long-to-int v4, v12

    mul-int v4, v4, p4

    add-int/2addr v4, v8

    const v5, 0x3fffffff    # 1.9999999f

    and-int/2addr v4, v5

    sub-int/2addr v8, v4

    .line 524
    long-to-int v4, v6

    mul-int v4, v4, p4

    add-int/2addr v4, v9

    and-int/2addr v4, v5

    sub-int/2addr v9, v4

    .line 526
    int-to-long v14, v10

    move-wide/from16 v20, v6

    .end local v6    # "ce":J
    .local v20, "ce":J
    int-to-long v5, v8

    mul-long/2addr v14, v5

    add-long/2addr v12, v14

    .line 527
    int-to-long v5, v10

    int-to-long v14, v9

    mul-long/2addr v5, v14

    add-long v6, v20, v5

    .line 532
    .end local v20    # "ce":J
    .restart local v6    # "ce":J
    const/16 v5, 0x1e

    shr-long/2addr v12, v5

    .line 533
    shr-long/2addr v6, v5

    .line 535
    const/4 v14, 0x1

    .local v14, "i":I
    :goto_0
    if-ge v14, v0, :cond_0

    .line 537
    aget v10, p5, v14

    .line 538
    aget v11, p1, v14

    .line 539
    aget v1, p2, v14

    .line 541
    int-to-long v4, v2

    move/from16 v21, v14

    .end local v14    # "i":I
    .local v21, "i":I
    int-to-long v14, v11

    mul-long/2addr v4, v14

    int-to-long v14, v3

    move/from16 v22, v2

    move/from16 v23, v3

    .end local v2    # "u":I
    .end local v3    # "v":I
    .local v22, "u":I
    .local v23, "v":I
    int-to-long v2, v1

    mul-long/2addr v14, v2

    add-long/2addr v4, v14

    int-to-long v2, v10

    int-to-long v14, v8

    mul-long/2addr v2, v14

    add-long/2addr v4, v2

    add-long/2addr v12, v4

    .line 542
    move/from16 v2, v18

    .end local v18    # "q":I
    .local v2, "q":I
    int-to-long v3, v2

    int-to-long v14, v11

    mul-long/2addr v3, v14

    move/from16 v5, v19

    .end local v19    # "r":I
    .restart local v5    # "r":I
    int-to-long v14, v5

    move/from16 v18, v11

    move-wide/from16 v24, v12

    .end local v11    # "di":I
    .end local v12    # "cd":J
    .local v18, "di":I
    .local v24, "cd":J
    int-to-long v11, v1

    mul-long/2addr v14, v11

    add-long/2addr v3, v14

    int-to-long v11, v10

    int-to-long v13, v9

    mul-long/2addr v11, v13

    add-long/2addr v3, v11

    add-long/2addr v6, v3

    .line 544
    add-int/lit8 v14, v21, -0x1

    move-wide/from16 v12, v24

    .end local v24    # "cd":J
    .restart local v12    # "cd":J
    long-to-int v3, v12

    const v4, 0x3fffffff    # 1.9999999f

    and-int/2addr v3, v4

    aput v3, p1, v14

    const/16 v3, 0x1e

    shr-long/2addr v12, v3

    .line 545
    add-int/lit8 v14, v21, -0x1

    long-to-int v11, v6

    and-int/2addr v11, v4

    aput v11, p2, v14

    shr-long/2addr v6, v3

    .line 535
    add-int/lit8 v14, v21, 0x1

    move/from16 v11, v18

    move/from16 v18, v2

    move v5, v3

    move/from16 v2, v22

    move/from16 v3, v23

    .end local v21    # "i":I
    .restart local v14    # "i":I
    goto :goto_0

    .line 548
    .end local v5    # "r":I
    .end local v22    # "u":I
    .end local v23    # "v":I
    .local v2, "u":I
    .restart local v3    # "v":I
    .restart local v11    # "di":I
    .local v18, "q":I
    .restart local v19    # "r":I
    :cond_0
    move/from16 v23, v3

    .end local v3    # "v":I
    .restart local v23    # "v":I
    add-int/lit8 v3, v0, -0x1

    long-to-int v4, v12

    aput v4, p1, v3

    .line 549
    add-int/lit8 v3, v0, -0x1

    long-to-int v4, v6

    aput v4, p2, v3

    .line 550
    return-void
.end method

.method private static blacklist updateFG30(I[I[I[I)V
    .locals 18
    .param p0, "len30"    # I
    .param p1, "F"    # [I
    .param p2, "G"    # [I
    .param p3, "t"    # [I

    .line 558
    move/from16 v0, p0

    const/4 v1, 0x0

    aget v2, p3, v1

    .local v2, "u":I
    const/4 v3, 0x1

    aget v3, p3, v3

    .local v3, "v":I
    const/4 v4, 0x2

    aget v4, p3, v4

    .local v4, "q":I
    const/4 v5, 0x3

    aget v5, p3, v5

    .line 562
    .local v5, "r":I
    aget v6, p1, v1

    .line 563
    .local v6, "fi":I
    aget v1, p2, v1

    .line 565
    .local v1, "gi":I
    int-to-long v7, v2

    int-to-long v9, v6

    mul-long/2addr v7, v9

    int-to-long v9, v3

    int-to-long v11, v1

    mul-long/2addr v9, v11

    add-long/2addr v7, v9

    .line 566
    .local v7, "cf":J
    int-to-long v9, v4

    int-to-long v11, v6

    mul-long/2addr v9, v11

    int-to-long v11, v5

    int-to-long v13, v1

    mul-long/2addr v11, v13

    add-long/2addr v9, v11

    .line 571
    .local v9, "cg":J
    const/16 v11, 0x1e

    shr-long/2addr v7, v11

    .line 572
    shr-long/2addr v9, v11

    .line 574
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_0
    if-ge v12, v0, :cond_0

    .line 576
    aget v6, p1, v12

    .line 577
    aget v1, p2, v12

    .line 579
    int-to-long v13, v2

    move v15, v12

    .end local v12    # "i":I
    .local v15, "i":I
    int-to-long v11, v6

    mul-long/2addr v13, v11

    int-to-long v11, v3

    move/from16 v16, v2

    move/from16 v17, v3

    .end local v2    # "u":I
    .end local v3    # "v":I
    .local v16, "u":I
    .local v17, "v":I
    int-to-long v2, v1

    mul-long/2addr v11, v2

    add-long/2addr v13, v11

    add-long/2addr v7, v13

    .line 580
    int-to-long v2, v4

    int-to-long v11, v6

    mul-long/2addr v2, v11

    int-to-long v11, v5

    int-to-long v13, v1

    mul-long/2addr v11, v13

    add-long/2addr v2, v11

    add-long/2addr v9, v2

    .line 582
    add-int/lit8 v12, v15, -0x1

    long-to-int v2, v7

    const v3, 0x3fffffff    # 1.9999999f

    and-int/2addr v2, v3

    aput v2, p1, v12

    const/16 v2, 0x1e

    shr-long/2addr v7, v2

    .line 583
    add-int/lit8 v12, v15, -0x1

    long-to-int v11, v9

    and-int/2addr v3, v11

    aput v3, p2, v12

    shr-long/2addr v9, v2

    .line 574
    add-int/lit8 v12, v15, 0x1

    move v11, v2

    move/from16 v2, v16

    move/from16 v3, v17

    .end local v15    # "i":I
    .restart local v12    # "i":I
    goto :goto_0

    .line 586
    .end local v16    # "u":I
    .end local v17    # "v":I
    .restart local v2    # "u":I
    .restart local v3    # "v":I
    :cond_0
    move/from16 v16, v2

    move/from16 v17, v3

    .end local v2    # "u":I
    .end local v3    # "v":I
    .restart local v16    # "u":I
    .restart local v17    # "v":I
    add-int/lit8 v2, v0, -0x1

    long-to-int v3, v7

    aput v3, p1, v2

    .line 587
    add-int/lit8 v2, v0, -0x1

    long-to-int v3, v9

    aput v3, p2, v2

    .line 588
    return-void
.end method
