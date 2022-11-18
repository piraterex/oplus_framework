.class public final Landroid/graphics/TextureLayer;
.super Ljava/lang/Object;
.source "TextureLayer.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private blacklist mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

.field private blacklist mRenderer:Landroid/graphics/HardwareRenderer;


# direct methods
.method private constructor blacklist <init>(Landroid/graphics/HardwareRenderer;J)V
    .locals 3
    .param p1, "renderer"    # Landroid/graphics/HardwareRenderer;
    .param p2, "deferredUpdater"    # J

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 41
    iput-object p1, p0, Landroid/graphics/TextureLayer;->mRenderer:Landroid/graphics/HardwareRenderer;

    .line 42
    new-instance v0, Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    iput-object v0, p0, Landroid/graphics/TextureLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 43
    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Either hardware renderer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or deferredUpdater: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist adoptTextureLayer(Landroid/graphics/HardwareRenderer;J)Landroid/graphics/TextureLayer;
    .locals 1
    .param p0, "renderer"    # Landroid/graphics/HardwareRenderer;
    .param p1, "layer"    # J

    .line 143
    new-instance v0, Landroid/graphics/TextureLayer;

    invoke-direct {v0, p0, p1, p2}, Landroid/graphics/TextureLayer;-><init>(Landroid/graphics/HardwareRenderer;J)V

    return-object v0
.end method

.method private blacklist isValid()Z
    .locals 4

    .line 62
    iget-object v0, p0, Landroid/graphics/TextureLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static native blacklist nPrepare(JIIZ)Z
.end method

.method private static native blacklist nSetLayerPaint(JJ)V
.end method

.method private static native blacklist nSetSurfaceTexture(JLandroid/graphics/SurfaceTexture;)V
.end method

.method private static native blacklist nSetTransform(JJ)V
.end method

.method private static native blacklist nUpdateSurfaceTexture(J)V
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 2

    .line 70
    invoke-direct {p0}, Landroid/graphics/TextureLayer;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Landroid/graphics/TextureLayer;->mRenderer:Landroid/graphics/HardwareRenderer;

    invoke-virtual {v0, p0}, Landroid/graphics/HardwareRenderer;->onLayerDestroyed(Landroid/graphics/TextureLayer;)V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/TextureLayer;->mRenderer:Landroid/graphics/HardwareRenderer;

    .line 76
    iget-object v1, p0, Landroid/graphics/TextureLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v1}, Lcom/android/internal/util/VirtualRefBasePtr;->release()V

    .line 77
    iput-object v0, p0, Landroid/graphics/TextureLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 78
    return-void
.end method

.method public blacklist copyInto(Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 92
    iget-object v0, p0, Landroid/graphics/TextureLayer;->mRenderer:Landroid/graphics/HardwareRenderer;

    invoke-virtual {v0, p0, p1}, Landroid/graphics/HardwareRenderer;->copyLayerInto(Landroid/graphics/TextureLayer;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public blacklist detachSurfaceTexture()V
    .locals 3

    .line 124
    iget-object v0, p0, Landroid/graphics/TextureLayer;->mRenderer:Landroid/graphics/HardwareRenderer;

    iget-object v1, p0, Landroid/graphics/TextureLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v1}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/HardwareRenderer;->detachSurfaceTexture(J)V

    .line 125
    return-void
.end method

.method blacklist getDeferredLayerUpdater()J
    .locals 2

    .line 81
    iget-object v0, p0, Landroid/graphics/TextureLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method blacklist getLayerHandle()J
    .locals 2

    .line 128
    iget-object v0, p0, Landroid/graphics/TextureLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist prepare(IIZ)Z
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "isOpaque"    # Z

    .line 107
    iget-object v0, p0, Landroid/graphics/TextureLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/TextureLayer;->nPrepare(JIIZ)Z

    move-result v0

    return v0
.end method

.method public blacklist setLayerPaint(Landroid/graphics/Paint;)V
    .locals 4
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 52
    iget-object v0, p0, Landroid/graphics/TextureLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/TextureLayer;->nSetLayerPaint(JJ)V

    .line 53
    iget-object v0, p0, Landroid/graphics/TextureLayer;->mRenderer:Landroid/graphics/HardwareRenderer;

    invoke-virtual {v0, p0}, Landroid/graphics/HardwareRenderer;->pushLayerUpdate(Landroid/graphics/TextureLayer;)V

    .line 54
    return-void
.end method

.method public blacklist setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .line 132
    iget-object v0, p0, Landroid/graphics/TextureLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Landroid/graphics/TextureLayer;->nSetSurfaceTexture(JLandroid/graphics/SurfaceTexture;)V

    .line 133
    iget-object v0, p0, Landroid/graphics/TextureLayer;->mRenderer:Landroid/graphics/HardwareRenderer;

    invoke-virtual {v0, p0}, Landroid/graphics/HardwareRenderer;->pushLayerUpdate(Landroid/graphics/TextureLayer;)V

    .line 134
    return-void
.end method

.method public blacklist setTransform(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 116
    iget-object v0, p0, Landroid/graphics/TextureLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/TextureLayer;->nSetTransform(JJ)V

    .line 117
    iget-object v0, p0, Landroid/graphics/TextureLayer;->mRenderer:Landroid/graphics/HardwareRenderer;

    invoke-virtual {v0, p0}, Landroid/graphics/HardwareRenderer;->pushLayerUpdate(Landroid/graphics/TextureLayer;)V

    .line 118
    return-void
.end method

.method public blacklist updateSurfaceTexture()V
    .locals 2

    .line 137
    iget-object v0, p0, Landroid/graphics/TextureLayer;->mFinalizer:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/TextureLayer;->nUpdateSurfaceTexture(J)V

    .line 138
    iget-object v0, p0, Landroid/graphics/TextureLayer;->mRenderer:Landroid/graphics/HardwareRenderer;

    invoke-virtual {v0, p0}, Landroid/graphics/HardwareRenderer;->pushLayerUpdate(Landroid/graphics/TextureLayer;)V

    .line 139
    return-void
.end method
