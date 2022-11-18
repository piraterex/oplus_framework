.class Landroid/widget/AbsListView$3;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsListView;->onTouchUp(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/AbsListView;

.field final synthetic blacklist val$child:Landroid/view/View;

.field final synthetic blacklist val$motionPosition:I


# direct methods
.method constructor blacklist <init>(Landroid/widget/AbsListView;Landroid/view/View;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    .line 4190
    iput-object p1, p0, Landroid/widget/AbsListView$3;->this$0:Landroid/widget/AbsListView;

    iput-object p2, p0, Landroid/widget/AbsListView$3;->val$child:Landroid/view/View;

    iput p3, p0, Landroid/widget/AbsListView$3;->val$motionPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 4

    .line 4193
    iget-object v0, p0, Landroid/widget/AbsListView$3;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/AbsListView;->-$$Nest$fputmTouchModeReset(Landroid/widget/AbsListView;Ljava/lang/Runnable;)V

    .line 4194
    iget-object v0, p0, Landroid/widget/AbsListView$3;->this$0:Landroid/widget/AbsListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4195
    iget-object v0, p0, Landroid/widget/AbsListView$3;->val$child:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 4196
    iget-object v0, p0, Landroid/widget/AbsListView$3;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4199
    iget-object v0, p0, Landroid/widget/AbsListView$3;->this$0:Landroid/widget/AbsListView;

    iget v2, p0, Landroid/widget/AbsListView$3;->val$motionPosition:I

    iget v3, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4200
    .local v0, "newChild":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 4201
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 4204
    :cond_0
    return-void
.end method
