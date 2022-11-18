.class public interface abstract Landroid/util/IIconDrawableFactoryExt;
.super Ljava/lang/Object;
.source "IIconDrawableFactoryExt.java"


# virtual methods
.method public blacklist hookgetBadgedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 26
    return-object p1
.end method

.method public blacklist isMultiAppUserId(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isOemIcons()Z
    .locals 1

    .line 18
    const/4 v0, 0x0

    return v0
.end method
