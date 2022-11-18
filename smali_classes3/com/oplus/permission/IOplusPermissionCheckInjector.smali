.class public interface abstract Lcom/oplus/permission/IOplusPermissionCheckInjector;
.super Ljava/lang/Object;
.source "IOplusPermissionCheckInjector.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final whitelist DEFAULT:Lcom/oplus/permission/IOplusPermissionCheckInjector;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/oplus/permission/IOplusPermissionCheckInjector$1;

    invoke-direct {v0}, Lcom/oplus/permission/IOplusPermissionCheckInjector$1;-><init>()V

    sput-object v0, Lcom/oplus/permission/IOplusPermissionCheckInjector;->DEFAULT:Lcom/oplus/permission/IOplusPermissionCheckInjector;

    return-void
.end method


# virtual methods
.method public whitelist checkApplyBatchPermission(Ljava/util/ArrayList;IILjava/lang/String;)Z
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

    .line 57
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist checkPermission(Landroid/content/Intent;IILjava/lang/String;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "access"    # Ljava/lang/String;

    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist checkPermission(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "access"    # Ljava/lang/String;

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist checkUriPermission(Landroid/net/Uri;IILjava/lang/String;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "access"    # Ljava/lang/String;

    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 29
    invoke-interface {p0}, Lcom/oplus/permission/IOplusPermissionCheckInjector;->getDefault()Lcom/oplus/permission/IOplusPermissionCheckInjector;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDefault()Lcom/oplus/permission/IOplusPermissionCheckInjector;
    .locals 1

    .line 36
    sget-object v0, Lcom/oplus/permission/IOplusPermissionCheckInjector;->DEFAULT:Lcom/oplus/permission/IOplusPermissionCheckInjector;

    return-object v0
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 41
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IOplusPermissionCheckInjector:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method
