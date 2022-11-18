.class Lcom/android/internal/app/WindowDecorActionBar$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/WindowDecorActionBar;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/WindowDecorActionBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/WindowDecorActionBar;

    .line 131
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 134
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-$$Nest$fgetmContentAnimations(Lcom/android/internal/app/WindowDecorActionBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-$$Nest$fgetmContentView(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-$$Nest$fgetmContentView(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 136
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-$$Nest$fgetmContainerView(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-$$Nest$fgetmSplitView(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-$$Nest$fgetmContextDisplayMode(Lcom/android/internal/app/WindowDecorActionBar;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 139
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-$$Nest$fgetmSplitView(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-$$Nest$fgetmContainerView(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-$$Nest$fgetmContainerView(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 143
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/app/WindowDecorActionBar;->-$$Nest$fputmCurrentShowAnim(Lcom/android/internal/app/WindowDecorActionBar;Landroid/animation/Animator;)V

    .line 144
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-virtual {v0}, Lcom/android/internal/app/WindowDecorActionBar;->completeDeferredDestroyActionMode()V

    .line 145
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-$$Nest$fgetmOverlayLayout(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-$$Nest$fgetmOverlayLayout(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    .line 148
    :cond_2
    return-void
.end method
