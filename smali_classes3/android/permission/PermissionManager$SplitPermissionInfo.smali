.class public final Landroid/permission/PermissionManager$SplitPermissionInfo;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SplitPermissionInfo"
.end annotation


# instance fields
.field private final blacklist mSplitPermissionInfoParcelable:Landroid/content/pm/permission/SplitPermissionInfoParcelable;


# direct methods
.method private constructor blacklist <init>(Landroid/content/pm/permission/SplitPermissionInfoParcelable;)V
    .locals 0
    .param p1, "parcelable"    # Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    .line 1308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1309
    iput-object p1, p0, Landroid/permission/PermissionManager$SplitPermissionInfo;->mSplitPermissionInfoParcelable:Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    .line 1310
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/pm/permission/SplitPermissionInfoParcelable;Landroid/permission/PermissionManager$SplitPermissionInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/permission/PermissionManager$SplitPermissionInfo;-><init>(Landroid/content/pm/permission/SplitPermissionInfoParcelable;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/util/List;I)V
    .locals 1
    .param p1, "splitPerm"    # Ljava/lang/String;
    .param p3, "targetSdk"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1305
    .local p2, "newPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    invoke-direct {v0, p1, p2, p3}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    invoke-direct {p0, v0}, Landroid/permission/PermissionManager$SplitPermissionInfo;-><init>(Landroid/content/pm/permission/SplitPermissionInfoParcelable;)V

    .line 1306
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1262
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1263
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 1264
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 1265
    .local v0, "that":Landroid/permission/PermissionManager$SplitPermissionInfo;
    iget-object v1, p0, Landroid/permission/PermissionManager$SplitPermissionInfo;->mSplitPermissionInfoParcelable:Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    iget-object v2, v0, Landroid/permission/PermissionManager$SplitPermissionInfo;->mSplitPermissionInfoParcelable:Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    invoke-virtual {v1, v2}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1263
    .end local v0    # "that":Landroid/permission/PermissionManager$SplitPermissionInfo;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getNewPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1284
    iget-object v0, p0, Landroid/permission/PermissionManager$SplitPermissionInfo;->mSplitPermissionInfoParcelable:Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    invoke-virtual {v0}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->getNewPermissions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSplitPermission()Ljava/lang/String;
    .locals 1

    .line 1277
    iget-object v0, p0, Landroid/permission/PermissionManager$SplitPermissionInfo;->mSplitPermissionInfoParcelable:Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    invoke-virtual {v0}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->getSplitPermission()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTargetSdk()I
    .locals 1

    .line 1291
    iget-object v0, p0, Landroid/permission/PermissionManager$SplitPermissionInfo;->mSplitPermissionInfoParcelable:Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    invoke-virtual {v0}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->getTargetSdk()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 1270
    iget-object v0, p0, Landroid/permission/PermissionManager$SplitPermissionInfo;->mSplitPermissionInfoParcelable:Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    invoke-virtual {v0}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->hashCode()I

    move-result v0

    return v0
.end method
