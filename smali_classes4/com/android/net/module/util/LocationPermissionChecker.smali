.class public Lcom/android/net/module/util/LocationPermissionChecker;
.super Ljava/lang/Object;
.source "LocationPermissionChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/net/module/util/LocationPermissionChecker$LocationPermissionCheckStatus;
    }
.end annotation


# static fields
.field public static final blacklist ERROR_LOCATION_MODE_OFF:I = 0x1

.field public static final blacklist ERROR_LOCATION_PERMISSION_MISSING:I = 0x2

.field public static final blacklist SUCCEEDED:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "LocationPermissionChecker"


# instance fields
.field private final blacklist mAppOpsManager:Landroid/app/AppOpsManager;

.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 71
    iput-object p1, p0, Lcom/android/net/module/util/LocationPermissionChecker;->mContext:Landroid/content/Context;

    .line 72
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/net/module/util/LocationPermissionChecker;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 73
    return-void

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This utility is not supported before R"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkLocationPermissionInternal(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "featureId"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "message"    # Ljava/lang/String;

    .line 153
    invoke-direct {p0, p3, p1}, Lcom/android/net/module/util/LocationPermissionChecker;->checkPackage(ILjava/lang/String;)V

    .line 157
    invoke-virtual {p0, p3}, Lcom/android/net/module/util/LocationPermissionChecker;->checkNetworkSettingsPermission(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0, p3}, Lcom/android/net/module/util/LocationPermissionChecker;->checkNetworkSetupWizardPermission(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 158
    invoke-virtual {p0, p3}, Lcom/android/net/module/util/LocationPermissionChecker;->checkNetworkStackPermission(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p3}, Lcom/android/net/module/util/LocationPermissionChecker;->checkMainlineNetworkStackPermission(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/android/net/module/util/LocationPermissionChecker;->isLocationModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    const/4 v0, 0x1

    return v0

    .line 169
    :cond_1
    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/net/module/util/LocationPermissionChecker;->checkCallersLocationPermission(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 171
    const/4 v0, 0x2

    return v0

    .line 173
    :cond_2
    return v1

    .line 159
    :cond_3
    :goto_0
    return v1
.end method

.method private blacklist checkPackage(ILjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 258
    if-eqz p2, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/net/module/util/LocationPermissionChecker;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 262
    return-void

    .line 259
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but Package Name is Null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getUidPermission(Ljava/lang/String;I)I
    .locals 2
    .param p1, "permissionType"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 271
    iget-object v0, p0, Lcom/android/net/module/util/LocationPermissionChecker;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private blacklist isTargetSdkLessThan(Ljava/lang/String;II)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # I
    .param p3, "callingUid"    # I

    .line 232
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 234
    .local v0, "ident":J
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/net/module/util/LocationPermissionChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 236
    invoke-static {p3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 234
    invoke-virtual {v3, p1, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v3, p2, :cond_0

    .line 238
    const/4 v2, 0x1

    .line 245
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 238
    return v2

    .line 245
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 246
    throw v2

    .line 240
    :catch_0
    move-exception v3

    .line 245
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 246
    nop

    .line 247
    return v2
.end method

.method private blacklist noteAppOpAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "message"    # Ljava/lang/String;

    .line 252
    iget-object v0, p0, Lcom/android/net/module/util/LocationPermissionChecker;->mAppOpsManager:Landroid/app/AppOpsManager;

    move-object v1, p1

    move v2, p4

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist checkCallersLocationPermission(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)Z
    .locals 13
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "featureId"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "coarseForTargetSdkLessThanQ"    # Z
    .param p5, "message"    # Ljava/lang/String;

    .line 192
    move-object v6, p0

    move/from16 v7, p3

    const/16 v0, 0x1d

    move-object v8, p1

    invoke-direct {p0, p1, v0, v7}, Lcom/android/net/module/util/LocationPermissionChecker;->isTargetSdkLessThan(Ljava/lang/String;II)Z

    move-result v9

    .line 194
    .local v9, "isTargetSdkLessThanQ":Z
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 195
    .local v0, "permissionType":Ljava/lang/String;
    if-eqz p4, :cond_0

    if-eqz v9, :cond_0

    .line 197
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    move-object v10, v0

    goto :goto_0

    .line 199
    :cond_0
    move-object v10, v0

    .end local v0    # "permissionType":Ljava/lang/String;
    .local v10, "permissionType":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v10, v7}, Lcom/android/net/module/util/LocationPermissionChecker;->getUidPermission(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v11, 0x0

    if-ne v0, v1, :cond_1

    .line 200
    return v11

    .line 205
    :cond_1
    const-string v1, "android:fine_location"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/net/module/util/LocationPermissionChecker;->noteAppOpAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v12

    .line 207
    .local v12, "isFineLocationAllowed":Z
    if-eqz v12, :cond_2

    .line 208
    const/4 v0, 0x1

    return v0

    .line 210
    :cond_2
    if-eqz p4, :cond_3

    if-eqz v9, :cond_3

    .line 211
    const-string v1, "android:coarse_location"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/net/module/util/LocationPermissionChecker;->noteAppOpAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0

    .line 214
    :cond_3
    return v11
.end method

.method public blacklist checkLocationPermission(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "featureId"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "message"    # Ljava/lang/String;

    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/net/module/util/LocationPermissionChecker;->checkLocationPermissionInternal(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist checkLocationPermissionWithDetailInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "featureId"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "message"    # Ljava/lang/String;

    .line 114
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/net/module/util/LocationPermissionChecker;->checkLocationPermissionInternal(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 115
    .local v0, "result":I
    const-string v1, "LocationPermissionChecker"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 120
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has no location permission"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    :pswitch_1
    const-string v2, "Location mode is disabled for the device"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    nop

    .line 123
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist checkMainlineNetworkStackPermission(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 302
    const-string v0, "android.permission.MAINLINE_NETWORK_STACK"

    invoke-direct {p0, v0, p1}, Lcom/android/net/module/util/LocationPermissionChecker;->getUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist checkNetworkSettingsPermission(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 278
    const-string v0, "android.permission.NETWORK_SETTINGS"

    invoke-direct {p0, v0, p1}, Lcom/android/net/module/util/LocationPermissionChecker;->getUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist checkNetworkSetupWizardPermission(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 286
    const-string v0, "android.permission.NETWORK_SETUP_WIZARD"

    invoke-direct {p0, v0, p1}, Lcom/android/net/module/util/LocationPermissionChecker;->getUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist checkNetworkStackPermission(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 294
    const-string v0, "android.permission.NETWORK_STACK"

    invoke-direct {p0, v0, p1}, Lcom/android/net/module/util/LocationPermissionChecker;->getUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist enforceLocationPermission(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "featureId"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 141
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/net/module/util/LocationPermissionChecker;->checkLocationPermissionInternal(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 143
    .local v0, "result":I
    packed-switch v0, :pswitch_data_0

    .line 149
    return-void

    .line 147
    :pswitch_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has no location permission"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :pswitch_1
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Location mode is disabled for the device"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected blacklist getCurrentUser()I
    .locals 1

    .line 266
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    return v0
.end method

.method public blacklist isLocationModeEnabled()Z
    .locals 4

    .line 221
    iget-object v0, p0, Lcom/android/net/module/util/LocationPermissionChecker;->mContext:Landroid/content/Context;

    const-class v1, Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 223
    .local v0, "LocationManager":Landroid/location/LocationManager;
    nop

    .line 224
    :try_start_0
    invoke-virtual {p0}, Lcom/android/net/module/util/LocationPermissionChecker;->getCurrentUser()I

    move-result v1

    .line 223
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 225
    :catch_0
    move-exception v1

    .line 226
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "LocationPermissionChecker"

    const-string v3, "Failure to get location mode via API, falling back to settings"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    const/4 v2, 0x0

    return v2
.end method
