.class public final synthetic Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/wallpaper/WallpaperService$Engine;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:F

.field public final synthetic blacklist f$4:F


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/wallpaper/WallpaperService$Engine;IIFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda5;->f$0:Landroid/service/wallpaper/WallpaperService$Engine;

    iput p2, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda5;->f$1:I

    iput p3, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda5;->f$2:I

    iput p4, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda5;->f$3:F

    iput p5, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda5;->f$4:F

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 5

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda5;->f$0:Landroid/service/wallpaper/WallpaperService$Engine;

    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda5;->f$1:I

    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda5;->f$2:I

    iget v3, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda5;->f$3:F

    iget v4, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda5;->f$4:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/service/wallpaper/WallpaperService$Engine;->lambda$processLocalColors$1$android-service-wallpaper-WallpaperService$Engine(IIFF)V

    return-void
.end method
