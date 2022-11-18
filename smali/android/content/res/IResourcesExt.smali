.class public interface abstract Landroid/content/res/IResourcesExt;
.super Ljava/lang/Object;
.source "IResourcesExt.java"


# virtual methods
.method public blacklist getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getResources()Landroid/content/res/Resources;
    .locals 1

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSystemConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getThemeChanged()Z
    .locals 1

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "id"    # I

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist init(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 51
    return-void
.end method

.method public blacklist loadIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "id"    # I

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist loadIcon(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "id"    # I
    .param p2, "str"    # Ljava/lang/String;

    .line 46
    const/4 v0, 0x1

    invoke-interface {p0, p1, p2, v0}, Landroid/content/res/IResourcesExt;->loadIcon(ILjava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadIcon(ILjava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "id"    # I
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "useWrap"    # Z

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist loadIcon(IZ)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "id"    # I
    .param p2, "useWrap"    # Z

    .line 42
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, p2}, Landroid/content/res/IResourcesExt;->loadIcon(ILjava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setIsThemeChanged(Z)V
    .locals 0
    .param p1, "changed"    # Z

    .line 27
    return-void
.end method

.method public blacklist setResourceImplExt(Landroid/content/res/IResourcesImplExt;)V
    .locals 0
    .param p1, "implExt"    # Landroid/content/res/IResourcesImplExt;

    .line 24
    return-void
.end method
