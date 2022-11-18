.class public interface abstract Landroid/content/IContentResolverExt;
.super Ljava/lang/Object;
.source "IContentResolverExt.java"


# virtual methods
.method public blacklist hookApplyBatch(Ljava/util/ArrayList;IILjava/lang/String;)Z
    .locals 1
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "access"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;II",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 38
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist hookDelete(Landroid/net/Uri;IILjava/lang/String;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "access"    # Ljava/lang/String;

    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist hookInsert(Landroid/net/Uri;IILjava/lang/String;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "access"    # Ljava/lang/String;

    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist hookQuery(Landroid/net/Uri;IILjava/lang/String;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "access"    # Ljava/lang/String;

    .line 26
    const/4 v0, 0x1

    return v0
.end method
