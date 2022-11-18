.class public interface abstract Landroid/content/pm/IPackagePartitionsExt;
.super Ljava/lang/Object;
.source "IPackagePartitionsExt.java"


# virtual methods
.method public blacklist adjustGetOrderedPartitions(Ljava/util/function/Function;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Landroid/content/pm/PackagePartitions$SystemPartition;",
            "TT;>;",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    .line 28
    .local p1, "producer":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/content/pm/PackagePartitions$SystemPartition;TT;>;"
    .local p2, "originList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    return-void
.end method
