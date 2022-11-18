.class public final synthetic Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/wallpaper/WallpaperService$Engine;

.field public final synthetic blacklist f$1:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda3;->f$0:Landroid/service/wallpaper/WallpaperService$Engine;

    iput-object p2, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda3;->f$1:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public final whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda3;->f$0:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda3;->f$1:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->lambda$updateSurfaceDimming$0$android-service-wallpaper-WallpaperService$Engine(Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V

    return-void
.end method
