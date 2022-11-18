.class public interface abstract Landroid/graphics/drawable/IVectorDrawableExt$IStaticExt;
.super Ljava/lang/Object;
.source "IVectorDrawableExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/IVectorDrawableExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IStaticExt"
.end annotation


# virtual methods
.method public blacklist calculateStrokeWidth(Ljava/lang/String;F)Ljava/lang/Float;
    .locals 1
    .param p1, "pathName"    # Ljava/lang/String;
    .param p2, "defaultWidth"    # F

    .line 42
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public blacklist changePaintWhenVectorDraw(Landroid/graphics/drawable/VectorDrawable;Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;Landroid/graphics/drawable/VectorDrawable$VGroup;)J
    .locals 2
    .param p1, "vectorDrawable"    # Landroid/graphics/drawable/VectorDrawable;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "colorFilter"    # Landroid/graphics/ColorFilter;
    .param p4, "vGroup"    # Landroid/graphics/drawable/VectorDrawable$VGroup;

    .line 30
    if-nez p3, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/graphics/ColorFilter;->getNativeInstance()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public blacklist hookVFullInflate(Landroid/content/res/IResourcesExt;)V
    .locals 0
    .param p1, "res"    # Landroid/content/res/IResourcesExt;

    .line 39
    return-void
.end method

.method public blacklist resetPaintWhenVectorDraw(Landroid/graphics/drawable/VectorDrawable;Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "vectorDrawable"    # Landroid/graphics/drawable/VectorDrawable;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 35
    return-void
.end method
