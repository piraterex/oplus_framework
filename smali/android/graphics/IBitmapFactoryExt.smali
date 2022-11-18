.class public interface abstract Landroid/graphics/IBitmapFactoryExt;
.super Ljava/lang/Object;
.source "IBitmapFactoryExt.java"


# virtual methods
.method public blacklist getBitmapCache(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I
    .param p3, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist osenseSetSceneAction(I)V
    .locals 0
    .param p1, "timeout"    # I

    .line 27
    return-void
.end method

.method public blacklist setBitmapCache(Landroid/graphics/Bitmap;Landroid/content/res/Resources;I)V
    .locals 0
    .param p1, "cache"    # Landroid/graphics/Bitmap;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "id"    # I

    .line 34
    return-void
.end method
