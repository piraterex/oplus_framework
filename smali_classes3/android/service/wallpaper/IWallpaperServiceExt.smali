.class public interface abstract Landroid/service/wallpaper/IWallpaperServiceExt;
.super Ljava/lang/Object;
.source "IWallpaperServiceExt.java"


# virtual methods
.method public blacklist addEngine(Landroid/service/wallpaper/WallpaperService$Engine;)V
    .locals 0
    .param p1, "engine"    # Landroid/service/wallpaper/WallpaperService$Engine;

    .line 42
    return-void
.end method

.method public blacklist adjustMessageQueue(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msg"    # Landroid/os/Message;

    .line 58
    return-void
.end method

.method public blacklist isFromSwitchingUser()Z
    .locals 1

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onBind(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 50
    return-void
.end method

.method public blacklist onDispatchAppVisibility(ZZ)V
    .locals 0
    .param p1, "visible"    # Z
    .param p2, "debug"    # Z

    .line 64
    return-void
.end method

.method public blacklist registerSetingsContentObserver(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    return-void
.end method

.method public blacklist removeEngine(Landroid/service/wallpaper/WallpaperService$Engine;)V
    .locals 0
    .param p1, "engine"    # Landroid/service/wallpaper/WallpaperService$Engine;

    .line 46
    return-void
.end method

.method public blacklist setWallpaperService(Landroid/service/wallpaper/WallpaperService;)V
    .locals 0
    .param p1, "service"    # Landroid/service/wallpaper/WallpaperService;

    .line 54
    return-void
.end method

.method public blacklist unregisterSettingsContentObserver(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    return-void
.end method
