.class Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$13;
.super Ljava/lang/Object;
.source "LocalFloatingToolbarPopup.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->createOverflowAnimationListener()Landroid/view/animation/Animation$AnimationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    .line 1404
    iput-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$13;->this$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onAnimationEnd$0$com-android-internal-widget-floatingtoolbar-LocalFloatingToolbarPopup$13()V
    .locals 1

    .line 1421
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$13;->this$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    invoke-static {v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->-$$Nest$msetPanelsStatesAtRestingPosition(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V

    .line 1422
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$13;->this$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    invoke-static {v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->-$$Nest$msetContentAreaAsTouchableSurface(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V

    .line 1423
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 1420
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$13;->this$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    invoke-static {v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->-$$Nest$fgetmContentContainer(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$13$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$13$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$13;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 1424
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 1428
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 1409
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$13;->this$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    invoke-static {v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->-$$Nest$fgetmOverflowButton(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1412
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$13;->this$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    invoke-static {v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->-$$Nest$fgetmMainPanel(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1413
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$13;->this$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    invoke-static {v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->-$$Nest$fgetmOverflowPanel(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setVisibility(I)V

    .line 1414
    return-void
.end method
