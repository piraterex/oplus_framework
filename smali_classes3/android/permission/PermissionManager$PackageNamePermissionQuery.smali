.class final Landroid/permission/PermissionManager$PackageNamePermissionQuery;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PackageNamePermissionQuery"
.end annotation


# instance fields
.field final blacklist permName:Ljava/lang/String;

.field final blacklist pkgName:Ljava/lang/String;

.field final blacklist userId:I


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1614
    iput-object p1, p0, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->permName:Ljava/lang/String;

    .line 1615
    iput-object p2, p0, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->pkgName:Ljava/lang/String;

    .line 1616
    iput p3, p0, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->userId:I

    .line 1617
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "rval"    # Ljava/lang/Object;

    .line 1633
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1634
    return v0

    .line 1638
    :cond_0
    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/permission/PermissionManager$PackageNamePermissionQuery;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1641
    .local v1, "other":Landroid/permission/PermissionManager$PackageNamePermissionQuery;
    nop

    .line 1642
    iget-object v2, p0, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->permName:Ljava/lang/String;

    iget-object v3, v1, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->permName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->pkgName:Ljava/lang/String;

    iget-object v3, v1, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->pkgName:Ljava/lang/String;

    .line 1643
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->userId:I

    iget v3, v1, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->userId:I

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1642
    :goto_0
    return v0

    .line 1639
    .end local v1    # "other":Landroid/permission/PermissionManager$PackageNamePermissionQuery;
    :catch_0
    move-exception v1

    .line 1640
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 1628
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->permName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->pkgName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 1621
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->pkgName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->permName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->userId:I

    .line 1623
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1621
    const-string v1, "PackageNamePermissionQuery(pkgName=\"%s\", permName=\"%s, userId=%s\")"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
