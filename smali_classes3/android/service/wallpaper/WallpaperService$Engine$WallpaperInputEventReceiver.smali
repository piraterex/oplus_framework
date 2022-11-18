.class final Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService$Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WallpaperInputEventReceiver"
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/service/wallpaper/WallpaperService$Engine;


# direct methods
.method public constructor blacklist <init>(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Landroid/service/wallpaper/WallpaperService$Engine;
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 393
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    .line 394
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 395
    return-void
.end method


# virtual methods
.method public blacklist onInputEvent(Landroid/view/InputEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 399
    const/4 v0, 0x0

    .line 401
    .local v0, "handled":Z
    :try_start_0
    instance-of v1, p1, Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    .line 402
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 403
    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-static {v1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 404
    .local v1, "dup":Landroid/view/MotionEvent;
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-static {v2, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->-$$Nest$mdispatchPointer(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    const/4 v0, 0x1

    .line 408
    .end local v1    # "dup":Landroid/view/MotionEvent;
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 409
    nop

    .line 410
    return-void

    .line 408
    :catchall_0
    move-exception v1

    invoke-virtual {p0, p1, v0}, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 409
    throw v1
.end method
