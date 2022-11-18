.class public Landroid/view/ViewAnimationHostBridge;
.super Ljava/lang/Object;
.source "ViewAnimationHostBridge.java"

# interfaces
.implements Landroid/graphics/RenderNode$AnimationHost;


# instance fields
.field private final blacklist mView:Landroid/view/View;


# direct methods
.method public constructor blacklist <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/view/ViewAnimationHostBridge;->mView:Landroid/view/View;

    .line 34
    return-void
.end method


# virtual methods
.method public blacklist isAttached()Z
    .locals 1

    .line 48
    iget-object v0, p0, Landroid/view/ViewAnimationHostBridge;->mView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist registerAnimatingRenderNode(Landroid/graphics/RenderNode;)V
    .locals 1
    .param p1, "animator"    # Landroid/graphics/RenderNode;

    .line 38
    iget-object v0, p0, Landroid/view/ViewAnimationHostBridge;->mView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->registerAnimatingRenderNode(Landroid/graphics/RenderNode;)V

    .line 39
    return-void
.end method

.method public blacklist registerVectorDrawableAnimator(Landroid/view/NativeVectorDrawableAnimator;)V
    .locals 1
    .param p1, "animator"    # Landroid/view/NativeVectorDrawableAnimator;

    .line 43
    iget-object v0, p0, Landroid/view/ViewAnimationHostBridge;->mView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->registerVectorDrawableAnimator(Landroid/view/NativeVectorDrawableAnimator;)V

    .line 44
    return-void
.end method
