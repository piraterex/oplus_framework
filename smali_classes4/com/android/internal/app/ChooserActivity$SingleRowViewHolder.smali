.class Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;
.super Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SingleRowViewHolder"
.end annotation


# instance fields
.field private final blacklist mRow:Landroid/view/ViewGroup;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewGroup;II)V
    .locals 0
    .param p1, "row"    # Landroid/view/ViewGroup;
    .param p2, "cellCount"    # I
    .param p3, "viewType"    # I

    .line 3755
    invoke-direct {p0, p2, p1, p3}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;-><init>(ILandroid/view/View;I)V

    .line 3757
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;->mRow:Landroid/view/ViewGroup;

    .line 3758
    return-void
.end method


# virtual methods
.method public blacklist addView(ILandroid/view/View;)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/view/View;

    .line 3774
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;->mRow:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3775
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;->mCells:[Landroid/view/View;

    aput-object p2, v0, p1

    .line 3777
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;->mRow:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public blacklist getRow(I)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "rowNumber"    # I

    .line 3769
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;->mRow:Landroid/view/ViewGroup;

    return-object v0

    .line 3770
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRowByIndex(I)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "index"    # I

    .line 3765
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;->mRow:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public blacklist getViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .line 3761
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;->mRow:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public blacklist setViewVisibility(II)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "visibility"    # I

    .line 3781
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 3782
    return-void
.end method
