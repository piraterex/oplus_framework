.class Landroid/widget/AbsListView$PerformClick;
.super Landroid/widget/AbsListView$WindowRunnnable;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformClick"
.end annotation


# instance fields
.field greylist-max-o mClickMotionPosition:I

.field final synthetic blacklist this$0:Landroid/widget/AbsListView;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/AbsListView;)V
    .locals 1

    .line 3207
    iput-object p1, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AbsListView$WindowRunnnable;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$WindowRunnnable-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$PerformClick-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/AbsListView$PerformClick;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 6

    .line 3214
    iget-object v0, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v0, :cond_0

    return-void

    .line 3216
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3217
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iget v1, p0, Landroid/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    .line 3218
    .local v1, "motionPosition":I
    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mItemCount:I

    if-lez v2, :cond_1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 3220
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView$PerformClick;->sameWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3221
    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3222
    iget-object v2, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget v3, v2, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3225
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 3226
    iget-object v3, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v3, v2, v1, v4, v5}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 3229
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method
