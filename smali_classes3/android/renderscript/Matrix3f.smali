.class public Landroid/renderscript/Matrix3f;
.super Ljava/lang/Object;
.source "Matrix3f.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final greylist-max-o mMat:[F


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    .line 35
    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    .line 36
    return-void
.end method

.method public constructor whitelist <init>([F)V
    .locals 3
    .param p1, "dataArray"    # [F

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    .line 47
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    return-void
.end method


# virtual methods
.method public whitelist get(II)F
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 69
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 v1, p1, 0x3

    add-int/2addr v1, p2

    aget v0, v0, v1

    return v0
.end method

.method public whitelist getArray()[F
    .locals 1

    .line 57
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    return-object v0
.end method

.method public whitelist load(Landroid/renderscript/Matrix3f;)V
    .locals 4
    .param p1, "src"    # Landroid/renderscript/Matrix3f;

    .line 105
    invoke-virtual {p1}, Landroid/renderscript/Matrix3f;->getArray()[F

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    return-void
.end method

.method public whitelist loadIdentity()V
    .locals 4

    .line 86
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 87
    const/4 v1, 0x1

    const/4 v3, 0x0

    aput v3, v0, v1

    .line 88
    const/4 v1, 0x2

    aput v3, v0, v1

    .line 90
    const/4 v1, 0x3

    aput v3, v0, v1

    .line 91
    const/4 v1, 0x4

    aput v2, v0, v1

    .line 92
    const/4 v1, 0x5

    aput v3, v0, v1

    .line 94
    const/4 v1, 0x6

    aput v3, v0, v1

    .line 95
    const/4 v1, 0x7

    aput v3, v0, v1

    .line 96
    const/16 v1, 0x8

    aput v2, v0, v1

    .line 97
    return-void
.end method

.method public whitelist loadMultiply(Landroid/renderscript/Matrix3f;Landroid/renderscript/Matrix3f;)V
    .locals 10
    .param p1, "lhs"    # Landroid/renderscript/Matrix3f;
    .param p2, "rhs"    # Landroid/renderscript/Matrix3f;

    .line 212
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 213
    const/4 v2, 0x0

    .line 214
    .local v2, "ri0":F
    const/4 v3, 0x0

    .line 215
    .local v3, "ri1":F
    const/4 v4, 0x0

    .line 216
    .local v4, "ri2":F
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ge v5, v1, :cond_0

    .line 217
    invoke-virtual {p2, v0, v5}, Landroid/renderscript/Matrix3f;->get(II)F

    move-result v9

    .line 218
    .local v9, "rhs_ij":F
    invoke-virtual {p1, v5, v7}, Landroid/renderscript/Matrix3f;->get(II)F

    move-result v7

    mul-float/2addr v7, v9

    add-float/2addr v2, v7

    .line 219
    invoke-virtual {p1, v5, v8}, Landroid/renderscript/Matrix3f;->get(II)F

    move-result v7

    mul-float/2addr v7, v9

    add-float/2addr v3, v7

    .line 220
    invoke-virtual {p1, v5, v6}, Landroid/renderscript/Matrix3f;->get(II)F

    move-result v6

    mul-float/2addr v6, v9

    add-float/2addr v4, v6

    .line 216
    .end local v9    # "rhs_ij":F
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 222
    .end local v5    # "j":I
    :cond_0
    invoke-virtual {p0, v0, v7, v2}, Landroid/renderscript/Matrix3f;->set(IIF)V

    .line 223
    invoke-virtual {p0, v0, v8, v3}, Landroid/renderscript/Matrix3f;->set(IIF)V

    .line 224
    invoke-virtual {p0, v0, v6, v4}, Landroid/renderscript/Matrix3f;->set(IIF)V

    .line 212
    .end local v2    # "ri0":F
    .end local v3    # "ri1":F
    .end local v4    # "ri2":F
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public whitelist loadRotate(F)V
    .locals 5
    .param p1, "rot"    # F

    .line 154
    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    .line 156
    const v0, 0x3c8efa35

    mul-float/2addr p1, v0

    .line 157
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 158
    .local v0, "c":F
    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 159
    .local v1, "s":F
    iget-object v2, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x0

    aput v0, v2, v3

    .line 160
    neg-float v3, v1

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 161
    const/4 v3, 0x3

    aput v1, v2, v3

    .line 162
    const/4 v3, 0x4

    aput v0, v2, v3

    .line 163
    return-void
.end method

.method public whitelist loadRotate(FFFF)V
    .locals 18
    .param p1, "rot"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .line 119
    const v0, 0x3c8efa35

    mul-float v0, v0, p1

    .line 120
    .end local p1    # "rot":F
    .local v0, "rot":F
    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 121
    .local v1, "c":F
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 123
    .local v2, "s":F
    mul-float v3, p2, p2

    mul-float v4, p3, p3

    add-float/2addr v3, v4

    mul-float v4, p4, p4

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 124
    .local v3, "len":F
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v3, v4

    if-nez v5, :cond_0

    .line 125
    div-float v5, v4, v3

    .line 126
    .local v5, "recipLen":F
    mul-float v6, p2, v5

    .line 127
    .end local p2    # "x":F
    .local v6, "x":F
    mul-float v7, p3, v5

    .line 128
    .end local p3    # "y":F
    .local v7, "y":F
    mul-float v8, p4, v5

    .end local p4    # "z":F
    .local v8, "z":F
    goto :goto_0

    .line 124
    .end local v5    # "recipLen":F
    .end local v6    # "x":F
    .end local v7    # "y":F
    .end local v8    # "z":F
    .restart local p2    # "x":F
    .restart local p3    # "y":F
    .restart local p4    # "z":F
    :cond_0
    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    .line 130
    .end local p2    # "x":F
    .end local p3    # "y":F
    .end local p4    # "z":F
    .restart local v6    # "x":F
    .restart local v7    # "y":F
    .restart local v8    # "z":F
    :goto_0
    sub-float/2addr v4, v1

    .line 131
    .local v4, "nc":F
    mul-float v5, v6, v7

    .line 132
    .local v5, "xy":F
    mul-float v9, v7, v8

    .line 133
    .local v9, "yz":F
    mul-float v10, v8, v6

    .line 134
    .local v10, "zx":F
    mul-float v11, v6, v2

    .line 135
    .local v11, "xs":F
    mul-float v12, v7, v2

    .line 136
    .local v12, "ys":F
    mul-float v13, v8, v2

    .line 137
    .local v13, "zs":F
    move-object/from16 v14, p0

    iget-object v15, v14, Landroid/renderscript/Matrix3f;->mMat:[F

    const/16 v16, 0x0

    mul-float v17, v6, v6

    mul-float v17, v17, v4

    add-float v17, v17, v1

    aput v17, v15, v16

    .line 138
    const/16 v16, 0x3

    mul-float v17, v5, v4

    sub-float v17, v17, v13

    aput v17, v15, v16

    .line 139
    const/16 v16, 0x6

    mul-float v17, v10, v4

    add-float v17, v17, v12

    aput v17, v15, v16

    .line 140
    const/16 v16, 0x1

    mul-float v17, v5, v4

    add-float v17, v17, v13

    aput v17, v15, v16

    .line 141
    const/16 v16, 0x4

    mul-float v17, v7, v7

    mul-float v17, v17, v4

    add-float v17, v17, v1

    aput v17, v15, v16

    .line 142
    const/16 v16, 0x7

    mul-float v17, v9, v4

    sub-float v17, v17, v11

    aput v17, v15, v16

    .line 143
    const/16 v16, 0x2

    mul-float v17, v10, v4

    sub-float v17, v17, v12

    aput v17, v15, v16

    .line 144
    const/16 v16, 0x5

    mul-float v17, v9, v4

    add-float v17, v17, v11

    aput v17, v15, v16

    .line 145
    const/16 v16, 0x8

    mul-float v17, v8, v8

    mul-float v17, v17, v4

    add-float v17, v17, v1

    aput v17, v15, v16

    .line 146
    return-void
.end method

.method public whitelist loadScale(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 172
    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    .line 173
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 174
    const/4 v1, 0x4

    aput p2, v0, v1

    .line 175
    return-void
.end method

.method public whitelist loadScale(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 185
    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    .line 186
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 187
    const/4 v1, 0x4

    aput p2, v0, v1

    .line 188
    const/16 v1, 0x8

    aput p3, v0, v1

    .line 189
    return-void
.end method

.method public whitelist loadTranslate(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 199
    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    .line 200
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x6

    aput p1, v0, v1

    .line 201
    const/4 v1, 0x7

    aput p2, v0, v1

    .line 202
    return-void
.end method

.method public whitelist multiply(Landroid/renderscript/Matrix3f;)V
    .locals 1
    .param p1, "rhs"    # Landroid/renderscript/Matrix3f;

    .line 234
    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    .line 235
    .local v0, "tmp":Landroid/renderscript/Matrix3f;
    invoke-virtual {v0, p0, p1}, Landroid/renderscript/Matrix3f;->loadMultiply(Landroid/renderscript/Matrix3f;Landroid/renderscript/Matrix3f;)V

    .line 236
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->load(Landroid/renderscript/Matrix3f;)V

    .line 237
    return-void
.end method

.method public whitelist rotate(F)V
    .locals 1
    .param p1, "rot"    # F

    .line 261
    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    .line 262
    .local v0, "tmp":Landroid/renderscript/Matrix3f;
    invoke-virtual {v0, p1}, Landroid/renderscript/Matrix3f;->loadRotate(F)V

    .line 263
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    .line 264
    return-void
.end method

.method public whitelist rotate(FFFF)V
    .locals 1
    .param p1, "rot"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .line 249
    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    .line 250
    .local v0, "tmp":Landroid/renderscript/Matrix3f;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/renderscript/Matrix3f;->loadRotate(FFFF)V

    .line 251
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    .line 252
    return-void
.end method

.method public whitelist scale(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 274
    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    .line 275
    .local v0, "tmp":Landroid/renderscript/Matrix3f;
    invoke-virtual {v0, p1, p2}, Landroid/renderscript/Matrix3f;->loadScale(FF)V

    .line 276
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    .line 277
    return-void
.end method

.method public whitelist scale(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 288
    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    .line 289
    .local v0, "tmp":Landroid/renderscript/Matrix3f;
    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Matrix3f;->loadScale(FFF)V

    .line 290
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    .line 291
    return-void
.end method

.method public whitelist set(IIF)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "v"    # F

    .line 79
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 v1, p1, 0x3

    add-int/2addr v1, p2

    aput p3, v0, v1

    .line 80
    return-void
.end method

.method public whitelist translate(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 301
    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    .line 302
    .local v0, "tmp":Landroid/renderscript/Matrix3f;
    invoke-virtual {v0, p1, p2}, Landroid/renderscript/Matrix3f;->loadTranslate(FF)V

    .line 303
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    .line 304
    return-void
.end method

.method public whitelist transpose()V
    .locals 6

    .line 310
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 311
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_1
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 312
    iget-object v2, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 v3, v0, 0x3

    add-int/2addr v3, v1

    aget v3, v2, v3

    .line 313
    .local v3, "temp":F
    mul-int/lit8 v4, v0, 0x3

    add-int/2addr v4, v1

    mul-int/lit8 v5, v1, 0x3

    add-int/2addr v5, v0

    aget v5, v2, v5

    aput v5, v2, v4

    .line 314
    mul-int/lit8 v4, v1, 0x3

    add-int/2addr v4, v0

    aput v3, v2, v4

    .line 311
    .end local v3    # "temp":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 310
    .end local v1    # "j":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
