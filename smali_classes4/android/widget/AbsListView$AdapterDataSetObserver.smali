.class Landroid/widget/AbsListView$AdapterDataSetObserver;
.super Landroid/widget/AdapterView$AdapterDataSetObserver;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView<",
        "Landroid/widget/ListAdapter;",
        ">.AdapterDataSetObserver;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/AbsListView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    .line 6707
    iput-object p1, p0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0, p1}, Landroid/widget/AdapterView$AdapterDataSetObserver;-><init>(Landroid/widget/AdapterView;)V

    return-void
.end method


# virtual methods
.method public whitelist onChanged()V
    .locals 1

    .line 6710
    invoke-super {p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;->onChanged()V

    .line 6711
    iget-object v0, p0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->-$$Nest$fgetmFastScroll(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6712
    iget-object v0, p0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->-$$Nest$fgetmFastScroll(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FastScroller;->onSectionsChanged()V

    .line 6714
    :cond_0
    return-void
.end method

.method public whitelist onInvalidated()V
    .locals 1

    .line 6718
    invoke-super {p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;->onInvalidated()V

    .line 6719
    iget-object v0, p0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->-$$Nest$fgetmFastScroll(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6720
    iget-object v0, p0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->-$$Nest$fgetmFastScroll(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FastScroller;->onSectionsChanged()V

    .line 6722
    :cond_0
    return-void
.end method
