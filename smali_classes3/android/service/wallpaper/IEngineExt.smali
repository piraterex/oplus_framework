.class public interface abstract Landroid/service/wallpaper/IEngineExt;
.super Ljava/lang/Object;
.source "IEngineExt.java"


# virtual methods
.method public blacklist onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "resultRequested"    # Z

    .line 35
    return-void
.end method

.method public blacklist reportEngineShown(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;Z)Z
    .locals 1
    .param p1, "engineWrapper"    # Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;
    .param p2, "waitForEngineShown"    # Z

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist reportFinishDrawing(Landroid/os/Handler;Landroid/view/IWindowSession;Lcom/android/internal/view/BaseIWindow;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "windowSession"    # Landroid/view/IWindowSession;
    .param p3, "window"    # Lcom/android/internal/view/BaseIWindow;

    .line 33
    return-void
.end method

.method public blacklist setWallpaperService(Landroid/service/wallpaper/WallpaperService;)V
    .locals 0
    .param p1, "wallpaperService"    # Landroid/service/wallpaper/WallpaperService;

    .line 37
    return-void
.end method
