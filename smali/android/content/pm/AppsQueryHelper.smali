.class public Landroid/content/pm/AppsQueryHelper;
.super Ljava/lang/Object;
.source "AppsQueryHelper.java"


# static fields
.field public static greylist-max-o GET_APPS_WITH_INTERACT_ACROSS_USERS_PERM:I

.field public static greylist-max-o GET_IMES:I

.field public static greylist-max-o GET_NON_LAUNCHABLE_APPS:I

.field public static greylist-max-o GET_REQUIRED_FOR_SYSTEM_USER:I


# instance fields
.field private greylist-max-o mAllApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mPackageManager:Landroid/content/pm/IPackageManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 42
    const/4 v0, 0x1

    sput v0, Landroid/content/pm/AppsQueryHelper;->GET_NON_LAUNCHABLE_APPS:I

    .line 47
    const/4 v0, 0x2

    sput v0, Landroid/content/pm/AppsQueryHelper;->GET_APPS_WITH_INTERACT_ACROSS_USERS_PERM:I

    .line 52
    const/4 v0, 0x4

    sput v0, Landroid/content/pm/AppsQueryHelper;->GET_IMES:I

    .line 57
    const/16 v0, 0x8

    sput v0, Landroid/content/pm/AppsQueryHelper;->GET_REQUIRED_FOR_SYSTEM_USER:I

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 67
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/pm/AppsQueryHelper;-><init>(Landroid/content/pm/IPackageManager;)V

    .line 68
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/pm/IPackageManager;)V
    .locals 0
    .param p1, "packageManager"    # Landroid/content/pm/IPackageManager;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Landroid/content/pm/AppsQueryHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 64
    return-void
.end method


