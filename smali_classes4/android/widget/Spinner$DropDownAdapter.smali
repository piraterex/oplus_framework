.class Landroid/widget/Spinner$DropDownAdapter;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownAdapter"
.end annotation


# instance fields
.field private greylist-max-o mAdapter:Landroid/widget/SpinnerAdapter;

.field private greylist-max-o mListAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "dropDownTheme"    # Landroid/content/res/Resources$Theme;

    .line 975
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 976
    iput-object p1, p0, Landroid/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 978
    instance-of v0, p1, Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 979
    move-object v0, p1

    check-cast v0, Landroid/widget/ListAdapter;

    iput-object v0, p0, Landroid/widget/Spinner$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    .line 982
    :cond_0
    if-eqz p2, :cond_1

    instance-of v0, p1, Landroid/widget/ThemedSpinnerAdapter;

    if-eqz v0, :cond_1

    .line 983
    move-object v0, p1

    check-cast v0, Landroid/widget/ThemedSpinnerAdapter;

    .line 984
    .local v0, "themedAdapter":Landroid/widget/ThemedSpinnerAdapter;
    invoke-interface {v0}, Landroid/widget/ThemedSpinnerAdapter;->getDropDownViewTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    if-nez v1, :cond_1

    .line 985
    invoke-interface {v0, p2}, Landroid/widget/ThemedSpinnerAdapter;->setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V

    .line 988
    .end local v0    # "themedAdapter":Landroid/widget/ThemedSpinnerAdapter;
    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist areAllItemsEnabled()Z
    .locals 2

    .line 1031
    iget-object v0, p0, Landroid/widget/Spinner$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    .line 1032
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    .line 1033
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    return v1

    .line 1035
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist getCount()I
    .locals 1

    .line 991
    iget-object v0, p0, Landroid/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public whitelist getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 1007
    iget-object v0, p0, Landroid/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SpinnerAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 995
    iget-object v0, p0, Landroid/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 999
    iget-object v0, p0, Landroid/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public whitelist getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 1053
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 1003
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/Spinner$DropDownAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getViewTypeCount()I
    .locals 1

    .line 1057
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist hasStableIds()Z
    .locals 1

    .line 1011
    iget-object v0, p0, Landroid/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isEmpty()Z
    .locals 1

    .line 1061
    invoke-virtual {p0}, Landroid/widget/Spinner$DropDownAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .line 1044
    iget-object v0, p0, Landroid/widget/Spinner$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    .line 1045
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    .line 1046
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    return v1

    .line 1048
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 1015
    iget-object v0, p0, Landroid/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    .line 1016
    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1018
    :cond_0
    return-void
.end method

.method public whitelist unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 1021
    iget-object v0, p0, Landroid/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    .line 1022
    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1024
    :cond_0
    return-void
.end method
