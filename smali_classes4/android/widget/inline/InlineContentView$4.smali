.class Landroid/widget/inline/InlineContentView$4;
.super Landroid/view/SurfaceView;
.source "InlineContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/inline/InlineContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/inline/InlineContentView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/inline/InlineContentView;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/inline/InlineContentView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .line 232
    iput-object p1, p0, Landroid/widget/inline/InlineContentView$4;->this$0:Landroid/widget/inline/InlineContentView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected blacklist onSetSurfacePositionAndScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V
    .locals 7
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "surface"    # Landroid/view/SurfaceControl;
    .param p3, "positionLeft"    # I
    .param p4, "positionTop"    # I
    .param p5, "postScaleX"    # F
    .param p6, "postScaleY"    # F

    .line 241
    iget-object v0, p0, Landroid/widget/inline/InlineContentView$4;->this$0:Landroid/widget/inline/InlineContentView;

    invoke-static {v0}, Landroid/widget/inline/InlineContentView;->-$$Nest$fgetmParentPosition(Landroid/widget/inline/InlineContentView;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Landroid/widget/inline/InlineContentView$4;->this$0:Landroid/widget/inline/InlineContentView;

    invoke-static {v0}, Landroid/widget/inline/InlineContentView;->-$$Nest$fgetmParentPosition(Landroid/widget/inline/InlineContentView;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    sub-int v0, p3, v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/widget/inline/InlineContentView$4;->this$0:Landroid/widget/inline/InlineContentView;

    invoke-static {v1}, Landroid/widget/inline/InlineContentView;->-$$Nest$fgetmParentScale(Landroid/widget/inline/InlineContentView;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    div-float/2addr v0, v1

    float-to-int p3, v0

    .line 243
    iget-object v0, p0, Landroid/widget/inline/InlineContentView$4;->this$0:Landroid/widget/inline/InlineContentView;

    invoke-static {v0}, Landroid/widget/inline/InlineContentView;->-$$Nest$fgetmParentPosition(Landroid/widget/inline/InlineContentView;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    sub-int v0, p4, v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/widget/inline/InlineContentView$4;->this$0:Landroid/widget/inline/InlineContentView;

    invoke-static {v1}, Landroid/widget/inline/InlineContentView;->-$$Nest$fgetmParentScale(Landroid/widget/inline/InlineContentView;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v1

    float-to-int p4, v0

    .line 249
    :cond_0
    iget-object v0, p0, Landroid/widget/inline/InlineContentView$4;->this$0:Landroid/widget/inline/InlineContentView;

    invoke-virtual {v0}, Landroid/widget/inline/InlineContentView;->getScaleX()F

    move-result p5

    .line 250
    iget-object v0, p0, Landroid/widget/inline/InlineContentView$4;->this$0:Landroid/widget/inline/InlineContentView;

    invoke-virtual {v0}, Landroid/widget/inline/InlineContentView;->getScaleY()F

    move-result p6

    .line 252
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-super/range {v0 .. v6}, Landroid/view/SurfaceView;->onSetSurfacePositionAndScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V

    .line 254
    return-void
.end method
