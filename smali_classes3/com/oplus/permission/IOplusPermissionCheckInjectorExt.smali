.class public interface abstract Lcom/oplus/permission/IOplusPermissionCheckInjectorExt;
.super Ljava/lang/Object;
.source "IOplusPermissionCheckInjectorExt.java"


# virtual methods
.method public blacklist checkApplyBatchPermission(Ljava/util/ArrayList;IILjava/lang/String;)Z
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

    .line 41
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist checkPermission(Landroid/content/Intent;IILjava/lang/String;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "access"    # Ljava/lang/String;

    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist checkPermission(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "access"    # Ljava/lang/String;

    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist checkUriPermission(Landroid/net/Uri;IILjava/lang/String;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "access"    # Ljava/lang/String;

    .line 37
    const/4 v0, 0x1

    return v0
.end method
