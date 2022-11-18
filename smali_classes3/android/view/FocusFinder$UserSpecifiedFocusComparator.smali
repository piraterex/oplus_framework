.class final Landroid/view/FocusFinder$UserSpecifiedFocusComparator;
.super Ljava/lang/Object;
.source "FocusFinder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/FocusFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UserSpecifiedFocusComparator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final greylist-max-o mHeadsOfChains:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mIsConnectedTo:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mNextFoci:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mNextFocusGetter:Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;

.field private final greylist-max-o mOriginalOrdinal:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mRoot:Landroid/view/View;


# direct methods
.method constructor greylist-max-o <init>(Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;)V
    .locals 1
    .param p1, "nextFocusGetter"    # Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;

    .line 897
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 886
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mNextFoci:Landroid/util/ArrayMap;

    .line 887
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mIsConnectedTo:Landroid/util/ArraySet;

    .line 888
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mHeadsOfChains:Landroid/util/ArrayMap;

    .line 889
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mOriginalOrdinal:Landroid/util/ArrayMap;

    .line 898
    iput-object p1, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mNextFocusGetter:Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;

    .line 899
    return-void
.end method

.method private greylist-max-o setHeadOfChain(Landroid/view/View;)V
    .locals 3
    .param p1, "head"    # Landroid/view/View;

    .line 934
    move-object v0, p1

    .local v0, "view":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_2

    .line 935
    iget-object v1, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mHeadsOfChains:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 936
    .local v1, "otherHead":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 937
    if-ne v1, p1, :cond_0

    .line 938
    return-void

    .line 942
    :cond_0
    move-object v0, p1

    .line 943
    move-object p1, v1

    .line 945
    :cond_1
    iget-object v2, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mHeadsOfChains:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    .end local v1    # "otherHead":Landroid/view/View;
    iget-object v1, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mNextFoci:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 947
    .end local v0    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method


# virtual methods
.method public greylist-max-o compare(Landroid/view/View;Landroid/view/View;)I
    .locals 7
    .param p1, "first"    # Landroid/view/View;
    .param p2, "second"    # Landroid/view/View;

    .line 950
    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 951
    return v0

    .line 955
    :cond_0
    iget-object v1, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mHeadsOfChains:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 956
    .local v1, "firstHead":Landroid/view/View;
    iget-object v2, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mHeadsOfChains:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 957
    .local v2, "secondHead":Landroid/view/View;
    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne v1, v2, :cond_4

    if-eqz v1, :cond_4

    .line 958
    if-ne p1, v1, :cond_1

    .line 959
    return v4

    .line 960
    :cond_1
    if-ne p2, v1, :cond_2

    .line 961
    return v3

    .line 962
    :cond_2
    iget-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mNextFoci:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 963
    return v4

    .line 965
    :cond_3
    return v3

    .line 968
    :cond_4
    const/4 v5, 0x0

    .line 969
    .local v5, "involvesChain":Z
    if-eqz v1, :cond_5

    .line 970
    move-object p1, v1

    .line 971
    const/4 v5, 0x1

    .line 973
    :cond_5
    if-eqz v2, :cond_6

    .line 974
    move-object p2, v2

    .line 975
    const/4 v5, 0x1

    .line 978
    :cond_6
    if-eqz v5, :cond_8

    .line 980
    iget-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mOriginalOrdinal:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v6, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mOriginalOrdinal:Landroid/util/ArrayMap;

    invoke-virtual {v6, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v0, v6, :cond_7

    move v3, v4

    :cond_7
    return v3

    .line 982
    :cond_8
    return v0
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 885
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public greylist-max-o recycle()V
    .locals 1

    .line 902
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mRoot:Landroid/view/View;

    .line 903
    iget-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mHeadsOfChains:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 904
    iget-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mIsConnectedTo:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 905
    iget-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mOriginalOrdinal:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 906
    iget-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mNextFoci:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 907
    return-void
.end method

.method public greylist-max-o setFocusables(Ljava/util/List;Landroid/view/View;)V
    .locals 4
    .param p2, "root"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 910
    .local p1, "focusables":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iput-object p2, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mRoot:Landroid/view/View;

    .line 911
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 912
    iget-object v1, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mOriginalOrdinal:Landroid/util/ArrayMap;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 915
    .end local v0    # "i":I
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 916
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 917
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mNextFocusGetter:Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;

    iget-object v3, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mRoot:Landroid/view/View;

    invoke-interface {v2, v3, v1}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;->get(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 918
    .local v2, "next":Landroid/view/View;
    if-eqz v2, :cond_1

    iget-object v3, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mOriginalOrdinal:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 919
    iget-object v3, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mNextFoci:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    iget-object v3, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mIsConnectedTo:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 915
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "next":Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 924
    .end local v0    # "i":I
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_4

    .line 925
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 926
    .restart local v1    # "view":Landroid/view/View;
    iget-object v2, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mNextFoci:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 927
    .restart local v2    # "next":Landroid/view/View;
    if-eqz v2, :cond_3

    iget-object v3, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mIsConnectedTo:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 928
    invoke-direct {p0, v1}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->setHeadOfChain(Landroid/view/View;)V

    .line 924
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "next":Landroid/view/View;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 931
    .end local v0    # "i":I
    :cond_4
    return-void
.end method
