.class final Landroid/widget/AbsListView$CheckForTap;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/AbsListView;

.field greylist-max-o x:F

.field greylist-max-o y:F


# direct methods
.method private constructor blacklist <init>(Landroid/widget/AbsListView;)V
    .locals 0

    .line 3517
    iput-object p1, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForTap-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/AbsListView$CheckForTap;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 9

    .line 3523
    iget-object v0, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v0, :cond_6

    .line 3524
    iget-object v0, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3525
    iget-object v0, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget v2, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget-object v3, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3526
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v2

    if-nez v2, :cond_6

    .line 3527
    iget-object v2, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 3529
    iget-object v2, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget-boolean v2, v2, Landroid/widget/AbsListView;->mDataChanged:Z

    const/4 v4, 0x2

    if-nez v2, :cond_5

    .line 3530
    iget-object v2, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-static {v2}, Landroid/widget/AbsListView;->-$$Nest$fgetmTmpPoint(Landroid/widget/AbsListView;)[F

    move-result-object v2

    .line 3531
    .local v2, "point":[F
    iget v5, p0, Landroid/widget/AbsListView$CheckForTap;->x:F

    aput v5, v2, v3

    .line 3532
    iget v5, p0, Landroid/widget/AbsListView$CheckForTap;->y:F

    aput v5, v2, v1

    .line 3533
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v2, v0}, Landroid/widget/AbsListView;->transformPointToViewLocal([FLandroid/view/View;)V

    .line 3534
    aget v3, v2, v3

    aget v5, v2, v1

    invoke-virtual {v0, v3, v5}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 3535
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 3536
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3537
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 3538
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget v3, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-virtual {v1, v3, v0}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 3539
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->refreshDrawableState()V

    .line 3541
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    .line 3542
    .local v1, "longPressTimeout":I
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v3

    .line 3544
    .local v3, "longClickable":Z
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget-object v5, v5, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    .line 3545
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget-object v5, v5, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 3546
    .local v5, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_1

    instance-of v6, v5, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v6, :cond_1

    .line 3547
    if-eqz v3, :cond_0

    .line 3548
    move-object v6, v5

    check-cast v6, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0

    .line 3550
    :cond_0
    move-object v6, v5

    check-cast v6, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 3553
    :cond_1
    :goto_0
    iget-object v6, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget-object v6, v6, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Landroid/widget/AbsListView$CheckForTap;->x:F

    iget v8, p0, Landroid/widget/AbsListView$CheckForTap;->y:F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 3556
    .end local v5    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    if-eqz v3, :cond_4

    .line 3557
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-static {v4}, Landroid/widget/AbsListView;->-$$Nest$fgetmPendingCheckForLongPress(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;

    move-result-object v4

    if-nez v4, :cond_3

    .line 3558
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    new-instance v5, Landroid/widget/AbsListView$CheckForLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, Landroid/widget/AbsListView$CheckForLongPress;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress-IA;)V

    invoke-static {v4, v5}, Landroid/widget/AbsListView;->-$$Nest$fputmPendingCheckForLongPress(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)V

    .line 3560
    :cond_3
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-static {v4}, Landroid/widget/AbsListView;->-$$Nest$fgetmPendingCheckForLongPress(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;

    move-result-object v4

    iget v5, p0, Landroid/widget/AbsListView$CheckForTap;->x:F

    iget v6, p0, Landroid/widget/AbsListView$CheckForTap;->y:F

    invoke-static {v4, v5, v6}, Landroid/widget/AbsListView$CheckForLongPress;->-$$Nest$msetCoords(Landroid/widget/AbsListView$CheckForLongPress;FF)V

    .line 3561
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-static {v4}, Landroid/widget/AbsListView;->-$$Nest$fgetmPendingCheckForLongPress(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/AbsListView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 3562
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-static {v4}, Landroid/widget/AbsListView;->-$$Nest$fgetmPendingCheckForLongPress(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;

    move-result-object v5

    int-to-long v6, v1

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 3564
    :cond_4
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iput v4, v5, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3566
    .end local v1    # "longPressTimeout":I
    .end local v2    # "point":[F
    .end local v3    # "longClickable":Z
    :goto_1
    goto :goto_2

    .line 3567
    :cond_5
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iput v4, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3571
    .end local v0    # "child":Landroid/view/View;
    :cond_6
    :goto_2
    return-void
.end method
