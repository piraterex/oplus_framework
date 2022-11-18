.class public final Landroid/graphics/RenderEffect;
.super Ljava/lang/Object;
.source "RenderEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/RenderEffect$RenderEffectHolder;
    }
.end annotation


# instance fields
.field private final blacklist mNativeRenderEffect:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnativeGetFinalizer()J
    .locals 2

    invoke-static {}, Landroid/graphics/RenderEffect;->nativeGetFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method private constructor blacklist <init>(J)V
    .locals 1
    .param p1, "nativeRenderEffect"    # J

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput-wide p1, p0, Landroid/graphics/RenderEffect;->mNativeRenderEffect:J

    .line 314
    sget-object v0, Landroid/graphics/RenderEffect$RenderEffectHolder;->RENDER_EFFECT_REGISTRY:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v0, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 316
    return-void
.end method

.method public static whitelist createBitmapEffect(Landroid/graphics/Bitmap;)Landroid/graphics/RenderEffect;
    .locals 13
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 136
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 137
    .local v0, "right":F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v11, v1

    .line 138
    .local v11, "bottom":F
    new-instance v12, Landroid/graphics/RenderEffect;

    .line 140
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v1

    .line 139
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v5, v0

    move v6, v11

    move v9, v0

    move v10, v11

    invoke-static/range {v1 .. v10}, Landroid/graphics/RenderEffect;->nativeCreateBitmapEffect(JFFFFFFFF)J

    move-result-wide v1

    invoke-direct {v12, v1, v2}, Landroid/graphics/RenderEffect;-><init>(J)V

    .line 138
    return-object v12
.end method

.method public static whitelist createBitmapEffect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/RenderEffect;
    .locals 18
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "src"    # Landroid/graphics/Rect;
    .param p2, "dst"    # Landroid/graphics/Rect;

    .line 172
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v12

    .line 173
    .local v12, "bitmapHandle":J
    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    iget v3, v0, Landroid/graphics/Rect;->left:I

    :goto_0
    move v14, v3

    .line 174
    .local v14, "left":I
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget v2, v0, Landroid/graphics/Rect;->top:I

    :goto_1
    move v15, v2

    .line 175
    .local v15, "top":I
    if-nez v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    goto :goto_2

    :cond_2
    iget v2, v0, Landroid/graphics/Rect;->right:I

    :goto_2
    move v11, v2

    .line 176
    .local v11, "right":I
    if-nez v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto :goto_3

    :cond_3
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    :goto_3
    move v10, v2

    .line 177
    .local v10, "bottom":I
    new-instance v9, Landroid/graphics/RenderEffect;

    int-to-float v4, v14

    int-to-float v5, v15

    int-to-float v6, v11

    int-to-float v7, v10

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v8, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    .line 178
    move/from16 v16, v2

    move/from16 v17, v3

    move-wide v2, v12

    move-object v1, v9

    move/from16 v9, v16

    move/from16 v16, v10

    .end local v10    # "bottom":I
    .local v16, "bottom":I
    move/from16 v10, v17

    move/from16 v17, v11

    .end local v11    # "right":I
    .local v17, "right":I
    move v11, v0

    invoke-static/range {v2 .. v11}, Landroid/graphics/RenderEffect;->nativeCreateBitmapEffect(JFFFFFFFF)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Landroid/graphics/RenderEffect;-><init>(J)V

    .line 177
    return-object v1
.end method