# virtual methods
.method protected greylist-max-o getAllApps(I)Ljava/util/List;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 171
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/AppsQueryHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v1, 0x2200

    invoke-interface {v0, v1, v2, p1}, Landroid/content/pm/IPackageManager;->getInstalledApplications(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    return-object v0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected greylist-max-o getPackagesHoldingPermission(Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .param p1, "perm"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 211
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/AppsQueryHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3, p2}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    return-object v0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o queryApps(IZLandroid/os/UserHandle;)Ljava/util/List;
    .locals 15
    .param p1, "flags"    # I
    .param p2, "systemAppsOnly"    # Z
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    move-object v0, p0

    sget v1, Landroid/content/pm/AppsQueryHelper;->GET_NON_LAUNCHABLE_APPS:I

    and-int v1, p1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 79
    .local v1, "nonLaunchableApps":Z
    :goto_0
    sget v4, Landroid/content/pm/AppsQueryHelper;->GET_APPS_WITH_INTERACT_ACROSS_USERS_PERM:I

    and-int v4, p1, v4

    if-lez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    .line 80
    .local v4, "interactAcrossUsers":Z
    :goto_1
    sget v5, Landroid/content/pm/AppsQueryHelper;->GET_IMES:I

    and-int v5, p1, v5

    if-lez v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    .line 81
    .local v5, "imes":Z
    :goto_2
    sget v6, Landroid/content/pm/AppsQueryHelper;->GET_REQUIRED_FOR_SYSTEM_USER:I

    and-int v6, p1, v6

    if-lez v6, :cond_3

    move v2, v3

    .line 82
    .local v2, "requiredForSystemUser":Z
    :cond_3
    iget-object v3, v0, Landroid/content/pm/AppsQueryHelper;->mAllApps:Ljava/util/List;

    if-nez v3, :cond_4

    .line 83
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/AppsQueryHelper;->getAllApps(I)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Landroid/content/pm/AppsQueryHelper;->mAllApps:Ljava/util/List;

    .line 86
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_7

    .line 88
    iget-object v6, v0, Landroid/content/pm/AppsQueryHelper;->mAllApps:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 89
    .local v6, "allAppsSize":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v7, v6, :cond_6

    .line 90
    iget-object v8, v0, Landroid/content/pm/AppsQueryHelper;->mAllApps:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    .line 91
    .local v8, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz p2, :cond_5

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v9

    if-nez v9, :cond_5

    .line 92
    goto :goto_4

    .line 94
    :cond_5
    iget-object v9, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .end local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 96
    .end local v7    # "i":I
    :cond_6
    return-object v3

    .line 99
    .end local v6    # "allAppsSize":I
    :cond_7
    if-eqz v1, :cond_b

    .line 100
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 101
    .local v6, "intent":Landroid/content/Intent;
    nop

    .line 102
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 101
    invoke-virtual {p0, v6, v7}, Landroid/content/pm/AppsQueryHelper;->queryIntentActivitiesAsUser(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 104
    .local v7, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 105
    .local v8, "appsWithLaunchers":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    .line 106
    .local v9, "resolveInfosSize":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_5
    if-ge v10, v9, :cond_8

    .line 107
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 109
    .end local v10    # "i":I
    :cond_8
    iget-object v10, v0, Landroid/content/pm/AppsQueryHelper;->mAllApps:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    .line 110
    .local v10, "allAppsSize":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_6
    if-ge v11, v10, :cond_b

    .line 111
    iget-object v12, v0, Landroid/content/pm/AppsQueryHelper;->mAllApps:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ApplicationInfo;

    .line 112
    .local v12, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz p2, :cond_9

    invoke-virtual {v12}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v13

    if-nez v13, :cond_9

    .line 113
    goto :goto_7

    .line 115
    :cond_9
    iget-object v13, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 116
    .local v13, "packageName":Ljava/lang/String;
    invoke-virtual {v8, v13}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 117
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .end local v12    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "packageName":Ljava/lang/String;
    :cond_a
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 121
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8    # "appsWithLaunchers":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v9    # "resolveInfosSize":I
    .end local v10    # "allAppsSize":I
    .end local v11    # "i":I
    :cond_b
    if-eqz v4, :cond_e

    .line 122
    nop

    .line 123
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 122
    const-string v7, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v7, v6}, Landroid/content/pm/AppsQueryHelper;->getPackagesHoldingPermission(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v6

    .line 124
    .local v6, "packagesHoldingPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 125
    .local v7, "packagesHoldingPermissionsSize":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_8
    if-ge v8, v7, :cond_e

    .line 126
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageInfo;

    .line 127
    .local v9, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz p2, :cond_c

    iget-object v10, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v10}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v10

    if-nez v10, :cond_c

    .line 128
    goto :goto_9

    .line 130
    :cond_c
    iget-object v10, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 131
    iget-object v10, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    .end local v9    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_d
    :goto_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 136
    .end local v6    # "packagesHoldingPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v7    # "packagesHoldingPermissionsSize":I
    .end local v8    # "i":I
    :cond_e
    if-eqz v5, :cond_11

    .line 137
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.view.InputMethod"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 137
    invoke-virtual {p0, v6, v7}, Landroid/content/pm/AppsQueryHelper;->queryIntentServicesAsUser(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 139
    .local v6, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 141
    .local v7, "resolveInfosSize":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_a
    if-ge v8, v7, :cond_11

    .line 142
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 143
    .local v9, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz p2, :cond_f

    iget-object v10, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v10}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v10

    if-nez v10, :cond_f

    .line 144
    goto :goto_b

    .line 146
    :cond_f
    iget-object v10, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    .line 147
    iget-object v10, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    .end local v9    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_10
    :goto_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 152
    .end local v6    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7    # "resolveInfosSize":I
    .end local v8    # "i":I
    :cond_11
    if-eqz v2, :cond_14

    .line 153
    iget-object v6, v0, Landroid/content/pm/AppsQueryHelper;->mAllApps:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 154
    .local v6, "allAppsSize":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_c
    if-ge v7, v6, :cond_14

    .line 155
    iget-object v8, v0, Landroid/content/pm/AppsQueryHelper;->mAllApps:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    .line 156
    .local v8, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz p2, :cond_12

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v9

    if-nez v9, :cond_12

    .line 157
    goto :goto_d

    .line 159
    :cond_12
    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isRequiredForSystemUser()Z

    move-result v9

    if-eqz v9, :cond_13

    .line 160
    iget-object v9, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    .end local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_13
    :goto_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 164
    .end local v6    # "allAppsSize":I
    .end local v7    # "i":I
    :cond_14
    return-object v3
.end method

.method protected greylist-max-o queryIntentActivitiesAsUser(Landroid/content/Intent;I)Ljava/util/List;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 182
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/AppsQueryHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x0

    const-wide/32 v3, 0xc2200

    move-object v1, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    return-object v0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected greylist-max-o queryIntentServicesAsUser(Landroid/content/Intent;I)Ljava/util/List;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 196
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/AppsQueryHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x0

    const-wide/32 v3, 0xc8080

    move-object v1, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    return-object v0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
