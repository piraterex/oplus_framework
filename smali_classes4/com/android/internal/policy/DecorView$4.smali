.class Lcom/android/internal/policy/DecorView$4;
.super Ljava/lang/Object;
.source "DecorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/DecorView;->createStandaloneActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/policy/DecorView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/policy/DecorView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/policy/DecorView;

    .line 2108
    iput-object p1, p0, Lcom/android/internal/policy/DecorView$4;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 4

    .line 2110
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$4;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmPrimaryActionModePopup(Lcom/android/internal/policy/DecorView;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView$4;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmPrimaryActionModeView(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v1

    .line 2111
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 2110
    const/16 v2, 0x37

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 2113
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$4;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-$$Nest$mendOnGoingFadeAnimation(Lcom/android/internal/policy/DecorView;)V

    .line 2115
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$4;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->shouldAnimatePrimaryActionModeView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2116
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$4;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmPrimaryActionModeView(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v1

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmFadeAnim(Lcom/android/internal/policy/DecorView;Landroid/animation/ObjectAnimator;)V

    .line 2118
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$4;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmFadeAnim(Lcom/android/internal/policy/DecorView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/DecorView$4$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/DecorView$4$1;-><init>(Lcom/android/internal/policy/DecorView$4;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2130
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$4;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmFadeAnim(Lcom/android/internal/policy/DecorView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 2132
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$4;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmPrimaryActionModeView(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setAlpha(F)V

    .line 2133
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$4;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmPrimaryActionModeView(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 2135
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
