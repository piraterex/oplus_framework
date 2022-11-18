.class public interface abstract Landroid/graphics/IBaseCanvasExt;
.super Ljava/lang/Object;
.source "IBaseCanvasExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/IBaseCanvasExt$Entity;,
        Landroid/graphics/IBaseCanvasExt$RealPaintState;
    }
.end annotation


# static fields
.field public static final blacklist TRANSFORM_BACKGROUND:I = 0x1

.field public static final blacklist TRANSFORM_FOREGROUND:I = 0x2

.field public static final blacklist TRANSFORM_UNKNOWN:I = 0x0

.field public static final blacklist TYPE_MAYBE_FULL_HORIZONTAL_LINE:I = 0x3

.field public static final blacklist TYPE_MAYBE_FULL_HORIZONTAL_RECT:I = 0x2

.field public static final blacklist TYPE_MAYBE_SMALL_VIEW:I = 0x1

.field public static final blacklist TYPE_UNKNOWN:I

.field public static final blacklist mRectF:Landroid/graphics/RectF;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Landroid/graphics/IBaseCanvasExt;->mRectF:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public blacklist changeArea(Landroid/graphics/Paint;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "rectF"    # Landroid/graphics/RectF;

    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist changeArea(Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/Path;)Landroid/graphics/IBaseCanvasExt$Entity;
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "rectF"    # Landroid/graphics/RectF;
    .param p3, "path"    # Landroid/graphics/Path;

    .line 129
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist changeBitmap(Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "rectF"    # Landroid/graphics/RectF;

    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist changeColor(I)I
    .locals 0
    .param p1, "color"    # I

    .line 117
    return p1
.end method

.method public blacklist changeColors([I)[I
    .locals 0
    .param p1, "colors"    # [I

    .line 109
    return-object p1
.end method

.method public blacklist changePatch(Landroid/graphics/NinePatch;Landroid/graphics/Paint;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;
    .locals 1
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "rectF"    # Landroid/graphics/RectF;

    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist changeText(Landroid/graphics/Paint;)Landroid/graphics/IBaseCanvasExt$Entity;
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 157
    return-void
.end method

.method public blacklist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 162
    return-void
.end method

.method public blacklist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/Rect;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 167
    return-void
.end method

.method public blacklist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/RectF;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 172
    return-void
.end method

.method public blacklist end()V
    .locals 0

    .line 180
    return-void
.end method

.method public blacklist getClipChildRect()Landroid/graphics/Rect;
    .locals 1

    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getHeight()I
    .locals 1

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getOplusViewType()I
    .locals 1

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRectF(FF)Landroid/graphics/RectF;
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .line 77
    sget-object v0, Landroid/graphics/IBaseCanvasExt;->mRectF:Landroid/graphics/RectF;

    return-object v0
.end method

.method public blacklist getRectF(FFFF)Landroid/graphics/RectF;
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 81
    sget-object v0, Landroid/graphics/IBaseCanvasExt;->mRectF:Landroid/graphics/RectF;

    return-object v0
.end method

.method public blacklist getRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 85
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public blacklist getTransformType()I
    .locals 1

    .line 56
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getViewAreaHeight()I
    .locals 1

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getViewAreaWidth()I
    .locals 1

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getWidth()I
    .locals 1

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDarkMode()Z
    .locals 1

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isHardwareAccelerated()Z
    .locals 1

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "entity"    # Landroid/graphics/IBaseCanvasExt$Entity;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 137
    return-void
.end method

.method public blacklist setClipChildRect(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 143
    return-void
.end method

.method public blacklist setIsCanvasBaseBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "value"    # Z

    .line 90
    return-void
.end method

.method public blacklist setOplusViewTypeLocked(I)V
    .locals 0
    .param p1, "viewType"    # I

    .line 53
    return-void
.end method

.method public blacklist setTransformType(I)V
    .locals 0
    .param p1, "mTransformType"    # I

    .line 60
    return-void
.end method

.method public blacklist setViewArea(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 38
    return-void
.end method

.method public blacklist start()V
    .locals 0

    .line 176
    return-void
.end method
