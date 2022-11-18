.class public interface abstract Lcom/android/internal/app/IResolverListAdapterExt;
.super Ljava/lang/Object;
.source "IResolverListAdapterExt.java"


# static fields
.field public static final blacklist DEFAULT:Lcom/android/internal/app/IResolverListAdapterExt;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/android/internal/app/IResolverListAdapterExt$1;

    invoke-direct {v0}, Lcom/android/internal/app/IResolverListAdapterExt$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/IResolverListAdapterExt;->DEFAULT:Lcom/android/internal/app/IResolverListAdapterExt;

    return-void
.end method


# virtual methods
.method public blacklist addMultiAppResolveInfoIfNeed(Ljava/util/List;Ljava/util/List;Lcom/android/internal/app/ResolverListController;Landroid/content/pm/PackageManager;Ljava/util/List;)V
    .locals 0
    .param p3, "resolverListController"    # Lcom/android/internal/app/ResolverListController;
    .param p4, "packageManager"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;",
            "Lcom/android/internal/app/ResolverListController;",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 57
    .local p1, "sortedComponents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    .local p2, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p5, "displayList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    return-void
.end method

.method public blacklist checkIsCtsTest(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 41
    return-void
.end method

.method public blacklist getPlaceholderResolveList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getResolveInfo(Landroid/content/Intent;Landroid/content/pm/PackageManager;)Landroid/content/pm/ResolveInfo;
    .locals 3
    .param p1, "ii"    # Landroid/content/Intent;
    .param p2, "mPm"    # Landroid/content/pm/PackageManager;

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 45
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No activity found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IResolverListAdapter"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v1, 0x0

    return-object v1

    .line 49
    :cond_0
    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 50
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iput-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 51
    return-object v1
.end method

.method public blacklist hasCustomFlag(I)Z
    .locals 1
    .param p1, "flag"    # I

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hookAddResolveInfo(Landroid/content/Context;Lcom/android/internal/app/ResolverListAdapter;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resolverListAdapter"    # Lcom/android/internal/app/ResolverListAdapter;
    .param p3, "ii"    # Landroid/content/Intent;
    .param p4, "ri"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/app/ResolverListAdapter;",
            "Landroid/content/Intent;",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .line 60
    .local p5, "mDisplayList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hookonCreateView(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "mInflater"    # Landroid/view/LayoutInflater;
    .param p2, "resId"    # I
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isOpShareUi()Z
    .locals 1

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isOriginUi()Z
    .locals 1

    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setPlaceholderResolveList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    .line 25
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    return-void
.end method

.method public blacklist sortComponentsNull(Ljava/util/List;Z)Z
    .locals 0
    .param p1, "sortedComponents"    # Ljava/util/List;
    .param p2, "originShow"    # Z

    .line 28
    return p2
.end method
