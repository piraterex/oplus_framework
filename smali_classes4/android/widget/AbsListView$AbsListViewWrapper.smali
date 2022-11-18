.class Landroid/widget/AbsListView$AbsListViewWrapper;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Landroid/widget/IAbsListViewWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AbsListViewWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/AbsListView;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/AbsListView;)V
    .locals 0

    .line 8017
    iput-object p1, p0, Landroid/widget/AbsListView$AbsListViewWrapper;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$AbsListViewWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/AbsListView$AbsListViewWrapper;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public blacklist getExtImpl()Landroid/widget/IAbsListviewExt;
    .locals 1

    .line 8020
    iget-object v0, p0, Landroid/widget/AbsListView$AbsListViewWrapper;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->-$$Nest$fgetmAbsListviewExt(Landroid/widget/AbsListView;)Landroid/widget/IAbsListviewExt;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFlingRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 8025
    iget-object v0, p0, Landroid/widget/AbsListView$AbsListViewWrapper;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->-$$Nest$fgetmFlingRunnable(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$FlingRunnable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOverScroller()Landroid/widget/OverScroller;
    .locals 1

    .line 8040
    iget-object v0, p0, Landroid/widget/AbsListView$AbsListViewWrapper;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->-$$Nest$fgetmFlingRunnable(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$FlingRunnable;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/AbsListView$FlingRunnable;->-$$Nest$fgetmScroller(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setFlingRunnable()V
    .locals 2

    .line 8030
    iget-object v0, p0, Landroid/widget/AbsListView$AbsListViewWrapper;->this$0:Landroid/widget/AbsListView;

    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, v0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    invoke-static {v0, v1}, Landroid/widget/AbsListView;->-$$Nest$fputmFlingRunnable(Landroid/widget/AbsListView;Landroid/widget/AbsListView$FlingRunnable;)V

    .line 8031
    return-void
.end method

.method public blacklist startSpringback()V
    .locals 1

    .line 8035
    iget-object v0, p0, Landroid/widget/AbsListView$AbsListViewWrapper;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->-$$Nest$fgetmFlingRunnable(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$FlingRunnable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    .line 8036
    return-void
.end method
