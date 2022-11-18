.class public Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "SimpleIconFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/SimpleIconFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FixedScaleDrawable"
.end annotation


# static fields
.field private static final blacklist LEGACY_ICON_SCALE:F = 0.46669f


# instance fields
.field private blacklist mScaleX:F

.field private blacklist mScaleY:F


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 695
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 696
    const v0, 0x3eeef1fe    # 0.46669f

    iput v0, p0, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->mScaleX:F

    .line 697
    iput v0, p0, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->mScaleY:F

    .line 698
    return-void
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 702
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 703
    .local v0, "saveCount":I
    iget v1, p0, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->mScaleX:F

    iget v2, p0, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->mScaleY:F

    .line 704
    invoke-virtual {p0}, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    .line 703
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 705
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    .line 706
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 707
    return-void
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 710
    return-void
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;

    .line 713
    return-void
.end method

.method public blacklist setScale(F)V
    .locals 6
    .param p1, "scale"    # F

    .line 720
    invoke-virtual {p0}, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    .line 721
    .local v0, "h":F
    invoke-virtual {p0}, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    .line 722
    .local v1, "w":F
    const v2, 0x3eeef1fe    # 0.46669f

    mul-float v3, p1, v2

    iput v3, p0, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->mScaleX:F

    .line 723
    mul-float/2addr v2, p1

    iput v2, p0, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->mScaleY:F

    .line 724
    cmpl-float v4, v0, v1

    const/4 v5, 0x0

    if-lez v4, :cond_0

    cmpl-float v4, v1, v5

    if-lez v4, :cond_0

    .line 725
    div-float v2, v1, v0

    mul-float/2addr v3, v2

    iput v3, p0, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->mScaleX:F

    goto :goto_0

    .line 726
    :cond_0
    cmpl-float v3, v1, v0

    if-lez v3, :cond_1

    cmpl-float v3, v0, v5

    if-lez v3, :cond_1

    .line 727
    div-float v3, v0, v1

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->mScaleY:F

    .line 729
    :cond_1
    :goto_0
    return-void
.end method
