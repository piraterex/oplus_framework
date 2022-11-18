.class public abstract Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;
.super Ljava/lang/Object;
.source "GCMUtil.java"


# static fields
.field private static final blacklist E1:I = -0x1f000000

.field private static final blacklist E1L:J = -0x1f00000000000000L


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist asBytes([I[B)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "z"    # [B

    .line 46
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian([I[BI)V

    .line 47
    return-void
.end method

.method public static blacklist asBytes([J[B)V
    .locals 1
    .param p0, "x"    # [J
    .param p1, "z"    # [B

    .line 58
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian([J[BI)V

    .line 59
    return-void
.end method

.method public static blacklist asBytes([I)[B
    .locals 2
    .param p0, "x"    # [I

    .line 39
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 40
    .local v0, "z":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian([I[BI)V

    .line 41
    return-object v0
.end method

.method public static blacklist asBytes([J)[B
    .locals 2
    .param p0, "x"    # [J

    .line 51
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 52
    .local v0, "z":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian([J[BI)V

    .line 53
    return-object v0
.end method

.method public static blacklist asInts([B[I)V
    .locals 1
    .param p0, "x"    # [B
    .param p1, "z"    # [I

    .line 70
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI[I)V

    .line 71
    return-void
.end method

.method public static blacklist asInts([B)[I
    .locals 2
    .param p0, "x"    # [B

    .line 63
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 64
    .local v0, "z":[I
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI[I)V

    .line 65
    return-object v0
.end method

.method public static blacklist asLongs([B[J)V
    .locals 1
    .param p0, "x"    # [B
    .param p1, "z"    # [J

    .line 82
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI[J)V

    .line 83
    return-void
.end method

.method public static blacklist asLongs([B)[J
    .locals 2
    .param p0, "x"    # [B

    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 76
    .local v0, "z":[J
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI[J)V

    .line 77
    return-object v0
.end method

.method public static blacklist copy([I[I)V
    .locals 2
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 87
    const/4 v0, 0x0

    aget v1, p0, v0

    aput v1, p1, v0

    .line 88
    const/4 v0, 0x1

    aget v1, p0, v0

    aput v1, p1, v0

    .line 89
    const/4 v0, 0x2

    aget v1, p0, v0

    aput v1, p1, v0

    .line 90
    const/4 v0, 0x3

    aget v1, p0, v0

    aput v1, p1, v0

    .line 91
    return-void
.end method

.method public static blacklist copy([J[J)V
    .locals 3
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .line 95
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 96
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 97
    return-void
.end method

.method public static blacklist divideP([J[J)V
    .locals 13
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .line 101
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 102
    .local v4, "x1":J
    const/16 v6, 0x3f

    shr-long v7, v1, v6

    .line 103
    .local v7, "m":J
    const-wide/high16 v9, -0x1f00000000000000L    # -1.757388200993436E159

    and-long/2addr v9, v7

    xor-long/2addr v1, v9

    .line 104
    shl-long v9, v1, v3

    ushr-long v11, v4, v6

    or-long/2addr v9, v11

    aput-wide v9, p1, v0

    .line 105
    shl-long v9, v4, v3

    neg-long v11, v7

    or-long/2addr v9, v11

    aput-wide v9, p1, v3

    .line 106
    return-void
.end method

.method private static blacklist implMul64(JJ)J
    .locals 34
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 427
    const-wide v0, 0x1111111111111111L

    and-long v2, p0, v0

    .line 428
    .local v2, "x0":J
    const-wide v4, 0x2222222222222222L

    and-long v6, p0, v4

    .line 429
    .local v6, "x1":J
    const-wide v8, 0x4444444444444444L    # 7.477080264543605E20

    and-long v10, p0, v8

    .line 430
    .local v10, "x2":J
    const-wide v12, -0x7777777777777778L    # -1.48603973805866E-267

    and-long v14, p0, v12

    .line 432
    .local v14, "x3":J
    and-long v16, p2, v0

    .line 433
    .local v16, "y0":J
    and-long v18, p2, v4

    .line 434
    .local v18, "y1":J
    and-long v20, p2, v8

    .line 435
    .local v20, "y2":J
    and-long v22, p2, v12

    .line 437
    .local v22, "y3":J
    mul-long v24, v2, v16

    mul-long v26, v6, v22

    xor-long v24, v24, v26

    mul-long v26, v10, v20

    xor-long v24, v24, v26

    mul-long v26, v14, v18

    xor-long v24, v24, v26

    .line 438
    .local v24, "z0":J
    mul-long v26, v2, v18

    mul-long v28, v6, v16

    xor-long v26, v26, v28

    mul-long v28, v10, v22

    xor-long v26, v26, v28

    mul-long v28, v14, v20

    xor-long v26, v26, v28

    .line 439
    .local v26, "z1":J
    mul-long v28, v2, v20

    mul-long v30, v6, v18

    xor-long v28, v28, v30

    mul-long v30, v10, v16

    xor-long v28, v28, v30

    mul-long v30, v14, v22

    xor-long v28, v28, v30

    .line 440
    .local v28, "z2":J
    mul-long v30, v2, v22

    mul-long v32, v6, v20

    xor-long v30, v30, v32

    mul-long v32, v10, v18

    xor-long v30, v30, v32

    mul-long v32, v14, v16

    xor-long v30, v30, v32

    .line 442
    .local v30, "z3":J
    and-long v0, v24, v0

    .line 443
    .end local v24    # "z0":J
    .local v0, "z0":J
    and-long v4, v26, v4

    .line 444
    .end local v26    # "z1":J
    .local v4, "z1":J
    and-long v8, v28, v8

    .line 445
    .end local v28    # "z2":J
    .local v8, "z2":J
    and-long v12, v30, v12

    .line 447
    .end local v30    # "z3":J
    .local v12, "z3":J
    or-long v24, v0, v4

    or-long v24, v24, v8

    or-long v24, v24, v12

    return-wide v24
.end method

.method public static blacklist multiply([B[B)V
    .locals 2
    .param p0, "x"    # [B
    .param p1, "y"    # [B

    .line 110
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->asLongs([B)[J

    move-result-object v0

    .line 111
    .local v0, "t1":[J
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->asLongs([B)[J

    move-result-object v1

    .line 112
    .local v1, "t2":[J
    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiply([J[J)V

    .line 113
    invoke-static {v0, p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->asBytes([J[B)V

    .line 114
    return-void
.end method

.method public static blacklist multiply([I[I)V
    .locals 19
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    .line 118
    const/4 v0, 0x0

    aget v1, p1, v0

    .local v1, "y0":I
    const/4 v2, 0x1

    aget v3, p1, v2

    .local v3, "y1":I
    const/4 v4, 0x2

    aget v5, p1, v4

    .local v5, "y2":I
    const/4 v6, 0x3

    aget v7, p1, v6

    .line 119
    .local v7, "y3":I
    const/4 v8, 0x0

    .local v8, "z0":I
    const/4 v9, 0x0

    .local v9, "z1":I
    const/4 v10, 0x0

    .local v10, "z2":I
    const/4 v11, 0x0

    .line 121
    .local v11, "z3":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    const/4 v13, 0x4

    if-ge v12, v13, :cond_1

    .line 123
    aget v13, p0, v12

    .line 124
    .local v13, "bits":I
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1
    const/16 v15, 0x20

    if-ge v14, v15, :cond_0

    .line 126
    shr-int/lit8 v15, v13, 0x1f

    .local v15, "m1":I
    shl-int/lit8 v13, v13, 0x1

    .line 127
    and-int v16, v1, v15

    xor-int v8, v8, v16

    .line 128
    and-int v16, v3, v15

    xor-int v9, v9, v16

    .line 129
    and-int v16, v5, v15

    xor-int v10, v10, v16

    .line 130
    and-int v16, v7, v15

    xor-int v11, v11, v16

    .line 132
    shl-int/lit8 v16, v7, 0x1f

    shr-int/lit8 v16, v16, 0x8

    .line 133
    .local v16, "m2":I
    ushr-int/lit8 v17, v7, 0x1

    shl-int/lit8 v18, v5, 0x1f

    or-int v7, v17, v18

    .line 134
    ushr-int/lit8 v17, v5, 0x1

    shl-int/lit8 v18, v3, 0x1f

    or-int v5, v17, v18

    .line 135
    ushr-int/lit8 v17, v3, 0x1

    shl-int/lit8 v18, v1, 0x1f

    or-int v3, v17, v18

    .line 136
    ushr-int/lit8 v17, v1, 0x1

    const/high16 v18, -0x1f000000

    and-int v18, v16, v18

    xor-int v1, v17, v18

    .line 124
    .end local v15    # "m1":I
    .end local v16    # "m2":I
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 121
    .end local v13    # "bits":I
    .end local v14    # "j":I
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 140
    .end local v12    # "i":I
    :cond_1
    aput v8, p0, v0

    .line 141
    aput v9, p0, v2

    .line 142
    aput v10, p0, v4

    .line 143
    aput v11, p0, v6

    .line 144
    return-void
.end method

.method public static blacklist multiply([J[J)V
    .locals 45
    .param p0, "x"    # [J
    .param p1, "y"    # [J

    .line 180
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 181
    .local v4, "x1":J
    aget-wide v6, p1, v0

    .local v6, "y0":J
    aget-wide v8, p1, v3

    .line 182
    .local v8, "y1":J
    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v10

    .local v10, "x0r":J
    invoke-static {v4, v5}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v12

    .line 183
    .local v12, "x1r":J
    invoke-static {v6, v7}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v14

    move-wide/from16 v17, v4

    .end local v4    # "x1":J
    .local v14, "y0r":J
    .local v17, "x1":J
    invoke-static {v8, v9}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v3

    .line 185
    .local v3, "y1r":J
    invoke-static {v10, v11, v14, v15}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v19

    .line 186
    .local v19, "h0":J
    invoke-static {v1, v2, v6, v7}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v21

    const/4 v5, 0x1

    shl-long v21, v21, v5

    .line 187
    .local v21, "h1":J
    invoke-static {v12, v13, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v23

    .line 188
    .local v23, "h2":J
    move-wide/from16 v25, v1

    move-wide/from16 v0, v17

    .end local v1    # "x0":J
    .end local v17    # "x1":J
    .local v0, "x1":J
    .local v25, "x0":J
    invoke-static {v0, v1, v8, v9}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v16

    shl-long v17, v16, v5

    .line 189
    .local v17, "h3":J
    move-wide/from16 v27, v6

    .end local v6    # "y0":J
    .local v27, "y0":J
    xor-long v5, v10, v12

    move-wide/from16 v29, v10

    .end local v10    # "x0r":J
    .local v29, "x0r":J
    xor-long v10, v14, v3

    invoke-static {v5, v6, v10, v11}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v5

    .line 190
    .local v5, "h4":J
    xor-long v10, v25, v0

    move-wide/from16 v31, v0

    .end local v0    # "x1":J
    .local v31, "x1":J
    xor-long v0, v27, v8

    invoke-static {v10, v11, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v0

    const/4 v2, 0x1

    shl-long/2addr v0, v2

    .line 192
    .local v0, "h5":J
    move-wide/from16 v10, v19

    .line 193
    .local v10, "z0":J
    xor-long v33, v21, v19

    xor-long v33, v33, v23

    xor-long v33, v33, v5

    .line 194
    .local v33, "z1":J
    xor-long v35, v23, v21

    xor-long v35, v35, v17

    xor-long v35, v35, v0

    .line 195
    .local v35, "z2":J
    move-wide/from16 v37, v17

    .line 197
    .local v37, "z3":J
    const/4 v2, 0x1

    ushr-long v39, v37, v2

    xor-long v39, v37, v39

    const/4 v2, 0x2

    ushr-long v41, v37, v2

    xor-long v39, v39, v41

    const/4 v7, 0x7

    ushr-long v41, v37, v7

    xor-long v39, v39, v41

    xor-long v33, v33, v39

    .line 199
    const/16 v39, 0x3e

    shl-long v40, v37, v39

    const/16 v42, 0x39

    shl-long v43, v37, v42

    xor-long v40, v40, v43

    xor-long v35, v35, v40

    .line 201
    const/16 v16, 0x1

    ushr-long v40, v35, v16

    xor-long v40, v35, v40

    ushr-long v43, v35, v2

    xor-long v40, v40, v43

    ushr-long v43, v35, v7

    xor-long v40, v40, v43

    xor-long v10, v10, v40

    .line 202
    const/16 v2, 0x3f

    shl-long v40, v35, v2

    shl-long v43, v35, v39

    xor-long v39, v40, v43

    shl-long v41, v35, v42

    xor-long v39, v39, v41

    xor-long v33, v33, v39

    .line 204
    const/4 v2, 0x0

    aput-wide v10, p0, v2

    .line 205
    const/4 v2, 0x1

    aput-wide v33, p0, v2

    .line 206
    return-void
.end method

.method public static blacklist multiplyP([I)V
    .locals 11
    .param p0, "x"    # [I

    .line 210
    const/4 v0, 0x0

    aget v1, p0, v0

    .local v1, "x0":I
    const/4 v2, 0x1

    aget v3, p0, v2

    .local v3, "x1":I
    const/4 v4, 0x2

    aget v5, p0, v4

    .local v5, "x2":I
    const/4 v6, 0x3

    aget v7, p0, v6

    .line 211
    .local v7, "x3":I
    shl-int/lit8 v8, v7, 0x1f

    shr-int/lit8 v8, v8, 0x1f

    .line 212
    .local v8, "m":I
    ushr-int/lit8 v9, v1, 0x1

    const/high16 v10, -0x1f000000

    and-int/2addr v10, v8

    xor-int/2addr v9, v10

    aput v9, p0, v0

    .line 213
    ushr-int/lit8 v0, v3, 0x1

    shl-int/lit8 v9, v1, 0x1f

    or-int/2addr v0, v9

    aput v0, p0, v2

    .line 214
    ushr-int/lit8 v0, v5, 0x1

    shl-int/lit8 v2, v3, 0x1f

    or-int/2addr v0, v2

    aput v0, p0, v4

    .line 215
    ushr-int/lit8 v0, v7, 0x1

    shl-int/lit8 v2, v5, 0x1f

    or-int/2addr v0, v2

    aput v0, p0, v6

    .line 216
    return-void
.end method

.method public static blacklist multiplyP([I[I)V
    .locals 11
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 220
    const/4 v0, 0x0

    aget v1, p0, v0

    .local v1, "x0":I
    const/4 v2, 0x1

    aget v3, p0, v2

    .local v3, "x1":I
    const/4 v4, 0x2

    aget v5, p0, v4

    .local v5, "x2":I
    const/4 v6, 0x3

    aget v7, p0, v6

    .line 221
    .local v7, "x3":I
    shl-int/lit8 v8, v7, 0x1f

    shr-int/lit8 v8, v8, 0x1f

    .line 222
    .local v8, "m":I
    ushr-int/lit8 v9, v1, 0x1

    const/high16 v10, -0x1f000000

    and-int/2addr v10, v8

    xor-int/2addr v9, v10

    aput v9, p1, v0

    .line 223
    ushr-int/lit8 v0, v3, 0x1

    shl-int/lit8 v9, v1, 0x1f

    or-int/2addr v0, v9

    aput v0, p1, v2

    .line 224
    ushr-int/lit8 v0, v5, 0x1

    shl-int/lit8 v2, v3, 0x1f

    or-int/2addr v0, v2

    aput v0, p1, v4

    .line 225
    ushr-int/lit8 v0, v7, 0x1

    shl-int/lit8 v2, v5, 0x1f

    or-int/2addr v0, v2

    aput v0, p1, v6

    .line 226
    return-void
.end method

.method public static blacklist multiplyP([J)V
    .locals 13
    .param p0, "x"    # [J

    .line 230
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 231
    .local v4, "x1":J
    const/16 v6, 0x3f

    shl-long v7, v4, v6

    shr-long/2addr v7, v6

    .line 232
    .local v7, "m":J
    ushr-long v9, v1, v3

    const-wide/high16 v11, -0x1f00000000000000L    # -1.757388200993436E159

    and-long/2addr v11, v7

    xor-long/2addr v9, v11

    aput-wide v9, p0, v0

    .line 233
    ushr-long v9, v4, v3

    shl-long v11, v1, v6

    or-long/2addr v9, v11

    aput-wide v9, p0, v3

    .line 234
    return-void
.end method

.method public static blacklist multiplyP([J[J)V
    .locals 13
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .line 238
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 239
    .local v4, "x1":J
    const/16 v6, 0x3f

    shl-long v7, v4, v6

    shr-long/2addr v7, v6

    .line 240
    .local v7, "m":J
    ushr-long v9, v1, v3

    const-wide/high16 v11, -0x1f00000000000000L    # -1.757388200993436E159

    and-long/2addr v11, v7

    xor-long/2addr v9, v11

    aput-wide v9, p1, v0

    .line 241
    ushr-long v9, v4, v3

    shl-long v11, v1, v6

    or-long/2addr v9, v11

    aput-wide v9, p1, v3

    .line 242
    return-void
.end method

.method public static blacklist multiplyP3([J[J)V
    .locals 14
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .line 246
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 247
    .local v4, "x1":J
    const/16 v6, 0x3d

    shl-long v7, v4, v6

    .line 248
    .local v7, "c":J
    const/4 v9, 0x3

    ushr-long v10, v1, v9

    xor-long/2addr v10, v7

    ushr-long v12, v7, v3

    xor-long/2addr v10, v12

    const/4 v12, 0x2

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    const/4 v12, 0x7

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    aput-wide v10, p1, v0

    .line 249
    ushr-long v9, v4, v9

    shl-long v11, v1, v6

    or-long/2addr v9, v11

    aput-wide v9, p1, v3

    .line 250
    return-void
.end method

.method public static blacklist multiplyP4([J[J)V
    .locals 14
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .line 254
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 255
    .local v4, "x1":J
    const/16 v6, 0x3c

    shl-long v7, v4, v6

    .line 256
    .local v7, "c":J
    const/4 v9, 0x4

    ushr-long v10, v1, v9

    xor-long/2addr v10, v7

    ushr-long v12, v7, v3

    xor-long/2addr v10, v12

    const/4 v12, 0x2

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    const/4 v12, 0x7

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    aput-wide v10, p1, v0

    .line 257
    ushr-long v9, v4, v9

    shl-long v11, v1, v6

    or-long/2addr v9, v11

    aput-wide v9, p1, v3

    .line 258
    return-void
.end method

.method public static blacklist multiplyP7([J[J)V
    .locals 14
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .line 262
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 263
    .local v4, "x1":J
    const/16 v6, 0x39

    shl-long v7, v4, v6

    .line 264
    .local v7, "c":J
    const/4 v9, 0x7

    ushr-long v10, v1, v9

    xor-long/2addr v10, v7

    ushr-long v12, v7, v3

    xor-long/2addr v10, v12

    const/4 v12, 0x2

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    ushr-long v12, v7, v9

    xor-long/2addr v10, v12

    aput-wide v10, p1, v0

    .line 265
    ushr-long v9, v4, v9

    shl-long v11, v1, v6

    or-long/2addr v9, v11

    aput-wide v9, p1, v3

    .line 266
    return-void
.end method

.method public static blacklist multiplyP8([I)V
    .locals 11
    .param p0, "x"    # [I

    .line 270
    const/4 v0, 0x0

    aget v1, p0, v0

    .local v1, "x0":I
    const/4 v2, 0x1

    aget v3, p0, v2

    .local v3, "x1":I
    const/4 v4, 0x2

    aget v5, p0, v4

    .local v5, "x2":I
    const/4 v6, 0x3

    aget v7, p0, v6

    .line 271
    .local v7, "x3":I
    shl-int/lit8 v8, v7, 0x18

    .line 272
    .local v8, "c":I
    ushr-int/lit8 v9, v1, 0x8

    xor-int/2addr v9, v8

    ushr-int/lit8 v10, v8, 0x1

    xor-int/2addr v9, v10

    ushr-int/lit8 v10, v8, 0x2

    xor-int/2addr v9, v10

    ushr-int/lit8 v10, v8, 0x7

    xor-int/2addr v9, v10

    aput v9, p0, v0

    .line 273
    ushr-int/lit8 v0, v3, 0x8

    shl-int/lit8 v9, v1, 0x18

    or-int/2addr v0, v9

    aput v0, p0, v2

    .line 274
    ushr-int/lit8 v0, v5, 0x8

    shl-int/lit8 v2, v3, 0x18

    or-int/2addr v0, v2

    aput v0, p0, v4

    .line 275
    ushr-int/lit8 v0, v7, 0x8

    shl-int/lit8 v2, v5, 0x18

    or-int/2addr v0, v2

    aput v0, p0, v6

    .line 276
    return-void
.end method

.method public static blacklist multiplyP8([I[I)V
    .locals 11
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    .line 280
    const/4 v0, 0x0

    aget v1, p0, v0

    .local v1, "x0":I
    const/4 v2, 0x1

    aget v3, p0, v2

    .local v3, "x1":I
    const/4 v4, 0x2

    aget v5, p0, v4

    .local v5, "x2":I
    const/4 v6, 0x3

    aget v7, p0, v6

    .line 281
    .local v7, "x3":I
    shl-int/lit8 v8, v7, 0x18

    .line 282
    .local v8, "c":I
    ushr-int/lit8 v9, v1, 0x8

    xor-int/2addr v9, v8

    ushr-int/lit8 v10, v8, 0x1

    xor-int/2addr v9, v10

    ushr-int/lit8 v10, v8, 0x2

    xor-int/2addr v9, v10

    ushr-int/lit8 v10, v8, 0x7

    xor-int/2addr v9, v10

    aput v9, p1, v0

    .line 283
    ushr-int/lit8 v0, v3, 0x8

    shl-int/lit8 v9, v1, 0x18

    or-int/2addr v0, v9

    aput v0, p1, v2

    .line 284
    ushr-int/lit8 v0, v5, 0x8

    shl-int/lit8 v2, v3, 0x18

    or-int/2addr v0, v2

    aput v0, p1, v4

    .line 285
    ushr-int/lit8 v0, v7, 0x8

    shl-int/lit8 v2, v5, 0x18

    or-int/2addr v0, v2

    aput v0, p1, v6

    .line 286
    return-void
.end method

.method public static blacklist multiplyP8([J)V
    .locals 14
    .param p0, "x"    # [J

    .line 290
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 291
    .local v4, "x1":J
    const/16 v6, 0x38

    shl-long v7, v4, v6

    .line 292
    .local v7, "c":J
    const/16 v9, 0x8

    ushr-long v10, v1, v9

    xor-long/2addr v10, v7

    ushr-long v12, v7, v3

    xor-long/2addr v10, v12

    const/4 v12, 0x2

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    const/4 v12, 0x7

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    aput-wide v10, p0, v0

    .line 293
    ushr-long v9, v4, v9

    shl-long v11, v1, v6

    or-long/2addr v9, v11

    aput-wide v9, p0, v3

    .line 294
    return-void
.end method

.method public static blacklist multiplyP8([J[J)V
    .locals 14
    .param p0, "x"    # [J
    .param p1, "y"    # [J

    .line 298
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 299
    .local v4, "x1":J
    const/16 v6, 0x38

    shl-long v7, v4, v6

    .line 300
    .local v7, "c":J
    const/16 v9, 0x8

    ushr-long v10, v1, v9

    xor-long/2addr v10, v7

    ushr-long v12, v7, v3

    xor-long/2addr v10, v12

    const/4 v12, 0x2

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    const/4 v12, 0x7

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    aput-wide v10, p1, v0

    .line 301
    ushr-long v9, v4, v9

    shl-long v11, v1, v6

    or-long/2addr v9, v11

    aput-wide v9, p1, v3

    .line 302
    return-void
.end method

.method public static blacklist oneAsBytes()[B
    .locals 3

    .line 18
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 19
    .local v0, "tmp":[B
    const/4 v1, 0x0

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    .line 20
    return-object v0
.end method

.method public static blacklist oneAsInts()[I
    .locals 3

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 26
    .local v0, "tmp":[I
    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    .line 27
    return-object v0
.end method

.method public static blacklist oneAsLongs()[J
    .locals 4

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 33
    .local v0, "tmp":[J
    const/4 v1, 0x0

    const-wide/high16 v2, -0x8000000000000000L

    aput-wide v2, v0, v1

    .line 34
    return-object v0
.end method

.method public static blacklist pAsLongs()[J
    .locals 4

    .line 306
    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 307
    .local v0, "tmp":[J
    const/4 v1, 0x0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    aput-wide v2, v0, v1

    .line 308
    return-object v0
.end method

.method public static blacklist square([J[J)V
    .locals 20
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .line 313
    const/4 v0, 0x4

    new-array v0, v0, [J

    .line 314
    .local v0, "t":[J
    const/4 v1, 0x0

    aget-wide v2, p0, v1

    invoke-static {v2, v3, v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Interleave;->expand64To128Rev(J[JI)V

    .line 315
    const/4 v2, 0x1

    aget-wide v3, p0, v2

    const/4 v5, 0x2

    invoke-static {v3, v4, v0, v5}, Lcom/android/internal/org/bouncycastle/math/raw/Interleave;->expand64To128Rev(J[JI)V

    .line 317
    aget-wide v3, v0, v1

    .local v3, "z0":J
    aget-wide v6, v0, v2

    .local v6, "z1":J
    aget-wide v8, v0, v5

    .local v8, "z2":J
    const/4 v10, 0x3

    aget-wide v10, v0, v10

    .line 319
    .local v10, "z3":J
    ushr-long v12, v10, v2

    xor-long/2addr v12, v10

    ushr-long v14, v10, v5

    xor-long/2addr v12, v14

    const/4 v14, 0x7

    ushr-long v15, v10, v14

    xor-long/2addr v12, v15

    xor-long/2addr v6, v12

    .line 320
    const/16 v12, 0x3f

    shl-long v15, v10, v12

    const/16 v13, 0x3e

    shl-long v17, v10, v13

    xor-long v15, v15, v17

    const/16 v17, 0x39

    shl-long v18, v10, v17

    xor-long v15, v15, v18

    xor-long/2addr v8, v15

    .line 322
    ushr-long v15, v8, v2

    xor-long/2addr v15, v8

    ushr-long v18, v8, v5

    xor-long v15, v15, v18

    ushr-long v18, v8, v14

    xor-long v14, v15, v18

    xor-long/2addr v3, v14

    .line 323
    shl-long v14, v8, v12

    shl-long v12, v8, v13

    xor-long/2addr v12, v14

    shl-long v14, v8, v17

    xor-long/2addr v12, v14

    xor-long v5, v6, v12

    .line 325
    .end local v6    # "z1":J
    .local v5, "z1":J
    aput-wide v3, p1, v1

    .line 326
    aput-wide v5, p1, v2

    .line 327
    return-void
.end method

.method public static blacklist xor([BI[BII)V
    .locals 3
    .param p0, "x"    # [B
    .param p1, "xOff"    # I
    .param p2, "y"    # [B
    .param p3, "yOff"    # I
    .param p4, "len"    # I

    .line 378
    :goto_0
    add-int/lit8 p4, p4, -0x1

    if-ltz p4, :cond_0

    .line 380
    add-int v0, p1, p4

    aget-byte v1, p0, v0

    add-int v2, p3, p4

    aget-byte v2, p2, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    goto :goto_0

    .line 382
    :cond_0
    return-void
.end method

.method public static blacklist xor([BI[BI[BI)V
    .locals 4
    .param p0, "x"    # [B
    .param p1, "xOff"    # I
    .param p2, "y"    # [B
    .param p3, "yOff"    # I
    .param p4, "z"    # [B
    .param p5, "zOff"    # I

    .line 357
    const/4 v0, 0x0

    .line 360
    .local v0, "i":I
    :goto_0
    add-int v1, p5, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    .line 361
    add-int v1, p5, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    .line 362
    add-int v1, p5, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    .line 363
    add-int v1, p5, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    .line 365
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 366
    return-void

    .line 365
    :cond_0
    goto :goto_0
.end method

.method public static blacklist xor([B[B)V
    .locals 3
    .param p0, "x"    # [B
    .param p1, "y"    # [B

    .line 331
    const/4 v0, 0x0

    .line 334
    .local v0, "i":I
    :goto_0
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 335
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 336
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 337
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 339
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 340
    return-void

    .line 339
    :cond_0
    goto :goto_0
.end method

.method public static blacklist xor([B[BI)V
    .locals 3
    .param p0, "x"    # [B
    .param p1, "y"    # [B
    .param p2, "yOff"    # I

    .line 344
    const/4 v0, 0x0

    .line 347
    .local v0, "i":I
    :goto_0
    aget-byte v1, p0, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 348
    aget-byte v1, p0, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 349
    aget-byte v1, p0, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 350
    aget-byte v1, p0, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 352
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 353
    return-void

    .line 352
    :cond_0
    goto :goto_0
.end method

.method public static blacklist xor([B[BII)V
    .locals 2
    .param p0, "x"    # [B
    .param p1, "y"    # [B
    .param p2, "yOff"    # I
    .param p3, "yLen"    # I

    .line 370
    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_0

    .line 372
    aget-byte v0, p0, p3

    add-int v1, p2, p3

    aget-byte v1, p1, v1

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p0, p3

    goto :goto_0

    .line 374
    :cond_0
    return-void
.end method

.method public static blacklist xor([B[B[B)V
    .locals 3
    .param p0, "x"    # [B
    .param p1, "y"    # [B
    .param p2, "z"    # [B

    .line 386
    const/4 v0, 0x0

    .line 389
    .local v0, "i":I
    :goto_0
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    .line 390
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    .line 391
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    .line 392
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    .line 394
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 395
    return-void

    .line 394
    :cond_0
    goto :goto_0
.end method

.method public static blacklist xor([I[I)V
    .locals 3
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    .line 399
    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p0, v0

    .line 400
    const/4 v0, 0x1

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p0, v0

    .line 401
    const/4 v0, 0x2

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p0, v0

    .line 402
    const/4 v0, 0x3

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p0, v0

    .line 403
    return-void
.end method

.method public static blacklist xor([I[I[I)V
    .locals 3
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 407
    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p2, v0

    .line 408
    const/4 v0, 0x1

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p2, v0

    .line 409
    const/4 v0, 0x2

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p2, v0

    .line 410
    const/4 v0, 0x3

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p2, v0

    .line 411
    return-void
.end method

.method public static blacklist xor([J[J)V
    .locals 5
    .param p0, "x"    # [J
    .param p1, "y"    # [J

    .line 415
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 416
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 417
    return-void
.end method

.method public static blacklist xor([J[J[J)V
    .locals 5
    .param p0, "x"    # [J
    .param p1, "y"    # [J
    .param p2, "z"    # [J

    .line 421
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 422
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 423
    return-void
.end method
