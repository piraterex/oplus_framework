.class public final Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;
.super Ljava/lang/Object;
.source "LocalFloatingToolbarPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MenuItemRepr"
.end annotation


# instance fields
.field public final blacklist groupId:I

.field public final blacklist itemId:I

.field private final blacklist mIcon:Landroid/graphics/drawable/Drawable;

.field private final blacklist mIntent:Landroid/content/Intent;

.field public final blacklist title:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;)V
    .locals 1
    .param p1, "itemId"    # I
    .param p2, "groupId"    # I
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "intent"    # Landroid/content/Intent;

    .line 1771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1773
    iput p1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->itemId:I

    .line 1774
    iput p2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->groupId:I

    .line 1775
    if-nez p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->title:Ljava/lang/String;

    .line 1776
    iput-object p4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1779
    iput-object p5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->mIntent:Landroid/content/Intent;

    .line 1781
    return-void
.end method

.method public static blacklist of(Landroid/view/MenuItem;)Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;
    .locals 7
    .param p0, "menuItem"    # Landroid/view/MenuItem;

    .line 1787
    new-instance v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;

    .line 1788
    invoke-interface {p0}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 1789
    invoke-interface {p0}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    .line 1790
    invoke-interface {p0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1794
    invoke-interface {p0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1795
    invoke-interface {p0}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;-><init>(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;)V

    .line 1787
    return-object v6
.end method

.method public static blacklist reprEquals(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/view/MenuItem;",
            ">;",
            "Ljava/util/Collection<",
            "Landroid/view/MenuItem;",
            ">;)Z"
        }
    .end annotation

    .line 1841
    .local p0, "menuItems1":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/MenuItem;>;"
    .local p1, "menuItems2":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/MenuItem;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 1842
    return v2

    .line 1845
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1846
    .local v0, "menuItems2Iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/MenuItem;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MenuItem;

    .line 1847
    .local v3, "menuItem1":Landroid/view/MenuItem;
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/MenuItem;

    .line 1848
    .local v4, "menuItem2":Landroid/view/MenuItem;
    invoke-static {v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->of(Landroid/view/MenuItem;)Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;

    move-result-object v5

    invoke-static {v4}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->of(Landroid/view/MenuItem;)Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1849
    return v2

    .line 1851
    .end local v3    # "menuItem1":Landroid/view/MenuItem;
    .end local v4    # "menuItem2":Landroid/view/MenuItem;
    :cond_1
    goto :goto_0

    .line 1853
    :cond_2
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 1816
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 1817
    return v0

    .line 1819
    :cond_0
    instance-of v1, p1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1820
    return v2

    .line 1822
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;

    .line 1823
    .local v1, "other":Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;
    iget v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->itemId:I

    iget v4, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->itemId:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->groupId:I

    iget v4, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->groupId:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->title:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->title:Ljava/lang/String;

    .line 1825
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v4, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1831
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->mIntent:Landroid/content/Intent;

    iget-object v4, v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->mIntent:Landroid/content/Intent;

    .line 1832
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1823
    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 1807
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->itemId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->groupId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->title:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->mIntent:Landroid/content/Intent;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
