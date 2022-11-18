.class Landroid/view/ViewGroup$4;
.super Ljava/lang/Object;
.source "ViewGroup.java"

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewGroup;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewGroup;

    .line 7300
    iput-object p1, p0, Landroid/view/ViewGroup$4;->this$0:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 2
    .param p1, "transition"    # Landroid/animation/LayoutTransition;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "transitionType"    # I

    .line 7314
    iget-object v0, p0, Landroid/view/ViewGroup$4;->this$0:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/view/ViewGroup;->-$$Nest$fgetmLayoutCalledWhileSuppressed(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/LayoutTransition;->isChangingLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7315
    iget-object v0, p0, Landroid/view/ViewGroup$4;->this$0:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 7316
    iget-object v0, p0, Landroid/view/ViewGroup$4;->this$0:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/ViewGroup;->-$$Nest$fputmLayoutCalledWhileSuppressed(Landroid/view/ViewGroup;Z)V

    .line 7318
    :cond_0
    const/4 v0, 0x3

    if-ne p4, v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup$4;->this$0:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/view/ViewGroup;->-$$Nest$fgetmTransitioningViews(Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7319
    iget-object v0, p0, Landroid/view/ViewGroup$4;->this$0:Landroid/view/ViewGroup;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 7321
    :cond_1
    return-void
.end method

.method public whitelist startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 1
    .param p1, "transition"    # Landroid/animation/LayoutTransition;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "transitionType"    # I

    .line 7306
    const/4 v0, 0x3

    if-ne p4, v0, :cond_0

    .line 7307
    iget-object v0, p0, Landroid/view/ViewGroup$4;->this$0:Landroid/view/ViewGroup;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 7309
    :cond_0
    return-void
.end method
