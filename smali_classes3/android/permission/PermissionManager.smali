.class public final Landroid/permission/PermissionManager;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/permission/PermissionManager$OnPermissionsChangeListenerDelegate;,
        Landroid/permission/PermissionManager$PackageNamePermissionQuery;,
        Landroid/permission/PermissionManager$PermissionQuery;,
        Landroid/permission/PermissionManager$SplitPermissionInfo;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_REVIEW_PERMISSION_DECISIONS:Ljava/lang/String; = "android.permission.action.REVIEW_PERMISSION_DECISIONS"

.field public static final blacklist CACHE_KEY_PACKAGE_INFO:Ljava/lang/String; = "cache_key.package_info"

.field public static final blacklist CANNOT_INSTALL_WITH_BAD_PERMISSION_GROUPS:J = 0x8b70248L

.field public static final blacklist DEBUG_TRACE_GRANTS:Z = false

.field public static final blacklist DEBUG_TRACE_PERMISSION_UPDATES:Z = false

.field private static final blacklist EXEMPTED_INDICATOR_ROLE_UPDATE_FREQUENCY_MS:J = 0x3a98L

.field private static final blacklist EXEMPTED_ROLES:[I

.field public static final blacklist EXPLICIT_SET_FLAGS:I = 0x8037

.field public static final whitelist EXTRA_PERMISSION_USAGES:Ljava/lang/String; = "android.permission.extra.PERMISSION_USAGES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist INDICATOR_EXEMPTED_PACKAGES:[Ljava/lang/String;

.field public static final blacklist KILL_APP_REASON_GIDS_CHANGED:Ljava/lang/String; = "permission grant or revoke changed gids"

.field public static final blacklist KILL_APP_REASON_PERMISSIONS_REVOKED:Ljava/lang/String; = "permissions revoked"

.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field public static final blacklist LOG_TAG_TRACE_GRANTS:Ljava/lang/String; = "PermissionGrantTrace"

.field public static final whitelist PERMISSION_GRANTED:I = 0x0

.field public static final whitelist PERMISSION_HARD_DENIED:I = 0x2

.field public static final whitelist PERMISSION_SOFT_DENIED:I = 0x1

.field private static final blacklist SYSTEM_PKG:Ljava/lang/String; = "android"

.field private static blacklist sLastIndicatorUpdateTime:J

.field private static blacklist sPackageNamePermissionCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Landroid/permission/PermissionManager$PackageNamePermissionQuery;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sPermissionCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Landroid/permission/PermissionManager$PermissionQuery;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile blacklist sShouldWarnMissingActivityManager:Z


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mLegacyPermissionManager:Landroid/permission/LegacyPermissionManager;

.field private final blacklist mPackageManager:Landroid/content/pm/IPackageManager;

.field private final blacklist mPermissionListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/pm/PackageManager$OnPermissionsChangedListener;",
            "Landroid/permission/IOnPermissionsChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPermissionManager:Landroid/permission/IPermissionManager;

.field private blacklist mSplitPermissionInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUsageHelper:Landroid/permission/PermissionUsageHelper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcheckPackageNamePermissionUncached(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/permission/PermissionManager;->checkPackageNamePermissionUncached(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckPermissionUncached(Ljava/lang/String;II)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/permission/PermissionManager;->checkPermissionUncached(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    .line 92
    const-class v0, Landroid/permission/PermissionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/permission/PermissionManager;->LOG_TAG:Ljava/lang/String;

    .line 172
    const-wide/16 v0, -0x1

    sput-wide v0, Landroid/permission/PermissionManager;->sLastIndicatorUpdateTime:J

    .line 174
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/permission/PermissionManager;->EXEMPTED_ROLES:[I

    .line 179
    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/permission/PermissionManager;->INDICATOR_EXEMPTED_PACKAGES:[Ljava/lang/String;

    .line 1491
    const/4 v0, 0x1

    sput-boolean v0, Landroid/permission/PermissionManager;->sShouldWarnMissingActivityManager:Z

    .line 1578
    new-instance v0, Landroid/permission/PermissionManager$1;

    const/16 v1, 0x800

    const-string v2, "cache_key.package_info"

    const-string v3, "checkPermission"

    invoke-direct {v0, v1, v2, v3}, Landroid/permission/PermissionManager$1;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/permission/PermissionManager;->sPermissionCache:Landroid/app/PropertyInvalidatedCache;

    .line 1661
    new-instance v0, Landroid/permission/PermissionManager$2;

    const/16 v1, 0x10

    const-string v3, "checkPackageNamePermission"

    invoke-direct {v0, v1, v2, v3}, Landroid/permission/PermissionManager$2;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/permission/PermissionManager;->sPackageNamePermissionCache:Landroid/app/PropertyInvalidatedCache;

    return-void

    nop

    :array_0
    .array-data 4
        0x1040033
        0x1040032
        0x1040034
        0x1040035
        0x1040036
        0x1040037
    .end array-data
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/permission/PermissionManager;->mPermissionListeners:Landroid/util/ArrayMap;

    .line 229
    iput-object p1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 230
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/permission/PermissionManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 231
    const-string/jumbo v0, "permissionmgr"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/permission/IPermissionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/permission/IPermissionManager;

    move-result-object v0

    iput-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    .line 233
    const-class v0, Landroid/permission/LegacyPermissionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/LegacyPermissionManager;

    iput-object v0, p0, Landroid/permission/PermissionManager;->mLegacyPermissionManager:Landroid/permission/LegacyPermissionManager;

    .line 234
    return-void
.end method

.method public static blacklist checkPackageNamePermission(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p0, "permName"    # Ljava/lang/String;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1682
    sget-object v0, Landroid/permission/PermissionManager;->sPackageNamePermissionCache:Landroid/app/PropertyInvalidatedCache;

    new-instance v1, Landroid/permission/PermissionManager$PackageNamePermissionQuery;

    invoke-direct {v1, p0, p1, p2}, Landroid/permission/PermissionManager$PackageNamePermissionQuery;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static blacklist checkPackageNamePermissionUncached(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p0, "permName"    # Ljava/lang/String;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1652
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1654
    :catch_0
    move-exception v0

    .line 1655
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist checkPermission(Ljava/lang/String;II)I
    .locals 2
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 1589
    sget-object v0, Landroid/permission/PermissionManager;->sPermissionCache:Landroid/app/PropertyInvalidatedCache;

    new-instance v1, Landroid/permission/PermissionManager$PermissionQuery;

    invoke-direct {v1, p0, p1, p2}, Landroid/permission/PermissionManager$PermissionQuery;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static blacklist checkPermissionUncached(Ljava/lang/String;II)I
    .locals 6
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 1495
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1496
    .local v0, "am":Landroid/app/IActivityManager;
    if-nez v0, :cond_3

    .line 1500
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 1501
    .local v1, "appId":I
    const-string v2, "Missing ActivityManager; assuming "

    if-eqz v1, :cond_1

    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 1509
    :cond_0
    sget-object v3, Landroid/permission/PermissionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " does not hold "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    const/4 v2, -0x1

    return v2

    .line 1502
    :cond_1
    :goto_0
    sget-boolean v3, Landroid/permission/PermissionManager;->sShouldWarnMissingActivityManager:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 1503
    sget-object v3, Landroid/permission/PermissionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " holds "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    sput-boolean v4, Landroid/permission/PermissionManager;->sShouldWarnMissingActivityManager:Z

    .line 1507
    :cond_2
    return v4

    .line 1514
    .end local v1    # "appId":I
    :cond_3
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Landroid/permission/PermissionManager;->sShouldWarnMissingActivityManager:Z

    .line 1515
    invoke-interface {v0, p0, p1, p2}, Landroid/app/IActivityManager;->checkPermission(Ljava/lang/String;II)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1516
    :catch_0
    move-exception v1

    .line 1517
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static blacklist disablePackageNamePermissionCache()V
    .locals 1

    .line 1692
    sget-object v0, Landroid/permission/PermissionManager;->sPackageNamePermissionCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->disableLocal()V

    .line 1693
    return-void
.end method

.method public static blacklist disablePermissionCache()V
    .locals 1

    .line 1598
    sget-object v0, Landroid/permission/PermissionManager;->sPermissionCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->disableLocal()V

    .line 1599
    return-void
.end method

.method public static blacklist getIndicatorExemptedPackages(Landroid/content/Context;)Ljava/util/Set;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1159
    invoke-static {p0}, Landroid/permission/PermissionManager;->updateIndicatorExemptedPackages(Landroid/content/Context;)V

    .line 1160
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1161
    .local v0, "pkgNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1162
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Landroid/permission/PermissionManager;->INDICATOR_EXEMPTED_PACKAGES:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 1163
    aget-object v2, v2, v1

    .line 1164
    .local v2, "exemptedPackage":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1165
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1162
    .end local v2    # "exemptedPackage":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1168
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static blacklist shouldShowPackageForIndicatorCached(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1150
    invoke-static {p0}, Landroid/permission/PermissionManager;->getIndicatorExemptedPackages(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static blacklist shouldTraceGrant(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 565
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist splitPermissionInfoListToNonParcelableList(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/permission/SplitPermissionInfoParcelable;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;"
        }
    .end annotation

    .line 1227
    .local p1, "parcelableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1228
    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1229
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1230
    new-instance v3, Landroid/permission/PermissionManager$SplitPermissionInfo;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/permission/PermissionManager$SplitPermissionInfo;-><init>(Landroid/content/pm/permission/SplitPermissionInfoParcelable;Landroid/permission/PermissionManager$SplitPermissionInfo-IA;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1229
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1232
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static blacklist splitPermissionInfoListToParcelableList(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/permission/SplitPermissionInfoParcelable;",
            ">;"
        }
    .end annotation

    .line 1242
    .local p0, "splitPermissionsList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1243
    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1244
    .local v1, "outList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1245
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 1246
    .local v3, "info":Landroid/permission/PermissionManager$SplitPermissionInfo;
    new-instance v4, Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    .line 1247
    invoke-virtual {v3}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v3}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getTargetSdk()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    .line 1246
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1244
    .end local v3    # "info":Landroid/permission/PermissionManager$SplitPermissionInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1249
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static blacklist updateIndicatorExemptedPackages(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 1176
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1177
    .local v0, "now":J
    sget-wide v2, Landroid/permission/PermissionManager;->sLastIndicatorUpdateTime:J

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3a98

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 1179
    :cond_0
    sput-wide v0, Landroid/permission/PermissionManager;->sLastIndicatorUpdateTime:J

    .line 1180
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Landroid/permission/PermissionManager;->EXEMPTED_ROLES:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 1181
    sget-object v4, Landroid/permission/PermissionManager;->INDICATOR_EXEMPTED_PACKAGES:[Ljava/lang/String;

    aget v3, v3, v2

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    .line 1180
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1184
    .end local v2    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist addAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "allowlistFlags"    # I

    .line 821
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 822
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 821
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/permission/IPermissionManager;->addAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 823
    :catch_0
    move-exception v0

    .line 824
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

    .line 975
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 976
    :try_start_0
    iget-object v1, p0, Landroid/permission/PermissionManager;->mPermissionListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 977
    monitor-exit v0

    return-void

    .line 979
    :cond_0
    new-instance v1, Landroid/permission/PermissionManager$OnPermissionsChangeListenerDelegate;

    .line 980
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Landroid/permission/PermissionManager$OnPermissionsChangeListenerDelegate;-><init>(Landroid/permission/PermissionManager;Landroid/content/pm/PackageManager$OnPermissionsChangedListener;Landroid/os/Looper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 982
    .local v1, "delegate":Landroid/permission/PermissionManager$OnPermissionsChangeListenerDelegate;
    :try_start_1
    iget-object v2, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-interface {v2, v1}, Landroid/permission/IPermissionManager;->addOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V

    .line 983
    iget-object v2, p0, Landroid/permission/PermissionManager;->mPermissionListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 986
    nop

    .line 987
    .end local v1    # "delegate":Landroid/permission/PermissionManager$OnPermissionsChangeListenerDelegate;
    :try_start_2
    monitor-exit v0

    .line 988
    return-void

    .line 984
    .restart local v1    # "delegate":Landroid/permission/PermissionManager$OnPermissionsChangeListenerDelegate;
    :catch_0
    move-exception v2

    .line 985
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/permission/PermissionManager;
    .end local p1    # "listener":Landroid/content/pm/PackageManager$OnPermissionsChangedListener;
    throw v3

    .line 987
    .end local v1    # "delegate":Landroid/permission/PermissionManager$OnPermissionsChangeListenerDelegate;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/permission/PermissionManager;
    .restart local p1    # "listener":Landroid/content/pm/PackageManager$OnPermissionsChangedListener;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist addPermission(Landroid/content/pm/PermissionInfo;Z)Z
    .locals 2
    .param p1, "permissionInfo"    # Landroid/content/pm/PermissionInfo;
    .param p2, "async"    # Z

    .line 465
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-interface {v0, p1, p2}, Landroid/permission/IPermissionManager;->addPermission(Landroid/content/pm/PermissionInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist checkDeviceIdentifierAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1416
    iget-object v0, p0, Landroid/permission/PermissionManager;->mLegacyPermissionManager:Landroid/permission/LegacyPermissionManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/permission/LegacyPermissionManager;->checkDeviceIdentifierAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public whitelist checkPermissionForDataDelivery(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "message"    # Ljava/lang/String;

    .line 269
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-static {v0, p1, v1, p2, p3}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;ILandroid/content/AttributionSource;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist checkPermissionForDataDeliveryFromDataSource(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "message"    # Ljava/lang/String;

    .line 349
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-static {v0, p1, v1, p2, p3}, Landroid/content/PermissionChecker;->checkPermissionForDataDeliveryFromDataSource(Landroid/content/Context;Ljava/lang/String;ILandroid/content/AttributionSource;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist checkPermissionForPreflight(Ljava/lang/String;Landroid/content/AttributionSource;)I
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;

    .line 379
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result v0

    return v0
.end method

.method public whitelist checkPermissionForStartDataDelivery(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "message"    # Ljava/lang/String;

    .line 296
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    const/4 v5, 0x1

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public whitelist finishDataDelivery(Ljava/lang/String;Landroid/content/AttributionSource;)V
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;

    .line 310
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/content/PermissionChecker;->finishDataDelivery(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;)V

    .line 312
    return-void
.end method

.method public blacklist getAllPermissionGroups(I)Ljava/util/List;
    .locals 2
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .line 525
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    .line 526
    invoke-interface {v0, p1}, Landroid/permission/IPermissionManager;->getAllPermissionGroups(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 527
    .local v0, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PermissionGroupInfo;>;"
    if-nez v0, :cond_0

    .line 528
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 530
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 531
    .end local v0    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PermissionGroupInfo;>;"
    :catch_0
    move-exception v0

    .line 532
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getAllowlistedRestrictedPermissions(Ljava/lang/String;I)Ljava/util/Set;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "allowlistFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 758
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 759
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 758
    invoke-interface {v0, p1, p2, v1}, Landroid/permission/IPermissionManager;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 760
    .local v0, "allowlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 761
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 763
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 764
    .end local v0    # "allowlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 765
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAutoRevokeExemptionGrantedPackages()Ljava/util/Set;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1218
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 1219
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 1218
    invoke-interface {v0, v1}, Landroid/permission/IPermissionManager;->getAutoRevokeExemptionGrantedPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->toSet(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1220
    :catch_0
    move-exception v0

    .line 1221
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAutoRevokeExemptionRequestedPackages()Ljava/util/Set;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1198
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 1199
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 1198
    invoke-interface {v0, v1}, Landroid/permission/IPermissionManager;->getAutoRevokeExemptionRequestedPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->toSet(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1200
    :catch_0
    move-exception v0

    .line 1201
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getIndicatorAppOpUsageData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/permission/PermissionGroupUsage;",
            ">;"
        }
    .end annotation

    .line 1124
    new-instance v0, Landroid/media/AudioManager;

    invoke-direct {v0}, Landroid/media/AudioManager;-><init>()V

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/permission/PermissionManager;->getIndicatorAppOpUsageData(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIndicatorAppOpUsageData(Z)Ljava/util/List;
    .locals 1
    .param p1, "micMuted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/permission/PermissionGroupUsage;",
            ">;"
        }
    .end annotation

    .line 1139
    invoke-virtual {p0}, Landroid/permission/PermissionManager;->initializeUsageHelper()V

    .line 1140
    iget-object v0, p0, Landroid/permission/PermissionManager;->mUsageHelper:Landroid/permission/PermissionUsageHelper;

    invoke-virtual {v0, p1}, Landroid/permission/PermissionUsageHelper;->getOpUsageData(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 662
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    .line 663
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 662
    invoke-interface {v0, p1, p2, v1}, Landroid/permission/IPermissionManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 664
    :catch_0
    move-exception v0

    .line 665
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 2
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 506
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-interface {v0, p1, p2}, Landroid/permission/IPermissionManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 507
    :catch_0
    move-exception v0

    .line 508
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .locals 2
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 398
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-interface {v1, p1, v0, p2}, Landroid/permission/IPermissionManager;->getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 400
    .end local v0    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 401
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getRuntimePermissionsVersion()I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1029
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->getRuntimePermissionsVersion(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1030
    :catch_0
    move-exception v0

    .line 1031
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSplitPermissions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;"
        }
    .end annotation

    .line 1074
    iget-object v0, p0, Landroid/permission/PermissionManager;->mSplitPermissionInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1075
    return-object v0

    .line 1080
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPermissionManager()Landroid/permission/IPermissionManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/permission/IPermissionManager;->getSplitPermissions()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1084
    .local v0, "parcelableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    nop

    .line 1086
    invoke-direct {p0, v0}, Landroid/permission/PermissionManager;->splitPermissionInfoListToNonParcelableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/permission/PermissionManager;->mSplitPermissionInfos:Ljava/util/List;

    .line 1088
    return-object v1

    .line 1081
    .end local v0    # "parcelableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    :catch_0
    move-exception v0

    .line 1082
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/permission/PermissionManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error getting split permissions"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1083
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 597
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    .line 598
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 597
    invoke-interface {v0, p1, p2, v1}, Landroid/permission/IPermissionManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    nop

    .line 602
    return-void

    .line 599
    :catch_0
    move-exception v0

    .line 600
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist initializeUsageHelper()V
    .locals 2

    .line 1097
    iget-object v0, p0, Landroid/permission/PermissionManager;->mUsageHelper:Landroid/permission/PermissionUsageHelper;

    if-nez v0, :cond_0

    .line 1098
    new-instance v0, Landroid/permission/PermissionUsageHelper;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/permission/PermissionUsageHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/permission/PermissionManager;->mUsageHelper:Landroid/permission/PermissionUsageHelper;

    .line 1100
    :cond_0
    return-void
.end method

.method public blacklist isAutoRevokeExempted(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 906
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/permission/IPermissionManager;->isAutoRevokeExempted(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 907
    :catch_0
    move-exception v0

    .line 908
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;

    .line 553
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 554
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 553
    invoke-interface {v0, p1, p2, v1}, Landroid/permission/IPermissionManager;->isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 555
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isRegisteredAttributionSource(Landroid/content/AttributionSource;)Z
    .locals 2
    .param p1, "source"    # Landroid/content/AttributionSource;

    .line 1461
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-virtual {p1}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/permission/IPermissionManager;->isRegisteredAttributionSource(Landroid/content/AttributionSourceState;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1462
    :catch_0
    move-exception v0

    .line 1463
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1465
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .line 421
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    .line 422
    invoke-interface {v0, p1, p2}, Landroid/permission/IPermissionManager;->queryPermissionsByGroup(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 423
    .local v0, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PermissionInfo;>;"
    if-nez v0, :cond_0

    .line 424
    const/4 v1, 0x0

    return-object v1

    .line 426
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 427
    .end local v0    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PermissionInfo;>;"
    :catch_0
    move-exception v0

    .line 428
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist registerAttributionSource(Landroid/content/AttributionSource;)Landroid/content/AttributionSource;
    .locals 3
    .param p1, "source"    # Landroid/content/AttributionSource;

    .line 1440
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p1, v0}, Landroid/content/AttributionSource;->withToken(Landroid/os/Binder;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 1442
    .local v0, "registeredSource":Landroid/content/AttributionSource;
    :try_start_0
    iget-object v1, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-virtual {v0}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/permission/IPermissionManager;->registerAttributionSource(Landroid/content/AttributionSourceState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1445
    goto :goto_0

    .line 1443
    :catch_0
    move-exception v1

    .line 1444
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1446
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public blacklist removeAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "allowlistFlags"    # I

    .line 880
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 881
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 880
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/permission/IPermissionManager;->removeAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 882
    :catch_0
    move-exception v0

    .line 883
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

    .line 1001
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1002
    :try_start_0
    iget-object v1, p0, Landroid/permission/PermissionManager;->mPermissionListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/permission/IOnPermissionsChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1003
    .local v1, "delegate":Landroid/permission/IOnPermissionsChangeListener;
    if-eqz v1, :cond_0

    .line 1005
    :try_start_1
    iget-object v2, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-interface {v2, v1}, Landroid/permission/IPermissionManager;->removeOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V

    .line 1006
    iget-object v2, p0, Landroid/permission/PermissionManager;->mPermissionListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1009
    goto :goto_0

    .line 1007
    :catch_0
    move-exception v2

    .line 1008
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/permission/PermissionManager;
    .end local p1    # "listener":Landroid/content/pm/PackageManager$OnPermissionsChangedListener;
    throw v3

    .line 1011
    .end local v1    # "delegate":Landroid/permission/IOnPermissionsChangeListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/permission/PermissionManager;
    .restart local p1    # "listener":Landroid/content/pm/PackageManager$OnPermissionsChangedListener;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 1012
    return-void

    .line 1011
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist removePermission(Ljava/lang/String;)V
    .locals 2
    .param p1, "permissionName"    # Ljava/lang/String;

    .line 485
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-interface {v0, p1}, Landroid/permission/IPermissionManager;->removePermission(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    nop

    .line 489
    return-void

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist revokePostNotificationPermissionWithoutKillForTest(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1482
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-interface {v0, p1, p2}, Landroid/permission/IPermissionManager;->revokePostNotificationPermissionWithoutKillForTest(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1486
    goto :goto_0

    .line 1484
    :catch_0
    move-exception v0

    .line 1485
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1487
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "reason"    # Ljava/lang/String;

    .line 635
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    .line 636
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, p2, v1, p4}, Landroid/permission/IPermissionManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    nop

    .line 640
    return-void

    .line 637
    :catch_0
    move-exception v0

    .line 638
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setAutoRevokeExempted(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "exempted"    # Z

    .line 935
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 936
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 935
    invoke-interface {v0, p1, p2, v1}, Landroid/permission/IPermissionManager;->setAutoRevokeExempted(Ljava/lang/String;ZI)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 937
    :catch_0
    move-exception v0

    .line 938
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setRuntimePermissionsVersion(I)V
    .locals 2
    .param p1, "version"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1049
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->setRuntimePermissionsVersion(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1052
    nop

    .line 1053
    return-void

    .line 1050
    :catch_0
    move-exception v0

    .line 1051
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 3
    .param p1, "permissionName"    # Ljava/lang/String;

    .line 956
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 957
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v2, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 958
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 957
    invoke-interface {v1, v0, p1, v2}, Landroid/permission/IPermissionManager;->shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 959
    .end local v0    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 960
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startOneTimePermissionSession(Ljava/lang/String;JII)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "timeoutMillis"    # J
    .param p4, "importanceToResetTimer"    # I
    .param p5, "importanceToKeepSessionAlive"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1325
    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/permission/PermissionManager;->startOneTimePermissionSession(Ljava/lang/String;JJII)V

    .line 1327
    return-void
.end method

.method public whitelist startOneTimePermissionSession(Ljava/lang/String;JJII)V
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "timeoutMillis"    # J
    .param p4, "revokeAfterKilledDelayMillis"    # J
    .param p6, "importanceToResetTimer"    # I
    .param p7, "importanceToKeepSessionAlive"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    move-object v1, p0

    .line 1373
    :try_start_0
    iget-object v2, v1, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v0, v1, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v4

    move-object v3, p1

    move-wide v5, p2

    move-wide v7, p4

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v2 .. v10}, Landroid/permission/IPermissionManager;->startOneTimePermissionSession(Ljava/lang/String;IJJII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1378
    goto :goto_0

    .line 1376
    :catch_0
    move-exception v0

    .line 1377
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1379
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist stopOneTimePermissionSession(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1393
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 1394
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 1393
    invoke-interface {v0, p1, v1}, Landroid/permission/IPermissionManager;->stopOneTimePermissionSession(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1397
    goto :goto_0

    .line 1395
    :catch_0
    move-exception v0

    .line 1396
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1398
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist tearDownUsageHelper()V
    .locals 1

    .line 1108
    iget-object v0, p0, Landroid/permission/PermissionManager;->mUsageHelper:Landroid/permission/PermissionUsageHelper;

    if-eqz v0, :cond_0

    .line 1109
    invoke-virtual {v0}, Landroid/permission/PermissionUsageHelper;->tearDown()V

    .line 1110
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/permission/PermissionManager;->mUsageHelper:Landroid/permission/PermissionUsageHelper;

    .line 1112
    :cond_0
    return-void
.end method

.method public blacklist updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I
    .param p5, "user"    # Landroid/os/UserHandle;

    .line 699
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 700
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    .line 701
    .local v6, "checkAdjustPolicyFlagPermission":Z
    iget-object v1, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    .line 702
    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 701
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v7}, Landroid/permission/IPermissionManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    .end local v6    # "checkAdjustPolicyFlagPermission":Z
    nop

    .line 706
    return-void

    .line 703
    :catch_0
    move-exception v0

    .line 704
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
