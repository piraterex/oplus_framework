.class public Landroid/view/HandwritingInitiator$HandwritableViewInfo;
.super Ljava/lang/Object;
.source "HandwritingInitiator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/HandwritingInitiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandwritableViewInfo"
.end annotation


# instance fields
.field blacklist mHandwritingArea:Landroid/graphics/Rect;

.field public blacklist mIsDirty:Z

.field final blacklist mViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->mHandwritingArea:Landroid/graphics/Rect;

    .line 447
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->mIsDirty:Z

    .line 452
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 453
    return-void
.end method


# virtual methods
.method public blacklist getHandwritingArea()Landroid/graphics/Rect;
    .locals 1

    .line 467
    iget-object v0, p0, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->mHandwritingArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getView()Landroid/view/View;
    .locals 1

    .line 458
    iget-object v0, p0, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public blacklist update()Z
    .locals 7

    .line 479
    invoke-virtual {p0}, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->getView()Landroid/view/View;

    move-result-object v0

    .line 480
    .local v0, "view":Landroid/view/View;
    invoke-static {v0}, Landroid/view/HandwritingInitiator;->-$$Nest$smisViewActive(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 481
    return v2

    .line 484
    :cond_0
    iget-boolean v1, p0, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->mIsDirty:Z

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 485
    return v3

    .line 487
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getHandwritingArea()Landroid/graphics/Rect;

    move-result-object v1

    .line 488
    .local v1, "handwritingArea":Landroid/graphics/Rect;
    if-nez v1, :cond_2

    .line 489
    return v2

    .line 492
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 493
    .local v4, "parent":Landroid/view/ViewParent;
    if-eqz v4, :cond_4

    .line 494
    iget-object v5, p0, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->mHandwritingArea:Landroid/graphics/Rect;

    if-nez v5, :cond_3

    .line 495
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->mHandwritingArea:Landroid/graphics/Rect;

    .line 497
    :cond_3
    iget-object v5, p0, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->mHandwritingArea:Landroid/graphics/Rect;

    invoke-virtual {v5, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 498
    iget-object v5, p0, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->mHandwritingArea:Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-interface {v4, v0, v5, v6}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 499
    iput-object v6, p0, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->mHandwritingArea:Landroid/graphics/Rect;

    .line 502
    :cond_4
    iput-boolean v2, p0, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->mIsDirty:Z

    .line 503
    return v3
.end method
