.class public final Lcom/android/internal/telephony/TelephonyPermissions;
.super Ljava/lang/Object;
.source "TelephonyPermissions.java"


# static fields
.field private static final blacklist DBG:Z = false

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "TelephonyPermissions"

.field private static final blacklist PROPERTY_DEVICE_IDENTIFIER_ACCESS_RESTRICTIONS_DISABLED:Ljava/lang/String; = "device_identifier_access_restrictions_disabled"

.field private static final blacklist sReportedDeviceIDPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/TelephonyPermissions;->sReportedDeviceIDPackages:Ljava/util/Map;

    .line 60
    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkCallingOrSelfReadDeviceIdentifiers(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;

    .line 281
    invoke-static {p0, p2, p3, p4}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfUseIccAuthWithDeviceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    const/4 v0, 0x1

    return v0

    .line 285
    :cond_0
    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v7}, Lcom/android/internal/telephony/TelephonyPermissions;->checkPrivilegedReadPermissionOrCarrierPrivilegePermission(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public static blacklist checkCallingOrSelfReadDeviceIdentifiers(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .line 255
    const/4 v0, -0x1

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadDeviceIdentifiers(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist checkCallingOrSelfReadNonDangerousPhoneStateNoThrow(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .line 121
    :try_start_0
    const-string v0, "android.permission.READ_BASIC_PHONE_STATE"

    .line 123
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 121
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    const/4 v0, 0x1

    return v0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "se":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist checkCallingOrSelfReadPhoneNumber(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;

    .line 518
    nop

    .line 519
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 518
    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/TelephonyPermissions;->checkReadPhoneNumber(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;

    .line 94
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/TelephonyPermissions;->checkReadPhoneState(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist checkCallingOrSelfReadPhoneStateNoThrow(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;

    .line 103
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "se":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist checkCallingOrSelfReadSubscriberIdentifiers(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;

    .line 309
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadSubscriberIdentifiers(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist checkCallingOrSelfReadSubscriberIdentifiers(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "reportFailure"    # Z

    .line 324
    invoke-static {p0, p2, p3, p4}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfUseIccAuthWithDeviceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    const/4 v0, 0x1

    return v0

    .line 328
    :cond_0
    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-static/range {v1 .. v7}, Lcom/android/internal/telephony/TelephonyPermissions;->checkPrivilegedReadPermissionOrCarrierPrivilegePermission(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public static blacklist checkCallingOrSelfUseIccAuthWithDeviceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .line 462
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 463
    return v0

    .line 465
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 466
    .local v7, "callingUid":I
    const-string v1, "appops"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/app/AppOpsManager;

    .line 467
    .local v8, "appOps":Landroid/app/AppOpsManager;
    const-string v2, "android:use_icc_auth_with_device_identifier"

    move-object v1, v8

    move v3, v7

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 469
    .local v1, "opMode":I
    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 478
    :pswitch_0
    return v0

    .line 474
    :pswitch_1
    const-string v3, "android.permission.USE_ICC_AUTH_WITH_DEVICE_IDENTIFIER"

    invoke-virtual {p0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    move v0, v2

    :cond_1
    return v0

    .line 472
    :pswitch_2
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static blacklist checkCarrierPrivilegeForAnySubId(Landroid/content/Context;I)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .line 682
    const-string/jumbo v0, "telephony_subscription_service"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 685
    .local v0, "sm":Landroid/telephony/SubscriptionManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 687
    .local v1, "identity":J
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionIdList()[I

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 689
    .local v3, "activeSubIds":[I
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 690
    nop

    .line 691
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    aget v7, v3, v6

    .line 692
    .local v7, "activeSubId":I
    invoke-static {p0, v7, p1}, Lcom/android/internal/telephony/TelephonyPermissions;->getCarrierPrivilegeStatus(Landroid/content/Context;II)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 694
    return v9

    .line 691
    .end local v7    # "activeSubId":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 697
    :cond_1
    return v5

    .line 689
    .end local v3    # "activeSubIds":[I
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 690
    throw v3
.end method

.method public static blacklist checkCarrierPrivilegeForSubId(Landroid/content/Context;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 188
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/TelephonyPermissions;->getCarrierPrivilegeStatus(Landroid/content/Context;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 191
    return v1

    .line 193
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist checkLastKnownCellIdAccessPermission(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 585
    const-string v0, "android.permission.ACCESS_LAST_KNOWN_CELL_ID"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist checkPrivilegedReadPermissionOrCarrierPrivilegePermission(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "allowCarrierPrivilegeOnAnySub"    # Z
    .param p6, "reportFailure"    # Z

    .line 358
    move-object v7, p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 359
    .local v8, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 362
    .local v9, "pid":I
    invoke-static {p0, p1}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCarrierPrivilegeForSubId(Landroid/content/Context;I)Z

    move-result v0

    const/4 v10, 0x1

    if-eqz v0, :cond_0

    return v10

    .line 366
    :cond_0
    if-eqz p5, :cond_1

    invoke-static {p0, v8}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCarrierPrivilegeForAnySubId(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    return v10

    .line 370
    :cond_1
    nop

    .line 371
    const-string/jumbo v0, "legacy_permission"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/permission/LegacyPermissionManager;

    .line 373
    .local v11, "permissionManager":Landroid/permission/LegacyPermissionManager;
    move-object v1, v11

    move-object v2, p2

    move-object/from16 v3, p4

    move-object v4, p3

    move v5, v9

    move v6, v8

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/permission/LegacyPermissionManager;->checkDeviceIdentifierAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    .line 376
    return v10

    .line 380
    :cond_2
    move-object/from16 v10, p4

    goto :goto_0

    .line 378
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 379
    .local v0, "se":Ljava/lang/SecurityException;
    move-object/from16 v10, p4

    invoke-static {v10, v8}, Lcom/android/internal/telephony/TelephonyPermissions;->throwSecurityExceptionAsUidDoesNotHaveAccess(Ljava/lang/String;I)V

    .line 382
    .end local v0    # "se":Ljava/lang/SecurityException;
    :goto_0
    if-eqz p6, :cond_3

    .line 383
    move-object v1, p0

    move v2, p1

    move v3, v9

    move v4, v8

    move-object v5, p2

    move-object/from16 v6, p4

    invoke-static/range {v1 .. v6}, Lcom/android/internal/telephony/TelephonyPermissions;->reportAccessDeniedToReadIdentifiers(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 386
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist checkReadCallLog(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callingPackageName"    # Ljava/lang/String;

    .line 490
    const-string v0, "android.permission.READ_CALL_LOG"

    invoke-virtual {p0, v0, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 494
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    const-string/jumbo v0, "readCallLog"

    invoke-static {p0, p1, p3, v0}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCarrierPrivilege(Landroid/content/Context;IILjava/lang/String;)V

    .line 496
    return v1

    .line 498
    :cond_0
    return v2

    .line 503
    :cond_1
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 504
    .local v0, "appOps":Landroid/app/AppOpsManager;
    const/4 v8, 0x0

    const-string v4, "android:read_call_log"

    move-object v3, v0

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v3 .. v8}, Landroid/app/AppOpsManager;->noteOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method

.method public static blacklist checkReadPhoneNumber(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callingFeatureId"    # Ljava/lang/String;
    .param p6, "message"    # Ljava/lang/String;

    .line 534
    nop

    .line 535
    const-string/jumbo v0, "legacy_permission"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/LegacyPermissionManager;

    .line 540
    .local v0, "permissionManager":Landroid/permission/LegacyPermissionManager;
    move-object v1, v0

    move-object v2, p4

    move-object v3, p6

    move-object v4, p5

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/permission/LegacyPermissionManager;->checkPhoneNumberAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    .line 542
    .local v1, "permissionResult":I
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 543
    return v2

    .line 545
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 546
    invoke-static {p0, p1, p3}, Lcom/android/internal/telephony/TelephonyPermissions;->getCarrierPrivilegeStatus(Landroid/content/Context;II)I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 548
    return v2

    .line 551
    :cond_1
    if-ne v1, v2, :cond_2

    .line 552
    const/4 v2, 0x0

    return v2

    .line 555
    :cond_2
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Neither user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " nor current process has "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "android.permission.READ_SMS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", or "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "android.permission.READ_PHONE_NUMBERS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static blacklist checkReadPhoneState(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callingFeatureId"    # Ljava/lang/String;
    .param p6, "message"    # Ljava/lang/String;

    .line 156
    const/4 v0, 0x1

    :try_start_0
    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v1, p2, p3, p6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    return v0

    .line 161
    :catch_0
    move-exception v1

    .line 163
    .local v1, "privilegedPhoneStateException":Ljava/lang/SecurityException;
    :try_start_1
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v2, p2, p3, p6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 173
    nop

    .line 178
    .end local v1    # "privilegedPhoneStateException":Ljava/lang/SecurityException;
    const-string v1, "appops"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 179
    .local v1, "appOps":Landroid/app/AppOpsManager;
    const/4 v7, 0x0

    const-string v3, "android:read_phone_state"

    move-object v2, v1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 165
    .local v1, "privilegedPhoneStateException":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    .line 168
    .local v2, "phoneStateException":Ljava/lang/SecurityException;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 169
    invoke-static {p0, p1, p3, p6}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCarrierPrivilege(Landroid/content/Context;IILjava/lang/String;)V

    .line 170
    return v0

    .line 172
    :cond_1
    throw v2
.end method

.method public static blacklist checkReadPhoneStateOnAnyActiveSub(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "callingFeatureId"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 213
    const/4 v0, 0x1

    :try_start_0
    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v1, p1, p2, p5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    return v0

    .line 218
    :catch_0
    move-exception v1

    .line 220
    .local v1, "privilegedPhoneStateException":Ljava/lang/SecurityException;
    :try_start_1
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v2, p1, p2, p5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 226
    nop

    .line 231
    .end local v1    # "privilegedPhoneStateException":Ljava/lang/SecurityException;
    const-string v1, "appops"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 232
    .local v1, "appOps":Landroid/app/AppOpsManager;
    const/4 v7, 0x0

    const-string v3, "android:read_phone_state"

    move-object v2, v1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 222
    .local v1, "privilegedPhoneStateException":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 225
    .local v0, "phoneStateException":Ljava/lang/SecurityException;
    invoke-static {p0, p2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCarrierPrivilegeForAnySubId(Landroid/content/Context;I)Z

    move-result v2

    return v2
.end method

.method public static varargs blacklist enforceAnyPermissionGranted(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "permissions"    # [Ljava/lang/String;

    .line 728
    array-length v0, p3

    if-nez v0, :cond_0

    return-void

    .line 729
    :cond_0
    const/4 v0, 0x0

    .line 730
    .local v0, "isGranted":Z
    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p3, v3

    .line 731
    .local v4, "perm":Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    .line 732
    const/4 v0, 0x1

    .line 733
    goto :goto_1

    .line 730
    .end local v4    # "perm":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 737
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    return-void

    .line 739
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 740
    .local v1, "b":Ljava/lang/StringBuilder;
    const-string v3, ": Neither user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 742
    const-string v3, " nor current process has "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_2
    array-length v3, p3

    if-ge v2, v3, :cond_4

    .line 745
    const-string v3, " or "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    aget-object v3, p3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 748
    .end local v2    # "i":I
    :cond_4
    new-instance v2, Ljava/lang/SecurityException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static varargs blacklist enforceAnyPermissionGrantedOrCarrierPrivileges(Landroid/content/Context;IILjava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "uid"    # I
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "permissions"    # [Ljava/lang/String;

    .line 758
    array-length v0, p4

    if-nez v0, :cond_0

    return-void

    .line 759
    :cond_0
    const/4 v0, 0x0

    .line 760
    .local v0, "isGranted":Z
    array-length v1, p4

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p4, v3

    .line 761
    .local v4, "perm":Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    .line 762
    const/4 v0, 0x1

    .line 763
    goto :goto_1

    .line 760
    .end local v4    # "perm":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 767
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    return-void

    .line 768
    :cond_3
    invoke-static {p0, p1}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCarrierPrivilegeForSubId(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    .line 770
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 771
    .local v1, "b":Ljava/lang/StringBuilder;
    const-string v3, ": Neither user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 773
    const-string v3, " nor current process has "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    aget-object v2, p4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_2
    array-length v3, p4

    if-ge v2, v3, :cond_5

    .line 776
    const-string v3, " or "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    aget-object v3, p4, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 779
    .end local v2    # "i":I
    :cond_5
    const-string v2, " or carrier privileges"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    new-instance v2, Ljava/lang/SecurityException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static blacklist enforceCallingOrSelfCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 668
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCarrierPrivilege(Landroid/content/Context;IILjava/lang/String;)V

    .line 669
    return-void
.end method

.method public static blacklist enforceCallingOrSelfModifyPermissionOrCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 569
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 571
    return-void

    .line 575
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V

    .line 576
    return-void
.end method

.method public static blacklist enforceCallingOrSelfReadPhoneStatePermissionOrCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 597
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 599
    return-void

    .line 606
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V

    .line 607
    return-void
.end method

.method public static blacklist enforceCallingOrSelfReadPrecisePhoneStatePermissionOrCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 639
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 641
    return-void

    .line 644
    :cond_0
    const-string v0, "android.permission.READ_PRECISE_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 646
    return-void

    .line 654
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V

    .line 655
    return-void
.end method

.method public static blacklist enforceCallingOrSelfReadPrivilegedPhoneStatePermissionOrCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 617
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 619
    return-void

    .line 627
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V

    .line 628
    return-void
.end method

.method private static blacklist enforceCarrierPrivilege(Landroid/content/Context;IILjava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "uid"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 673
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/TelephonyPermissions;->getCarrierPrivilegeStatus(Landroid/content/Context;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 678
    return-void

    .line 676
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist enforceShellOnly(ILjava/lang/String;)V
    .locals 3
    .param p0, "callingUid"    # I
    .param p1, "message"    # Ljava/lang/String;

    .line 789
    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 793
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Only shell user can call it"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 790
    :cond_1
    :goto_0
    return-void
.end method

.method private static blacklist getCarrierPrivilegeStatus(Landroid/content/Context;II)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "uid"    # I

    .line 701
    const/16 v0, 0x3e8

    if-eq p2, v0, :cond_1

    const/16 v0, 0x3e9

    if-ne p2, v0, :cond_0

    goto :goto_1

    .line 705
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 707
    .local v0, "identity":J
    :try_start_0
    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 709
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/telephony/TelephonyManager;->getCarrierPrivilegeStatus(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 709
    return v3

    .line 718
    .end local v2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 712
    :catch_0
    move-exception v2

    .line 713
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 715
    const/4 v3, 0x0

    .line 718
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 715
    return v3

    .line 718
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 719
    throw v2

    .line 703
    .end local v0    # "identity":J
    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist getTargetSdk(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 805
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 806
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 805
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 807
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 811
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    goto :goto_0

    .line 808
    :catch_0
    move-exception v0

    .line 809
    .local v0, "unexpected":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get package info for pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 810
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 809
    const-string v2, "TelephonyPermissions"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    .end local v0    # "unexpected":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    const v0, 0x7fffffff

    return v0
.end method

.method private static blacklist reportAccessDeniedToReadIdentifiers(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 402
    const-string v0, "TelephonyPermissions"

    const/4 v1, 0x0

    .line 404
    .local v1, "callingPackageInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 405
    invoke-static {p3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 404
    invoke-virtual {v3, p4, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 411
    goto :goto_0

    .line 406
    :catch_0
    move-exception v3

    .line 409
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception caught obtaining package info for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 414
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/TelephonyPermissions;->sReportedDeviceIDPackages:Ljava/util/Map;

    invoke-interface {v3, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    .line 415
    .local v4, "packageReported":Z
    if-eqz v4, :cond_0

    invoke-interface {v3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5, p5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 418
    :cond_0
    if-nez v4, :cond_1

    .line 419
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 420
    .local v5, "invokedMethods":Ljava/util/Set;
    invoke-interface {v3, p4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 422
    .end local v5    # "invokedMethods":Ljava/util/Set;
    :cond_1
    invoke-interface {v3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/util/Set;

    .line 424
    .restart local v5    # "invokedMethods":Ljava/util/Set;
    :goto_1
    invoke-interface {v5, p5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 425
    const/16 v3, 0xac

    invoke-static {v3, p4, p5, v2, v2}, Lcom/android/internal/telephony/TelephonyCommonStatsLog;->write(ILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 428
    .end local v5    # "invokedMethods":Ljava/util/Set;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reportAccessDeniedToReadIdentifiers:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    if-eqz v1, :cond_4

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1d

    if-ge v0, v3, :cond_4

    .line 434
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_3

    .line 438
    return v2

    .line 440
    :cond_3
    invoke-static {p0, p1}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCarrierPrivilegeForSubId(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 441
    return v2

    .line 444
    :cond_4
    invoke-static {p5, p3}, Lcom/android/internal/telephony/TelephonyPermissions;->throwSecurityExceptionAsUidDoesNotHaveAccess(Ljava/lang/String;I)V

    .line 445
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist throwSecurityExceptionAsUidDoesNotHaveAccess(Ljava/lang/String;I)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .line 333
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": The uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not meet the requirements to access device identifiers."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
