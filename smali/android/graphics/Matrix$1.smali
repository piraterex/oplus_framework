.class Landroid/graphics/Matrix$1;
.super Landroid/graphics/Matrix;
.source "Matrix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Matrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist oops()V
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Matrix can not be modified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist postConcat(Landroid/graphics/Matrix;)Z
    .locals 1
    .param p1, "other"    # Landroid/graphics/Matrix;

    .line 206
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist postRotate(F)Z
    .locals 1
    .param p1, "degrees"    # F

    .line 188
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist postRotate(FFF)Z
    .locals 1
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .line 182
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist postScale(FF)Z
    .locals 1
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .line 176
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist postScale(FFFF)Z
    .locals 1
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 170
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist postSkew(FF)Z
    .locals 1
    .param p1, "kx"    # F
    .param p2, "ky"    # F

    .line 200
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist postSkew(FFFF)Z
    .locals 1
    .param p1, "kx"    # F
    .param p2, "ky"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 194
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist postTranslate(FF)Z
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 164
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist preConcat(Landroid/graphics/Matrix;)Z
    .locals 1
    .param p1, "other"    # Landroid/graphics/Matrix;

    .line 158
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist preRotate(F)Z
    .locals 1
    .param p1, "degrees"    # F

    .line 140
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist preRotate(FFF)Z
    .locals 1
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .line 134
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist preScale(FF)Z
    .locals 1
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .line 128
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist preScale(FFFF)Z
    .locals 1
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 122
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist preSkew(FF)Z
    .locals 1
    .param p1, "kx"    # F
    .param p2, "ky"    # F

    .line 152
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist preSkew(FFFF)Z
    .locals 1
    .param p1, "kx"    # F
    .param p2, "ky"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 146
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist preTranslate(FF)Z
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 116
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist reset()V
    .locals 0

    .line 60
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 61
    return-void
.end method

.method public whitelist set(Landroid/graphics/Matrix;)V
    .locals 0
    .param p1, "src"    # Landroid/graphics/Matrix;

    .line 55
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 56
    return-void
.end method

.method public whitelist setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z
    .locals 1
    .param p1, "a"    # Landroid/graphics/Matrix;
    .param p2, "b"    # Landroid/graphics/Matrix;

    .line 110
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setPolyToPoly([FI[FII)Z
    .locals 1
    .param p1, "src"    # [F
    .param p2, "srcIndex"    # I
    .param p3, "dst"    # [F
    .param p4, "dstIndex"    # I
    .param p5, "pointCount"    # I

    .line 219
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z
    .locals 1
    .param p1, "src"    # Landroid/graphics/RectF;
    .param p2, "dst"    # Landroid/graphics/RectF;
    .param p3, "stf"    # Landroid/graphics/Matrix$ScaleToFit;

    .line 212
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setRotate(F)V
    .locals 0
    .param p1, "degrees"    # F

    .line 85
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 86
    return-void
.end method

.method public whitelist setRotate(FFF)V
    .locals 0
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .line 80
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 81
    return-void
.end method

.method public whitelist setScale(FF)V
    .locals 0
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .line 75
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 76
    return-void
.end method

.method public whitelist setScale(FFFF)V
    .locals 0
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 70
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 71
    return-void
.end method

.method public whitelist setSinCos(FF)V
    .locals 0
    .param p1, "sinValue"    # F
    .param p2, "cosValue"    # F

    .line 95
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 96
    return-void
.end method

.method public whitelist setSinCos(FFFF)V
    .locals 0
    .param p1, "sinValue"    # F
    .param p2, "cosValue"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 90
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 91
    return-void
.end method

.method public whitelist setSkew(FF)V
    .locals 0
    .param p1, "kx"    # F
    .param p2, "ky"    # F

    .line 105
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 106
    return-void
.end method

.method public whitelist setSkew(FFFF)V
    .locals 0
    .param p1, "kx"    # F
    .param p2, "ky"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 100
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 101
    return-void
.end method

.method public whitelist setTranslate(FF)V
    .locals 0
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 65
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 66
    return-void
.end method

.method public whitelist setValues([F)V
    .locals 0
    .param p1, "values"    # [F

    .line 225
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 226
    return-void
.end method
