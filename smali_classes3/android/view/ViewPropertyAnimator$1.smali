.class Landroid/view/ViewPropertyAnimator$1;
.super Ljava/lang/Object;
.source "ViewPropertyAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewPropertyAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewPropertyAnimator;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewPropertyAnimator;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewPropertyAnimator;

    .line 165
    iput-object p1, p0, Landroid/view/ViewPropertyAnimator$1;->this$0:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    .line 168
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$1;->this$0:Landroid/view/ViewPropertyAnimator;

    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->-$$Nest$mstartAnimation(Landroid/view/ViewPropertyAnimator;)V

    .line 169
    return-void
.end method
