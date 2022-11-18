.class public Landroid/content/pm/OplusPackageManager;
.super Ljava/lang/Object;
.source "OplusPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/OplusPackageManager$PackageDeleteObserver;
    }
.end annotation


# static fields
.field public static final whitelist FLAG_APP_DATA_CE:I = 0x2

.field public static final whitelist FLAG_APP_DATA_DE:I = 0x1

.field public static final whitelist FLAG_APP_DATA_EXTERNAL_DATA:I = 0x10

.field public static final whitelist FLAG_APP_DATA_EXTERNAL_MEDIA:I = 0x20

.field public static final whitelist FLAG_APP_DATA_EXTERNAL_OBB:I = 0x40

.field public static final blacklist INSTALL_FROM_OPLUS_ADB_INSTALLER:I = 0x10000000

.field public static final blacklist INSTALL_SPEED_BACKGROUND:I = -0x80000000

.field public static final blacklist INSTALL_SPEED_CPU_HIGH:I = 0x40000000

.field public static final blacklist INSTALL_SPEED_CPU_MID:I = 0x20000000

.field private static final blacklist IOplusPackageManagerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/content/pm/IOplusPackageManager;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist MATCH_OPLUS_FREEZE_APP:I = 0x40000000

.field public static final whitelist OPLUS_DONT_KILL_APP:I = 0x10000000

.field public static final whitelist OPLUS_FREEZE_FLAG_AUTO:I = 0x2

.field public static final whitelist OPLUS_FREEZE_FLAG_MANUAL:I = 0x1

.field public static final whitelist OPLUS_UNFREEZE_FLAG_NORMAL:I = 0x1

.field public static final whitelist OPLUS_UNFREEZE_FLAG_TEMP:I = 0x2

.field public static final whitelist RE_INSTALL_DUPLICATE_PERMISSION:I = 0x1

.field public static final whitelist STATE_OPLUS_FREEZE_FREEZED:I = 0x2

.field public static final whitelist STATE_OPLUS_FREEZE_NORMAL:I = 0x0

.field public static final whitelist STATE_OPLUS_FREEZE_TEMP_UNFREEZED:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "OplusPackageManager"

.field private static blacklist mActivityIconsCache:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist mAppIconsCache:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist mIconCacheDirty:Z = false

.field private static blacklist mOplusPackageManager:Landroid/content/pm/OplusPackageManager; = null

.field private static final blacklist sDefaultFlags:I = 0x400


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mPackageDeleleteObserver:Landroid/content/pm/OplusPackageManager$PackageDeleteObserver;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetmActivityIconsCache()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Landroid/content/pm/OplusPackageManager;->mActivityIconsCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmAppIconsCache()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Landroid/content/pm/OplusPackageManager;->mAppIconsCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputmIconCacheDirty(Z)V
    .locals 0

    sput-boolean p0, Landroid/content/pm/OplusPackageManager;->mIconCacheDirty:Z

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Landroid/content/pm/OplusPackageManager$1;

    invoke-direct {v0}, Landroid/content/pm/OplusPackageManager$1;-><init>()V

    sput-object v0, Landroid/content/pm/OplusPackageManager;->IOplusPackageManagerSingleton:Landroid/util/Singleton;

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/pm/OplusPackageManager;->mAppIconsCache:Ljava/util/HashMap;

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/pm/OplusPackageManager;->mActivityIconsCache:Ljava/util/HashMap;

    .line 159
    const/4 v0, 0x0

    sput-boolean v0, Landroid/content/pm/OplusPackageManager;->mIconCacheDirty:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    new-instance v0, Landroid/content/pm/OplusPackageManager$PackageDeleteObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/content/pm/OplusPackageManager$PackageDeleteObserver;-><init>(Landroid/content/pm/OplusPackageManager;Landroid/content/pm/OplusPackageManager$PackageDeleteObserver-IA;)V

    iput-object v0, p0, Landroid/content/pm/OplusPackageManager;->mPackageDeleleteObserver:Landroid/content/pm/OplusPackageManager$PackageDeleteObserver;

    .line 175
    iput-object v1, p0, Landroid/content/pm/OplusPackageManager;->mContext:Landroid/content/Context;

    .line 177
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    new-instance v0, Landroid/content/pm/OplusPackageManager$PackageDeleteObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/content/pm/OplusPackageManager$PackageDeleteObserver;-><init>(Landroid/content/pm/OplusPackageManager;Landroid/content/pm/OplusPackageManager$PackageDeleteObserver-IA;)V

    iput-object v0, p0, Landroid/content/pm/OplusPackageManager;->mPackageDeleleteObserver:Landroid/content/pm/OplusPackageManager$PackageDeleteObserver;

    .line 169
    iput-object p1, p0, Landroid/content/pm/OplusPackageManager;->mContext:Landroid/content/Context;

    .line 171
    return-void
