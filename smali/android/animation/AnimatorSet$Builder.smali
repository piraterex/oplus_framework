.class public Landroid/animation/AnimatorSet$Builder;
.super Ljava/lang/Object;
.source "AnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mCurrentNode:Landroid/animation/AnimatorSet$Node;

.field final synthetic blacklist this$0:Landroid/animation/AnimatorSet;


# direct methods
.method constructor blacklist <init>(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V
    .locals 1
    .param p1, "this$0"    # Landroid/animation/AnimatorSet;
    .param p2, "anim"    # Landroid/animation/Animator;

    .line 2035
    iput-object p1, p0, Landroid/animation/AnimatorSet$Builder;->this$0:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2036
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/animation/AnimatorSet;->-$$Nest$fputmDependencyDirty(Landroid/animation/AnimatorSet;Z)V

    .line 2037
    invoke-static {p1, p2}, Landroid/animation/AnimatorSet;->-$$Nest$mgetNodeForAnimation(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Node;

    move-result-object v0

    iput-object v0, p0, Landroid/animation/AnimatorSet$Builder;->mCurrentNode:Landroid/animation/AnimatorSet$Node;

    .line 2038
    return-void
.end method


# virtual methods
.method public whitelist after(J)Landroid/animation/AnimatorSet$Builder;
    .locals 1
    .param p1, "delay"    # J

    .line 2091
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2092
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2093
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2094
    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public whitelist after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    .locals 2
    .param p1, "anim"    # Landroid/animation/Animator;

    .line 2076
    iget-object v0, p0, Landroid/animation/AnimatorSet$Builder;->this$0:Landroid/animation/AnimatorSet;

    invoke-static {v0, p1}, Landroid/animation/AnimatorSet;->-$$Nest$mgetNodeForAnimation(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Node;

    move-result-object v0

    .line 2077
    .local v0, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v1, p0, Landroid/animation/AnimatorSet$Builder;->mCurrentNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Node;->addParent(Landroid/animation/AnimatorSet$Node;)V

    .line 2078
    return-object p0
.end method

.method public whitelist before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    .locals 2
    .param p1, "anim"    # Landroid/animation/Animator;

    .line 2062
    iget-object v0, p0, Landroid/animation/AnimatorSet$Builder;->this$0:Landroid/animation/AnimatorSet;

    invoke-static {v0, p1}, Landroid/animation/AnimatorSet;->-$$Nest$mgetNodeForAnimation(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Node;

    move-result-object v0

    .line 2063
    .local v0, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v1, p0, Landroid/animation/AnimatorSet$Builder;->mCurrentNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Node;->addChild(Landroid/animation/AnimatorSet$Node;)V

    .line 2064
    return-object p0
.end method

.method public whitelist with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    .locals 2
    .param p1, "anim"    # Landroid/animation/Animator;

    .line 2048
    iget-object v0, p0, Landroid/animation/AnimatorSet$Builder;->this$0:Landroid/animation/AnimatorSet;

    invoke-static {v0, p1}, Landroid/animation/AnimatorSet;->-$$Nest$mgetNodeForAnimation(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Node;

    move-result-object v0

    .line 2049
    .local v0, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v1, p0, Landroid/animation/AnimatorSet$Builder;->mCurrentNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Node;->addSibling(Landroid/animation/AnimatorSet$Node;)V

    .line 2050
    return-object p0
.end method
