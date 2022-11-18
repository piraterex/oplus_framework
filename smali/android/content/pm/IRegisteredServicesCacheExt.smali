.class public interface abstract Landroid/content/pm/IRegisteredServicesCacheExt;
.super Ljava/lang/Object;
.source "IRegisteredServicesCacheExt.java"


# virtual methods
.method public whitelist adjustGenerateServicesMap(Ljava/lang/String;[ILjava/util/List;Ljava/util/function/Predicate;)Z
    .locals 1
    .param p1, "simpleName"    # Ljava/lang/String;
    .param p2, "changedUids"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[I",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 8
    .local p3, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local p4, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    return v0
.end method
