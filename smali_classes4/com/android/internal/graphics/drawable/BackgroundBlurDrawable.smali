.class public final Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BackgroundBlurDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;,
        Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mAggregator:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

.field private blacklist mAlpha:F

.field private blacklist mBlurColor:[F

.field private blacklist mBlurRadius:I

.field private blacklist mCornerRadiusBL:F

.field private blacklist mCornerRadiusBR:F

.field private blacklist mCornerRadiusTL:F

.field private blacklist mCornerRadiusTR:F

.field private final blacklist mPaint:Landroid/graphics/Paint;

.field public final blacklist mPositionUpdateListener:Landroid/graphics/RenderNode$PositionUpdateListener;

.field private final blacklist mRect:Landroid/graphics/Rect;

.field private final blacklist mRectPath:Landroid/graphics/Path;

.field private final blacklist mRenderNode:Landroid/graphics/RenderNode;

.field private final blacklist mTmpRadii:[F

.field private blacklist mVisible:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAggregator(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mAggregator:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAlpha(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mAlpha:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBlurColor(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)[F
    .locals 0

    iget-object p0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mBlurColor:[F

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBlurRadius(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mBlurRadius:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCornerRadiusBL(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusBL:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCornerRadiusBR(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusBR:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCornerRadiusTL(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusTL:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCornerRadiusTR(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusTR:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRect(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVisible(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mVisible:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 51
    const-class v0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->TAG:Ljava/lang/String;

    .line 52
    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->DEBUG:Z

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;)V
    .locals 5
    .param p1, "aggregator"    # Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    .line 100
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mPaint:Landroid/graphics/Paint;

    .line 57
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mRectPath:Landroid/graphics/Path;

    .line 58
    const/16 v1, 0x8

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mTmpRadii:[F

    .line 60
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mVisible:Z

    .line 69
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mAlpha:F

    .line 72
    const/4 v2, 0x4

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mBlurColor:[F

    .line 77
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mRect:Landroid/graphics/Rect;

    .line 81
    new-instance v2, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;

    invoke-direct {v2, p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;-><init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)V

    iput-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mPositionUpdateListener:Landroid/graphics/RenderNode$PositionUpdateListener;

    .line 101
    iput-object p1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mAggregator:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    .line 102
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 103
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 105
    new-instance v0, Landroid/graphics/RenderNode;

    const-string v1, "BackgroundBlurDrawable"

    invoke-direct {v0, v1}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mRenderNode:Landroid/graphics/RenderNode;

    .line 106
    invoke-virtual {v0, v2}, Landroid/graphics/RenderNode;->addPositionUpdateListener(Landroid/graphics/RenderNode$PositionUpdateListener;)V

    .line 107
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;-><init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;)V

    return-void
.end method

.method private blacklist updatePath()V
    .locals 8

    .line 204
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mTmpRadii:[F

    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusTL:F

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 205
    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusTR:F

    const/4 v2, 0x3

    aput v1, v0, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 206
    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusBL:F

    const/4 v2, 0x5

    aput v1, v0, v2

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 207
    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusBR:F

    const/4 v2, 0x7

    aput v1, v0, v2

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 208
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mRectPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 209
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 213
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mRectPath:Landroid/graphics/Path;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mTmpRadii:[F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 215
    return-void

    .line 210
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 111
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mRectPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->getAlpha()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mRectPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 116
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 117
    return-void

    .line 112
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist getOpacity()I
    .locals 1

    .line 224
    const/4 v0, -0x3

    return v0
.end method

.method public whitelist setAlpha(I)V
    .locals 3
    .param p1, "alpha"    # I

    .line 138
    iget v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mAlpha:F

    int-to-float v1, p1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 139
    int-to-float v0, p1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mAlpha:F

    .line 140
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->invalidateSelf()V

    .line 141
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mAggregator:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    invoke-virtual {v0, p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->onBlurDrawableUpdated(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)V

    .line 143
    :cond_0
    return-void
.end method

.method public blacklist setBlurColor(FFFF)V
    .locals 2
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .line 196
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mBlurColor:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 197
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 198
    const/4 v1, 0x2

    aput p3, v0, v1

    .line 199
    const/4 v1, 0x3

    aput p4, v0, v1

    .line 200
    return-void
.end method

.method public blacklist setBlurRadius(I)V
    .locals 1
    .param p1, "blurRadius"    # I

    .line 149
    iget v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mBlurRadius:I

    if-eq v0, p1, :cond_0

    .line 150
    iput p1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mBlurRadius:I

    .line 151
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->invalidateSelf()V

    .line 152
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mAggregator:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    invoke-virtual {v0, p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->onBlurDrawableUpdated(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)V

    .line 154
    :cond_0
    return-void
.end method

.method public whitelist setBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 188
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 189
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 190
    invoke-direct {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->updatePath()V

    .line 191
    return-void
.end method

.method public blacklist setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 123
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setCornerRadius(F)V
    .locals 0
    .param p1, "cornerRadius"    # F

    .line 160
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->setCornerRadius(FFFF)V

    .line 161
    return-void
.end method

.method public blacklist setCornerRadius(FFFF)V
    .locals 1
    .param p1, "cornerRadiusTL"    # F
    .param p2, "cornerRadiusTR"    # F
    .param p3, "cornerRadiusBL"    # F
    .param p4, "cornerRadiusBR"    # F

    .line 172
    iget v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusTL:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusTR:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusBL:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusBR:F

    cmpl-float v0, v0, p4

    if-eqz v0, :cond_1

    .line 176
    :cond_0
    iput p1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusTL:F

    .line 177
    iput p2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusTR:F

    .line 178
    iput p3, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusBL:F

    .line 179
    iput p4, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusBR:F

    .line 180
    invoke-direct {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->updatePath()V

    .line 181
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->invalidateSelf()V

    .line 182
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mAggregator:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    invoke-virtual {v0, p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->onBlurDrawableUpdated(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)V

    .line 184
    :cond_1
    return-void
.end method

.method public whitelist setVisible(ZZ)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 128
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 129
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 130
    iput-boolean p1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mVisible:Z

    .line 131
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mAggregator:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    invoke-virtual {v1, p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->onBlurDrawableUpdated(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)V

    .line 133
    :cond_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackgroundBlurDrawable{blurRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mBlurRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", corners={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusTL:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusTR:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusBL:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mCornerRadiusBR:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mBlurColor:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mBlurColor:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mBlurColor:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mBlurColor:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}, alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->mVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