.end method

.method public static whitelist appDetailsForwardToMarket(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p0, "type"    # I
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 1151
    :try_start_0
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1152
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/pm/IOplusPackageManager;->appDetailsForwardToMarket(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 1154
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string v1, "appDetailsForwardToMarket failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1156
    const/4 v0, 0x0

    return-object v0

    .line 1157
    :catch_0
    move-exception v0

    .line 1158
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static whitelist getOplusPackageManager(Landroid/content/Context;)Landroid/content/pm/OplusPackageManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 180
    sget-object v0, Landroid/content/pm/OplusPackageManager;->mOplusPackageManager:Landroid/content/pm/OplusPackageManager;

    if-eqz v0, :cond_0

    .line 181
    return-object v0

    .line 183
    :cond_0
    new-instance v0, Landroid/content/pm/OplusPackageManager;

    invoke-direct {v0, p0}, Landroid/content/pm/OplusPackageManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/content/pm/OplusPackageManager;->mOplusPackageManager:Landroid/content/pm/OplusPackageManager;

    .line 184
    return-object v0
.end method

.method private static blacklist getService()Landroid/content/pm/IOplusPackageManager;
    .locals 1

    .line 63
    sget-object v0, Landroid/content/pm/OplusPackageManager;->IOplusPackageManagerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/IOplusPackageManager;

    return-object v0
.end method

.method public static whitelist markResolveIntentForMarket(Ljava/lang/String;)Z
    .locals 2
    .param p0, "token"    # Ljava/lang/String;

    .line 1171
    :try_start_0
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1172
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/pm/IOplusPackageManager;->markResolveIntentForMarket(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1174
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string/jumbo v1, "markResolveIntentForMarket failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1176
    const/4 v0, 0x0

    return v0

    .line 1177
    :catch_0
    move-exception v0

    .line 1178
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public whitelist checkEMMApkRuntimePermission(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "cn"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 606
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 607
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 608
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Package name is null"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 610
    :cond_0
    const-string v1, "Peimission Denized. Deprecated API"

    .line 611
    .local v1, "ret":Ljava/lang/String;
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist deletePackageDelegated(Ljava/lang/String;IIIILandroid/content/pm/IPackageDeleteObserver;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callUid"    # I
    .param p3, "callPid"    # I
    .param p4, "flags"    # I
    .param p5, "userId"    # I
    .param p6, "observer"    # Landroid/content/pm/IPackageDeleteObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 768
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 769
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/content/pm/IOplusPackageManager;->deletePackageDelegated(Ljava/lang/String;IIIILandroid/content/pm/IPackageDeleteObserver;)V

    goto :goto_0

    .line 771
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string v1, "deletePackageDelegated failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :goto_0
    return-void
.end method

.method public whitelist disableFeature(Ljava/lang/String;)Z
    .locals 2
    .param p1, "featureName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1017
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1018
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IOplusPackageManager;->disableFeature(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1020
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string v1, "disableFeature failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist disableFeatureMap(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "featureID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1041
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1042
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IOplusPackageManager;->disableFeatureMap(Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 1044
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string v1, "disableFeature failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dynamicDetectApp(Lcom/oplus/app/OplusAppDynamicFeatureData;)V
    .locals 2
    .param p1, "featureData"    # Lcom/oplus/app/OplusAppDynamicFeatureData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 695
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 696
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IOplusPackageManager;->dynamicDetectApp(Lcom/oplus/app/OplusAppDynamicFeatureData;)V

    goto :goto_0

    .line 698
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string v1, "dynamicDetectApp failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :goto_0
    return-void
.end method

.method public whitelist enableFeature(Ljava/lang/String;)Z
    .locals 2
    .param p1, "featureName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1008
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1009
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IOplusPackageManager;->enableFeature(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1011
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string v1, "enableFeature failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableFeatureMap(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "featureID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1029
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1030
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IOplusPackageManager;->enableFeatureMap(Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 1032
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string v1, "enableFeature failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist fixupAppData(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 799
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/OplusPackageManager;->fixupAppData(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public whitelist fixupAppData(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "relativePath"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 804
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 806
    :try_start_0
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IOplusPackageManager;->fixupAppData(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 807
    :catch_0
    move-exception v0

    .line 808
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 811
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string v1, "fixupAppData failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAbiCheckResult(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1189
    :try_start_0
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1190
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IOplusPackageManager;->getAbiCheckResult(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1192
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string v1, "getAbiCheckResult failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1194
    const/4 v0, -0x1

    return v0

    .line 1195
    :catch_0
    move-exception v0

    .line 1196
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getActivityIconCache(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 532
    iget-object v0, p0, Landroid/content/pm/OplusPackageManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 533
    const-string v0, "OplusPackageManager"

    const-string v1, "App must create OplusPackageManager with context parameter when using this method"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const/4 v0, 0x0

    return-object v0

    .line 550
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/OplusPackageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getActivityIconsCache(Landroid/content/pm/IPackageDeleteObserver;)Ljava/util/Map;
    .locals 2
    .param p1, "observer"    # Landroid/content/pm/IPackageDeleteObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 222
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IOplusPackageManager;->getActivityIconsCache(Landroid/content/pm/IPackageDeleteObserver;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 225
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string v1, "getActivityIconsCache failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getAppIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IOplusPackageManager;->getAppIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 206
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string v1, "getAppIconBitmap failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getAppIconsCache(Z)Ljava/util/Map;
    .locals 2
    .param p1, "compress"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IOplusPackageManager;->getAppIconsCache(Z)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 215
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string v1, "getAppIconsCache failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getAppListFromPartition(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "partition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 754
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 755
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IOplusPackageManager;->getAppListFromPartition(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 757
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string v1, "getAppListFromPartition failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getApplicationIconCache(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 412
    iget-object v0, p0, Landroid/content/pm/OplusPackageManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 413
    const-string v0, "OplusPackageManager"

    const-string v1, "App must create OplusPackageManager with context parameter when using this method"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/4 v0, 0x0

    return-object v0

    .line 428
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getApplicationIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 434
    iget-object v0, p0, Landroid/content/pm/OplusPackageManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 435
    const-string v0, "OplusPackageManager"

    const-string v1, "App must create OplusPackageManager with context parameter when using this method"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/4 v0, 0x0

    return-object v0

    .line 450
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/OplusPackageManager;->mContext:Landroid/content/Context;

    .line 451
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x400

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 450
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getApplicationIconCacheAll(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 391
    iget-object v0, p0, Landroid/content/pm/OplusPackageManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 392
    const-string v0, "OplusPackageManager"

    const-string v1, "App must create OplusPackageManager with context parameter when using this method"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v0, 0x0

    return-object v0

    .line 407
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getApplicationIconCacheOrignal(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 456
    iget-object v0, p0, Landroid/content/pm/OplusPackageManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 457
    const-string v0, "OplusPackageManager"

    const-string v1, "App must create OplusPackageManager with context parameter when using this method"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/4 v0, 0x0

    return-object v0

    .line 472
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getApplicationIconCacheOrignal(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 478
    iget-object v0, p0, Landroid/content/pm/OplusPackageManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 479
    const-string v0, "OplusPackageManager"

    const-string v1, "App must create OplusPackageManager with context parameter when using this method"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const/4 v0, 0x0

    return-object v0

    .line 494
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/OplusPackageManager;->mContext:Landroid/content/Context;

    .line 495
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x400

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 494
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCptListByType(I)Ljava/util/List;
    .locals 2
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 629
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 630
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IOplusPackageManager;->getCptListByType(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 632
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string v1, "getCptListByType failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCustomizeDefaultApp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "roleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 883
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 884
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IOplusPackageManager;->getCustomizeDefaultApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 886
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string v1, "getCustomizeDefaultApp failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDetectAppList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 712
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 713
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/IOplusPackageManager;->getDetectAppList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 715
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string v1, "getDetectAppList failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getFreezedApplicationList(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 969
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    const-string v1, "OplusPackageManager"

    if-eqz v0, :cond_0

    .line 971
    :try_start_0
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IOplusPackageManager;->getFreezedApplicationList(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 972
    :catch_0
    move-exception v0

    .line 973
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "getFreezedApplicationList failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 976
    :cond_0
    const-string v0, "getFreezedApplicationList failed because service has not been created"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getIconPackList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 679
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    const-string v1, "OplusPackageManager"

    if-eqz v0, :cond_0

    .line 681
    :try_start_0
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/IOplusPackageManager;->getIconPackList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 682
    :catch_0
    move-exception v0

    .line 683
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "getIconPackList failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 686
    :cond_0
    const-string v0, "getIconPackList failed because service has not been created"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInterceptRuleInfos()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/content/OplusRuleInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 368
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 369
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/IOplusPackageManager;->getInterceptRuleInfos()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 371
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string v1, "getInterceptRuleInfos failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getMigMappingPkgName(ZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "findOldNameByNew"    # Z
    .param p2, "refPkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 818
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    const-string v1, "OplusPackageManager"

    if-eqz v0, :cond_0

    .line 820
    :try_start_0
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IOplusPackageManager;->getMigMappingPkgName(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 821
    :catch_0
    move-exception v0

    .line 822
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "getMigMappingPkgName failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 825
    :cond_0
    const-string v0, "getMigMappingPkgName failed because service has not been created"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getNotInstalledSystemApps()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 736
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 737
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/IOplusPackageManager;->getNotInstalledSystemApps()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 739
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string v1, "getNotInstalledSystemApps failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getOplusFreezePackageState(Ljava/lang/String;I)I
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 264
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IOplusPackageManager;->getOplusFreezePackageState(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 267
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string v1, "getOplusFreezePackageState failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getOplusFreezedPackageList(I)Ljava/util/List;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 282
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IOplusPackageManager;->getOplusFreezedPackageList(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 285
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string v1, "getOplusFreezedPackageList failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getOplusPackageFreezeFlag(Ljava/lang/String;I)I
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IOplusPackageManager;->getOplusPackageFreezeFlag(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 294
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string v1, "getOplusPackageFreezeFlag failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getOplusSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 306
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/IOplusPackageManager;->getOplusSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v0

    return-object v0

    .line 309
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string v1, "getOplusSystemAvailableFeatures failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getPackageFreezeState(Ljava/lang/String;Landroid/os/UserHandle;)I
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 919
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    const-string v1, "OplusPackageManager"

    if-eqz v0, :cond_0

    .line 921
    :try_start_0
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IOplusPackageManager;->getPackageFreezeState(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 922
    :catch_0
    move-exception v0

    .line 923
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "getPackageFreezeState failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 926
    :cond_0
    const-string v0, "getPackageFreezeState failed because service has not been created"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getPackageFreezeUserSetting(Ljava/lang/String;Landroid/os/UserHandle;)I
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 932
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    const-string v1, "OplusPackageManager"

    if-eqz v0, :cond_0

    .line 934
    :try_start_0
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IOplusPackageManager;->getPackageFreezeUserSetting(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 935
    :catch_0
    move-exception v0

    .line 936
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "getPackageFreezeUserSetting failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 939
    :cond_0
    const-string v0, "getPackageFreezeUserSetting failed because service has not been created"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getRemovableAppInfo(Ljava/lang/String;)Lcom/oplus/content/OplusRemovableAppInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 584
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 585
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IOplusPackageManager;->getRemovableAppInfo(Ljava/lang/String;)Lcom/oplus/content/OplusRemovableAppInfo;

    move-result-object v0

    return-object v0

    .line 587
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string v1, "getRemovableAppInfo failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRemovableAppInfos()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/content/OplusRemovableAppInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 575
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 576
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/IOplusPackageManager;->getRemovableAppInfos()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 578
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string v1, "getRemovableAppInfos failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRemovableAppList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 557
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 558
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/IOplusPackageManager;->getRemovableAppList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 560
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string v1, "getRemovableAppList failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRemovedAppInfos()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/content/OplusRemovableAppInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 566
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 567
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/IOplusPackageManager;->getRemovedAppInfos()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 569
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string v1, "getRemovedAppInfos failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSystemUpdateInfo()Lcom/oplus/ota/OplusSystemUpdateInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 786
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 787
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/IOplusPackageManager;->getSystemUpdateInfo()Lcom/oplus/ota/OplusSystemUpdateInfo;

    move-result-object v0

    return-object v0

    .line 789
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string v1, "getSystemUpdateInfo failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getUninstallableAppConfig(I)Ljava/util/List;
    .locals 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 834
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    const-string v1, "OplusPackageManager"

    if-eqz v0, :cond_0

    .line 836
    :try_start_0
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IOplusPackageManager;->getUninstallableAppConfig(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 837
    :catch_0
    move-exception v0

    .line 838
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "getUninstallableAppConfig failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 841
    :cond_0
    const-string v0, "getUninstallableAppConfig failed because service has not been created"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getUserSettingFreezeableApplicationList(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 982
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    const-string v1, "OplusPackageManager"

    if-eqz v0, :cond_0

    .line 984
    :try_start_0
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IOplusPackageManager;->getUserSettingFreezeableApplicationList(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 985
    :catch_0
    move-exception v0

    .line 986
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "getUserSettingFreezeableApplicationList failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 989
    :cond_0
    const-string v0, "getUserSettingFreezeableApplicationList failed because service has not been created"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getValidAppList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 745
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 746
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/IOplusPackageManager;->getValidAppList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 748
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string v1, "getValidAppList failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hasFeatureIPC(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "featureID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 999
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1000
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IOplusPackageManager;->hasFeatureIPC(Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 1002
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string v1, "hasFeature failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist inCptWhiteList(ILjava/lang/String;)Z
    .locals 3
    .param p1, "type"    # I
    .param p2, "verifyStr"    # Ljava/lang/String;

    .line 643
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    const-string v1, "OplusPackageManager"

    if-eqz v0, :cond_0

    .line 645
    :try_start_0
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IOplusPackageManager;->inCptWhiteList(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 646
    :catch_0
    move-exception v0

    .line 647
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "inCptWhiteList failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 650
    :cond_0
    const-string v0, "inCptWhiteList failed because service has not been created"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist inOplusFreezePackageList(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 273
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IOplusPackageManager;->inOplusFreezePackageList(Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 276
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string v1, "inOplusFreezePackageList failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist inOplusStandardWhiteList(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 2
    .param p1, "filterName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "verifyStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 656
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 657
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IOplusPackageManager;->inOplusStandardWhiteList(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0

    .line 659
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string v1, "inOplusStandardWhiteList failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist inPmsWhiteList(ILjava/lang/String;Ljava/util/List;)Z
    .locals 3
    .param p1, "type"    # I
    .param p2, "verifyStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 336
    .local p3, "defaultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    const-string v1, "OplusPackageManager"

    if-eqz v0, :cond_0

    .line 338
    :try_start_0
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IOplusPackageManager;->inPmsWhiteList(ILjava/lang/String;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "inPmsWhiteList failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 343
    :cond_0
    const-string v0, "inPmsWhiteList failed because service has not been created"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist inUninstallableAppConfig(ILjava/lang/String;)Z
    .locals 4
    .param p1, "type"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 847
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 848
    return v1

    .line 850
    :cond_0
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    const-string v2, "OplusPackageManager"

    if-eqz v0, :cond_1

    .line 852
    :try_start_0
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IOplusPackageManager;->inUninstallableAppConfig(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 853
    :catch_0
    move-exception v0

    .line 854
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "inUninstallableAppConfig failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 857
    :cond_1
    const-string v0, "inUninstallableAppConfig failed because service has not been created"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :goto_0
    return v1
.end method

.method public whitelist isClosedSuperFirewall()Z
    .locals 3

    .line 188
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    const-string v1, "OplusPackageManager"

    if-eqz v0, :cond_0

    .line 190
    :try_start_0
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/IOplusPackageManager;->isClosedSuperFirewall()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "isClosedSuperFirewall failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 195
    :cond_0
    const-string v0, "isClosedSuperFirewall failed because service has not been created"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isCrossVersionUpdate()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 724
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 725
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/IOplusPackageManager;->isCrossVersionUpdate()Z

    move-result v0

    return v0

    .line 727
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string v1, "isCrossVersionUpdate failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isDetectApp(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 703
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 704
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IOplusPackageManager;->isDetectApp(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 706
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string v1, "isDetectApp failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isFreezeEnabled()Z
    .locals 3

    .line 894
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    const-string v1, "OplusPackageManager"

    if-eqz v0, :cond_0

    .line 896
    :try_start_0
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/IOplusPackageManager;->isFreezeEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 897
    :catch_0
    move-exception v0

    .line 898
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "isFreezeEnabled failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 901
    :cond_0
    const-string v0, "isFreezeEnabled failed because service has not been created"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isFullFunctionMode()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 381
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 382
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/IOplusPackageManager;->isClosedSuperFirewall()Z

    move-result v0

    return v0

    .line 384
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string v1, "isFullFunctionMode failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isSecurePayApp(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 315
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 316
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IOplusPackageManager;->isSecurePayApp(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 318
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string v1, "isSecurePayApp failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isSupportSessionWrite()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 617
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 618
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/IOplusPackageManager;->isSupportSessionWrite()Z

    move-result v0

    return v0

    .line 620
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string v1, "isSupportSessionWrite failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isSystemDataApp(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 324
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 325
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IOplusPackageManager;->isSystemDataApp(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 327
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string v1, "isSystemDataApp failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist loadRegionFeature(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 301
    const-string v0, "OplusPackageManager"

    const-string v1, "loadRegionFeature failed because no longer used"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notifyFeaturesMapUpdate(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "actionValue"    # Ljava/lang/String;
    .param p3, "featureID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1061
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1062
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IOplusPackageManager;->notifyFeaturesMapUpdate(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 1064
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string/jumbo v1, "notifyFeaturesMapUpdate failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    :goto_0
    return-void
.end method

.method public whitelist notifyFeaturesUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "actionValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1050
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1051
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IOplusPackageManager;->notifyFeaturesUpdate(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1053
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string/jumbo v1, "notifyFeaturesUpdate failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    :goto_0
    return-void
.end method

.method public whitelist oplusFreezePackage(Ljava/lang/String;IIILjava/lang/String;)I
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "freezeFlag"    # I
    .param p4, "flag"    # I
    .param p5, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 246
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IOplusPackageManager;->oplusFreezePackage(Ljava/lang/String;IIILjava/lang/String;)I

    move-result v0

    return v0

    .line 249
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string/jumbo v1, "oplusFreezePackage failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist oplusUnFreezePackage(Ljava/lang/String;IIILjava/lang/String;)I
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "freezeFlag"    # I
    .param p4, "flag"    # I
    .param p5, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IOplusPackageManager;->oplusUnFreezePackage(Ljava/lang/String;IIILjava/lang/String;)I

    move-result v0

    return v0

    .line 258
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string/jumbo v1, "oplusUnFreezePackage failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist prohibitChildInstallation(IZ)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "isInstall"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IOplusPackageManager;->prohibitChildInstallation(IZ)Z

    move-result v0

    return v0

    .line 237
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string/jumbo v1, "prohibitChildInstallation failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist queryIncompatibleApplist()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1205
    :try_start_0
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1206
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/IOplusPackageManager;->queryIncompatibleApplist()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1208
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string/jumbo v1, "queryIncompatibleApplist failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1211
    :catch_0
    move-exception v0

    .line 1212
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist registerFeatureActionObserverInner(Lcom/oplus/content/IOplusFeatureActionObserver;)Z
    .locals 2
    .param p1, "observer"    # Lcom/oplus/content/IOplusFeatureActionObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1120
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1121
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IOplusPackageManager;->registerFeatureActionObserverInner(Lcom/oplus/content/IOplusFeatureActionObserver;)Z

    move-result v0

    return v0

    .line 1123
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string/jumbo v1, "registerFeatureActionObserverInner failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerFeatureMapObserverInner(Ljava/util/List;ILcom/oplus/content/IOplusFeatureMapObserver;)Z
    .locals 2
    .param p2, "featureID"    # I
    .param p3, "observer"    # Lcom/oplus/content/IOplusFeatureMapObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/oplus/content/IOplusFeatureMapObserver;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1096
    .local p1, "featureList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1097
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IOplusPackageManager;->registerFeatureMapObserverInner(Ljava/util/List;ILcom/oplus/content/IOplusFeatureMapObserver;)Z

    move-result v0

    return v0

    .line 1099
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string/jumbo v1, "registerFeatureObserverInner failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerFeatureObserverInner(Ljava/util/List;Lcom/oplus/content/IOplusFeatureObserver;)Z
    .locals 2
    .param p2, "observer"    # Lcom/oplus/content/IOplusFeatureObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/oplus/content/IOplusFeatureObserver;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1072
    .local p1, "features":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1073
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IOplusPackageManager;->registerFeatureObserverInner(Ljava/util/List;Lcom/oplus/content/IOplusFeatureObserver;)Z

    move-result v0

    return v0

    .line 1075
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string/jumbo v1, "registerFeatureObserverInner failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist removeCustomizeDefaultApp(Ljava/lang/String;)V
    .locals 2
    .param p1, "roleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 875
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 876
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IOplusPackageManager;->removeCustomizeDefaultApp(Ljava/lang/String;)V

    goto :goto_0

    .line 878
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string/jumbo v1, "removeCustomizeDefaultApp failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :goto_0
    return-void
.end method

.method public whitelist restoreRemovableApp(Ljava/lang/String;Landroid/content/IntentSender;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "sender"    # Landroid/content/IntentSender;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 593
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 594
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IOplusPackageManager;->restoreRemovableApp(Ljava/lang/String;Landroid/content/IntentSender;Landroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 596
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string/jumbo v1, "restoreRemovableApp failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist sendCptUpload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "point"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 638
    const-string v0, "OplusPackageManager"

    const-string/jumbo v1, "sendCptUpload failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    return-void
.end method

.method public whitelist sendMapCommonDcsUpload(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "eventId"    # Ljava/lang/String;
    .param p3, "map"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 668
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 669
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IOplusPackageManager;->sendMapCommonDcsUpload(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 671
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string/jumbo v1, "sendMapCommonDcsUpload failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :goto_0
    return-void
.end method

.method public whitelist setCustomizeDefaultApp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 866
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 867
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IOplusPackageManager;->setCustomizeDefaultApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 869
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string/jumbo v1, "setCustomizeDefaultApp failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setFreezeEnable(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 907
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    const-string v1, "OplusPackageManager"

    if-eqz v0, :cond_0

    .line 909
    :try_start_0
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IOplusPackageManager;->setFreezeEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 910
    :catch_0
    move-exception v0

    .line 911
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "setFreezeEnable failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 914
    :cond_0
    const-string/jumbo v0, "setFreezeEnable failed because service has not been created"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :goto_1
    return-void
.end method

.method public blacklist setInterceptRuleInfos(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/content/OplusRuleInfo;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 356
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/content/OplusRuleInfo;>;"
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 357
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IOplusPackageManager;->setInterceptRuleInfos(Ljava/util/List;)Z

    move-result v0

    return v0

    .line 359
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string/jumbo v1, "setInterceptRuleInfos failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setPackageFreezeState(Ljava/lang/String;ILandroid/os/UserHandle;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .line 945
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    const-string v1, "OplusPackageManager"

    if-eqz v0, :cond_0

    .line 947
    :try_start_0
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IOplusPackageManager;->setPackageFreezeState(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 948
    :catch_0
    move-exception v0

    .line 949
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "setPackageFreezeState failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 952
    :cond_0
    const-string/jumbo v0, "setPackageFreezeState failed because service has not been created"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :goto_1
    return-void
.end method

.method public whitelist setPackageFreezeUserSetting(Ljava/lang/String;ILandroid/os/UserHandle;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "setting"    # I
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .line 957
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    const-string v1, "OplusPackageManager"

    if-eqz v0, :cond_0

    .line 959
    :try_start_0
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IOplusPackageManager;->setPackageFreezeUserSetting(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 960
    :catch_0
    move-exception v0

    .line 961
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "setPackageFreezeUserSetting failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 964
    :cond_0
    const-string/jumbo v0, "setPackageFreezeUserSetting failed because service has not been created"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    :goto_1
    return-void
.end method

.method public blacklist unregisterFeatureActionObserverInner(Lcom/oplus/content/IOplusFeatureActionObserver;)Z
    .locals 2
    .param p1, "observer"    # Lcom/oplus/content/IOplusFeatureActionObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1132
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1133
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IOplusPackageManager;->unregisterFeatureActionObserverInner(Lcom/oplus/content/IOplusFeatureActionObserver;)Z

    move-result v0

    return v0

    .line 1135
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string/jumbo v1, "unregisterFeatureActionObserverInner failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterFeatureMapObserverInner(ILcom/oplus/content/IOplusFeatureMapObserver;)Z
    .locals 2
    .param p1, "featureID"    # I
    .param p2, "observer"    # Lcom/oplus/content/IOplusFeatureMapObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1108
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1109
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IOplusPackageManager;->unregisterFeatureMapObserverInner(ILcom/oplus/content/IOplusFeatureMapObserver;)Z

    move-result v0

    return v0

    .line 1111
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string/jumbo v1, "unregisterFeatureObserverInner failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterFeatureObserverInner(Lcom/oplus/content/IOplusFeatureObserver;)Z
    .locals 2
    .param p1, "observer"    # Lcom/oplus/content/IOplusFeatureObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1084
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1085
    invoke-static {}, Landroid/content/pm/OplusPackageManager;->getService()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IOplusPackageManager;->unregisterFeatureObserverInner(Lcom/oplus/content/IOplusFeatureObserver;)Z

    move-result v0

    return v0

    .line 1087
    :cond_0
    const-string v0, "OplusPackageManager"

    const-string/jumbo v1, "unregisterFeatureObserverInner failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    const/4 v0, 0x0

    return v0
.end method
