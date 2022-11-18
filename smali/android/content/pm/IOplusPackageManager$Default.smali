.class public Landroid/content/pm/IOplusPackageManager$Default;
.super Ljava/lang/Object;
.source "IOplusPackageManager.java"

# interfaces
.implements Landroid/content/pm/IOplusPackageManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IOplusPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist appDetailsForwardToMarket(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "type"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 386
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 408
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist deletePackageDelegated(Ljava/lang/String;IIIILandroid/content/pm/IPackageDeleteObserver;)V
    .locals 0
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

    .line 224
    return-void
.end method

.method public blacklist disableFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "featureName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 330
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist disableFeatureMap(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "featureID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dynamicDetectApp(Lcom/oplus/app/OplusAppDynamicFeatureData;)V
    .locals 0
    .param p1, "featureData"    # Lcom/oplus/app/OplusAppDynamicFeatureData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    return-void
.end method

.method public blacklist enableFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "featureName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableFeatureMap(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "featureID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 336
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist fixupAppData(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "relativePath"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAbiCheckResult(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 399
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getActivityIconsCache(Landroid/content/pm/IPackageDeleteObserver;)Ljava/util/Map;
    .locals 1
    .param p1, "observer"    # Landroid/content/pm/IPackageDeleteObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getAppIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getAppIconsCache(Z)Ljava/util/Map;
    .locals 1
    .param p1, "compress"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAppListFromPartition(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    .line 216
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCptListByType(I)Ljava/util/List;
    .locals 1
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

    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCustomizeDefaultApp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "roleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 248
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDetectAppList()Ljava/util/List;
    .locals 1
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

    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFreezedApplicationList(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 308
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getIconPackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInterceptRuleInfos()Ljava/util/List;
    .locals 1
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

    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMigMappingPkgName(ZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "findOldNameByNew"    # Z
    .param p2, "refPkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNotInstalledSystemApps()Ljava/util/List;
    .locals 1
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

    .line 206
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getOplusFreezePackageState(Ljava/lang/String;I)I
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getOplusFreezedPackageList(I)Ljava/util/List;
    .locals 1
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

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getOplusPackageFreezeFlag(Ljava/lang/String;I)I
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getOplusSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPackageFreezeState(Ljava/lang/String;Landroid/os/UserHandle;)I
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPackageFreezeUserSetting(Ljava/lang/String;Landroid/os/UserHandle;)I
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRemovableAppInfo(Ljava/lang/String;)Lcom/oplus/content/OplusRemovableAppInfo;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRemovableAppInfos()Ljava/util/List;
    .locals 1
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

    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRemovableAppList()Ljava/util/List;
    .locals 1
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

    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRemovedAppInfos()Ljava/util/List;
    .locals 1
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

    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSystemUpdateInfo()Lcom/oplus/ota/OplusSystemUpdateInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 231
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUninstallableAppConfig(I)Ljava/util/List;
    .locals 1
    .param p1, "type"    # I
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

    .line 269
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUserSettingFreezeableApplicationList(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 313
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getValidAppList()Ljava/util/List;
    .locals 1
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

    .line 211
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hasFeatureIPC(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "featureID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist inCptWhiteList(ILjava/lang/String;)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "verifyStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist inOplusFreezePackageList(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist inOplusStandardWhiteList(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 1
    .param p1, "filterName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "verifyStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist inPmsWhiteList(ILjava/lang/String;Ljava/util/List;)Z
    .locals 1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    .local p3, "defaultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist inUninstallableAppConfig(ILjava/lang/String;)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isClosedSuperFirewall()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCrossVersionUpdate()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDetectApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isFreezeEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isSecurePayApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSupportSessionWrite()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isSystemDataApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist markResolveIntentForMarket(Ljava/lang/String;)Z
    .locals 1
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 391
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notifyFeaturesMapUpdate(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "actionValue"    # Ljava/lang/String;
    .param p3, "featureID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 350
    return-void
.end method

.method public blacklist notifyFeaturesUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "actionValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 346
    return-void
.end method

.method public whitelist oplusFreezePackage(Ljava/lang/String;IIILjava/lang/String;)I
    .locals 1
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

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist oplusUnFreezePackage(Ljava/lang/String;IIILjava/lang/String;)I
    .locals 1
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

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist prohibitChildInstallation(IZ)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "isInstall"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist queryIncompatibleApplist()Ljava/util/List;
    .locals 1
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

    .line 404
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist registerFeatureActionObserverInner(Lcom/oplus/content/IOplusFeatureActionObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/content/IOplusFeatureActionObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerFeatureMapObserverInner(Ljava/util/List;ILcom/oplus/content/IOplusFeatureMapObserver;)Z
    .locals 1
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

    .line 364
    .local p1, "featureList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerFeatureObserverInner(Ljava/util/List;Lcom/oplus/content/IOplusFeatureObserver;)Z
    .locals 1
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

    .line 354
    .local p1, "features":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeCustomizeDefaultApp(Ljava/lang/String;)V
    .locals 0
    .param p1, "roleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 244
    return-void
.end method

.method public blacklist restoreRemovableApp(Ljava/lang/String;Landroid/content/IntentSender;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "sender"    # Landroid/content/IntentSender;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist sendMapCommonDcsUpload(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "eventId"    # Ljava/lang/String;
    .param p3, "map"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    return-void
.end method

.method public blacklist setCustomizeDefaultApp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setFreezeEnable(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 286
    return-void
.end method

.method public blacklist setInterceptRuleInfos(Ljava/util/List;)Z
    .locals 1
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

    .line 99
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/content/OplusRuleInfo;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setPackageFreezeState(Ljava/lang/String;ILandroid/os/UserHandle;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 300
    return-void
.end method

.method public blacklist setPackageFreezeUserSetting(Ljava/lang/String;ILandroid/os/UserHandle;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "setting"    # I
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 304
    return-void
.end method

.method public blacklist unregisterFeatureActionObserverInner(Lcom/oplus/content/IOplusFeatureActionObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/content/IOplusFeatureActionObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 379
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterFeatureMapObserverInner(ILcom/oplus/content/IOplusFeatureMapObserver;)Z
    .locals 1
    .param p1, "featureID"    # I
    .param p2, "observer"    # Lcom/oplus/content/IOplusFeatureMapObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 369
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterFeatureObserverInner(Lcom/oplus/content/IOplusFeatureObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/content/IOplusFeatureObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 359
    const/4 v0, 0x0

    return v0
.end method
