.class public Landroid/util/Spline$MonotoneCubicSpline;
.super Landroid/util/Spline;
.source "Spline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Spline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MonotoneCubicSpline"
.end annotation


# instance fields
.field private greylist-max-o mM:[F

.field private greylist-max-o mX:[F

.field private greylist-max-o mY:[F


# direct methods
.method public constructor greylist-max-o <init>([F[F)V
    .locals 11
    .param p1, "x"    # [F
    .param p2, "y"    # [F

    .line 129
    invoke-direct {p0}, Landroid/util/Spline;-><init>()V

    .line 130
    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_7

    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_7

    .line 135
    array-length v0, p1

    .line 136
    .local v0, "n":I
    add-int/lit8 v1, v0, -0x1

    new-array v1, v1, [F

    .line 137
    .local v1, "d":[F
    new-array v2, v0, [F

    .line 140
    .local v2, "m":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    add-int/lit8 v4, v0, -0x1

    const/4 v5, 0x0

    if-ge v3, v4, :cond_1

    .line 141
    add-int/lit8 v4, v3, 0x1

    aget v4, p1, v4

    aget v6, p1, v3

    sub-float/2addr v4, v6

    .line 142
    .local v4, "h":F
    cmpg-float v5, v4, v5

    if-lez v5, :cond_0

    .line 146
    add-int/lit8 v5, v3, 0x1

    aget v5, p2, v5

    aget v6, p2, v3

    sub-float/2addr v5, v6

    div-float/2addr v5, v4

    aput v5, v1, v3

    .line 140
    .end local v4    # "h":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 143
    .restart local v4    # "h":F
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The control points must all have strictly increasing X values."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 150
    .end local v3    # "i":I
    .end local v4    # "h":F
    :cond_1
    const/4 v3, 0x0

    aget v4, v1, v3

    aput v4, v2, v3

    .line 151
    const/4 v3, 0x1

    .restart local v3    # "i":I
    :goto_1
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_2

    .line 152
    add-int/lit8 v4, v3, -0x1

    aget v4, v1, v4

    aget v6, v1, v3

    add-float/2addr v4, v6

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v4, v6

    aput v4, v2, v3

    .line 151
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 154
    .end local v3    # "i":I
    :cond_2
    add-int/lit8 v3, v0, -0x1

    add-int/lit8 v4, v0, -0x2

    aget v4, v1, v4

    aput v4, v2, v3

    .line 157
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_6

    .line 158
    aget v4, v1, v3

    cmpl-float v4, v4, v5

    if-nez v4, :cond_3

    .line 159
    aput v5, v2, v3

    .line 160
    add-int/lit8 v4, v3, 0x1

    aput v5, v2, v4

    goto :goto_3

    .line 162
    :cond_3
    aget v4, v2, v3

    aget v6, v1, v3

    div-float/2addr v4, v6

    .line 163
    .local v4, "a":F
    add-int/lit8 v6, v3, 0x1

    aget v6, v2, v6

    aget v7, v1, v3

    div-float/2addr v6, v7

    .line 164
    .local v6, "b":F
    cmpg-float v7, v4, v5

    if-ltz v7, :cond_5

    cmpg-float v7, v6, v5

    if-ltz v7, :cond_5

    .line 168
    float-to-double v7, v4

    float-to-double v9, v6

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    double-to-float v7, v7

    .line 169
    .local v7, "h":F
    const/high16 v8, 0x40400000    # 3.0f

    cmpl-float v9, v7, v8

    if-lez v9, :cond_4

    .line 170
    div-float/2addr v8, v7

    .line 171
    .local v8, "t":F
    aget v9, v2, v3

    mul-float/2addr v9, v8

    aput v9, v2, v3

    .line 172
    add-int/lit8 v9, v3, 0x1

    aget v10, v2, v9

    mul-float/2addr v10, v8

    aput v10, v2, v9

    .line 157
    .end local v4    # "a":F
    .end local v6    # "b":F
    .end local v7    # "h":F
    .end local v8    # "t":F
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 165
    .restart local v4    # "a":F
    .restart local v6    # "b":F
    :cond_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v7, "The control points must have monotonic Y values."

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 177
    .end local v3    # "i":I
    .end local v4    # "a":F
    .end local v6    # "b":F
    :cond_6
    iput-object p1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    .line 178
    iput-object p2, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    .line 179
    iput-object v2, p0, Landroid/util/Spline$MonotoneCubicSpline;->mM:[F

    .line 180
    return-void

    .line 131
    .end local v0    # "n":I
    .end local v1    # "d":[F
    .end local v2    # "m":[F
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "There must be at least two control points and the arrays must be of equal length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public greylist-max-o interpolate(F)F
    .locals 10
    .param p1, "x"    # F

    .line 185
    iget-object v0, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    array-length v0, v0

    .line 186
    .local v0, "n":I
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    return p1

    .line 189
    :cond_0
    iget-object v1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_1

    .line 190
    iget-object v1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    aget v1, v1, v2

    return v1

    .line 192
    :cond_1
    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_2

    .line 193
    iget-object v1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    return v1

    .line 198
    :cond_2
    const/4 v1, 0x0

    .line 199
    .local v1, "i":I
    :cond_3
    iget-object v2, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    add-int/lit8 v3, v1, 0x1

    aget v3, v2, v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_4

    .line 200
    add-int/lit8 v1, v1, 0x1

    .line 201
    aget v2, v2, v1

    cmpl-float v2, p1, v2

    if-nez v2, :cond_3

    .line 202
    iget-object v2, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    aget v2, v2, v1

    return v2

    .line 207
    :cond_4
    add-int/lit8 v3, v1, 0x1

    aget v3, v2, v3

    aget v2, v2, v1

    sub-float/2addr v3, v2

    .line 208
    .local v3, "h":F
    sub-float v2, p1, v2

    div-float/2addr v2, v3

    .line 209
    .local v2, "t":F
    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    aget v5, v4, v1

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v7, v2, v6

    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v7, v8

    mul-float/2addr v5, v7

    iget-object v7, p0, Landroid/util/Spline$MonotoneCubicSpline;->mM:[F

    aget v9, v7, v1

    mul-float/2addr v9, v3

    mul-float/2addr v9, v2

    add-float/2addr v5, v9

    sub-float v9, v8, v2

    mul-float/2addr v5, v9

    sub-float v9, v8, v2

    mul-float/2addr v5, v9

    add-int/lit8 v9, v1, 0x1

    aget v4, v4, v9

    const/high16 v9, 0x40400000    # 3.0f

    mul-float/2addr v6, v2

    sub-float/2addr v9, v6

    mul-float/2addr v4, v9

    add-int/lit8 v6, v1, 0x1

    aget v6, v7, v6

    mul-float/2addr v6, v3

    sub-float v7, v2, v8

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    mul-float/2addr v4, v2

    mul-float/2addr v4, v2

    add-float/2addr v5, v4

    return v5
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .local v0, "str":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    array-length v1, v1

    .line 218
    .local v1, "n":I
    const-string v2, "MonotoneCubicSpline{["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 220
    const-string v3, ", "

    if-eqz v2, :cond_0

    .line 221
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :cond_0
    const-string v4, "("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 225
    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mM:[F

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    .end local v2    # "i":I
    :cond_1
    const-string v2, "]}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
