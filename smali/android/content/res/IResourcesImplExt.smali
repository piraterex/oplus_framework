.class public interface abstract Landroid/content/res/IResourcesImplExt;
.super Ljava/lang/Object;
.source "IResourcesImplExt.java"


# virtual methods
.method public blacklist checkUpdate(IZ)V
    .locals 0
    .param p1, "changes"    # I
    .param p2, "languageChaged"    # Z

    .line 43
    return-void
.end method

.method public blacklist clearCache()V
    .locals 0

    .line 108
    return-void
.end method

.method public blacklist debuglogApkAssets()V
    .locals 0

    .line 143
    return-void
.end method

.method public blacklist getCompactWindowAdjustments()Landroid/view/DisplayAdjustments;
    .locals 1

    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCompactWindowMetrics(Landroid/content/res/ResourcesImpl;Landroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;
    .locals 1
    .param p1, "resources"    # Landroid/content/res/ResourcesImpl;
    .param p2, "oldMetrics"    # Landroid/util/DisplayMetrics;

    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getExValue(ILandroid/util/TypedValue;Z)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z

    .line 46
    return-void
.end method

.method public blacklist getLoadArrary()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 1

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getResourcesImpl()Landroid/content/res/ResourcesImpl;
    .locals 1

    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSystemConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getThemeChanged()Z
    .locals 1

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "id"    # I

    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hookGetDisplayMetrics(Landroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;
    .locals 0
    .param p1, "originalMetrics"    # Landroid/util/DisplayMetrics;

    .line 148
    return-object p1
.end method

.method public blacklist init(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 36
    return-void
.end method

.method public blacklist initThemeResource(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 61
    return-void
.end method

.method public blacklist isHasDrawables()Z
    .locals 1

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist loadIcon(Landroid/content/res/Resources;ILjava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "id"    # I
    .param p3, "str"    # Ljava/lang/String;
    .param p4, "useWrap"    # Z

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist loadOverlayDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist openThemeRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 1
    .param p1, "id"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist replaceTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;
    .locals 1
    .param p1, "typedarray"    # Landroid/content/res/TypedArray;

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setIsAppConfig(Z)V
    .locals 0
    .param p1, "isAppConfig"    # Z

    .line 154
    return-void
.end method

.method public blacklist setIsThemeChanged(Z)V
    .locals 0
    .param p1, "changed"    # Z

    .line 86
    return-void
.end method

.method public blacklist updateCompactWindowAdjustments(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "oldOverrideConfig"    # Landroid/content/res/Configuration;
    .param p2, "newOverrideConfig"    # Landroid/content/res/Configuration;

    .line 131
    return-void
.end method

.method public blacklist updateExConfiguration(Landroid/content/res/ResourcesImpl;Landroid/content/res/Configuration;)I
    .locals 1
    .param p1, "resources"    # Landroid/content/res/ResourcesImpl;
    .param p2, "config"    # Landroid/content/res/Configuration;

    .line 103
    const/4 v0, -0x1

    return v0
.end method
