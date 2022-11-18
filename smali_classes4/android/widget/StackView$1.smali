.class Landroid/widget/StackView$1;
.super Ljava/lang/Object;
.source "StackView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/StackView;->transformViewForTransition(IILandroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/StackView;

.field final synthetic blacklist val$view:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Landroid/widget/StackView;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/StackView;

    .line 306
    iput-object p1, p0, Landroid/widget/StackView$1;->this$0:Landroid/widget/StackView;

    iput-object p2, p0, Landroid/widget/StackView$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    .line 308
    iget-object v0, p0, Landroid/widget/StackView$1;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 309
    return-void
.end method
