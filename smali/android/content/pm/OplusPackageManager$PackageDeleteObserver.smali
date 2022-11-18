.class Landroid/content/pm/OplusPackageManager$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "OplusPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/OplusPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/content/pm/OplusPackageManager;


# direct methods
.method private constructor blacklist <init>(Landroid/content/pm/OplusPackageManager;)V
    .locals 0

    .line 501
    iput-object p1, p0, Landroid/content/pm/OplusPackageManager$PackageDeleteObserver;->this$0:Landroid/content/pm/OplusPackageManager;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/pm/OplusPackageManager;Landroid/content/pm/OplusPackageManager$PackageDeleteObserver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/OplusPackageManager$PackageDeleteObserver;-><init>(Landroid/content/pm/OplusPackageManager;)V

    return-void
.end method


# virtual methods
.method public blacklist packageDeleted(Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .line 503
    if-nez p1, :cond_0

    return-void

    .line 505
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->-$$Nest$sfgetmAppIconsCache()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 506
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->-$$Nest$sfgetmAppIconsCache()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    :cond_1
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->-$$Nest$sfgetmActivityIconsCache()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 509
    .local v0, "iter":Ljava/util/Iterator;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 510
    .local v1, "deleteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 511
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 512
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 513
    .local v3, "key":Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 514
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "key":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 517
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 518
    .local v3, "deleteName":Ljava/lang/String;
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->-$$Nest$sfgetmActivityIconsCache()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    nop

    .end local v3    # "deleteName":Ljava/lang/String;
    goto :goto_1

    .line 520
    :cond_4
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/content/pm/OplusPackageManager;->-$$Nest$sfputmIconCacheDirty(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    .end local v0    # "iter":Ljava/util/Iterator;
    .end local v1    # "deleteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_2

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 524
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method
