.class abstract Lcom/android/internal/app/ChooserActivity$ViewHolderBase;
.super Lcom/android/internal/widget/RecyclerView$ViewHolder;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ViewHolderBase"
.end annotation


# instance fields
.field private blacklist mViewType:I


# direct methods
.method constructor blacklist <init>(Landroid/view/View;I)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "viewType"    # I

    .line 3069
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3070
    iput p2, p0, Lcom/android/internal/app/ChooserActivity$ViewHolderBase;->mViewType:I

    .line 3071
    return-void
.end method


# virtual methods
.method blacklist getViewType()I
    .locals 1

    .line 3074
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$ViewHolderBase;->mViewType:I

    return v0
.end method
