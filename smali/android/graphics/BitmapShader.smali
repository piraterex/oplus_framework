.class public Landroid/graphics/BitmapShader;
.super Landroid/graphics/Shader;
.source "BitmapShader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/BitmapShader$BitmapShaderWrapper;,
        Landroid/graphics/BitmapShader$FilterMode;
    }
.end annotation


# static fields
.field public static final whitelist FILTER_MODE_DEFAULT:I = 0x0

.field public static final whitelist FILTER_MODE_LINEAR:I = 0x2

.field public static final whitelist FILTER_MODE_NEAREST:I = 0x1


# instance fields
.field blacklist mBitmap:Landroid/graphics/Bitmap;

.field private blacklist mBitmapShaderWrapper:Landroid/graphics/IBitmapShaderWrapper;

.field private blacklist mFilterFromPaint:Z

.field private blacklist mFilterMode:I

.field private blacklist mIsDirectSampled:Z

.field private blacklist mRequestDirectSampling:Z

.field private blacklist mTileX:I

.field private blacklist mTileY:I


# direct methods
.method private constructor greylist-max-o <init>(Landroid/graphics/Bitmap;II)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "tileX"    # I
    .param p3, "tileY"    # I

    .line 116
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    .line 181
    new-instance v0, Landroid/graphics/BitmapShader$BitmapShaderWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/BitmapShader$BitmapShaderWrapper;-><init>(Landroid/graphics/BitmapShader;Landroid/graphics/BitmapShader$BitmapShaderWrapper-IA;)V

    iput-object v0, p0, Landroid/graphics/BitmapShader;->mBitmapShaderWrapper:Landroid/graphics/IBitmapShaderWrapper;

    .line 117
    if-eqz p1, :cond_0

    .line 120
    iput-object p1, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    .line 121
    iput p2, p0, Landroid/graphics/BitmapShader;->mTileX:I

    .line 122
    iput p3, p0, Landroid/graphics/BitmapShader;->mTileY:I

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/BitmapShader;->mFilterMode:I

    .line 124
    iput-boolean v0, p0, Landroid/graphics/BitmapShader;->mFilterFromPaint:Z

    .line 125
    iput-boolean v0, p0, Landroid/graphics/BitmapShader;->mIsDirectSampled:Z

    .line 126
    iput-boolean v0, p0, Landroid/graphics/BitmapShader;->mRequestDirectSampling:Z

    .line 127
    return-void

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmap must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "tileX"    # Landroid/graphics/Shader$TileMode;
    .param p3, "tileY"    # Landroid/graphics/Shader$TileMode;

    .line 113
    iget v0, p2, Landroid/graphics/Shader$TileMode;->nativeInt:I

    iget v1, p3, Landroid/graphics/Shader$TileMode;->nativeInt:I

    invoke-direct {p0, p1, v0, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;II)V

    .line 114
    return-void
.end method

.method private static native blacklist nativeCreate(JJIIZZ)J
.end method


# virtual methods
.method protected blacklist createNativeInstance(JZ)J
    .locals 11
    .param p1, "nativeMatrix"    # J
    .param p3, "filterFromPaint"    # Z

    .line 156
    iget v0, p0, Landroid/graphics/BitmapShader;->mFilterMode:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 157
    .local v2, "enableLinearFilter":Z
    :goto_0
    if-nez v0, :cond_1

    .line 158
    iput-boolean p3, p0, Landroid/graphics/BitmapShader;->mFilterFromPaint:Z

    .line 159
    iget-boolean v2, p0, Landroid/graphics/BitmapShader;->mFilterFromPaint:Z

    .line 162
    :cond_1
    iget-boolean v0, p0, Landroid/graphics/BitmapShader;->mRequestDirectSampling:Z

    iput-boolean v0, p0, Landroid/graphics/BitmapShader;->mIsDirectSampled:Z

    .line 163
    iput-boolean v1, p0, Landroid/graphics/BitmapShader;->mRequestDirectSampling:Z

    .line 165
    iget-object v0, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v5

    iget v7, p0, Landroid/graphics/BitmapShader;->mTileX:I

    iget v8, p0, Landroid/graphics/BitmapShader;->mTileY:I

    iget-boolean v10, p0, Landroid/graphics/BitmapShader;->mIsDirectSampled:Z

    move-wide v3, p1

    move v9, v2

    invoke-static/range {v3 .. v10}, Landroid/graphics/BitmapShader;->nativeCreate(JJIIZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getFilterMode()I
    .locals 1

    .line 134
    iget v0, p0, Landroid/graphics/BitmapShader;->mFilterMode:I

    return v0
.end method

.method declared-synchronized blacklist getNativeInstanceWithDirectSampling()J
    .locals 2

    monitor-enter p0

    .line 149
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/graphics/BitmapShader;->mRequestDirectSampling:Z

    .line 150
    invoke-virtual {p0}, Landroid/graphics/BitmapShader;->getNativeInstance()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 148
    .end local p0    # "this":Landroid/graphics/BitmapShader;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist getWrapper()Landroid/graphics/IBitmapShaderWrapper;
    .locals 1

    .line 185
    iget-object v0, p0, Landroid/graphics/BitmapShader;->mBitmapShaderWrapper:Landroid/graphics/IBitmapShaderWrapper;

    return-object v0
.end method

.method public whitelist setFilterMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 141
    iget v0, p0, Landroid/graphics/BitmapShader;->mFilterMode:I

    if-eq p1, v0, :cond_0

    .line 142
    iput p1, p0, Landroid/graphics/BitmapShader;->mFilterMode:I

    .line 143
    invoke-virtual {p0}, Landroid/graphics/BitmapShader;->discardNativeInstance()V

    .line 145
    :cond_0
    return-void
.end method

.method protected blacklist shouldDiscardNativeInstance(Z)Z
    .locals 2
    .param p1, "filterFromPaint"    # Z

    .line 172
    iget-boolean v0, p0, Landroid/graphics/BitmapShader;->mIsDirectSampled:Z

    iget-boolean v1, p0, Landroid/graphics/BitmapShader;->mRequestDirectSampling:Z

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/graphics/BitmapShader;->mFilterMode:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/graphics/BitmapShader;->mFilterFromPaint:Z

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
