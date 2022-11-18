.class public final Landroid/telephony/LocationAccessPolicy;
.super Ljava/lang/Object;
.source "LocationAccessPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;,
        Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z = false

.field public static final blacklist MAX_SDK_FOR_ANY_ENFORCEMENT:I = 0x2710

.field private static final blacklist TAG:Ljava/lang/String; = "LocationAccessPolicy"


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist appOpsModeToPermissionResult(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
    .locals 1
    .param p0, "appOpsMode"    # I

    .line 233
    packed-switch p0, :pswitch_data_0

    .line 239
    :pswitch_0
    sget-object v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->DENIED_SOFT:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    return-object v0

    .line 237
    :pswitch_1
    sget-object v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->DENIED_HARD:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    return-object v0

    .line 235
    :pswitch_2
    sget-object v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static blacklist checkAppLocationPermissionHelper(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "query"    # Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;
    .param p2, "permissionToCheck"    # Ljava/lang/String;

    .line 257
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    const-string v1, "fine"

    goto :goto_0

    :cond_0
    const-string v1, "coarse"

    .line 261
    .local v1, "locationTypeForLog":Ljava/lang/String;
    :goto_0
    iget v2, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingPid:I

    iget v3, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingUid:I

    invoke-static {p0, v2, v3, p2}, Landroid/telephony/LocationAccessPolicy;->checkManifestPermission(Landroid/content/Context;IILjava/lang/String;)Z

    move-result v2

    .line 264
    .local v2, "hasManifestPermission":Z
    if-eqz v2, :cond_2

    .line 266
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/AppOpsManager;

    .line 267
    invoke-static {p2}, Landroid/telephony/LocationAccessPolicy;->getAppOpsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v5, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingUid:I

    iget-object v6, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingPackage:Ljava/lang/String;

    iget-object v7, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingFeatureId:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 269
    .local v0, "appOpMode":I
    if-nez v0, :cond_1

    .line 271
    sget-object v3, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    return-object v3

    .line 276
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is aware of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but the app-ops permission is specifically denied."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LocationAccessPolicy"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-static {v0}, Landroid/telephony/LocationAccessPolicy;->appOpsModeToPermissionResult(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object v3

    return-object v3

    .line 282
    .end local v0    # "appOpMode":I
    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 283
    iget v0, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->minSdkVersionForFine:I

    goto :goto_1

    :cond_3
    iget v0, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->minSdkVersionForCoarse:I

    .line 286
    .local v0, "minSdkVersion":I
    :goto_1
    const/16 v3, 0x2710

    const/4 v4, 0x0

    const-string v5, " "

    const-string v6, "Allowing "

    if-le v0, v3, :cond_4

    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingPackage:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " because we\'re not enforcing API "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " yet. Please fix this app because it will break in the future. Called from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->method:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 291
    .local v3, "errorMsg":Ljava/lang/String;
    invoke-static {p0, p1, v3}, Landroid/telephony/LocationAccessPolicy;->logError(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;Ljava/lang/String;)V

    .line 292
    return-object v4

    .line 293
    .end local v3    # "errorMsg":Ljava/lang/String;
    :cond_4
    iget-object v3, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingPackage:Ljava/lang/String;

    invoke-static {p0, v3, v0}, Landroid/telephony/LocationAccessPolicy;->isAppAtLeastSdkVersion(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 294
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingPackage:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " because it doesn\'t target API "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " yet. Please fix this app. Called from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->method:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 297
    .restart local v3    # "errorMsg":Ljava/lang/String;
    invoke-static {p0, p1, v3}, Landroid/telephony/LocationAccessPolicy;->logError(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;Ljava/lang/String;)V

    .line 298
    return-object v4

    .line 302
    .end local v3    # "errorMsg":Ljava/lang/String;
    :cond_5
    sget-object v3, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->DENIED_HARD:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    return-object v3
.end method

.method private static blacklist checkInteractAcrossUsersFull(Landroid/content/Context;II)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 399
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-static {p0, p1, p2, v0}, Landroid/telephony/LocationAccessPolicy;->checkManifestPermission(Landroid/content/Context;IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist checkLocationPermission(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "query"    # Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    .line 313
    iget v0, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingUid:I

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_4

    iget v0, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingUid:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_4

    iget v0, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingUid:I

    const/16 v1, 0x431

    if-eq v0, v1, :cond_4

    iget v0, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingUid:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 322
    :cond_0
    iget v0, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingUid:I

    iget v1, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingPid:I

    iget-object v2, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingPackage:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Landroid/telephony/LocationAccessPolicy;->checkSystemLocationAccess(Landroid/content/Context;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 324
    sget-object v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->DENIED_SOFT:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    return-object v0

    .line 328
    :cond_1
    iget v0, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->minSdkVersionForFine:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_2

    .line 329
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, p1, v0}, Landroid/telephony/LocationAccessPolicy;->checkAppLocationPermissionHelper(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object v0

    .line 331
    .local v0, "resultForFine":Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
    if-eqz v0, :cond_2

    .line 332
    return-object v0

    .line 336
    .end local v0    # "resultForFine":Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
    :cond_2
    iget v0, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->minSdkVersionForCoarse:I

    if-ge v0, v1, :cond_3

    .line 337
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, p1, v0}, Landroid/telephony/LocationAccessPolicy;->checkAppLocationPermissionHelper(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object v0

    .line 339
    .local v0, "resultForCoarse":Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
    if-eqz v0, :cond_3

    .line 340
    return-object v0

    .line 346
    .end local v0    # "resultForCoarse":Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
    :cond_3
    sget-object v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    return-object v0

    .line 316
    :cond_4
    :goto_0
    sget-object v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    return-object v0
.end method

.method private static blacklist checkManifestPermission(Landroid/content/Context;IILjava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "permissionToCheck"    # Ljava/lang/String;

    .line 351
    invoke-virtual {p0, p3, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist checkSystemLocationAccess(Landroid/content/Context;IILjava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 357
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {p0, v0}, Landroid/telephony/LocationAccessPolicy;->isLocationModeEnabled(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 358
    invoke-static {p0, p3}, Landroid/telephony/LocationAccessPolicy;->isLocationBypassAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    return v1

    .line 364
    :cond_0
    invoke-static {p0, p1}, Landroid/telephony/LocationAccessPolicy;->isCurrentProfile(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p2, p1}, Landroid/telephony/LocationAccessPolicy;->checkInteractAcrossUsersFull(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private static blacklist getAppOpsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "manifestPermission"    # Ljava/lang/String;

    .line 244
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 250
    const/4 v0, 0x0

    return-object v0

    .line 248
    :pswitch_0
    const-string v0, "android:coarse_location"

    return-object v0

    .line 246
    :pswitch_1
    const-string v0, "android:fine_location"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x70918bc1 -> :sswitch_1
        -0x3c1ac56 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist getLocationBypassPackages(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 393
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist isAppAtLeastSdkVersion(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "sdkVersion"    # I

    .line 424
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v1, p2, :cond_0

    .line 426
    const/4 v0, 0x1

    return v0

    .line 432
    :cond_0
    goto :goto_0

    .line 428
    :catch_0
    move-exception v1

    .line 433
    :goto_0
    return v0
.end method

.method private static greylist-max-o isCurrentProfile(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .line 404
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 406
    .local v0, "token":J
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 407
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_0

    .line 408
    const/4 v2, 0x1

    .line 418
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 408
    return v2

    .line 410
    :cond_0
    :try_start_1
    const-class v2, Landroid/app/ActivityManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 411
    .local v2, "activityManager":Landroid/app/ActivityManager;
    if-eqz v2, :cond_1

    .line 412
    nop

    .line 413
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 412
    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->isProfileForeground(Landroid/os/UserHandle;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 418
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 412
    return v3

    .line 415
    :cond_1
    const/4 v3, 0x0

    .line 418
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 415
    return v3

    .line 418
    .end local v2    # "activityManager":Landroid/app/ActivityManager;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 419
    throw v2
.end method

.method private static blacklist isLocationBypassAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 381
    invoke-static {p0}, Landroid/telephony/LocationAccessPolicy;->getLocationBypassPackages(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 382
    .local v4, "bypassPackage":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 383
    const/4 v0, 0x1

    return v0

    .line 381
    .end local v4    # "bypassPackage":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 386
    :cond_1
    return v2
.end method

.method public static greylist-max-o isLocationModeEnabled(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 371
    const-class v0, Landroid/location/LocationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 372
    .local v0, "locationManager":Landroid/location/LocationManager;
    if-nez v0, :cond_0

    .line 373
    const-string v1, "LocationAccessPolicy"

    const-string v2, "Couldn\'t get location manager, denying location access"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v1, 0x0

    return v1

    .line 376
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result v1

    return v1
.end method

.method private static blacklist logError(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "query"    # Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .line 218
    iget-boolean v0, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->logAsInfo:Z

    const-string v1, "LocationAccessPolicy"

    if-eqz v0, :cond_0

    .line 219
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void

    .line 222
    :cond_0
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :try_start_0
    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1

    .line 225
    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    :cond_1
    goto :goto_0

    .line 227
    :catchall_0
    move-exception v0

    .line 230
    :goto_0
    return-void
.end method
