.class public Landroid/app/admin/IDevicePolicyManager$Default;
.super Ljava/lang/Object;
.source "IDevicePolicyManager.java"

# interfaces
.implements Landroid/app/admin/IDevicePolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/IDevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist acknowledgeDeviceCompliant()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1224
    return-void
.end method

.method public blacklist acknowledgeNewUserDisclaimer(I)V
    .locals 0
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 600
    return-void
.end method

.method public blacklist addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 497
    return-void
.end method

.method public blacklist addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 748
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist addOverrideApn(Landroid/content/ComponentName;Landroid/telephony/data/ApnSetting;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "apnSetting"    # Landroid/telephony/data/ApnSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1093
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "activity"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 455
    return-void
.end method

.method public blacklist approveCaCert(Ljava/lang/String;IZ)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "approval"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 382
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1341
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist bindDeviceAdminServiceAsUser(Landroid/content/ComponentName;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/IServiceConnection;II)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "caller"    # Landroid/app/IApplicationThread;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "service"    # Landroid/content/Intent;
    .param p5, "connection"    # Landroid/app/IServiceConnection;
    .param p6, "flags"    # I
    .param p7, "targetUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1002
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist canAdminGrantSensorsPermissionsForUser(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1269
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist canProfileOwnerResetPasswordWhenLocked(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1231
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist canUsbDataSignalingBeDisabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1284
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkDeviceIdentifierAccess(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 349
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkProvisioningPrecondition(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 842
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist choosePrivateKeyAlias(ILandroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "aliasCallback"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 410
    return-void
.end method

.method public blacklist clearApplicationUserData(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/content/pm/IPackageDataObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1050
    return-void
.end method

.method public blacklist clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 500
    return-void
.end method

.method public blacklist clearDeviceOwner(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 305
    return-void
.end method

.method public blacklist clearOrganizationIdForUser(I)V
    .locals 0
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 892
    return-void
.end method

.method public blacklist clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 458
    return-void
.end method

.method public blacklist clearProfileOwner(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 338
    return-void
.end method

.method public blacklist clearResetPasswordToken(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1030
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist clearSystemUpdatePolicyFreezePeriodRecord()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 802
    return-void
.end method

.method public blacklist createAdminSupportIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "restriction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 547
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createAndManageUser(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/PersistableBundle;I)Landroid/os/UserHandle;
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "profileOwner"    # Landroid/content/ComponentName;
    .param p4, "adminExtras"    # Landroid/os/PersistableBundle;
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 563
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createAndProvisionManagedProfile(Landroid/app/admin/ManagedProfileProvisioningParams;Ljava/lang/String;)Landroid/os/UserHandle;
    .locals 1
    .param p1, "provisioningParams"    # Landroid/app/admin/ManagedProfileProvisioningParams;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1249
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 607
    return-void
.end method

.method public blacklist enableSystemAppWithIntent(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 610
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enforceCanManageCaCerts(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 379
    return-void
.end method

.method public blacklist finalizeWorkProfileProvisioning(Landroid/os/UserHandle;Landroid/accounts/Account;)V
    .locals 0
    .param p1, "managedProfileUser"    # Landroid/os/UserHandle;
    .param p2, "migratedAccount"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1256
    return-void
.end method

.method public blacklist forceNetworkLogs()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 955
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist forceRemoveActiveAdmin(Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    return-void
.end method

.method public blacklist forceSecurityLogs()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 959
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist forceUpdateUserSetupComplete(I)V
    .locals 0
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 981
    return-void
.end method

.method public blacklist generateKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/ParcelableKeyGenParameterSpec;ILandroid/security/keymaster/KeymasterCertificateChain;)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "algorithm"    # Ljava/lang/String;
    .param p4, "keySpec"    # Landroid/security/keystore/ParcelableKeyGenParameterSpec;
    .param p5, "idAttestationFlags"    # I
    .param p6, "attestationChain"    # Landroid/security/keymaster/KeymasterCertificateChain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAccountTypesWithManagementDisabled()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 621
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAccountTypesWithManagementDisabledAsUser(IZ)[Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 625
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getActiveAdmins(I)Ljava/util/List;
    .locals 1
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 247
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAffiliationIds(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
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

    .line 928
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAggregatedPasswordComplexityForUser(IZ)I
    .locals 1
    .param p1, "userId"    # I
    .param p2, "deviceWideOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAllCrossProfilePackages()Ljava/util/List;
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

    .line 1160
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAlwaysOnVpnLockdownAllowlist(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
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

    .line 451
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAlwaysOnVpnPackage(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 435
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;
    .locals 1
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 439
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 467
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 475
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAutoTimeEnabled(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 770
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAutoTimeRequired()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 763
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAutoTimeZoneEnabled(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 777
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBindDeviceAdminTargetUsers(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1006
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getBluetoothContactSharingDisabled(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 733
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBluetoothContactSharingDisabledForUser(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 737
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCameraDisabled(Landroid/content/ComponentName;IZ)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCertInstallerPackage(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 427
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCrossProfileCalendarPackages(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
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

    .line 1141
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCrossProfileCalendarPackagesForUser(I)Ljava/util/List;
    .locals 1
    .param p1, "userHandle"    # I
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

    .line 1149
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 708
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCrossProfileCallerIdDisabledForUser(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 712
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 719
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCrossProfileContactsSearchDisabledForUser(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 723
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCrossProfilePackages(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
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

    .line 1156
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
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

    .line 756
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCurrentFailedPasswordAttempts(IZ)I
    .locals 1
    .param p1, "userHandle"    # I
    .param p2, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDefaultCrossProfilePackages()Ljava/util/List;
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

    .line 1164
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDelegatePackages(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "scope"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
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

    .line 420
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "delegatePackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
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

    .line 416
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDeviceOwnerComponent(Z)Landroid/content/ComponentName;
    .locals 1
    .param p1, "callingUserOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 293
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDeviceOwnerLockScreenInfo()Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 356
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDeviceOwnerName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 301
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 910
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDeviceOwnerType(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1262
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDeviceOwnerUserId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 308
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDisallowedSystemApps(Landroid/content/ComponentName;ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "provisioningAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I",
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

    .line 1060
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDoNotAskCredentialsOnBoot()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 813
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableResource;
    .locals 1
    .param p1, "drawableId"    # Ljava/lang/String;
    .param p2, "drawableStyle"    # Ljava/lang/String;
    .param p3, "drawableSource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1312
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getEndUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1081
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getEnforcingAdminAndUserDetails(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "restriction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 551
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getEnrollmentSpecificId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1242
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFactoryResetProtectionPolicy(Landroid/content/ComponentName;)Landroid/app/admin/FactoryResetProtectionPolicy;
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getForceEphemeralUsers(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 784
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getGlobalPrivateDnsHost(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1128
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getGlobalPrivateDnsMode(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1124
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getGlobalProxyAdmin(I)Landroid/content/ComponentName;
    .locals 1
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
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

    .line 849
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getKeyPairGrants(Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableGranteeMap;
    .locals 1
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1184
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)I
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getLastBugReportRequestTime()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1018
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getLastNetworkLogRetrievalTime()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1022
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getLastSecurityLogRetrievalTime()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1014
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getLockTaskFeatures(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 657
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getLockTaskPackages(Landroid/content/ComponentName;)[Ljava/lang/String;
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 646
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLogoutUserId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 592
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getLongSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 874
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLongSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 882
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getManagedProfileMaximumTimeOff(Landroid/content/ComponentName;)J
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1217
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;IZ)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMaximumTimeToLock(Landroid/content/ComponentName;IZ)J
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getMeteredDataDisabledPackages(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
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

    .line 1089
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMinimumRequiredWifiSecurityLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1291
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getNearbyAppStreamingPolicy(I)I
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getNearbyNotificationStreamingPolicy(I)I
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getOrganizationColor(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 895
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getOrganizationColorForUser(I)I
    .locals 1
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 899
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getOrganizationName(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 906
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getOrganizationNameForUser(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 914
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getOverrideApns(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/data/ApnSetting;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1105
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getOwnerInstalledCaCerts(Landroid/os/UserHandle;)Landroid/content/pm/StringParceledListSlice;
    .locals 1
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1046
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPasswordComplexity(Z)I
    .locals 1
    .param p1, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPasswordExpiration(Landroid/content/ComponentName;IZ)J
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getPasswordExpirationTimeout(Landroid/content/ComponentName;IZ)J
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getPasswordHistoryLength(Landroid/content/ComponentName;IZ)I
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPasswordMinimumLength(Landroid/content/ComponentName;IZ)I
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPasswordMinimumLetters(Landroid/content/ComponentName;IZ)I
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)I
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPasswordMinimumMetrics(IZ)Landroid/app/admin/PasswordMetrics;
    .locals 1
    .param p1, "userHandle"    # I
    .param p2, "deviceWideOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)I
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)I
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)I
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)I
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPasswordQuality(Landroid/content/ComponentName;IZ)I
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPendingSystemUpdate(Landroid/content/ComponentName;)Landroid/app/admin/SystemUpdateInfo;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 820
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 834
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPermissionPolicy(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 827
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
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

    .line 507
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPermittedAccessibilityServicesForUser(I)Ljava/util/List;
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

    .line 511
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
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

    .line 539
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPermittedInputMethods(Landroid/content/ComponentName;Z)Ljava/util/List;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "parent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Z)",
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

    .line 523
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPermittedInputMethodsAsUser(I)Ljava/util/List;
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

    .line 527
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPersonalAppsSuspendedReasons(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1210
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPolicyManagedProfiles(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1337
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPreferentialNetworkServiceConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/admin/PreferentialNetworkServiceConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 639
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getProfileOwnerAsUser(I)Landroid/content/ComponentName;
    .locals 1
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 316
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getProfileOwnerName(I)Ljava/lang/String;
    .locals 1
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 328
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .locals 1
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 320
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getProfileWithMinimumFailedPasswordsForWipe(IZ)I
    .locals 1
    .param p1, "userHandle"    # I
    .param p2, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V
    .locals 0
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "result"    # Landroid/os/RemoteCallback;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    return-void
.end method

.method public blacklist getRequiredPasswordComplexity(Z)I
    .locals 1
    .param p1, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRequiredStrongAuthTimeout(Landroid/content/ComponentName;IZ)J
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getRestrictionsProvider(I)Landroid/content/ComponentName;
    .locals 1
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 486
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getScreenCaptureDisabled(Landroid/content/ComponentName;IZ)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSecondaryUsers(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 596
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getShortSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 867
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getShortSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 878
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getStartUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1077
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getStorageEncryption(Landroid/content/ComponentName;I)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getStorageEncryptionStatus(Ljava/lang/String;I)I
    .locals 1
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getString(Ljava/lang/String;)Landroid/app/admin/ParcelableResource;
    .locals 1
    .param p1, "stringId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1329
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 798
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTransferOwnershipBundle()Landroid/os/PersistableBundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1067
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;IZ)Ljava/util/List;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "agent"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "parent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "IZ)",
            "Ljava/util/List<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 744
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUserControlDisabledPackages(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
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

    .line 1199
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUserProvisioningState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 918
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getUserRestrictions(Landroid/content/ComponentName;Z)Landroid/os/Bundle;
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 493
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWifiMacAddress(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 857
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWifiSsidPolicy()Landroid/app/admin/WifiSsidPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1298
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hasDeviceOwner()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasGrantedPolicy(Landroid/content/ComponentName;II)Z
    .locals 1
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "usesPolicy"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasKeyPair(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 398
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasLockdownAdminConfiguredNetworks(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 673
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasUserSetupCompleted()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist installCaCert(Landroid/content/ComponentName;Ljava/lang/String;[B)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "certBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist installExistingPackage(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 614
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist installKeyPair(Landroid/content/ComponentName;Ljava/lang/String;[B[B[BLjava/lang/String;ZZ)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "privKeyBuffer"    # [B
    .param p4, "certBuffer"    # [B
    .param p5, "certChainBuffer"    # [B
    .param p6, "alias"    # Ljava/lang/String;
    .param p7, "requestAccess"    # Z
    .param p8, "isUserSelectable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 390
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist installUpdateFromFile(Landroid/content/ComponentName;Landroid/os/ParcelFileDescriptor;Landroid/app/admin/StartInstallingUpdateCallback;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "updateFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "listener"    # Landroid/app/admin/StartInstallingUpdateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1135
    return-void
.end method

.method public blacklist isAccessibilityServicePermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 515
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isActivePasswordSufficient(IZ)Z
    .locals 1
    .param p1, "userHandle"    # I
    .param p2, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isActivePasswordSufficientForDeviceRequirement()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAdminActive(Landroid/content/ComponentName;I)Z
    .locals 1
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAffiliatedUser(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 936
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAlwaysOnVpnLockdownEnabled(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 443
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAlwaysOnVpnLockdownEnabledForUser(I)Z
    .locals 1
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 447
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 559
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isBackupServiceEnabled(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 987
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCaCertApproved(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCallerApplicationRestrictionsManagingPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "callerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 479
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCallingUserAffiliated()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 932
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCommonCriteriaModeEnabled(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1206
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isComplianceAcknowledgementRequired()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1227
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCurrentInputMethodSetByOwner()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1042
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDeviceProvisioned()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 970
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDeviceProvisioningConfigApplied()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 974
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDpcDownloaded()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1316
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isEphemeralUser(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1010
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isFactoryResetProtectionPolicySupported()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isInputMethodPermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;IZ)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 531
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isKeyPairGrantedToWifiAuth(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1192
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isLockTaskPermitted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 650
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isLogoutEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1056
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isManagedKiosk()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1168
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isManagedProfile(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 853
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMasterVolumeMuted(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 691
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMeteredDataDisabledPackageForUser(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1116
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isNetworkLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 994
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isNewUserDisclaimerAcknowledged(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 603
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isNotificationListenerServicePermitted(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 543
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isOrganizationOwnedDeviceWithManagedProfile()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isOverrideApnEnabled(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1112
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isPackageAllowedToAccessCalendarForUser(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1145
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isPackageSuspended(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 364
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isPasswordSufficientAfterProfileUnification(II)Z
    .locals 1
    .param p1, "userHandle"    # I
    .param p2, "profileUser"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isProvisioningAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 838
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isRemovingAdmin(Landroid/content/ComponentName;I)Z
    .locals 1
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 788
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isResetPasswordTokenActive(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1034
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSafeOperation(I)Z
    .locals 1
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1238
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSecondaryLockscreenEnabled(Landroid/os/UserHandle;)Z
    .locals 1
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 632
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSecurityLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 943
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSupervisionComponent(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 324
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUnattendedManagedKiosk()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1172
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 701
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUninstallInQueue(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 963
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUsbDataSignalingEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "callerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1276
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUsbDataSignalingEnabledForUser(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1280
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUsingUnifiedPassword(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist listForegroundAffiliatedUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1302
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist listPolicyExemptApps()Ljava/util/List;
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

    .line 368
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist lockNow(IZ)V
    .locals 0
    .param p1, "flags"    # I
    .param p2, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    return-void
.end method

.method public blacklist logoutUser(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 583
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist logoutUserInternal()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 587
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notifyLockTaskModeChanged(ZLjava/lang/String;I)V
    .locals 0
    .param p1, "isEnabled"    # Z
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 695
    return-void
.end method

.method public blacklist notifyPendingSystemUpdate(Landroid/app/admin/SystemUpdateInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/app/admin/SystemUpdateInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 817
    return-void
.end method

.method public blacklist packageHasActiveAdmins(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist provisionFullyManagedDevice(Landroid/app/admin/FullyManagedDeviceProvisioningParams;Ljava/lang/String;)V
    .locals 0
    .param p1, "provisioningParams"    # Landroid/app/admin/FullyManagedDeviceProvisioningParams;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1253
    return-void
.end method

.method public blacklist reboot(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 861
    return-void
.end method

.method public blacklist removeActiveAdmin(Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 258
    return-void
.end method

.method public blacklist removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 752
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeOverrideApn(Landroid/content/ComponentName;I)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "apnId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1101
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 567
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist reportFailedBiometricAttempt(I)V
    .locals 0
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 277
    return-void
.end method

.method public blacklist reportFailedPasswordAttempt(I)V
    .locals 0
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 271
    return-void
.end method

.method public blacklist reportKeyguardDismissed(I)V
    .locals 0
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 283
    return-void
.end method

.method public blacklist reportKeyguardSecured(I)V
    .locals 0
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 286
    return-void
.end method

.method public blacklist reportPasswordChanged(Landroid/app/admin/PasswordMetrics;I)V
    .locals 0
    .param p1, "metrics"    # Landroid/app/admin/PasswordMetrics;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 268
    return-void
.end method

.method public blacklist reportSuccessfulBiometricAttempt(I)V
    .locals 0
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 280
    return-void
.end method

.method public blacklist reportSuccessfulPasswordAttempt(I)V
    .locals 0
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    return-void
.end method

.method public blacklist requestBugreport(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist resetDefaultCrossProfileIntentFilters(I)V
    .locals 0
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1266
    return-void
.end method

.method public blacklist resetDrawables(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1309
    .local p1, "drawableIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist resetPassword(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist resetPasswordWithToken(Landroid/content/ComponentName;Ljava/lang/String;[BI)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "token"    # [B
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1038
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist resetStrings(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1326
    .local p1, "stringIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist retrieveNetworkLogs(Landroid/content/ComponentName;Ljava/lang/String;J)Ljava/util/List;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "batchToken"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List<",
            "Landroid/app/admin/NetworkEvent;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 998
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist retrievePreRebootSecurityLogs(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 951
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist retrieveSecurityLogs(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 947
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist sendLostModeLocationUpdate(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 175
    .local p1, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public blacklist setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "disabled"    # Z
    .param p4, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 618
    return-void
.end method

.method public blacklist setActiveAdmin(Landroid/content/ComponentName;ZI)V
    .locals 0
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 240
    return-void
.end method

.method public blacklist setAffiliationIds(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 925
    .local p2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist setAlwaysOnVpnPackage(Landroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "vpnPackage"    # Ljava/lang/String;
    .param p3, "lockdown"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Z",
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

    .line 431
    .local p4, "lockdownAllowlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "hidden"    # Z
    .param p5, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 555
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "settings"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 464
    return-void
.end method

.method public blacklist setApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 471
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setAutoTimeEnabled(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 767
    return-void
.end method

.method public blacklist setAutoTimeRequired(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "required"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 760
    return-void
.end method

.method public blacklist setAutoTimeZoneEnabled(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 774
    return-void
.end method

.method public blacklist setBackupServiceEnabled(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 984
    return-void
.end method

.method public blacklist setBluetoothContactSharingDisabled(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 730
    return-void
.end method

.method public blacklist setCameraDisabled(Landroid/content/ComponentName;ZZ)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    return-void
.end method

.method public blacklist setCertInstallerPackage(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "installerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 424
    return-void
.end method

.method public blacklist setCommonCriteriaModeEnabled(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1203
    return-void
.end method

.method public blacklist setConfiguredNetworksLockdownState(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "lockdown"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 670
    return-void
.end method

.method public blacklist setCrossProfileCalendarPackages(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1138
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 705
    return-void
.end method

.method public blacklist setCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 716
    return-void
.end method

.method public blacklist setCrossProfilePackages(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1153
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist setDefaultSmsApplication(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 461
    return-void
.end method

.method public blacklist setDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "delegatePackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 413
    .local p3, "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;IZ)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "setProfileOwnerOnCurrentUserIfNecessary"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setDeviceOwnerLockScreenInfo(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "deviceOwnerInfo"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 353
    return-void
.end method

.method public blacklist setDeviceOwnerType(Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "deviceOwnerType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1259
    return-void
.end method

.method public blacklist setDeviceProvisioningConfigApplied()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 978
    return-void
.end method

.method public blacklist setDpcDownloaded(Z)V
    .locals 0
    .param p1, "downloaded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1320
    return-void
.end method

.method public blacklist setDrawables(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/DevicePolicyDrawableResource;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1306
    .local p1, "drawables":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/DevicePolicyDrawableResource;>;"
    return-void
.end method

.method public blacklist setEndUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "endUserSessionMessage"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1074
    return-void
.end method

.method public blacklist setFactoryResetProtectionPolicy(Landroid/content/ComponentName;Landroid/app/admin/FactoryResetProtectionPolicy;)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policy"    # Landroid/app/admin/FactoryResetProtectionPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    return-void
.end method

.method public blacklist setForceEphemeralUsers(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "forceEpehemeralUsers"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 781
    return-void
.end method

.method public blacklist setGlobalPrivateDns(Landroid/content/ComponentName;ILjava/lang/String;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "mode"    # I
    .param p3, "privateDnsHost"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1120
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "proxySpec"    # Ljava/lang/String;
    .param p3, "exclusionList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 178
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 661
    return-void
.end method

.method public blacklist setKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 846
    .local p3, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist setKeyGrantForApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "hasGrant"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1180
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setKeyGrantToWifiAuth(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "hasGrant"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1188
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setKeyPairCertificate(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;[B[BZ)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "certBuffer"    # [B
    .param p5, "certChainBuffer"    # [B
    .param p6, "isUserSelectable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 406
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setKeyguardDisabled(Landroid/content/ComponentName;Z)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 805
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "which"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 233
    return-void
.end method

.method public blacklist setLocationEnabled(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "locationEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 677
    return-void
.end method

.method public blacklist setLockTaskFeatures(Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 654
    return-void
.end method

.method public blacklist setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 643
    return-void
.end method

.method public blacklist setLogoutEnabled(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1053
    return-void
.end method

.method public blacklist setLongSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 871
    return-void
.end method

.method public blacklist setManagedProfileMaximumTimeOff(Landroid/content/ComponentName;J)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1221
    return-void
.end method

.method public blacklist setMasterVolumeMuted(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 688
    return-void
.end method

.method public blacklist setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;IZ)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "num"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    return-void
.end method

.method public blacklist setMaximumTimeToLock(Landroid/content/ComponentName;JZ)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "timeMs"    # J
    .param p4, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    return-void
.end method

.method public blacklist setMeteredDataDisabledPackages(Landroid/content/ComponentName;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
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

    .line 1085
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setMinimumRequiredWifiSecurityLevel(I)V
    .locals 0
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1288
    return-void
.end method

.method public blacklist setNearbyAppStreamingPolicy(I)V
    .locals 0
    .param p1, "policy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    return-void
.end method

.method public blacklist setNearbyNotificationStreamingPolicy(I)V
    .locals 0
    .param p1, "policy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 219
    return-void
.end method

.method public blacklist setNetworkLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 991
    return-void
.end method

.method public blacklist setNextOperationSafety(II)V
    .locals 0
    .param p1, "operation"    # I
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1235
    return-void
.end method

.method public blacklist setOrganizationColor(Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "color"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 886
    return-void
.end method

.method public blacklist setOrganizationColorForUser(II)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 889
    return-void
.end method

.method public blacklist setOrganizationIdForUser(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "enterpriseId"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1246
    return-void
.end method

.method public blacklist setOrganizationName(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 903
    return-void
.end method

.method public blacklist setOverrideApnsEnabled(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1109
    return-void
.end method

.method public blacklist setPackagesSuspended(Landroid/content/ComponentName;Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageNames"    # [Ljava/lang/String;
    .param p4, "suspended"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 360
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setPasswordExpirationTimeout(Landroid/content/ComponentName;JZ)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "expiration"    # J
    .param p4, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    return-void
.end method

.method public blacklist setPasswordHistoryLength(Landroid/content/ComponentName;IZ)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    return-void
.end method

.method public blacklist setPasswordMinimumLength(Landroid/content/ComponentName;IZ)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist setPasswordMinimumLetters(Landroid/content/ComponentName;IZ)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public blacklist setPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist setPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    return-void
.end method

.method public blacklist setPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    return-void
.end method

.method public blacklist setPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    return-void
.end method

.method public blacklist setPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist setPasswordQuality(Landroid/content/ComponentName;IZ)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "quality"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public blacklist setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "permission"    # Ljava/lang/String;
    .param p5, "grantState"    # I
    .param p6, "resultReceiver"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 831
    return-void
.end method

.method public blacklist setPermissionPolicy(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "policy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 824
    return-void
.end method

.method public blacklist setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
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

    .line 503
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;Ljava/util/List;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
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

    .line 535
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;Z)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 519
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setPersonalAppsSuspended(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "suspended"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1214
    return-void
.end method

.method public blacklist setPreferentialNetworkServiceConfigs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/PreferentialNetworkServiceConfig;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 636
    .local p1, "preferentialNetworkServiceConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/PreferentialNetworkServiceConfig;>;"
    return-void
.end method

.method public blacklist setProfileEnabled(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 332
    return-void
.end method

.method public blacklist setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 335
    return-void
.end method

.method public blacklist setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 312
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setProfileOwnerOnOrganizationOwnedDevice(Landroid/content/ComponentName;IZ)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "isProfileOwnerOnOrganizationOwnedDevice"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1132
    return-void
.end method

.method public blacklist setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "proxyInfo"    # Landroid/net/ProxyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    return-void
.end method

.method public blacklist setRequiredPasswordComplexity(IZ)V
    .locals 0
    .param p1, "passwordComplexity"    # I
    .param p2, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    return-void
.end method

.method public blacklist setRequiredStrongAuthTimeout(Landroid/content/ComponentName;JZ)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "timeMs"    # J
    .param p4, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    return-void
.end method

.method public blacklist setResetPasswordToken(Landroid/content/ComponentName;[B)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "token"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1026
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "provider"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 483
    return-void
.end method

.method public blacklist setScreenCaptureDisabled(Landroid/content/ComponentName;ZZ)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    return-void
.end method

.method public blacklist setSecondaryLockscreenEnabled(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 629
    return-void
.end method

.method public blacklist setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 667
    return-void
.end method

.method public blacklist setSecurityLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 940
    return-void
.end method

.method public blacklist setShortSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 864
    return-void
.end method

.method public blacklist setStartUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "startUserSessionMessage"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1071
    return-void
.end method

.method public blacklist setStatusBarDisabled(Landroid/content/ComponentName;Z)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 809
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setStorageEncryption(Landroid/content/ComponentName;Z)I
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "encrypt"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setStrings(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/DevicePolicyStringResource;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1323
    .local p1, "strings":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/DevicePolicyStringResource;>;"
    return-void
.end method

.method public blacklist setSystemSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 664
    return-void
.end method

.method public blacklist setSystemUpdatePolicy(Landroid/content/ComponentName;Landroid/app/admin/SystemUpdatePolicy;)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policy"    # Landroid/app/admin/SystemUpdatePolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 795
    return-void
.end method

.method public blacklist setTime(Landroid/content/ComponentName;J)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "millis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 680
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setTimeZone(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "timeZone"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 684
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;Z)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "agent"    # Landroid/content/ComponentName;
    .param p3, "args"    # Landroid/os/PersistableBundle;
    .param p4, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 741
    return-void
.end method

.method public blacklist setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "uninstallBlocked"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 698
    return-void
.end method

.method public blacklist setUsbDataSignalingEnabled(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1273
    return-void
.end method

.method public blacklist setUserControlDisabledPackages(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1196
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist setUserIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 792
    return-void
.end method

.method public blacklist setUserProvisioningState(II)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 922
    return-void
.end method

.method public blacklist setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "enable"    # Z
    .param p4, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 490
    return-void
.end method

.method public blacklist setWifiSsidPolicy(Landroid/app/admin/WifiSsidPolicy;)V
    .locals 0
    .param p1, "policy"    # Landroid/app/admin/WifiSsidPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1295
    return-void
.end method

.method public blacklist shouldAllowBypassingDevicePolicyManagementRoleQualification()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1333
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startManagedQuickContact(Ljava/lang/String;JZJLandroid/content/Intent;)V
    .locals 0
    .param p1, "lookupKey"    # Ljava/lang/String;
    .param p2, "contactId"    # J
    .param p4, "isContactIdIgnored"    # Z
    .param p5, "directoryId"    # J
    .param p7, "originalIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 727
    return-void
.end method

.method public blacklist startUserInBackground(Landroid/content/ComponentName;Landroid/os/UserHandle;)I
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 575
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startViewCalendarEventInManagedProfile(Ljava/lang/String;JJJZI)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "eventId"    # J
    .param p4, "start"    # J
    .param p6, "end"    # J
    .param p8, "allDay"    # Z
    .param p9, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1176
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist stopUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)I
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 579
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 571
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist transferOwnership(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "target"    # Landroid/content/ComponentName;
    .param p3, "bundle"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1064
    return-void
.end method

.method public blacklist uninstallCaCerts(Landroid/content/ComponentName;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "aliases"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 376
    return-void
.end method

.method public blacklist uninstallPackageWithActiveAdmins(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 967
    return-void
.end method

.method public blacklist updateOverrideApn(Landroid/content/ComponentName;ILandroid/telephony/data/ApnSetting;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "apnId"    # I
    .param p3, "apnSetting"    # Landroid/telephony/data/ApnSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1097
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist wipeDataWithReason(ILjava/lang/String;Z)V
    .locals 0
    .param p1, "flags"    # I
    .param p2, "wipeReasonForUser"    # Ljava/lang/String;
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    return-void
.end method
