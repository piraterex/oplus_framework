.class Landroid/view/ViewGroup$ChildListForAccessibility;
.super Ljava/lang/Object;
.source "ViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChildListForAccessibility"
.end annotation


# static fields
.field private static final greylist-max-o MAX_POOL_SIZE:I = 0x20

.field private static final greylist-max-o sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/view/ViewGroup$ChildListForAccessibility;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewGroup$ViewLocationHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 9065
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/ViewGroup$ChildListForAccessibility;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .locals 1

    .line 9061
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9068
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mChildren:Ljava/util/ArrayList;

    .line 9070
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mHolders:Ljava/util/ArrayList;

    return-void
.end method

.method private greylist-max-o clear()V
    .locals 1

    .line 9136
    iget-object v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9137
    return-void
.end method

.method private greylist-max-o init(Landroid/view/ViewGroup;Z)V
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "sort"    # Z

    .line 9095
    iget-object v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mChildren:Ljava/util/ArrayList;

    .line 9096
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 9097
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 9098
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 9099
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9097
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9101
    .end local v2    # "i":I
    :cond_0
    if-eqz p2, :cond_3

    .line 9102
    iget-object v2, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mHolders:Ljava/util/ArrayList;

    .line 9103
    .local v2, "holders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewGroup$ViewLocationHolder;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 9104
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 9105
    .local v4, "child":Landroid/view/View;
    invoke-static {p1, v4}, Landroid/view/ViewGroup$ViewLocationHolder;->obtain(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/ViewGroup$ViewLocationHolder;

    move-result-object v5

    .line 9106
    .local v5, "holder":Landroid/view/ViewGroup$ViewLocationHolder;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9103
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "holder":Landroid/view/ViewGroup$ViewLocationHolder;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 9108
    .end local v3    # "i":I
    :cond_1
    invoke-direct {p0, v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->sort(Ljava/util/ArrayList;)V

    .line 9109
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v1, :cond_2

    .line 9110
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$ViewLocationHolder;

    .line 9111
    .local v4, "holder":Landroid/view/ViewGroup$ViewLocationHolder;
    iget-object v5, v4, Landroid/view/ViewGroup$ViewLocationHolder;->mView:Landroid/view/View;

    invoke-virtual {v0, v3, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9112
    invoke-virtual {v4}, Landroid/view/ViewGroup$ViewLocationHolder;->recycle()V

    .line 9109
    .end local v4    # "holder":Landroid/view/ViewGroup$ViewLocationHolder;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 9114
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 9116
    .end local v2    # "holders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewGroup$ViewLocationHolder;>;"
    :cond_3
    return-void
.end method

.method public static greylist-max-o obtain(Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$ChildListForAccessibility;
    .locals 2
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "sort"    # Z

    .line 9073
    sget-object v0, Landroid/view/ViewGroup$ChildListForAccessibility;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$ChildListForAccessibility;

    .line 9074
    .local v0, "list":Landroid/view/ViewGroup$ChildListForAccessibility;
    if-nez v0, :cond_0

    .line 9075
    new-instance v1, Landroid/view/ViewGroup$ChildListForAccessibility;

    invoke-direct {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;-><init>()V

    move-object v0, v1

    .line 9077
    :cond_0
    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$ChildListForAccessibility;->init(Landroid/view/ViewGroup;Z)V

    .line 9078
    return-object v0
.end method

.method private greylist-max-o sort(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewGroup$ViewLocationHolder;",
            ">;)V"
        }
    .end annotation

    .line 9123
    .local p1, "holders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewGroup$ViewLocationHolder;>;"
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Landroid/view/ViewGroup$ViewLocationHolder;->setComparisonStrategy(I)V

    .line 9125
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9132
    goto :goto_0

    .line 9126
    :catch_0
    move-exception v0

    .line 9129
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x2

    invoke-static {v1}, Landroid/view/ViewGroup$ViewLocationHolder;->setComparisonStrategy(I)V

    .line 9131
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 9133
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method


# virtual methods
.method public greylist-max-o getChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .line 9091
    iget-object v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public greylist-max-o getChildCount()I
    .locals 1

    .line 9087
    iget-object v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public greylist-max-o recycle()V
    .locals 1

    .line 9082
    invoke-direct {p0}, Landroid/view/ViewGroup$ChildListForAccessibility;->clear()V

    .line 9083
    sget-object v0, Landroid/view/ViewGroup$ChildListForAccessibility;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 9084
    return-void
.end method
