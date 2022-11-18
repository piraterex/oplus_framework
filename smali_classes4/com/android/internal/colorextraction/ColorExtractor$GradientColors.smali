.class public Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
.super Ljava/lang/Object;
.source "ColorExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/colorextraction/ColorExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GradientColors"
.end annotation


# instance fields
.field private blacklist mColorPalette:[I

.field private blacklist mMainColor:I

.field private blacklist mSecondaryColor:I

.field private blacklist mSupportsDarkText:Z


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 290
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 293
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 294
    .local v1, "other":Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    iget v2, v1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mMainColor:I

    iget v3, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mMainColor:I

    if-ne v2, v3, :cond_1

    iget v2, v1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSecondaryColor:I

    iget v3, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSecondaryColor:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, v1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSupportsDarkText:Z

    iget-boolean v3, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSupportsDarkText:Z

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 291
    .end local v1    # "other":Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    :cond_2
    :goto_0
    return v0
.end method

.method public blacklist getColorPalette()[I
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mColorPalette:[I

    return-object v0
.end method

.method public blacklist getMainColor()I
    .locals 1

    .line 273
    iget v0, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mMainColor:I

    return v0
.end method

.method public blacklist getSecondaryColor()I
    .locals 1

    .line 277
    iget v0, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSecondaryColor:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 301
    iget v0, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mMainColor:I

    .line 302
    .local v0, "code":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSecondaryColor:I

    add-int/2addr v1, v2

    .line 303
    .end local v0    # "code":I
    .local v1, "code":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSupportsDarkText:Z

    xor-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 304
    .end local v1    # "code":I
    .restart local v0    # "code":I
    return v0
.end method

.method public blacklist set(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .locals 1
    .param p1, "other"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 266
    iget v0, p1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mMainColor:I

    iput v0, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mMainColor:I

    .line 267
    iget v0, p1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSecondaryColor:I

    iput v0, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSecondaryColor:I

    .line 268
    iget-object v0, p1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mColorPalette:[I

    iput-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mColorPalette:[I

    .line 269
    iget-boolean v0, p1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSupportsDarkText:Z

    iput-boolean v0, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSupportsDarkText:Z

    .line 270
    return-void
.end method

.method public blacklist setColorPalette([I)V
    .locals 0
    .param p1, "colorPalette"    # [I

    .line 258
    iput-object p1, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mColorPalette:[I

    .line 259
    return-void
.end method

.method public blacklist setMainColor(I)V
    .locals 0
    .param p1, "mainColor"    # I

    .line 250
    iput p1, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mMainColor:I

    .line 251
    return-void
.end method

.method public blacklist setSecondaryColor(I)V
    .locals 0
    .param p1, "secondaryColor"    # I

    .line 254
    iput p1, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSecondaryColor:I

    .line 255
    return-void
.end method

.method public blacklist setSupportsDarkText(Z)V
    .locals 0
    .param p1, "supportsDarkText"    # Z

    .line 262
    iput-boolean p1, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSupportsDarkText:Z

    .line 263
    return-void
.end method

.method public blacklist supportsDarkText()Z
    .locals 1

    .line 285
    iget-boolean v0, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSupportsDarkText:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GradientColors("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mMainColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSecondaryColor:I

    .line 310
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    return-object v0
.end method
