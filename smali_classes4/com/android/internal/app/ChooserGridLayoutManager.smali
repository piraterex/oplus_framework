.class public Lcom/android/internal/app/ChooserGridLayoutManager;
.super Lcom/android/internal/widget/GridLayoutManager;
.source "ChooserGridLayoutManager.java"


# instance fields
.field private blacklist mVerticalScrollEnabled:Z


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spanCount"    # I

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mVerticalScrollEnabled:Z

    .line 52
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;IIZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spanCount"    # I
    .param p3, "orientation"    # I
    .param p4, "reverseLayout"    # Z

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mVerticalScrollEnabled:Z

    .line 64
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/GridLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mVerticalScrollEnabled:Z

    .line 42
    return-void
.end method


# virtual methods
.method public blacklist canScrollVertically()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mVerticalScrollEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/internal/widget/GridLayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist getRowCountForAccessibility(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 70
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/GridLayoutManager;->getRowCountForAccessibility(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method blacklist setVerticalScrollEnabled(Z)V
    .locals 0
    .param p1, "verticalScrollEnabled"    # Z

    .line 74
    iput-boolean p1, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mVerticalScrollEnabled:Z

    .line 75
    return-void
.end method
