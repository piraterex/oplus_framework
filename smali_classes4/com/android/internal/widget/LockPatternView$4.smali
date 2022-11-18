.class Lcom/android/internal/widget/LockPatternView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternView;->startCellActivatedAnimation(Lcom/android/internal/widget/LockPatternView$Cell;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/LockPatternView;

.field final synthetic blacklist val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/LockPatternView;

    .line 809
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView$4;->this$0:Lcom/android/internal/widget/LockPatternView;

    iput-object p2, p0, Lcom/android/internal/widget/LockPatternView$4;->val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 812
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$4;->val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimator:Landroid/animation/Animator;

    .line 813
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$4;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 814
    return-void
.end method
