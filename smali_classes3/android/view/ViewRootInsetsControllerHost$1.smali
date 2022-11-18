.class Landroid/view/ViewRootInsetsControllerHost$1;
.super Ljava/lang/Object;
.source "ViewRootInsetsControllerHost.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewRootInsetsControllerHost;->addOnPreDrawRunnable(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootInsetsControllerHost;

.field final synthetic blacklist val$r:Ljava/lang/Runnable;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootInsetsControllerHost;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootInsetsControllerHost;

    .line 64
    iput-object p1, p0, Landroid/view/ViewRootInsetsControllerHost$1;->this$0:Landroid/view/ViewRootInsetsControllerHost;

    iput-object p2, p0, Landroid/view/ViewRootInsetsControllerHost$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPreDraw()Z
    .locals 1

    .line 67
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost$1;->this$0:Landroid/view/ViewRootInsetsControllerHost;

    invoke-static {v0}, Landroid/view/ViewRootInsetsControllerHost;->-$$Nest$fgetmViewRoot(Landroid/view/ViewRootInsetsControllerHost;)Landroid/view/ViewRootImpl;

    move-result-object v0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 68
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 69
    const/4 v0, 0x1

    return v0
.end method