.method public static whitelist createBlendModeEffect(Landroid/graphics/RenderEffect;Landroid/graphics/RenderEffect;Landroid/graphics/BlendMode;)Landroid/graphics/RenderEffect;
    .locals 6
    .param p0, "dst"    # Landroid/graphics/RenderEffect;
    .param p1, "src"    # Landroid/graphics/RenderEffect;
    .param p2, "blendMode"    # Landroid/graphics/BlendMode;

    .line 241
    new-instance v0, Landroid/graphics/RenderEffect;

    .line 243
    invoke-virtual {p0}, Landroid/graphics/RenderEffect;->getNativeInstance()J

    move-result-wide v1

    .line 244
    invoke-virtual {p1}, Landroid/graphics/RenderEffect;->getNativeInstance()J

    move-result-wide v3

    .line 245
    invoke-virtual {p2}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Xfermode;->porterDuffMode:I

    .line 242
    invoke-static {v1, v2, v3, v4, v5}, Landroid/graphics/RenderEffect;->nativeCreateBlendModeEffect(JJI)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/RenderEffect;-><init>(J)V

    .line 241
    return-object v0
.end method

.method public static whitelist createBlurEffect(FFLandroid/graphics/RenderEffect;Landroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;
    .locals 5
    .param p0, "radiusX"    # F
    .param p1, "radiusY"    # F
    .param p2, "inputEffect"    # Landroid/graphics/RenderEffect;
    .param p3, "edgeTreatment"    # Landroid/graphics/Shader$TileMode;

    .line 91
    if-eqz p2, :cond_0

    iget-wide v0, p2, Landroid/graphics/RenderEffect;->mNativeRenderEffect:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 92
    .local v0, "nativeInputEffect":J
    :goto_0
    new-instance v2, Landroid/graphics/RenderEffect;

    iget v3, p3, Landroid/graphics/Shader$TileMode;->nativeInt:I

    .line 93
    invoke-static {p0, p1, v0, v1, v3}, Landroid/graphics/RenderEffect;->nativeCreateBlurEffect(FFJI)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Landroid/graphics/RenderEffect;-><init>(J)V

    .line 92
    return-object v2
.end method

.method public static whitelist createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;
    .locals 4
    .param p0, "radiusX"    # F
    .param p1, "radiusY"    # F
    .param p2, "edgeTreatment"    # Landroid/graphics/Shader$TileMode;

    .line 116
    new-instance v0, Landroid/graphics/RenderEffect;

    iget v1, p2, Landroid/graphics/Shader$TileMode;->nativeInt:I

    .line 117
    const-wide/16 v2, 0x0

    invoke-static {p0, p1, v2, v3, v1}, Landroid/graphics/RenderEffect;->nativeCreateBlurEffect(FFJI)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/RenderEffect;-><init>(J)V

    .line 116
    return-object v0
.end method

.method public static whitelist createChainEffect(Landroid/graphics/RenderEffect;Landroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;
    .locals 5
    .param p0, "outer"    # Landroid/graphics/RenderEffect;
    .param p1, "inner"    # Landroid/graphics/RenderEffect;

    .line 273
    new-instance v0, Landroid/graphics/RenderEffect;

    .line 275
    invoke-virtual {p0}, Landroid/graphics/RenderEffect;->getNativeInstance()J

    move-result-wide v1

    .line 276
    invoke-virtual {p1}, Landroid/graphics/RenderEffect;->getNativeInstance()J

    move-result-wide v3

    .line 274
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/RenderEffect;->nativeCreateChainEffect(JJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/RenderEffect;-><init>(J)V

    .line 273
    return-object v0
.end method

.method public static whitelist createColorFilterEffect(Landroid/graphics/ColorFilter;)Landroid/graphics/RenderEffect;
    .locals 5
    .param p0, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 218
    new-instance v0, Landroid/graphics/RenderEffect;

    .line 220
    invoke-virtual {p0}, Landroid/graphics/ColorFilter;->getNativeInstance()J

    move-result-wide v1

    .line 219
    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/RenderEffect;->nativeCreateColorFilterEffect(JJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/RenderEffect;-><init>(J)V

    .line 218
    return-object v0
.end method

.method public static whitelist createColorFilterEffect(Landroid/graphics/ColorFilter;Landroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;
    .locals 5
    .param p0, "colorFilter"    # Landroid/graphics/ColorFilter;
    .param p1, "renderEffect"    # Landroid/graphics/RenderEffect;

    .line 203
    new-instance v0, Landroid/graphics/RenderEffect;

    .line 205
    invoke-virtual {p0}, Landroid/graphics/ColorFilter;->getNativeInstance()J

    move-result-wide v1

    .line 206
    invoke-virtual {p1}, Landroid/graphics/RenderEffect;->getNativeInstance()J

    move-result-wide v3

    .line 204
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/RenderEffect;->nativeCreateColorFilterEffect(JJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/RenderEffect;-><init>(J)V

    .line 203
    return-object v0
.end method

.method public static whitelist createOffsetEffect(FF)Landroid/graphics/RenderEffect;
    .locals 3
    .param p0, "offsetX"    # F
    .param p1, "offsetY"    # F

    .line 49
    new-instance v0, Landroid/graphics/RenderEffect;

    const-wide/16 v1, 0x0

    invoke-static {p0, p1, v1, v2}, Landroid/graphics/RenderEffect;->nativeCreateOffsetEffect(FFJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/RenderEffect;-><init>(J)V

    return-object v0
.end method

.method public static whitelist createOffsetEffect(FFLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;
    .locals 3
    .param p0, "offsetX"    # F
    .param p1, "offsetY"    # F
    .param p2, "input"    # Landroid/graphics/RenderEffect;

    .line 64
    new-instance v0, Landroid/graphics/RenderEffect;

    .line 67
    invoke-virtual {p2}, Landroid/graphics/RenderEffect;->getNativeInstance()J

    move-result-wide v1

    .line 64
    invoke-static {p0, p1, v1, v2}, Landroid/graphics/RenderEffect;->nativeCreateOffsetEffect(FFJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/RenderEffect;-><init>(J)V

    return-object v0
.end method

.method public static whitelist createRuntimeShaderEffect(Landroid/graphics/RuntimeShader;Ljava/lang/String;)Landroid/graphics/RenderEffect;
    .locals 3
    .param p0, "shader"    # Landroid/graphics/RuntimeShader;
    .param p1, "uniformShaderName"    # Ljava/lang/String;

    .line 304
    new-instance v0, Landroid/graphics/RenderEffect;

    .line 305
    invoke-virtual {p0}, Landroid/graphics/RuntimeShader;->getNativeShaderBuilder()J

    move-result-wide v1

    invoke-static {v1, v2, p1}, Landroid/graphics/RenderEffect;->nativeCreateRuntimeShaderEffect(JLjava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/RenderEffect;-><init>(J)V

    .line 304
    return-object v0
.end method

.method public static whitelist createShaderEffect(Landroid/graphics/Shader;)Landroid/graphics/RenderEffect;
    .locals 3
    .param p0, "shader"    # Landroid/graphics/Shader;

    .line 290
    new-instance v0, Landroid/graphics/RenderEffect;

    invoke-virtual {p0}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/graphics/RenderEffect;->nativeCreateShaderEffect(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/RenderEffect;-><init>(J)V

    return-object v0
.end method

.method private static native blacklist nativeCreateBitmapEffect(JFFFFFFFF)J
.end method

.method private static native blacklist nativeCreateBlendModeEffect(JJI)J
.end method

.method private static native blacklist nativeCreateBlurEffect(FFJI)J
.end method

.method private static native blacklist nativeCreateChainEffect(JJ)J
.end method

.method private static native blacklist nativeCreateColorFilterEffect(JJ)J
.end method

.method private static native blacklist nativeCreateOffsetEffect(FFJ)J
.end method

.method private static native blacklist nativeCreateRuntimeShaderEffect(JLjava/lang/String;)J
.end method

.method private static native blacklist nativeCreateShaderEffect(J)J
.end method

.method private static native blacklist nativeGetFinalizer()J
.end method


# virtual methods
.method blacklist getNativeInstance()J
    .locals 2

    .line 323
    iget-wide v0, p0, Landroid/graphics/RenderEffect;->mNativeRenderEffect:J

    return-wide v0
.end method
