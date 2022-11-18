.class Landroid/view/View$ViewWrapper;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Landroid/view/IViewWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/View;


# direct methods
.method private constructor blacklist <init>(Landroid/view/View;)V
    .locals 0

    .line 32155
    iput-object p1, p0, Landroid/view/View$ViewWrapper;->this$0:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/View;Landroid/view/View$ViewWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View$ViewWrapper;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public blacklist computeHorizontalScrollExtent()I
    .locals 1

    .line 32183
    iget-object v0, p0, Landroid/view/View$ViewWrapper;->this$0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v0

    return v0
.end method

.method public blacklist computeHorizontalScrollOffset()I
    .locals 1

    .line 32178
    iget-object v0, p0, Landroid/view/View$ViewWrapper;->this$0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method public blacklist computeHorizontalScrollRange()I
    .locals 1

    .line 32173
    iget-object v0, p0, Landroid/view/View$ViewWrapper;->this$0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public blacklist computeVerticalScrollExtent()I
    .locals 1

    .line 32169
    iget-object v0, p0, Landroid/view/View$ViewWrapper;->this$0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method public blacklist computeVerticalScrollOffset()I
    .locals 1

    .line 32164
    iget-object v0, p0, Landroid/view/View$ViewWrapper;->this$0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method public blacklist computeVerticalScrollRange()I
    .locals 1

    .line 32159
    iget-object v0, p0, Landroid/view/View$ViewWrapper;->this$0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method public blacklist getLayerPaint()Landroid/graphics/Paint;
    .locals 1

    .line 32223
    iget-object v0, p0, Landroid/view/View$ViewWrapper;->this$0:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public blacklist getParent()Landroid/view/ViewParent;
    .locals 1

    .line 32218
    iget-object v0, p0, Landroid/view/View$ViewWrapper;->this$0:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method public blacklist getRenderNode()Landroid/graphics/RenderNode;
    .locals 1

    .line 32213
    iget-object v0, p0, Landroid/view/View$ViewWrapper;->this$0:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    return-object v0
.end method

.method public blacklist getScrollX()I
    .locals 1

    .line 32193
    iget-object v0, p0, Landroid/view/View$ViewWrapper;->this$0:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method public blacklist getScrollY()I
    .locals 1

    .line 32203
    iget-object v0, p0, Landroid/view/View$ViewWrapper;->this$0:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method public blacklist getViewExt()Landroid/view/IViewExt;
    .locals 1

    .line 32188
    iget-object v0, p0, Landroid/view/View$ViewWrapper;->this$0:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mViewExt:Landroid/view/IViewExt;

    return-object v0
.end method

.method public blacklist setScrollX(I)V
    .locals 1
    .param p1, "scrollX"    # I

    .line 32198
    iget-object v0, p0, Landroid/view/View$ViewWrapper;->this$0:Landroid/view/View;

    iput p1, v0, Landroid/view/View;->mScrollX:I

    .line 32199
    return-void
.end method

.method public blacklist setScrollY(I)V
    .locals 1
    .param p1, "scrollY"    # I

    .line 32208
    iget-object v0, p0, Landroid/view/View$ViewWrapper;->this$0:Landroid/view/View;

    iput p1, v0, Landroid/view/View;->mScrollY:I

    .line 32209
    return-void
.end method
