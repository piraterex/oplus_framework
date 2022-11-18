.class Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$10;
.super Landroid/view/animation/Animation;
.source "LocalFloatingToolbarPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->closeOverflow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

.field final synthetic blacklist val$overflowButtonStartX:F

.field final synthetic blacklist val$overflowButtonTargetX:F

.field final synthetic blacklist val$startWidth:I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;FFI)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    .line 779
    iput-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$10;->this$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    iput p2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$10;->val$overflowButtonStartX:F

    iput p3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$10;->val$overflowButtonTargetX:F

    iput p4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$10;->val$startWidth:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 782
    iget v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$10;->val$overflowButtonStartX:F

    iget v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$10;->val$overflowButtonTargetX:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 785
    .local v0, "overflowButtonX":F
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$10;->this$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    invoke-static {v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->-$$Nest$misInRTLMode(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$10;->this$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    invoke-static {v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->-$$Nest$fgetmContentContainer(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$10;->val$startWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 786
    .local v1, "deltaContainerWidth":F
    :goto_0
    add-float v2, v0, v1

    .line 787
    .local v2, "actualOverflowButtonX":F
    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$10;->this$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    invoke-static {v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->-$$Nest$fgetmOverflowButton(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setX(F)V

    .line 788
    return-void
.end method
