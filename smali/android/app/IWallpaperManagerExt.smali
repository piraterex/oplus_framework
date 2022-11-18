.class public interface abstract Landroid/app/IWallpaperManagerExt;
.super Ljava/lang/Object;
.source "IWallpaperManagerExt.java"


# static fields
.field public static final blacklist DARK_MODE_WINDOW_ALPHA:F = 0.76f

.field public static final blacklist FLAG_FAST_SET:I = 0x10000

.field public static final blacklist NORMAL_MODE_WINDOW_ALPHA:F = 0.98f


# virtual methods
.method public blacklist checkCustomizeWallpaperDir()Z
    .locals 1

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDarkModeWallpaperWindowAlpha(Landroid/content/Context;FLandroid/service/wallpaper/WallpaperService$Engine;)F
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "alpha"    # F
    .param p3, "engine"    # Landroid/service/wallpaper/WallpaperService$Engine;

    .line 34
    return p2
.end method

.method public blacklist getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getModuleWallpaperFileName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I

    .line 26
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getWallpaperType(I)I
    .locals 0
    .param p1, "which"    # I

    .line 40
    return p1
.end method

.method public blacklist isNotAvailableWhichWithSinglePhysicalDisplayFlag(I)Z
    .locals 2
    .param p1, "which"    # I

    .line 44
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I

    .line 18
    const/4 v0, 0x0

    return-object v0
.end method
