.class Landroid/permission/PermissionUsageHelper$OpUsage;
.super Ljava/lang/Object;
.source "PermissionUsageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/PermissionUsageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpUsage"
.end annotation


# instance fields
.field public final blacklist attributionTag:Ljava/lang/String;

.field public final blacklist isRunning:Z

.field public final blacklist lastAccessTime:J

.field public final blacklist op:Ljava/lang/String;

.field public final blacklist packageName:Ljava/lang/String;

.field public final blacklist proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

.field public final blacklist uid:I


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZLandroid/permission/PermissionUsageHelper$OpUsage;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "attributionTag"    # Ljava/lang/String;
    .param p3, "op"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "lastAccessTime"    # J
    .param p7, "isRunning"    # Z
    .param p8, "proxy"    # Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 731
    iput-object p1, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    .line 732
    iput-object p2, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->attributionTag:Ljava/lang/String;

    .line 733
    iput-object p3, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->op:Ljava/lang/String;

    .line 734
    iput p4, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->uid:I

    .line 735
    iput-wide p5, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    .line 736
    iput-boolean p7, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->isRunning:Z

    .line 737
    iput-object p8, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 738
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 755
    instance-of v0, p1, Landroid/permission/PermissionUsageHelper$OpUsage;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 756
    return v1

    .line 758
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 759
    .local v0, "other":Landroid/permission/PermissionUsageHelper$OpUsage;
    iget-object v2, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->attributionTag:Ljava/lang/String;

    iget-object v3, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->attributionTag:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->op:Ljava/lang/String;

    iget-object v3, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->op:Ljava/lang/String;

    .line 760
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->uid:I

    iget v3, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->uid:I

    if-ne v2, v3, :cond_1

    iget-wide v2, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    iget-wide v4, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->isRunning:Z

    iget-boolean v3, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->isRunning:Z

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 759
    :goto_0
    return v1
.end method

.method public blacklist getPackageIdHash()I
    .locals 3

    .line 745
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist getUser()Landroid/os/UserHandle;
    .locals 1

    .line 741
    iget v0, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 750
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->attributionTag:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->op:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->isRunning:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
