.class public Landroid/service/wallpaper/EngineWindowPage;
.super Ljava/lang/Object;
.source "EngineWindowPage.java"


# instance fields
.field private blacklist mCallbackAreas:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private volatile blacklist mLastUpdateTime:J

.field private blacklist mRectFColors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/graphics/RectF;",
            "Landroid/app/WallpaperColors;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mScreenShot:Landroid/graphics/Bitmap;


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/service/wallpaper/EngineWindowPage;->mLastUpdateTime:J

    .line 35
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/EngineWindowPage;->mCallbackAreas:Ljava/util/Set;

    .line 36
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/EngineWindowPage;->mRectFColors:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public blacklist addArea(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "area"    # Landroid/graphics/RectF;

    .line 40
    iget-object v0, p0, Landroid/service/wallpaper/EngineWindowPage;->mCallbackAreas:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method

.method public blacklist addWallpaperColors(Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V
    .locals 1
    .param p1, "area"    # Landroid/graphics/RectF;
    .param p2, "colors"    # Landroid/app/WallpaperColors;

    .line 45
    iget-object v0, p0, Landroid/service/wallpaper/EngineWindowPage;->mCallbackAreas:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Landroid/service/wallpaper/EngineWindowPage;->mRectFColors:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public blacklist getAreas()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Landroid/service/wallpaper/EngineWindowPage;->mCallbackAreas:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 51
    iget-object v0, p0, Landroid/service/wallpaper/EngineWindowPage;->mScreenShot:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Landroid/service/wallpaper/EngineWindowPage;->mScreenShot:Landroid/graphics/Bitmap;

    return-object v0

    .line 51
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getColors(Landroid/graphics/RectF;)Landroid/app/WallpaperColors;
    .locals 1
    .param p1, "rect"    # Landroid/graphics/RectF;

    .line 73
    iget-object v0, p0, Landroid/service/wallpaper/EngineWindowPage;->mRectFColors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperColors;

    return-object v0
.end method

.method public blacklist getLastUpdateTime()J
    .locals 2

    .line 68
    iget-wide v0, p0, Landroid/service/wallpaper/EngineWindowPage;->mLastUpdateTime:J

    return-wide v0
.end method

.method public blacklist removeArea(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "area"    # Landroid/graphics/RectF;

    .line 57
    iget-object v0, p0, Landroid/service/wallpaper/EngineWindowPage;->mCallbackAreas:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Landroid/service/wallpaper/EngineWindowPage;->mRectFColors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public blacklist removeColor(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "colorArea"    # Landroid/graphics/RectF;

    .line 88
    iget-object v0, p0, Landroid/service/wallpaper/EngineWindowPage;->mRectFColors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void
.end method

.method public blacklist setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "screenShot"    # Landroid/graphics/Bitmap;

    .line 78
    iput-object p1, p0, Landroid/service/wallpaper/EngineWindowPage;->mScreenShot:Landroid/graphics/Bitmap;

    .line 79
    return-void
.end method

.method public blacklist setLastUpdateTime(J)V
    .locals 0
    .param p1, "lastUpdateTime"    # J

    .line 63
    iput-wide p1, p0, Landroid/service/wallpaper/EngineWindowPage;->mLastUpdateTime:J

    .line 64
    return-void
.end method
