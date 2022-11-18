.class public Landroid/window/PictureInPictureSurfaceTransaction$Builder;
.super Ljava/lang/Object;
.source "PictureInPictureSurfaceTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/PictureInPictureSurfaceTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAlpha:F

.field private blacklist mCornerRadius:F

.field private blacklist mFloat9:[F

.field private blacklist mPosition:Landroid/graphics/PointF;

.field private blacklist mRotation:F

.field private blacklist mShadowRadius:F

.field private blacklist mWindowCrop:Landroid/graphics/Rect;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mAlpha:F

    .line 196
    iput v0, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mCornerRadius:F

    .line 197
    iput v0, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mShadowRadius:F

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/window/PictureInPictureSurfaceTransaction;
    .locals 10

    .line 232
    new-instance v9, Landroid/window/PictureInPictureSurfaceTransaction;

    iget v1, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mAlpha:F

    iget-object v2, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mPosition:Landroid/graphics/PointF;

    iget-object v3, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mFloat9:[F

    iget v4, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mRotation:F

    iget v5, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mCornerRadius:F

    iget v6, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mShadowRadius:F

    iget-object v7, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mWindowCrop:Landroid/graphics/Rect;

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/window/PictureInPictureSurfaceTransaction;-><init>(FLandroid/graphics/PointF;[FFFFLandroid/graphics/Rect;Landroid/window/PictureInPictureSurfaceTransaction-IA;)V

    return-object v9
.end method

.method public blacklist setAlpha(F)Landroid/window/PictureInPictureSurfaceTransaction$Builder;
    .locals 0
    .param p1, "alpha"    # F

    .line 201
    iput p1, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mAlpha:F

    .line 202
    return-object p0
.end method

.method public blacklist setCornerRadius(F)Landroid/window/PictureInPictureSurfaceTransaction$Builder;
    .locals 0
    .param p1, "cornerRadius"    # F

    .line 217
    iput p1, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mCornerRadius:F

    .line 218
    return-object p0
.end method

.method public blacklist setPosition(FF)Landroid/window/PictureInPictureSurfaceTransaction$Builder;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 206
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mPosition:Landroid/graphics/PointF;

    .line 207
    return-object p0
.end method

.method public blacklist setShadowRadius(F)Landroid/window/PictureInPictureSurfaceTransaction$Builder;
    .locals 0
    .param p1, "shadowRadius"    # F

    .line 222
    iput p1, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mShadowRadius:F

    .line 223
    return-object p0
.end method

.method public blacklist setTransform([FF)Landroid/window/PictureInPictureSurfaceTransaction$Builder;
    .locals 1
    .param p1, "float9"    # [F
    .param p2, "rotation"    # F

    .line 211
    const/16 v0, 0x9

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mFloat9:[F

    .line 212
    iput p2, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mRotation:F

    .line 213
    return-object p0
.end method

.method public blacklist setWindowCrop(Landroid/graphics/Rect;)Landroid/window/PictureInPictureSurfaceTransaction$Builder;
    .locals 1
    .param p1, "windowCrop"    # Landroid/graphics/Rect;

    .line 227
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->mWindowCrop:Landroid/graphics/Rect;

    .line 228
    return-object p0
.end method
