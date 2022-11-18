.class Landroid/app/ApplicationPackageManager$3;
.super Landroid/app/PropertyInvalidatedCache;
.source "ApplicationPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/PropertyInvalidatedCache<",
        "Ljava/lang/Integer;",
        "Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "maxEntries"    # I
    .param p2, "propertyName"    # Ljava/lang/String;

    .line 1142
    invoke-direct {p0, p1, p2}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist queryToString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3
    .param p1, "uid"    # Ljava/lang/Integer;

    .line 1155
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "uid=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist queryToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1142
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/app/ApplicationPackageManager$3;->queryToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist recompute(Ljava/lang/Integer;)Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;
    .locals 3
    .param p1, "uid"    # Ljava/lang/Integer;

    .line 1146
    :try_start_0
    new-instance v0, Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;

    .line 1147
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    .line 1148
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;-><init>([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1146
    return-object v0

    .line 1149
    :catch_0
    move-exception v0

    .line 1150
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic blacklist recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1142
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/app/ApplicationPackageManager$3;->recompute(Ljava/lang/Integer;)Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;

    move-result-object p1

    return-object p1
.end method
