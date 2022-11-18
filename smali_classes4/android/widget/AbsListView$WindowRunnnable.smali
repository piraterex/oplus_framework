.class Landroid/widget/AbsListView$WindowRunnnable;
.super Ljava/lang/Object;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowRunnnable"
.end annotation


# instance fields
.field private greylist-max-o mOriginalAttachCount:I

.field final synthetic blacklist this$0:Landroid/widget/AbsListView;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/AbsListView;)V
    .locals 0

    .line 3195
    iput-object p1, p0, Landroid/widget/AbsListView$WindowRunnnable;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$WindowRunnnable-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/AbsListView$WindowRunnnable;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o rememberWindowAttachCount()V
    .locals 1

    .line 3199
    iget-object v0, p0, Landroid/widget/AbsListView$WindowRunnnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->access$000(Landroid/widget/AbsListView;)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView$WindowRunnnable;->mOriginalAttachCount:I

    .line 3200
    return-void
.end method

.method public greylist-max-o sameWindow()Z
    .locals 2

    .line 3203
    iget-object v0, p0, Landroid/widget/AbsListView$WindowRunnnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->access$100(Landroid/widget/AbsListView;)I

    move-result v0

    iget v1, p0, Landroid/widget/AbsListView$WindowRunnnable;->mOriginalAttachCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
