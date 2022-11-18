.class Landroid/content/pm/PackageManager$2;
.super Landroid/app/PropertyInvalidatedCache;
.source "PackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/PropertyInvalidatedCache<",
        "Landroid/content/pm/PackageManager$PackageInfoQuery;",
        "Landroid/content/pm/PackageInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "maxEntries"    # I
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "cacheName"    # Ljava/lang/String;

    .line 10512
    invoke-direct {p0, p1, p2, p3}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist recompute(Landroid/content/pm/PackageManager$PackageInfoQuery;)Landroid/content/pm/PackageInfo;
    .locals 4
    .param p1, "query"    # Landroid/content/pm/PackageManager$PackageInfoQuery;

    .line 10515
    iget-object v0, p1, Landroid/content/pm/PackageManager$PackageInfoQuery;->packageName:Ljava/lang/String;

    iget-wide v1, p1, Landroid/content/pm/PackageManager$PackageInfoQuery;->flags:J

    iget v3, p1, Landroid/content/pm/PackageManager$PackageInfoQuery;->userId:I

    invoke-static {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->-$$Nest$smgetPackageInfoAsUserUncached(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10512
    check-cast p1, Landroid/content/pm/PackageManager$PackageInfoQuery;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager$2;->recompute(Landroid/content/pm/PackageManager$PackageInfoQuery;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist resultEquals(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)Z
    .locals 1
    .param p1, "cached"    # Landroid/content/pm/PackageInfo;
    .param p2, "fetched"    # Landroid/content/pm/PackageInfo;

    .line 10522
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic blacklist resultEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 10512
    check-cast p1, Landroid/content/pm/PackageInfo;

    check-cast p2, Landroid/content/pm/PackageInfo;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager$2;->resultEquals(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)Z

    move-result p1

    return p1
.end method
