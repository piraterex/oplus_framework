.class public Landroid/graphics/NinePatch;
.super Ljava/lang/Object;
.source "NinePatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/NinePatch$InsetStruct;
    }
.end annotation


# instance fields
.field private final greylist mBitmap:Landroid/graphics/Bitmap;

.field public greylist mNativeChunk:J

.field private greylist-max-o mPaint:Landroid/graphics/Paint;

.field private greylist-max-o mSrcName:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Landroid/graphics/Bitmap;[B)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "chunk"    # [B

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    .line 105
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "chunk"    # [B
    .param p3, "srcName"    # Ljava/lang/String;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    .line 117
    iput-object p3, p0, Landroid/graphics/NinePatch;->mSrcName:Ljava/lang/String;

    .line 118
    invoke-static {p2}, Landroid/graphics/NinePatch;->validateNinePatchChunk([B)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/NinePatch;->mNativeChunk:J

    .line 119
    return-void
.end method

.method public static native whitelist isNinePatchChunk([B)Z
.end method

.method private static native greylist-max-o nativeFinalize(J)V
.end method

.method private static native blacklist nativeGetTransparentRegion(JJLandroid/graphics/Rect;)J
.end method

.method private static native greylist-max-o validateNinePatchChunk([B)J
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "location"    # Landroid/graphics/Rect;

    .line 190
    iget-object v0, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p0, p2, v0}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 191
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "location"    # Landroid/graphics/Rect;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 202
    invoke-virtual {p1, p0, p2, p3}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 203
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "location"    # Landroid/graphics/RectF;

    .line 180
    iget-object v0, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p0, p2, v0}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 181
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 124
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/NinePatch;->mNativeChunk:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 126
    invoke-static {v0, v1}, Landroid/graphics/NinePatch;->nativeFinalize(J)V

    .line 127
    iput-wide v2, p0, Landroid/graphics/NinePatch;->mNativeChunk:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 131
    nop

    .line 132
    return-void

    .line 130
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 131
    throw v0
.end method

.method public whitelist getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 170
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public whitelist getDensity()I
    .locals 1

    .line 210
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    iget v0, v0, Landroid/graphics/Bitmap;->mDensity:I

    return v0
.end method

.method public whitelist getHeight()I
    .locals 1

    .line 226
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Landroid/graphics/NinePatch;->mSrcName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 150
    iget-object v0, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final whitelist getTransparentRegion(Landroid/graphics/Rect;)Landroid/graphics/Region;
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 249
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/graphics/NinePatch;->mNativeChunk:J

    invoke-static {v0, v1, v2, v3, p1}, Landroid/graphics/NinePatch;->nativeGetTransparentRegion(JJLandroid/graphics/Rect;)J

    move-result-wide v0

    .line 251
    .local v0, "r":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Region;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public whitelist getWidth()I
    .locals 1

    .line 218
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public final whitelist hasAlpha()Z
    .locals 1

    .line 235
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    return v0
.end method

.method public whitelist setPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "p"    # Landroid/graphics/Paint;

    .line 163
    iput-object p1, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    .line 164
    return-void
.end method
