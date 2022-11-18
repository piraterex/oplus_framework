.class public interface abstract Landroid/app/IApplicationPackageManagerExt;
.super Ljava/lang/Object;
.source "IApplicationPackageManagerExt.java"

# interfaces
.implements Landroid/content/pm/IPackageManagerExt;


# virtual methods
.method public blacklist arePermissionsIndividuallyControlledOverrideTrue()Z
    .locals 1

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist beforeGetInstalledPackagesOrApplications()V
    .locals 0

    .line 74
    return-void
.end method

.method public blacklist checkAndLogMultiApp(ZLandroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "print"    # Z
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "name"    # Ljava/lang/Object;
    .param p4, "tag"    # Ljava/lang/String;

    .line 151
    return-void
.end method

.method public blacklist checkEMMApkRuntimePermission(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "cn"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 146
    return-void
.end method

.method public blacklist getActivityIconCache(Landroid/content/ComponentName;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "manager"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 187
    const/16 v0, 0x400

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getActivityIconsCache(Landroid/content/pm/IPackageDeleteObserver;)Ljava/util/Map;
    .locals 1
    .param p1, "observer"    # Landroid/content/pm/IPackageDeleteObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/IPackageDeleteObserver;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0
.end method

.method public blacklist getAppIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAppIconsCache(Z)Ljava/util/Map;
    .locals 1
    .param p1, "compress"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0
.end method

.method public blacklist getApplicationIconCache(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "manager"    # Landroid/content/pm/PackageManager;

    .line 172
    invoke-virtual {p1, p2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getApplicationIconCache(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "manager"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 179
    const/16 v0, 0x400

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getApplicationIconCacheAll(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "manager"    # Landroid/content/pm/PackageManager;

    .line 169
    invoke-virtual {p1, p2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getApplicationIconCacheOrignal(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "manager"    # Landroid/content/pm/PackageManager;

    .line 175
    invoke-virtual {p1, p2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getApplicationIconCacheOrignal(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "manager"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 183
    const/16 v0, 0x400

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDefaultActivityIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInstalledApplicationsAsUserExt(Landroid/content/pm/ParceledListSlice;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 70
    .local p1, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInstalledPackagesAsUserExt(Landroid/content/pm/ParceledListSlice;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 66
    .local p1, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMultiAppUserBadgeId(Landroid/os/UserHandle;Z)I
    .locals 1
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "withbg"    # Z

    .line 158
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getMultiAppUserBadgedIcon(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 154
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getOplusFreezePackageState(Ljava/lang/String;I)I
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getOplusFreezedPackageList(I)Ljava/util/List;
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

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public blacklist getOplusPackageFreezeFlag(Ljava/lang/String;I)I
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getOplusSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;
    .locals 1

    .line 135
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/content/pm/FeatureInfo;

    return-object v0
.end method

.method public blacklist inOplusFreezePackageList(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist init(Landroid/app/ContextImpl;)V
    .locals 0
    .param p1, "context"    # Landroid/app/ContextImpl;

    .line 47
    return-void
.end method

.method public blacklist interceptGetDrawableInLoadUnbadgedItemIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "manager"    # Landroid/content/pm/PackageManager;
    .param p2, "itemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 62
    iget-object v0, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget v1, p2, Landroid/content/pm/PackageItemInfo;->icon:I

    invoke-virtual {p1, v0, v1, p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isClosedSuperFirewall()Z
    .locals 1

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isFullFunctionMode()Z
    .locals 1

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMultiAppUserId(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSecurePayApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSystemDataApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist modifyResultInGetResourcesForApplication(Landroid/content/res/Resources;Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "app"    # Landroid/content/pm/ApplicationInfo;

    .line 58
    return-void
.end method

.method public blacklist oplusFreezePackage(Ljava/lang/String;III)I
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "freezeFlag"    # I
    .param p4, "flag"    # I

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist oplusUnFreezePackage(Ljava/lang/String;III)I
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "freezeFlag"    # I
    .param p4, "flag"    # I

    .line 98
    const/4 v0, 0x0

    return v0
.end method
