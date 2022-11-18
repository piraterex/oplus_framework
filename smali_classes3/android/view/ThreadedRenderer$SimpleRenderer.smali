.class public Landroid/view/ThreadedRenderer$SimpleRenderer;
.super Landroid/graphics/HardwareRenderer;
.source "ThreadedRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ThreadedRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleRenderer"
.end annotation


# instance fields
.field private final blacklist mLightRadius:F

.field private final greylist-max-o mLightY:F

.field private final greylist-max-o mLightZ:F


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/Surface;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "surface"    # Landroid/view/Surface;

    .line 836
    invoke-direct {p0}, Landroid/graphics/HardwareRenderer;-><init>()V

    .line 837
    invoke-virtual {p0, p2}, Landroid/view/ThreadedRenderer$SimpleRenderer;->setName(Ljava/lang/String;)V

    .line 838
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer$SimpleRenderer;->setOpaque(Z)V

    .line 839
    invoke-virtual {p0, p3}, Landroid/view/ThreadedRenderer$SimpleRenderer;->setSurface(Landroid/view/Surface;)V

    .line 840
    sget-object v1, Lcom/android/internal/R$styleable;->Lighting:[I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 841
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mLightY:F

    .line 842
    const/4 v2, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mLightZ:F

    .line 843
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mLightRadius:F

    .line 844
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 845
    .local v0, "ambientShadowAlpha":F
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 846
    .local v2, "spotShadowAlpha":F
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 847
    invoke-virtual {p0, v0, v2}, Landroid/view/ThreadedRenderer$SimpleRenderer;->setLightSourceAlpha(FF)V

    .line 848
    return-void
.end method


# virtual methods
.method public blacklist draw(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/graphics/HardwareRenderer$FrameDrawingCallback;

    .line 872
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    .line 873
    .local v0, "vsync":J
    if-eqz p1, :cond_0

    .line 874
    invoke-virtual {p0, p1}, Landroid/view/ThreadedRenderer$SimpleRenderer;->setFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    .line 876
    :cond_0
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer$SimpleRenderer;->createRenderRequest()Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    move-result-object v2

    .line 877
    invoke-virtual {v2, v0, v1}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->setVsyncTime(J)Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    move-result-object v2

    .line 878
    invoke-virtual {v2}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->syncAndDraw()I

    .line 879
    return-void
.end method

.method public blacklist getRootNode()Landroid/graphics/RenderNode;
    .locals 1

    .line 865
    iget-object v0, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mRootNode:Landroid/graphics/RenderNode;

    return-object v0
.end method

.method public greylist-max-o setLightCenter(Landroid/view/Display;II)V
    .locals 5
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "windowLeft"    # I
    .param p3, "windowTop"    # I

    .line 856
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 857
    .local v0, "displaySize":Landroid/graphics/Point;
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 858
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    int-to-float v2, p2

    sub-float/2addr v1, v2

    .line 859
    .local v1, "lightX":F
    iget v2, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mLightY:F

    int-to-float v3, p3

    sub-float/2addr v2, v3

    .line 861
    .local v2, "lightY":F
    iget v3, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mLightZ:F

    iget v4, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mLightRadius:F

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/ThreadedRenderer$SimpleRenderer;->setLightSourceGeometry(FFFF)V

    .line 862
    return-void
.end method
