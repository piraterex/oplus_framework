.class Landroid/widget/Editor$PositionListener;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositionListener"
.end annotation


# static fields
.field private static final greylist-max-o MAXIMUM_NUMBER_OF_LISTENERS:I = 0x7


# instance fields
.field private greylist-max-o mCanMove:[Z

.field private greylist-max-o mNumberOfListeners:I

.field private greylist-max-o mPositionHasChanged:Z

.field private greylist-max-o mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

.field private greylist-max-o mPositionX:I

.field private greylist-max-o mPositionXOnScreen:I

.field private greylist-max-o mPositionY:I

.field private greylist-max-o mPositionYOnScreen:I

.field private greylist-max-o mScrollHasChanged:Z

.field final greylist-max-o mTempCoords:[I

.field final synthetic blacklist this$0:Landroid/widget/Editor;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/Editor;)V
    .locals 1

    .line 3525
    iput-object p1, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3530
    const/4 p1, 0x7

    new-array v0, p1, [Landroid/widget/Editor$TextViewPositionListener;

    iput-object v0, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    .line 3532
    new-array p1, p1, [Z

    iput-object p1, p0, Landroid/widget/Editor$PositionListener;->mCanMove:[Z

    .line 3533
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    .line 3539
    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/Editor;Landroid/widget/Editor$PositionListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Editor$PositionListener;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method private greylist-max-o updatePosition()V
    .locals 6

    .line 3613
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 3615
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    aget v3, v0, v4

    iget v5, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    if-eq v3, v5, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v4

    :goto_1
    iput-boolean v3, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    .line 3617
    iput v2, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    .line 3618
    aget v0, v0, v4

    iput v0, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    .line 3620
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 3622
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    aget v1, v0, v1

    iput v1, p0, Landroid/widget/Editor$PositionListener;->mPositionXOnScreen:I

    .line 3623
    aget v0, v0, v4

    iput v0, p0, Landroid/widget/Editor$PositionListener;->mPositionYOnScreen:I

    .line 3624
    return-void
.end method


# virtual methods
.method public greylist-max-o addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V
    .locals 3
    .param p1, "positionListener"    # Landroid/widget/Editor$TextViewPositionListener;
    .param p2, "canMove"    # Z

    .line 3542
    iget v0, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    if-nez v0, :cond_0

    .line 3543
    invoke-direct {p0}, Landroid/widget/Editor$PositionListener;->updatePosition()V

    .line 3544
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3545
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3548
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_0
    const/4 v0, -0x1

    .line 3549
    .local v0, "emptySlotIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_3

    .line 3550
    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    aget-object v2, v2, v1

    .line 3551
    .local v2, "listener":Landroid/widget/Editor$TextViewPositionListener;
    if-ne v2, p1, :cond_1

    .line 3552
    return-void

    .line 3553
    :cond_1
    if-gez v0, :cond_2

    if-nez v2, :cond_2

    .line 3554
    move v0, v1

    .line 3549
    .end local v2    # "listener":Landroid/widget/Editor$TextViewPositionListener;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3558
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    aput-object p1, v1, v0

    .line 3559
    iget-object v1, p0, Landroid/widget/Editor$PositionListener;->mCanMove:[Z

    aput-boolean p2, v1, v0

    .line 3560
    iget v1, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    .line 3561
    return-void
.end method

.method public greylist-max-o getPositionX()I
    .locals 1

    .line 3579
    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    return v0
.end method

.method public greylist-max-o getPositionXOnScreen()I
    .locals 1

    .line 3587
    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionXOnScreen:I

    return v0
.end method

.method public greylist-max-o getPositionY()I
    .locals 1

    .line 3583
    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    return v0
.end method

.method public greylist-max-o getPositionYOnScreen()I
    .locals 1

    .line 3591
    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionYOnScreen:I

    return v0
.end method

.method public whitelist onPreDraw()Z
    .locals 6

    .line 3596
    invoke-direct {p0}, Landroid/widget/Editor$PositionListener;->updatePosition()V

    .line 3598
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_2

    .line 3599
    iget-boolean v1, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    if-nez v1, :cond_0

    iget-boolean v2, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->mCanMove:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_1

    .line 3600
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    aget-object v2, v2, v0

    .line 3601
    .local v2, "positionListener":Landroid/widget/Editor$TextViewPositionListener;
    if-eqz v2, :cond_1

    .line 3602
    iget v3, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    iget v4, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    iget-boolean v5, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    invoke-interface {v2, v3, v4, v1, v5}, Landroid/widget/Editor$TextViewPositionListener;->updatePosition(IIZZ)V

    .line 3598
    .end local v2    # "positionListener":Landroid/widget/Editor$TextViewPositionListener;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3608
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    .line 3609
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o onScrollChanged()V
    .locals 1

    .line 3627
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    .line 3628
    return-void
.end method

.method public greylist-max-o removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V
    .locals 3
    .param p1, "positionListener"    # Landroid/widget/Editor$TextViewPositionListener;

    .line 3564
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    .line 3565
    iget-object v1, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    aget-object v2, v1, v0

    if-ne v2, p1, :cond_0

    .line 3566
    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 3567
    iget v1, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    .line 3568
    goto :goto_1

    .line 3564
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3572
    .end local v0    # "i":I
    :cond_1
    :goto_1
    iget v0, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    if-nez v0, :cond_2

    .line 3573
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3574
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3576
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_2
    return-void
.end method
