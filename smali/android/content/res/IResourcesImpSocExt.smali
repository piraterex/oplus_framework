.class public interface abstract Landroid/content/res/IResourcesImpSocExt;
.super Ljava/lang/Object;
.source "IResourcesImpSocExt.java"


# virtual methods
.method public whitelist getCachedDrawable(Ljava/lang/Object;Landroid/content/res/Resources;JI)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "wrapper"    # Landroid/content/res/Resources;
    .param p3, "key"    # J
    .param p5, "id"    # I

    .line 12
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist putCacheList(JLandroid/graphics/drawable/Drawable;IZ)V
    .locals 0
    .param p1, "key"    # J
    .param p3, "dr"    # Landroid/graphics/drawable/Drawable;
    .param p4, "resId"    # I
    .param p5, "isColorDrawable"    # Z

    .line 17
    return-void
.end method

.method public whitelist setAppContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 9
    return-void
.end method
