.class public final synthetic Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/wallpaper/WallpaperService$Engine;

.field public final synthetic blacklist f$1:Landroid/service/wallpaper/EngineWindowPage;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:I

.field public final synthetic blacklist f$4:F

.field public final synthetic blacklist f$5:Landroid/graphics/Bitmap;

.field public final synthetic blacklist f$6:J


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/service/wallpaper/EngineWindowPage;IIFLandroid/graphics/Bitmap;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda0;->f$0:Landroid/service/wallpaper/WallpaperService$Engine;

    iput-object p2, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda0;->f$1:Landroid/service/wallpaper/EngineWindowPage;

    iput p3, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda0;->f$3:I

    iput p5, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda0;->f$4:F

    iput-object p6, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda0;->f$5:Landroid/graphics/Bitmap;

    iput-wide p7, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda0;->f$6:J

    return-void
.end method


# virtual methods
.method public final whitelist onPixelCopyFinished(I)V
    .locals 9

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda0;->f$0:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda0;->f$1:Landroid/service/wallpaper/EngineWindowPage;

    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda0;->f$3:I

    iget v4, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda0;->f$4:F

    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda0;->f$5:Landroid/graphics/Bitmap;

    iget-wide v6, p0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda0;->f$6:J

    move v8, p1

    invoke-virtual/range {v0 .. v8}, Landroid/service/wallpaper/WallpaperService$Engine;->lambda$updatePage$2$android-service-wallpaper-WallpaperService$Engine(Landroid/service/wallpaper/EngineWindowPage;IIFLandroid/graphics/Bitmap;JI)V

    return-void
.end method
