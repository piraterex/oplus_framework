.class Lcom/android/internal/app/ResolverListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ResolverListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field public blacklist defaultItemViewBackground:Landroid/graphics/drawable/Drawable;

.field public blacklist icon:Landroid/widget/ImageView;

.field public blacklist itemView:Landroid/view/View;

.field public blacklist text:Landroid/widget/TextView;

.field public blacklist text2:Landroid/widget/TextView;


# direct methods
.method constructor blacklist <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 897
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 898
    iput-object p1, p0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->itemView:Landroid/view/View;

    .line 899
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->defaultItemViewBackground:Landroid/graphics/drawable/Drawable;

    .line 900
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 901
    const v0, 0x1020015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    .line 902
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 903
    return-void
.end method


# virtual methods
.method public blacklist bindIcon(Lcom/android/internal/app/chooser/TargetInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 927
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 928
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->isSuspended()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/internal/app/ResolverListAdapter;->-$$Nest$smgetSuspendedColorMatrix()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 931
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 933
    :goto_0
    return-void
.end method

.method public blacklist bindLabel(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "subLabel"    # Ljava/lang/CharSequence;
    .param p3, "showSubLabel"    # Z

    .line 906
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 908
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    const/4 p2, 0x0

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 913
    if-nez p3, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 916
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 914
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 919
    :goto_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 920
    return-void
.end method

.method public blacklist updateContentDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .line 923
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 924
    return-void
.end method
