.class public abstract Landroid/app/admin/IDevicePolicyManager$Stub;
.super Landroid/os/Binder;
.source "IDevicePolicyManager.java"

# interfaces
.implements Landroid/app/admin/IDevicePolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/IDevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.admin.IDevicePolicyManager"

.field static final blacklist TRANSACTION_acknowledgeDeviceCompliant:I = 0x14b

.field static final blacklist TRANSACTION_acknowledgeNewUserDisclaimer:I = 0xa0

.field static final greylist-max-o TRANSACTION_addCrossProfileIntentFilter:I = 0x86

.field static final greylist-max-o TRANSACTION_addCrossProfileWidgetProvider:I = 0xca

.field static final greylist-max-o TRANSACTION_addOverrideApn:I = 0x128

.field static final greylist-max-o TRANSACTION_addPersistentPreferredActivity:I = 0x7a

.field static final greylist-max-o TRANSACTION_approveCaCert:I = 0x67

.field static final greylist-max-o TRANSACTION_bindDeviceAdminServiceAsUser:I = 0x110

.field static final blacklist TRANSACTION_canAdminGrantSensorsPermissionsForUser:I = 0x158

.field static final blacklist TRANSACTION_canProfileOwnerResetPasswordWhenLocked:I = 0x14d

.field static final blacklist TRANSACTION_canUsbDataSignalingBeDisabled:I = 0x15c

.field static final blacklist TRANSACTION_checkDeviceIdentifierAccess:I = 0x5e

.field static final blacklist TRANSACTION_checkProvisioningPrecondition:I = 0xe4

.field static final greylist-max-o TRANSACTION_choosePrivateKeyAlias:I = 0x6e

.field static final greylist-max-o TRANSACTION_clearApplicationUserData:I = 0x11c

.field static final greylist-max-o TRANSACTION_clearCrossProfileIntentFilters:I = 0x87

.field static final greylist-max-o TRANSACTION_clearDeviceOwner:I = 0x52

.field static final blacklist TRANSACTION_clearOrganizationIdForUser:I = 0xf2

.field static final greylist-max-o TRANSACTION_clearPackagePersistentPreferredActivities:I = 0x7b

.field static final greylist-max-o TRANSACTION_clearProfileOwner:I = 0x5b

.field static final greylist-max-o TRANSACTION_clearResetPasswordToken:I = 0x117

.field static final greylist-max-o TRANSACTION_clearSystemUpdatePolicyFreezePeriodRecord:I = 0xd9

.field static final greylist-max-o TRANSACTION_createAdminSupportIntent:I = 0x93

.field static final greylist-max-o TRANSACTION_createAndManageUser:I = 0x97

.field static final blacklist TRANSACTION_createAndProvisionManagedProfile:I = 0x152

.field static final greylist-max-o TRANSACTION_enableSystemApp:I = 0xa2

.field static final greylist-max-o TRANSACTION_enableSystemAppWithIntent:I = 0xa3

.field static final greylist-max-o TRANSACTION_enforceCanManageCaCerts:I = 0x66

.field static final blacklist TRANSACTION_finalizeWorkProfileProvisioning:I = 0x154

.field static final blacklist TRANSACTION_forceNetworkLogs:I = 0x103

.field static final greylist-max-o TRANSACTION_forceRemoveActiveAdmin:I = 0x45

.field static final greylist-max-o TRANSACTION_forceSecurityLogs:I = 0x104

.field static final greylist-max-o TRANSACTION_forceUpdateUserSetupComplete:I = 0x10a

.field static final greylist-max-o TRANSACTION_generateKeyPair:I = 0x6c

.field static final greylist-max-o TRANSACTION_getAccountTypesWithManagementDisabled:I = 0xa6

.field static final greylist-max-o TRANSACTION_getAccountTypesWithManagementDisabledAsUser:I = 0xa7

.field static final greylist-max-o TRANSACTION_getActiveAdmins:I = 0x41

.field static final greylist-max-o TRANSACTION_getAffiliationIds:I = 0xfc

.field static final blacklist TRANSACTION_getAggregatedPasswordComplexityForUser:I = 0x1d

.field static final blacklist TRANSACTION_getAllCrossProfilePackages:I = 0x13a

.field static final blacklist TRANSACTION_getAlwaysOnVpnLockdownAllowlist:I = 0x79

.field static final greylist-max-o TRANSACTION_getAlwaysOnVpnPackage:I = 0x75

.field static final blacklist TRANSACTION_getAlwaysOnVpnPackageForUser:I = 0x76

.field static final greylist-max-o TRANSACTION_getApplicationRestrictions:I = 0x7e

.field static final greylist-max-o TRANSACTION_getApplicationRestrictionsManagingPackage:I = 0x80

.field static final blacklist TRANSACTION_getAutoTimeEnabled:I = 0xd0

.field static final greylist-max-o TRANSACTION_getAutoTimeRequired:I = 0xce

.field static final blacklist TRANSACTION_getAutoTimeZoneEnabled:I = 0xd2

.field static final greylist-max-o TRANSACTION_getBindDeviceAdminTargetUsers:I = 0x111

.field static final greylist-max-o TRANSACTION_getBluetoothContactSharingDisabled:I = 0xc6

.field static final greylist-max-o TRANSACTION_getBluetoothContactSharingDisabledForUser:I = 0xc7

.field static final greylist-max-o TRANSACTION_getCameraDisabled:I = 0x36

.field static final greylist-max-o TRANSACTION_getCertInstallerPackage:I = 0x73

.field static final blacklist TRANSACTION_getCrossProfileCalendarPackages:I = 0x135

.field static final blacklist TRANSACTION_getCrossProfileCalendarPackagesForUser:I = 0x137

.field static final greylist-max-o TRANSACTION_getCrossProfileCallerIdDisabled:I = 0xbf

.field static final greylist-max-o TRANSACTION_getCrossProfileCallerIdDisabledForUser:I = 0xc0

.field static final greylist-max-o TRANSACTION_getCrossProfileContactsSearchDisabled:I = 0xc2

.field static final greylist-max-o TRANSACTION_getCrossProfileContactsSearchDisabledForUser:I = 0xc3

.field static final blacklist TRANSACTION_getCrossProfilePackages:I = 0x139

.field static final greylist-max-o TRANSACTION_getCrossProfileWidgetProviders:I = 0xcc

.field static final greylist-max-o TRANSACTION_getCurrentFailedPasswordAttempts:I = 0x1f

.field static final blacklist TRANSACTION_getDefaultCrossProfilePackages:I = 0x13b

.field static final greylist-max-o TRANSACTION_getDelegatePackages:I = 0x71

.field static final greylist-max-o TRANSACTION_getDelegatedScopes:I = 0x70

.field static final greylist-max-o TRANSACTION_getDeviceOwnerComponent:I = 0x4f

.field static final greylist-max-o TRANSACTION_getDeviceOwnerLockScreenInfo:I = 0x60

.field static final greylist-max-o TRANSACTION_getDeviceOwnerName:I = 0x51

.field static final greylist-max-o TRANSACTION_getDeviceOwnerOrganizationName:I = 0xf7

.field static final blacklist TRANSACTION_getDeviceOwnerType:I = 0x156

.field static final greylist-max-o TRANSACTION_getDeviceOwnerUserId:I = 0x53

.field static final greylist-max-o TRANSACTION_getDisallowedSystemApps:I = 0x11f

.field static final greylist-max-o TRANSACTION_getDoNotAskCredentialsOnBoot:I = 0xdc

.field static final blacklist TRANSACTION_getDrawable:I = 0x164

.field static final greylist-max-o TRANSACTION_getEndUserSessionMessage:I = 0x125

.field static final blacklist TRANSACTION_getEnforcingAdminAndUserDetails:I = 0x94

.field static final blacklist TRANSACTION_getEnrollmentSpecificId:I = 0x150

.field static final blacklist TRANSACTION_getFactoryResetProtectionPolicy:I = 0x2b

.field static final greylist-max-o TRANSACTION_getForceEphemeralUsers:I = 0xd4

.field static final blacklist TRANSACTION_getGlobalPrivateDnsHost:I = 0x131

.field static final blacklist TRANSACTION_getGlobalPrivateDnsMode:I = 0x130

.field static final greylist-max-o TRANSACTION_getGlobalProxyAdmin:I = 0x2f

.field static final greylist-max-o TRANSACTION_getKeepUninstalledPackages:I = 0xe6

.field static final blacklist TRANSACTION_getKeyPairGrants:I = 0x140

.field static final greylist-max-o TRANSACTION_getKeyguardDisabledFeatures:I = 0x3e

.field static final greylist-max-o TRANSACTION_getLastBugReportRequestTime:I = 0x114

.field static final greylist-max-o TRANSACTION_getLastNetworkLogRetrievalTime:I = 0x115

.field static final greylist-max-o TRANSACTION_getLastSecurityLogRetrievalTime:I = 0x113

.field static final greylist-max-o TRANSACTION_getLockTaskFeatures:I = 0xb0

.field static final greylist-max-o TRANSACTION_getLockTaskPackages:I = 0xad

.field static final blacklist TRANSACTION_getLogoutUserId:I = 0x9e

.field static final greylist-max-o TRANSACTION_getLongSupportMessage:I = 0xed

.field static final greylist-max-o TRANSACTION_getLongSupportMessageForUser:I = 0xef

.field static final blacklist TRANSACTION_getManagedProfileMaximumTimeOff:I = 0x149

.field static final greylist-max-o TRANSACTION_getMaximumFailedPasswordsForWipe:I = 0x22

.field static final greylist-max-o TRANSACTION_getMaximumTimeToLock:I = 0x25

.field static final greylist-max-o TRANSACTION_getMeteredDataDisabledPackages:I = 0x127

.field static final blacklist TRANSACTION_getMinimumRequiredWifiSecurityLevel:I = 0x15e

.field static final blacklist TRANSACTION_getNearbyAppStreamingPolicy:I = 0x3c

.field static final blacklist TRANSACTION_getNearbyNotificationStreamingPolicy:I = 0x3a

.field static final greylist-max-o TRANSACTION_getOrganizationColor:I = 0xf3

.field static final greylist-max-o TRANSACTION_getOrganizationColorForUser:I = 0xf4

.field static final greylist-max-o TRANSACTION_getOrganizationName:I = 0xf6

.field static final greylist-max-o TRANSACTION_getOrganizationNameForUser:I = 0xf8

.field static final greylist-max-o TRANSACTION_getOverrideApns:I = 0x12b

.field static final greylist-max-o TRANSACTION_getOwnerInstalledCaCerts:I = 0x11b

.field static final blacklist TRANSACTION_getPasswordComplexity:I = 0x1a

.field static final greylist-max-o TRANSACTION_getPasswordExpiration:I = 0x16

.field static final greylist-max-o TRANSACTION_getPasswordExpirationTimeout:I = 0x15

.field static final greylist-max-o TRANSACTION_getPasswordHistoryLength:I = 0x13

.field static final greylist-max-o TRANSACTION_getPasswordMinimumLength:I = 0x4

.field static final greylist-max-o TRANSACTION_getPasswordMinimumLetters:I = 0xa

.field static final greylist-max-o TRANSACTION_getPasswordMinimumLowerCase:I = 0x8

.field static final blacklist TRANSACTION_getPasswordMinimumMetrics:I = 0x11

.field static final greylist-max-o TRANSACTION_getPasswordMinimumNonLetter:I = 0x10

.field static final greylist-max-o TRANSACTION_getPasswordMinimumNumeric:I = 0xc

.field static final greylist-max-o TRANSACTION_getPasswordMinimumSymbols:I = 0xe

.field static final greylist-max-o TRANSACTION_getPasswordMinimumUpperCase:I = 0x6

.field static final greylist-max-o TRANSACTION_getPasswordQuality:I = 0x2

.field static final greylist-max-o TRANSACTION_getPendingSystemUpdate:I = 0xde

.field static final greylist-max-o TRANSACTION_getPermissionGrantState:I = 0xe2

.field static final greylist-max-o TRANSACTION_getPermissionPolicy:I = 0xe0

.field static final greylist-max-o TRANSACTION_getPermittedAccessibilityServices:I = 0x89

.field static final greylist-max-o TRANSACTION_getPermittedAccessibilityServicesForUser:I = 0x8a

.field static final greylist-max-o TRANSACTION_getPermittedCrossProfileNotificationListeners:I = 0x91

.field static final greylist-max-o TRANSACTION_getPermittedInputMethods:I = 0x8d

.field static final blacklist TRANSACTION_getPermittedInputMethodsAsUser:I = 0x8e

.field static final blacklist TRANSACTION_getPersonalAppsSuspendedReasons:I = 0x147

.field static final blacklist TRANSACTION_getPolicyManagedProfiles:I = 0x16b

.field static final blacklist TRANSACTION_getPreferentialNetworkServiceConfigs:I = 0xab

.field static final blacklist TRANSACTION_getProfileOwnerAsUser:I = 0x55

.field static final greylist-max-o TRANSACTION_getProfileOwnerName:I = 0x58

.field static final blacklist TRANSACTION_getProfileOwnerOrDeviceOwnerSupervisionComponent:I = 0x56

.field static final greylist-max-o TRANSACTION_getProfileWithMinimumFailedPasswordsForWipe:I = 0x20

.field static final greylist-max-o TRANSACTION_getRemoveWarning:I = 0x43

.field static final blacklist TRANSACTION_getRequiredPasswordComplexity:I = 0x1c

.field static final greylist-max-o TRANSACTION_getRequiredStrongAuthTimeout:I = 0x27

.field static final greylist-max-o TRANSACTION_getRestrictionsProvider:I = 0x83

.field static final greylist-max-o TRANSACTION_getScreenCaptureDisabled:I = 0x38

.field static final greylist-max-o TRANSACTION_getSecondaryUsers:I = 0x9f

.field static final greylist-max-o TRANSACTION_getShortSupportMessage:I = 0xeb

.field static final greylist-max-o TRANSACTION_getShortSupportMessageForUser:I = 0xee

.field static final greylist-max-o TRANSACTION_getStartUserSessionMessage:I = 0x124

.field static final greylist-max-o TRANSACTION_getStorageEncryption:I = 0x32

.field static final greylist-max-o TRANSACTION_getStorageEncryptionStatus:I = 0x33

.field static final blacklist TRANSACTION_getString:I = 0x169

.field static final greylist-max-o TRANSACTION_getSystemUpdatePolicy:I = 0xd8

.field static final greylist-max-o TRANSACTION_getTransferOwnershipBundle:I = 0x121

.field static final greylist-max-o TRANSACTION_getTrustAgentConfiguration:I = 0xc9

.field static final blacklist TRANSACTION_getUserControlDisabledPackages:I = 0x144

.field static final greylist-max-o TRANSACTION_getUserProvisioningState:I = 0xf9

.field static final greylist-max-o TRANSACTION_getUserRestrictions:I = 0x85

.field static final greylist-max-o TRANSACTION_getWifiMacAddress:I = 0xe8

.field static final blacklist TRANSACTION_getWifiSsidPolicy:I = 0x160

.field static final greylist-max-o TRANSACTION_hasDeviceOwner:I = 0x50

.field static final greylist-max-o TRANSACTION_hasGrantedPolicy:I = 0x46

.field static final blacklist TRANSACTION_hasKeyPair:I = 0x6b

.field static final blacklist TRANSACTION_hasLockdownAdminConfiguredNetworks:I = 0xb5

.field static final greylist-max-o TRANSACTION_hasUserSetupCompleted:I = 0x5c

.field static final greylist-max-o TRANSACTION_installCaCert:I = 0x64

.field static final greylist-max-o TRANSACTION_installExistingPackage:I = 0xa4

.field static final greylist-max-o TRANSACTION_installKeyPair:I = 0x69

.field static final blacklist TRANSACTION_installUpdateFromFile:I = 0x133

.field static final greylist-max-o TRANSACTION_isAccessibilityServicePermittedByAdmin:I = 0x8b

.field static final greylist-max-o TRANSACTION_isActivePasswordSufficient:I = 0x17

.field static final blacklist TRANSACTION_isActivePasswordSufficientForDeviceRequirement:I = 0x18

.field static final greylist-max-o TRANSACTION_isAdminActive:I = 0x40

.field static final greylist-max-o TRANSACTION_isAffiliatedUser:I = 0xfe

.field static final blacklist TRANSACTION_isAlwaysOnVpnLockdownEnabled:I = 0x77

.field static final blacklist TRANSACTION_isAlwaysOnVpnLockdownEnabledForUser:I = 0x78

.field static final greylist-max-o TRANSACTION_isApplicationHidden:I = 0x96

.field static final greylist-max-o TRANSACTION_isBackupServiceEnabled:I = 0x10c

.field static final greylist-max-o TRANSACTION_isCaCertApproved:I = 0x68

.field static final greylist-max-o TRANSACTION_isCallerApplicationRestrictionsManagingPackage:I = 0x81

.field static final blacklist TRANSACTION_isCallingUserAffiliated:I = 0xfd

.field static final blacklist TRANSACTION_isCommonCriteriaModeEnabled:I = 0x146

.field static final blacklist TRANSACTION_isComplianceAcknowledgementRequired:I = 0x14c

.field static final greylist-max-o TRANSACTION_isCurrentInputMethodSetByOwner:I = 0x11a

.field static final greylist-max-o TRANSACTION_isDeviceProvisioned:I = 0x107

.field static final greylist-max-o TRANSACTION_isDeviceProvisioningConfigApplied:I = 0x108

.field static final blacklist TRANSACTION_isDpcDownloaded:I = 0x165

.field static final greylist-max-o TRANSACTION_isEphemeralUser:I = 0x112

.field static final blacklist TRANSACTION_isFactoryResetProtectionPolicySupported:I = 0x2c

.field static final greylist-max-o TRANSACTION_isInputMethodPermittedByAdmin:I = 0x8f

.field static final blacklist TRANSACTION_isKeyPairGrantedToWifiAuth:I = 0x142

.field static final greylist-max-o TRANSACTION_isLockTaskPermitted:I = 0xae

.field static final greylist-max-o TRANSACTION_isLogoutEnabled:I = 0x11e

.field static final blacklist TRANSACTION_isManagedKiosk:I = 0x13c

.field static final greylist-max-o TRANSACTION_isManagedProfile:I = 0xe7

.field static final greylist-max-o TRANSACTION_isMasterVolumeMuted:I = 0xba

.field static final greylist-max-o TRANSACTION_isMeteredDataDisabledPackageForUser:I = 0x12e

.field static final greylist-max-o TRANSACTION_isNetworkLoggingEnabled:I = 0x10e

.field static final blacklist TRANSACTION_isNewUserDisclaimerAcknowledged:I = 0xa1

.field static final greylist-max-o TRANSACTION_isNotificationListenerServicePermitted:I = 0x92

.field static final blacklist TRANSACTION_isOrganizationOwnedDeviceWithManagedProfile:I = 0x5d

.field static final greylist-max-o TRANSACTION_isOverrideApnEnabled:I = 0x12d

.field static final blacklist TRANSACTION_isPackageAllowedToAccessCalendarForUser:I = 0x136

.field static final greylist-max-o TRANSACTION_isPackageSuspended:I = 0x62

.field static final blacklist TRANSACTION_isPasswordSufficientAfterProfileUnification:I = 0x19

.field static final greylist-max-o TRANSACTION_isProvisioningAllowed:I = 0xe3

.field static final greylist-max-o TRANSACTION_isRemovingAdmin:I = 0xd5

.field static final greylist-max-o TRANSACTION_isResetPasswordTokenActive:I = 0x118

.field static final blacklist TRANSACTION_isSafeOperation:I = 0x14f

.field static final blacklist TRANSACTION_isSecondaryLockscreenEnabled:I = 0xa9

.field static final greylist-max-o TRANSACTION_isSecurityLoggingEnabled:I = 0x100

.field static final blacklist TRANSACTION_isSupervisionComponent:I = 0x57

.field static final blacklist TRANSACTION_isUnattendedManagedKiosk:I = 0x13d

.field static final greylist-max-o TRANSACTION_isUninstallBlocked:I = 0xbd

.field static final greylist-max-o TRANSACTION_isUninstallInQueue:I = 0x105

.field static final blacklist TRANSACTION_isUsbDataSignalingEnabled:I = 0x15a

.field static final blacklist TRANSACTION_isUsbDataSignalingEnabledForUser:I = 0x15b

.field static final greylist-max-o TRANSACTION_isUsingUnifiedPassword:I = 0x1e

.field static final blacklist TRANSACTION_listForegroundAffiliatedUsers:I = 0x161

.field static final blacklist TRANSACTION_listPolicyExemptApps:I = 0x63

.field static final greylist-max-o TRANSACTION_lockNow:I = 0x28

.field static final greylist-max-o TRANSACTION_logoutUser:I = 0x9c

.field static final blacklist TRANSACTION_logoutUserInternal:I = 0x9d

.field static final greylist-max-o TRANSACTION_notifyLockTaskModeChanged:I = 0xbb

.field static final greylist-max-o TRANSACTION_notifyPendingSystemUpdate:I = 0xdd

.field static final greylist TRANSACTION_packageHasActiveAdmins:I = 0x42

.field static final blacklist TRANSACTION_provisionFullyManagedDevice:I = 0x153

.field static final greylist-max-o TRANSACTION_reboot:I = 0xe9

.field static final greylist TRANSACTION_removeActiveAdmin:I = 0x44

.field static final greylist-max-o TRANSACTION_removeCrossProfileWidgetProvider:I = 0xcb

.field static final greylist-max-o TRANSACTION_removeKeyPair:I = 0x6a

.field static final greylist-max-o TRANSACTION_removeOverrideApn:I = 0x12a

.field static final greylist-max-o TRANSACTION_removeUser:I = 0x98

.field static final blacklist TRANSACTION_reportFailedBiometricAttempt:I = 0x4a

.field static final greylist-max-o TRANSACTION_reportFailedPasswordAttempt:I = 0x48

.field static final greylist-max-o TRANSACTION_reportKeyguardDismissed:I = 0x4c

.field static final greylist-max-o TRANSACTION_reportKeyguardSecured:I = 0x4d

.field static final greylist-max-o TRANSACTION_reportPasswordChanged:I = 0x47

.field static final blacklist TRANSACTION_reportSuccessfulBiometricAttempt:I = 0x4b

.field static final greylist-max-o TRANSACTION_reportSuccessfulPasswordAttempt:I = 0x49

.field static final greylist-max-o TRANSACTION_requestBugreport:I = 0x34

.field static final blacklist TRANSACTION_resetDefaultCrossProfileIntentFilters:I = 0x157

.field static final blacklist TRANSACTION_resetDrawables:I = 0x163

.field static final greylist-max-o TRANSACTION_resetPassword:I = 0x23

.field static final greylist-max-o TRANSACTION_resetPasswordWithToken:I = 0x119

.field static final blacklist TRANSACTION_resetStrings:I = 0x168

.field static final greylist-max-o TRANSACTION_retrieveNetworkLogs:I = 0x10f

.field static final greylist-max-o TRANSACTION_retrievePreRebootSecurityLogs:I = 0x102

.field static final greylist-max-o TRANSACTION_retrieveSecurityLogs:I = 0x101

.field static final blacklist TRANSACTION_sendLostModeLocationUpdate:I = 0x2d

.field static final greylist-max-o TRANSACTION_setAccountManagementDisabled:I = 0xa5

.field static final greylist-max-o TRANSACTION_setActiveAdmin:I = 0x3f

.field static final greylist-max-o TRANSACTION_setAffiliationIds:I = 0xfb

.field static final greylist-max-o TRANSACTION_setAlwaysOnVpnPackage:I = 0x74

.field static final greylist-max-o TRANSACTION_setApplicationHidden:I = 0x95

.field static final greylist-max-o TRANSACTION_setApplicationRestrictions:I = 0x7d

.field static final greylist-max-o TRANSACTION_setApplicationRestrictionsManagingPackage:I = 0x7f

.field static final blacklist TRANSACTION_setAutoTimeEnabled:I = 0xcf

.field static final greylist-max-o TRANSACTION_setAutoTimeRequired:I = 0xcd

.field static final blacklist TRANSACTION_setAutoTimeZoneEnabled:I = 0xd1

.field static final greylist-max-o TRANSACTION_setBackupServiceEnabled:I = 0x10b

.field static final greylist-max-o TRANSACTION_setBluetoothContactSharingDisabled:I = 0xc5

.field static final greylist-max-o TRANSACTION_setCameraDisabled:I = 0x35

.field static final greylist-max-o TRANSACTION_setCertInstallerPackage:I = 0x72

.field static final blacklist TRANSACTION_setCommonCriteriaModeEnabled:I = 0x145

.field static final blacklist TRANSACTION_setConfiguredNetworksLockdownState:I = 0xb4

.field static final blacklist TRANSACTION_setCrossProfileCalendarPackages:I = 0x134

.field static final greylist-max-o TRANSACTION_setCrossProfileCallerIdDisabled:I = 0xbe

.field static final greylist-max-o TRANSACTION_setCrossProfileContactsSearchDisabled:I = 0xc1

.field static final blacklist TRANSACTION_setCrossProfilePackages:I = 0x138

.field static final greylist-max-o TRANSACTION_setDefaultSmsApplication:I = 0x7c

.field static final greylist-max-o TRANSACTION_setDelegatedScopes:I = 0x6f

.field static final greylist-max-o TRANSACTION_setDeviceOwner:I = 0x4e

.field static final greylist-max-o TRANSACTION_setDeviceOwnerLockScreenInfo:I = 0x5f

.field static final blacklist TRANSACTION_setDeviceOwnerType:I = 0x155

.field static final greylist-max-o TRANSACTION_setDeviceProvisioningConfigApplied:I = 0x109

.field static final blacklist TRANSACTION_setDpcDownloaded:I = 0x166

.field static final blacklist TRANSACTION_setDrawables:I = 0x162

.field static final greylist-max-o TRANSACTION_setEndUserSessionMessage:I = 0x123

.field static final blacklist TRANSACTION_setFactoryResetProtectionPolicy:I = 0x2a

.field static final greylist-max-o TRANSACTION_setForceEphemeralUsers:I = 0xd3

.field static final blacklist TRANSACTION_setGlobalPrivateDns:I = 0x12f

.field static final greylist-max-o TRANSACTION_setGlobalProxy:I = 0x2e

.field static final greylist-max-o TRANSACTION_setGlobalSetting:I = 0xb1

.field static final greylist-max-o TRANSACTION_setKeepUninstalledPackages:I = 0xe5

.field static final blacklist TRANSACTION_setKeyGrantForApp:I = 0x13f

.field static final blacklist TRANSACTION_setKeyGrantToWifiAuth:I = 0x141

.field static final greylist-max-o TRANSACTION_setKeyPairCertificate:I = 0x6d

.field static final greylist-max-o TRANSACTION_setKeyguardDisabled:I = 0xda

.field static final greylist-max-o TRANSACTION_setKeyguardDisabledFeatures:I = 0x3d

.field static final blacklist TRANSACTION_setLocationEnabled:I = 0xb6

.field static final greylist-max-o TRANSACTION_setLockTaskFeatures:I = 0xaf

.field static final greylist-max-o TRANSACTION_setLockTaskPackages:I = 0xac

.field static final greylist-max-o TRANSACTION_setLogoutEnabled:I = 0x11d

.field static final greylist-max-o TRANSACTION_setLongSupportMessage:I = 0xec

.field static final blacklist TRANSACTION_setManagedProfileMaximumTimeOff:I = 0x14a

.field static final greylist-max-o TRANSACTION_setMasterVolumeMuted:I = 0xb9

.field static final greylist-max-o TRANSACTION_setMaximumFailedPasswordsForWipe:I = 0x21

.field static final greylist-max-o TRANSACTION_setMaximumTimeToLock:I = 0x24

.field static final greylist-max-o TRANSACTION_setMeteredDataDisabledPackages:I = 0x126

.field static final blacklist TRANSACTION_setMinimumRequiredWifiSecurityLevel:I = 0x15d

.field static final blacklist TRANSACTION_setNearbyAppStreamingPolicy:I = 0x3b

.field static final blacklist TRANSACTION_setNearbyNotificationStreamingPolicy:I = 0x39

.field static final greylist-max-o TRANSACTION_setNetworkLoggingEnabled:I = 0x10d

.field static final blacklist TRANSACTION_setNextOperationSafety:I = 0x14e

.field static final greylist-max-o TRANSACTION_setOrganizationColor:I = 0xf0

.field static final greylist-max-o TRANSACTION_setOrganizationColorForUser:I = 0xf1

.field static final blacklist TRANSACTION_setOrganizationIdForUser:I = 0x151

.field static final greylist-max-o TRANSACTION_setOrganizationName:I = 0xf5

.field static final greylist-max-o TRANSACTION_setOverrideApnsEnabled:I = 0x12c

.field static final greylist-max-o TRANSACTION_setPackagesSuspended:I = 0x61

.field static final greylist-max-o TRANSACTION_setPasswordExpirationTimeout:I = 0x14

.field static final greylist-max-o TRANSACTION_setPasswordHistoryLength:I = 0x12

.field static final greylist-max-o TRANSACTION_setPasswordMinimumLength:I = 0x3

.field static final greylist-max-o TRANSACTION_setPasswordMinimumLetters:I = 0x9

.field static final greylist-max-o TRANSACTION_setPasswordMinimumLowerCase:I = 0x7

.field static final greylist-max-o TRANSACTION_setPasswordMinimumNonLetter:I = 0xf

.field static final greylist-max-o TRANSACTION_setPasswordMinimumNumeric:I = 0xb

.field static final greylist-max-o TRANSACTION_setPasswordMinimumSymbols:I = 0xd

.field static final greylist-max-o TRANSACTION_setPasswordMinimumUpperCase:I = 0x5

.field static final greylist-max-o TRANSACTION_setPasswordQuality:I = 0x1

.field static final greylist-max-o TRANSACTION_setPermissionGrantState:I = 0xe1

.field static final greylist-max-o TRANSACTION_setPermissionPolicy:I = 0xdf

.field static final greylist-max-o TRANSACTION_setPermittedAccessibilityServices:I = 0x88

.field static final greylist-max-o TRANSACTION_setPermittedCrossProfileNotificationListeners:I = 0x90

.field static final greylist-max-o TRANSACTION_setPermittedInputMethods:I = 0x8c

.field static final blacklist TRANSACTION_setPersonalAppsSuspended:I = 0x148

.field static final blacklist TRANSACTION_setPreferentialNetworkServiceConfigs:I = 0xaa

.field static final greylist-max-o TRANSACTION_setProfileEnabled:I = 0x59

.field static final greylist-max-o TRANSACTION_setProfileName:I = 0x5a

.field static final greylist-max-o TRANSACTION_setProfileOwner:I = 0x54

.field static final blacklist TRANSACTION_setProfileOwnerOnOrganizationOwnedDevice:I = 0x132

.field static final greylist-max-o TRANSACTION_setRecommendedGlobalProxy:I = 0x30

.field static final blacklist TRANSACTION_setRequiredPasswordComplexity:I = 0x1b

.field static final greylist-max-o TRANSACTION_setRequiredStrongAuthTimeout:I = 0x26

.field static final greylist-max-o TRANSACTION_setResetPasswordToken:I = 0x116

.field static final greylist-max-o TRANSACTION_setRestrictionsProvider:I = 0x82

.field static final greylist-max-o TRANSACTION_setScreenCaptureDisabled:I = 0x37

.field static final blacklist TRANSACTION_setSecondaryLockscreenEnabled:I = 0xa8

.field static final greylist-max-o TRANSACTION_setSecureSetting:I = 0xb3

.field static final greylist-max-o TRANSACTION_setSecurityLoggingEnabled:I = 0xff

.field static final greylist-max-o TRANSACTION_setShortSupportMessage:I = 0xea

.field static final greylist-max-o TRANSACTION_setStartUserSessionMessage:I = 0x122

.field static final greylist-max-o TRANSACTION_setStatusBarDisabled:I = 0xdb

.field static final greylist-max-o TRANSACTION_setStorageEncryption:I = 0x31

.field static final blacklist TRANSACTION_setStrings:I = 0x167

.field static final greylist-max-o TRANSACTION_setSystemSetting:I = 0xb2

.field static final greylist-max-o TRANSACTION_setSystemUpdatePolicy:I = 0xd7

.field static final greylist-max-o TRANSACTION_setTime:I = 0xb7

.field static final greylist-max-o TRANSACTION_setTimeZone:I = 0xb8

.field static final greylist-max-o TRANSACTION_setTrustAgentConfiguration:I = 0xc8

.field static final greylist-max-o TRANSACTION_setUninstallBlocked:I = 0xbc

.field static final blacklist TRANSACTION_setUsbDataSignalingEnabled:I = 0x159

.field static final blacklist TRANSACTION_setUserControlDisabledPackages:I = 0x143

.field static final greylist-max-o TRANSACTION_setUserIcon:I = 0xd6

.field static final greylist-max-o TRANSACTION_setUserProvisioningState:I = 0xfa

.field static final greylist-max-o TRANSACTION_setUserRestriction:I = 0x84

.field static final blacklist TRANSACTION_setWifiSsidPolicy:I = 0x15f

.field static final blacklist TRANSACTION_shouldAllowBypassingDevicePolicyManagementRoleQualification:I = 0x16a

.field static final greylist-max-o TRANSACTION_startManagedQuickContact:I = 0xc4

.field static final greylist-max-o TRANSACTION_startUserInBackground:I = 0x9a

.field static final blacklist TRANSACTION_startViewCalendarEventInManagedProfile:I = 0x13e

.field static final greylist-max-o TRANSACTION_stopUser:I = 0x9b

.field static final greylist-max-o TRANSACTION_switchUser:I = 0x99

.field static final greylist-max-o TRANSACTION_transferOwnership:I = 0x120

.field static final greylist-max-o TRANSACTION_uninstallCaCerts:I = 0x65

.field static final greylist-max-o TRANSACTION_uninstallPackageWithActiveAdmins:I = 0x106

.field static final greylist-max-o TRANSACTION_updateOverrideApn:I = 0x129

.field static final greylist-max-o TRANSACTION_wipeDataWithReason:I = 0x29


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 1349
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1350
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 1351
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 1358
    if-nez p0, :cond_0

    .line 1359
    const/4 v0, 0x0

    return-object v0

    .line 1361
    :cond_0
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 1362
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_1

    .line 1363
    move-object v1, v0

    check-cast v1, Landroid/app/admin/IDevicePolicyManager;

    return-object v1

    .line 1365
    :cond_1
    new-instance v1, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 1374
    packed-switch p0, :pswitch_data_0

    .line 2830
    const/4 v0, 0x0

    return-object v0

    .line 2826
    :pswitch_0
    const-string v0, "getPolicyManagedProfiles"

    return-object v0

    .line 2822
    :pswitch_1
    const-string/jumbo v0, "shouldAllowBypassingDevicePolicyManagementRoleQualification"

    return-object v0

    .line 2818
    :pswitch_2
    const-string v0, "getString"

    return-object v0

    .line 2814
    :pswitch_3
    const-string/jumbo v0, "resetStrings"

    return-object v0

    .line 2810
    :pswitch_4
    const-string/jumbo v0, "setStrings"

    return-object v0

    .line 2806
    :pswitch_5
    const-string/jumbo v0, "setDpcDownloaded"

    return-object v0

    .line 2802
    :pswitch_6
    const-string v0, "isDpcDownloaded"

    return-object v0

    .line 2798
    :pswitch_7
    const-string v0, "getDrawable"

    return-object v0

    .line 2794
    :pswitch_8
    const-string/jumbo v0, "resetDrawables"

    return-object v0

    .line 2790
    :pswitch_9
    const-string/jumbo v0, "setDrawables"

    return-object v0

    .line 2786
    :pswitch_a
    const-string v0, "listForegroundAffiliatedUsers"

    return-object v0

    .line 2782
    :pswitch_b
    const-string v0, "getWifiSsidPolicy"

    return-object v0

    .line 2778
    :pswitch_c
    const-string/jumbo v0, "setWifiSsidPolicy"

    return-object v0

    .line 2774
    :pswitch_d
    const-string v0, "getMinimumRequiredWifiSecurityLevel"

    return-object v0

    .line 2770
    :pswitch_e
    const-string/jumbo v0, "setMinimumRequiredWifiSecurityLevel"

    return-object v0

    .line 2766
    :pswitch_f
    const-string v0, "canUsbDataSignalingBeDisabled"

    return-object v0

    .line 2762
    :pswitch_10
    const-string v0, "isUsbDataSignalingEnabledForUser"

    return-object v0

    .line 2758
    :pswitch_11
    const-string v0, "isUsbDataSignalingEnabled"

    return-object v0

    .line 2754
    :pswitch_12
    const-string/jumbo v0, "setUsbDataSignalingEnabled"

    return-object v0

    .line 2750
    :pswitch_13
    const-string v0, "canAdminGrantSensorsPermissionsForUser"

    return-object v0

    .line 2746
    :pswitch_14
    const-string/jumbo v0, "resetDefaultCrossProfileIntentFilters"

    return-object v0

    .line 2742
    :pswitch_15
    const-string v0, "getDeviceOwnerType"

    return-object v0

    .line 2738
    :pswitch_16
    const-string/jumbo v0, "setDeviceOwnerType"

    return-object v0

    .line 2734
    :pswitch_17
    const-string v0, "finalizeWorkProfileProvisioning"

    return-object v0

    .line 2730
    :pswitch_18
    const-string/jumbo v0, "provisionFullyManagedDevice"

    return-object v0

    .line 2726
    :pswitch_19
    const-string v0, "createAndProvisionManagedProfile"

    return-object v0

    .line 2722
    :pswitch_1a
    const-string/jumbo v0, "setOrganizationIdForUser"

    return-object v0

    .line 2718
    :pswitch_1b
    const-string v0, "getEnrollmentSpecificId"

    return-object v0

    .line 2714
    :pswitch_1c
    const-string v0, "isSafeOperation"

    return-object v0

    .line 2710
    :pswitch_1d
    const-string/jumbo v0, "setNextOperationSafety"

    return-object v0

    .line 2706
    :pswitch_1e
    const-string v0, "canProfileOwnerResetPasswordWhenLocked"

    return-object v0

    .line 2702
    :pswitch_1f
    const-string v0, "isComplianceAcknowledgementRequired"

    return-object v0

    .line 2698
    :pswitch_20
    const-string v0, "acknowledgeDeviceCompliant"

    return-object v0

    .line 2694
    :pswitch_21
    const-string/jumbo v0, "setManagedProfileMaximumTimeOff"

    return-object v0

    .line 2690
    :pswitch_22
    const-string v0, "getManagedProfileMaximumTimeOff"

    return-object v0

    .line 2686
    :pswitch_23
    const-string/jumbo v0, "setPersonalAppsSuspended"

    return-object v0

    .line 2682
    :pswitch_24
    const-string v0, "getPersonalAppsSuspendedReasons"

    return-object v0

    .line 2678
    :pswitch_25
    const-string v0, "isCommonCriteriaModeEnabled"

    return-object v0

    .line 2674
    :pswitch_26
    const-string/jumbo v0, "setCommonCriteriaModeEnabled"

    return-object v0

    .line 2670
    :pswitch_27
    const-string v0, "getUserControlDisabledPackages"

    return-object v0

    .line 2666
    :pswitch_28
    const-string/jumbo v0, "setUserControlDisabledPackages"

    return-object v0

    .line 2662
    :pswitch_29
    const-string v0, "isKeyPairGrantedToWifiAuth"

    return-object v0

    .line 2658
    :pswitch_2a
    const-string/jumbo v0, "setKeyGrantToWifiAuth"

    return-object v0

    .line 2654
    :pswitch_2b
    const-string v0, "getKeyPairGrants"

    return-object v0

    .line 2650
    :pswitch_2c
    const-string/jumbo v0, "setKeyGrantForApp"

    return-object v0

    .line 2646
    :pswitch_2d
    const-string/jumbo v0, "startViewCalendarEventInManagedProfile"

    return-object v0

    .line 2642
    :pswitch_2e
    const-string v0, "isUnattendedManagedKiosk"

    return-object v0

    .line 2638
    :pswitch_2f
    const-string v0, "isManagedKiosk"

    return-object v0

    .line 2634
    :pswitch_30
    const-string v0, "getDefaultCrossProfilePackages"

    return-object v0

    .line 2630
    :pswitch_31
    const-string v0, "getAllCrossProfilePackages"

    return-object v0

    .line 2626
    :pswitch_32
    const-string v0, "getCrossProfilePackages"

    return-object v0

    .line 2622
    :pswitch_33
    const-string/jumbo v0, "setCrossProfilePackages"

    return-object v0

    .line 2618
    :pswitch_34
    const-string v0, "getCrossProfileCalendarPackagesForUser"

    return-object v0

    .line 2614
    :pswitch_35
    const-string v0, "isPackageAllowedToAccessCalendarForUser"

    return-object v0

    .line 2610
    :pswitch_36
    const-string v0, "getCrossProfileCalendarPackages"

    return-object v0

    .line 2606
    :pswitch_37
    const-string/jumbo v0, "setCrossProfileCalendarPackages"

    return-object v0

    .line 2602
    :pswitch_38
    const-string v0, "installUpdateFromFile"

    return-object v0

    .line 2598
    :pswitch_39
    const-string/jumbo v0, "setProfileOwnerOnOrganizationOwnedDevice"

    return-object v0

    .line 2594
    :pswitch_3a
    const-string v0, "getGlobalPrivateDnsHost"

    return-object v0

    .line 2590
    :pswitch_3b
    const-string v0, "getGlobalPrivateDnsMode"

    return-object v0

    .line 2586
    :pswitch_3c
    const-string/jumbo v0, "setGlobalPrivateDns"

    return-object v0

    .line 2582
    :pswitch_3d
    const-string v0, "isMeteredDataDisabledPackageForUser"

    return-object v0

    .line 2578
    :pswitch_3e
    const-string v0, "isOverrideApnEnabled"

    return-object v0

    .line 2574
    :pswitch_3f
    const-string/jumbo v0, "setOverrideApnsEnabled"

    return-object v0

    .line 2570
    :pswitch_40
    const-string v0, "getOverrideApns"

    return-object v0

    .line 2566
    :pswitch_41
    const-string/jumbo v0, "removeOverrideApn"

    return-object v0

    .line 2562
    :pswitch_42
    const-string/jumbo v0, "updateOverrideApn"

    return-object v0

    .line 2558
    :pswitch_43
    const-string v0, "addOverrideApn"

    return-object v0

    .line 2554
    :pswitch_44
    const-string v0, "getMeteredDataDisabledPackages"

    return-object v0

    .line 2550
    :pswitch_45
    const-string/jumbo v0, "setMeteredDataDisabledPackages"

    return-object v0

    .line 2546
    :pswitch_46
    const-string v0, "getEndUserSessionMessage"

    return-object v0

    .line 2542
    :pswitch_47
    const-string v0, "getStartUserSessionMessage"

    return-object v0

    .line 2538
    :pswitch_48
    const-string/jumbo v0, "setEndUserSessionMessage"

    return-object v0

    .line 2534
    :pswitch_49
    const-string/jumbo v0, "setStartUserSessionMessage"

    return-object v0

    .line 2530
    :pswitch_4a
    const-string v0, "getTransferOwnershipBundle"

    return-object v0

    .line 2526
    :pswitch_4b
    const-string/jumbo v0, "transferOwnership"

    return-object v0

    .line 2522
    :pswitch_4c
    const-string v0, "getDisallowedSystemApps"

    return-object v0

    .line 2518
    :pswitch_4d
    const-string v0, "isLogoutEnabled"

    return-object v0

    .line 2514
    :pswitch_4e
    const-string/jumbo v0, "setLogoutEnabled"

    return-object v0

    .line 2510
    :pswitch_4f
    const-string v0, "clearApplicationUserData"

    return-object v0

    .line 2506
    :pswitch_50
    const-string v0, "getOwnerInstalledCaCerts"

    return-object v0

    .line 2502
    :pswitch_51
    const-string v0, "isCurrentInputMethodSetByOwner"

    return-object v0

    .line 2498
    :pswitch_52
    const-string/jumbo v0, "resetPasswordWithToken"

    return-object v0

    .line 2494
    :pswitch_53
    const-string v0, "isResetPasswordTokenActive"

    return-object v0

    .line 2490
    :pswitch_54
    const-string v0, "clearResetPasswordToken"

    return-object v0

    .line 2486
    :pswitch_55
    const-string/jumbo v0, "setResetPasswordToken"

    return-object v0

    .line 2482
    :pswitch_56
    const-string v0, "getLastNetworkLogRetrievalTime"

    return-object v0

    .line 2478
    :pswitch_57
    const-string v0, "getLastBugReportRequestTime"

    return-object v0

    .line 2474
    :pswitch_58
    const-string v0, "getLastSecurityLogRetrievalTime"

    return-object v0

    .line 2470
    :pswitch_59
    const-string v0, "isEphemeralUser"

    return-object v0

    .line 2466
    :pswitch_5a
    const-string v0, "getBindDeviceAdminTargetUsers"

    return-object v0

    .line 2462
    :pswitch_5b
    const-string v0, "bindDeviceAdminServiceAsUser"

    return-object v0

    .line 2458
    :pswitch_5c
    const-string/jumbo v0, "retrieveNetworkLogs"

    return-object v0

    .line 2454
    :pswitch_5d
    const-string v0, "isNetworkLoggingEnabled"

    return-object v0

    .line 2450
    :pswitch_5e
    const-string/jumbo v0, "setNetworkLoggingEnabled"

    return-object v0

    .line 2446
    :pswitch_5f
    const-string v0, "isBackupServiceEnabled"

    return-object v0

    .line 2442
    :pswitch_60
    const-string/jumbo v0, "setBackupServiceEnabled"

    return-object v0

    .line 2438
    :pswitch_61
    const-string v0, "forceUpdateUserSetupComplete"

    return-object v0

    .line 2434
    :pswitch_62
    const-string/jumbo v0, "setDeviceProvisioningConfigApplied"

    return-object v0

    .line 2430
    :pswitch_63
    const-string v0, "isDeviceProvisioningConfigApplied"

    return-object v0

    .line 2426
    :pswitch_64
    const-string v0, "isDeviceProvisioned"

    return-object v0

    .line 2422
    :pswitch_65
    const-string/jumbo v0, "uninstallPackageWithActiveAdmins"

    return-object v0

    .line 2418
    :pswitch_66
    const-string v0, "isUninstallInQueue"

    return-object v0

    .line 2414
    :pswitch_67
    const-string v0, "forceSecurityLogs"

    return-object v0

    .line 2410
    :pswitch_68
    const-string v0, "forceNetworkLogs"

    return-object v0

    .line 2406
    :pswitch_69
    const-string/jumbo v0, "retrievePreRebootSecurityLogs"

    return-object v0

    .line 2402
    :pswitch_6a
    const-string/jumbo v0, "retrieveSecurityLogs"

    return-object v0

    .line 2398
    :pswitch_6b
    const-string v0, "isSecurityLoggingEnabled"

    return-object v0

    .line 2394
    :pswitch_6c
    const-string/jumbo v0, "setSecurityLoggingEnabled"

    return-object v0

    .line 2390
    :pswitch_6d
    const-string v0, "isAffiliatedUser"

    return-object v0

    .line 2386
    :pswitch_6e
    const-string v0, "isCallingUserAffiliated"

    return-object v0

    .line 2382
    :pswitch_6f
    const-string v0, "getAffiliationIds"

    return-object v0

    .line 2378
    :pswitch_70
    const-string/jumbo v0, "setAffiliationIds"

    return-object v0

    .line 2374
    :pswitch_71
    const-string/jumbo v0, "setUserProvisioningState"

    return-object v0

    .line 2370
    :pswitch_72
    const-string v0, "getUserProvisioningState"

    return-object v0

    .line 2366
    :pswitch_73
    const-string v0, "getOrganizationNameForUser"

    return-object v0

    .line 2362
    :pswitch_74
    const-string v0, "getDeviceOwnerOrganizationName"

    return-object v0

    .line 2358
    :pswitch_75
    const-string v0, "getOrganizationName"

    return-object v0

    .line 2354
    :pswitch_76
    const-string/jumbo v0, "setOrganizationName"

    return-object v0

    .line 2350
    :pswitch_77
    const-string v0, "getOrganizationColorForUser"

    return-object v0

    .line 2346
    :pswitch_78
    const-string v0, "getOrganizationColor"

    return-object v0

    .line 2342
    :pswitch_79
    const-string v0, "clearOrganizationIdForUser"

    return-object v0

    .line 2338
    :pswitch_7a
    const-string/jumbo v0, "setOrganizationColorForUser"

    return-object v0

    .line 2334
    :pswitch_7b
    const-string/jumbo v0, "setOrganizationColor"

    return-object v0

    .line 2330
    :pswitch_7c
    const-string v0, "getLongSupportMessageForUser"

    return-object v0

    .line 2326
    :pswitch_7d
    const-string v0, "getShortSupportMessageForUser"

    return-object v0

    .line 2322
    :pswitch_7e
    const-string v0, "getLongSupportMessage"

    return-object v0

    .line 2318
    :pswitch_7f
    const-string/jumbo v0, "setLongSupportMessage"

    return-object v0

    .line 2314
    :pswitch_80
    const-string v0, "getShortSupportMessage"

    return-object v0

    .line 2310
    :pswitch_81
    const-string/jumbo v0, "setShortSupportMessage"

    return-object v0

    .line 2306
    :pswitch_82
    const-string/jumbo v0, "reboot"

    return-object v0

    .line 2302
    :pswitch_83
    const-string v0, "getWifiMacAddress"

    return-object v0

    .line 2298
    :pswitch_84
    const-string v0, "isManagedProfile"

    return-object v0

    .line 2294
    :pswitch_85
    const-string v0, "getKeepUninstalledPackages"

    return-object v0

    .line 2290
    :pswitch_86
    const-string/jumbo v0, "setKeepUninstalledPackages"

    return-object v0

    .line 2286
    :pswitch_87
    const-string v0, "checkProvisioningPrecondition"

    return-object v0

    .line 2282
    :pswitch_88
    const-string v0, "isProvisioningAllowed"

    return-object v0

    .line 2278
    :pswitch_89
    const-string v0, "getPermissionGrantState"

    return-object v0

    .line 2274
    :pswitch_8a
    const-string/jumbo v0, "setPermissionGrantState"

    return-object v0

    .line 2270
    :pswitch_8b
    const-string v0, "getPermissionPolicy"

    return-object v0

    .line 2266
    :pswitch_8c
    const-string/jumbo v0, "setPermissionPolicy"

    return-object v0

    .line 2262
    :pswitch_8d
    const-string v0, "getPendingSystemUpdate"

    return-object v0

    .line 2258
    :pswitch_8e
    const-string/jumbo v0, "notifyPendingSystemUpdate"

    return-object v0

    .line 2254
    :pswitch_8f
    const-string v0, "getDoNotAskCredentialsOnBoot"

    return-object v0

    .line 2250
    :pswitch_90
    const-string/jumbo v0, "setStatusBarDisabled"

    return-object v0

    .line 2246
    :pswitch_91
    const-string/jumbo v0, "setKeyguardDisabled"

    return-object v0

    .line 2242
    :pswitch_92
    const-string v0, "clearSystemUpdatePolicyFreezePeriodRecord"

    return-object v0

    .line 2238
    :pswitch_93
    const-string v0, "getSystemUpdatePolicy"

    return-object v0

    .line 2234
    :pswitch_94
    const-string/jumbo v0, "setSystemUpdatePolicy"

    return-object v0

    .line 2230
    :pswitch_95
    const-string/jumbo v0, "setUserIcon"

    return-object v0

    .line 2226
    :pswitch_96
    const-string v0, "isRemovingAdmin"

    return-object v0

    .line 2222
    :pswitch_97
    const-string v0, "getForceEphemeralUsers"

    return-object v0

    .line 2218
    :pswitch_98
    const-string/jumbo v0, "setForceEphemeralUsers"

    return-object v0

    .line 2214
    :pswitch_99
    const-string v0, "getAutoTimeZoneEnabled"

    return-object v0

    .line 2210
    :pswitch_9a
    const-string/jumbo v0, "setAutoTimeZoneEnabled"

    return-object v0

    .line 2206
    :pswitch_9b
    const-string v0, "getAutoTimeEnabled"

    return-object v0

    .line 2202
    :pswitch_9c
    const-string/jumbo v0, "setAutoTimeEnabled"

    return-object v0

    .line 2198
    :pswitch_9d
    const-string v0, "getAutoTimeRequired"

    return-object v0

    .line 2194
    :pswitch_9e
    const-string/jumbo v0, "setAutoTimeRequired"

    return-object v0

    .line 2190
    :pswitch_9f
    const-string v0, "getCrossProfileWidgetProviders"

    return-object v0

    .line 2186
    :pswitch_a0
    const-string/jumbo v0, "removeCrossProfileWidgetProvider"

    return-object v0

    .line 2182
    :pswitch_a1
    const-string v0, "addCrossProfileWidgetProvider"

    return-object v0

    .line 2178
    :pswitch_a2
    const-string v0, "getTrustAgentConfiguration"

    return-object v0

    .line 2174
    :pswitch_a3
    const-string/jumbo v0, "setTrustAgentConfiguration"

    return-object v0

    .line 2170
    :pswitch_a4
    const-string v0, "getBluetoothContactSharingDisabledForUser"

    return-object v0

    .line 2166
    :pswitch_a5
    const-string v0, "getBluetoothContactSharingDisabled"

    return-object v0

    .line 2162
    :pswitch_a6
    const-string/jumbo v0, "setBluetoothContactSharingDisabled"

    return-object v0

    .line 2158
    :pswitch_a7
    const-string/jumbo v0, "startManagedQuickContact"

    return-object v0

    .line 2154
    :pswitch_a8
    const-string v0, "getCrossProfileContactsSearchDisabledForUser"

    return-object v0

    .line 2150
    :pswitch_a9
    const-string v0, "getCrossProfileContactsSearchDisabled"

    return-object v0

    .line 2146
    :pswitch_aa
    const-string/jumbo v0, "setCrossProfileContactsSearchDisabled"

    return-object v0

    .line 2142
    :pswitch_ab
    const-string v0, "getCrossProfileCallerIdDisabledForUser"

    return-object v0

    .line 2138
    :pswitch_ac
    const-string v0, "getCrossProfileCallerIdDisabled"

    return-object v0

    .line 2134
    :pswitch_ad
    const-string/jumbo v0, "setCrossProfileCallerIdDisabled"

    return-object v0

    .line 2130
    :pswitch_ae
    const-string v0, "isUninstallBlocked"

    return-object v0

    .line 2126
    :pswitch_af
    const-string/jumbo v0, "setUninstallBlocked"

    return-object v0

    .line 2122
    :pswitch_b0
    const-string/jumbo v0, "notifyLockTaskModeChanged"

    return-object v0

    .line 2118
    :pswitch_b1
    const-string v0, "isMasterVolumeMuted"

    return-object v0

    .line 2114
    :pswitch_b2
    const-string/jumbo v0, "setMasterVolumeMuted"

    return-object v0

    .line 2110
    :pswitch_b3
    const-string/jumbo v0, "setTimeZone"

    return-object v0

    .line 2106
    :pswitch_b4
    const-string/jumbo v0, "setTime"

    return-object v0

    .line 2102
    :pswitch_b5
    const-string/jumbo v0, "setLocationEnabled"

    return-object v0

    .line 2098
    :pswitch_b6
    const-string v0, "hasLockdownAdminConfiguredNetworks"

    return-object v0

    .line 2094
    :pswitch_b7
    const-string/jumbo v0, "setConfiguredNetworksLockdownState"

    return-object v0

    .line 2090
    :pswitch_b8
    const-string/jumbo v0, "setSecureSetting"

    return-object v0

    .line 2086
    :pswitch_b9
    const-string/jumbo v0, "setSystemSetting"

    return-object v0

    .line 2082
    :pswitch_ba
    const-string/jumbo v0, "setGlobalSetting"

    return-object v0

    .line 2078
    :pswitch_bb
    const-string v0, "getLockTaskFeatures"

    return-object v0

    .line 2074
    :pswitch_bc
    const-string/jumbo v0, "setLockTaskFeatures"

    return-object v0

    .line 2070
    :pswitch_bd
    const-string v0, "isLockTaskPermitted"

    return-object v0

    .line 2066
    :pswitch_be
    const-string v0, "getLockTaskPackages"

    return-object v0

    .line 2062
    :pswitch_bf
    const-string/jumbo v0, "setLockTaskPackages"

    return-object v0

    .line 2058
    :pswitch_c0
    const-string v0, "getPreferentialNetworkServiceConfigs"

    return-object v0

    .line 2054
    :pswitch_c1
    const-string/jumbo v0, "setPreferentialNetworkServiceConfigs"

    return-object v0

    .line 2050
    :pswitch_c2
    const-string v0, "isSecondaryLockscreenEnabled"

    return-object v0

    .line 2046
    :pswitch_c3
    const-string/jumbo v0, "setSecondaryLockscreenEnabled"

    return-object v0

    .line 2042
    :pswitch_c4
    const-string v0, "getAccountTypesWithManagementDisabledAsUser"

    return-object v0

    .line 2038
    :pswitch_c5
    const-string v0, "getAccountTypesWithManagementDisabled"

    return-object v0

    .line 2034
    :pswitch_c6
    const-string/jumbo v0, "setAccountManagementDisabled"

    return-object v0

    .line 2030
    :pswitch_c7
    const-string v0, "installExistingPackage"

    return-object v0

    .line 2026
    :pswitch_c8
    const-string v0, "enableSystemAppWithIntent"

    return-object v0

    .line 2022
    :pswitch_c9
    const-string v0, "enableSystemApp"

    return-object v0

    .line 2018
    :pswitch_ca
    const-string v0, "isNewUserDisclaimerAcknowledged"

    return-object v0

    .line 2014
    :pswitch_cb
    const-string v0, "acknowledgeNewUserDisclaimer"

    return-object v0

    .line 2010
    :pswitch_cc
    const-string v0, "getSecondaryUsers"

    return-object v0

    .line 2006
    :pswitch_cd
    const-string v0, "getLogoutUserId"

    return-object v0

    .line 2002
    :pswitch_ce
    const-string v0, "logoutUserInternal"

    return-object v0

    .line 1998
    :pswitch_cf
    const-string v0, "logoutUser"

    return-object v0

    .line 1994
    :pswitch_d0
    const-string/jumbo v0, "stopUser"

    return-object v0

    .line 1990
    :pswitch_d1
    const-string/jumbo v0, "startUserInBackground"

    return-object v0

    .line 1986
    :pswitch_d2
    const-string/jumbo v0, "switchUser"

    return-object v0

    .line 1982
    :pswitch_d3
    const-string/jumbo v0, "removeUser"

    return-object v0

    .line 1978
    :pswitch_d4
    const-string v0, "createAndManageUser"

    return-object v0

    .line 1974
    :pswitch_d5
    const-string v0, "isApplicationHidden"

    return-object v0

    .line 1970
    :pswitch_d6
    const-string/jumbo v0, "setApplicationHidden"

    return-object v0

    .line 1966
    :pswitch_d7
    const-string v0, "getEnforcingAdminAndUserDetails"

    return-object v0

    .line 1962
    :pswitch_d8
    const-string v0, "createAdminSupportIntent"

    return-object v0

    .line 1958
    :pswitch_d9
    const-string v0, "isNotificationListenerServicePermitted"

    return-object v0

    .line 1954
    :pswitch_da
    const-string v0, "getPermittedCrossProfileNotificationListeners"

    return-object v0

    .line 1950
    :pswitch_db
    const-string/jumbo v0, "setPermittedCrossProfileNotificationListeners"

    return-object v0

    .line 1946
    :pswitch_dc
    const-string v0, "isInputMethodPermittedByAdmin"

    return-object v0

    .line 1942
    :pswitch_dd
    const-string v0, "getPermittedInputMethodsAsUser"

    return-object v0

    .line 1938
    :pswitch_de
    const-string v0, "getPermittedInputMethods"

    return-object v0

    .line 1934
    :pswitch_df
    const-string/jumbo v0, "setPermittedInputMethods"

    return-object v0

    .line 1930
    :pswitch_e0
    const-string v0, "isAccessibilityServicePermittedByAdmin"

    return-object v0

    .line 1926
    :pswitch_e1
    const-string v0, "getPermittedAccessibilityServicesForUser"

    return-object v0

    .line 1922
    :pswitch_e2
    const-string v0, "getPermittedAccessibilityServices"

    return-object v0

    .line 1918
    :pswitch_e3
    const-string/jumbo v0, "setPermittedAccessibilityServices"

    return-object v0

    .line 1914
    :pswitch_e4
    const-string v0, "clearCrossProfileIntentFilters"

    return-object v0

    .line 1910
    :pswitch_e5
    const-string v0, "addCrossProfileIntentFilter"

    return-object v0

    .line 1906
    :pswitch_e6
    const-string v0, "getUserRestrictions"

    return-object v0

    .line 1902
    :pswitch_e7
    const-string/jumbo v0, "setUserRestriction"

    return-object v0

    .line 1898
    :pswitch_e8
    const-string v0, "getRestrictionsProvider"

    return-object v0

    .line 1894
    :pswitch_e9
    const-string/jumbo v0, "setRestrictionsProvider"

    return-object v0

    .line 1890
    :pswitch_ea
    const-string v0, "isCallerApplicationRestrictionsManagingPackage"

    return-object v0

    .line 1886
    :pswitch_eb
    const-string v0, "getApplicationRestrictionsManagingPackage"

    return-object v0

    .line 1882
    :pswitch_ec
    const-string/jumbo v0, "setApplicationRestrictionsManagingPackage"

    return-object v0

    .line 1878
    :pswitch_ed
    const-string v0, "getApplicationRestrictions"

    return-object v0

    .line 1874
    :pswitch_ee
    const-string/jumbo v0, "setApplicationRestrictions"

    return-object v0

    .line 1870
    :pswitch_ef
    const-string/jumbo v0, "setDefaultSmsApplication"

    return-object v0

    .line 1866
    :pswitch_f0
    const-string v0, "clearPackagePersistentPreferredActivities"

    return-object v0

    .line 1862
    :pswitch_f1
    const-string v0, "addPersistentPreferredActivity"

    return-object v0

    .line 1858
    :pswitch_f2
    const-string v0, "getAlwaysOnVpnLockdownAllowlist"

    return-object v0

    .line 1854
    :pswitch_f3
    const-string v0, "isAlwaysOnVpnLockdownEnabledForUser"

    return-object v0

    .line 1850
    :pswitch_f4
    const-string v0, "isAlwaysOnVpnLockdownEnabled"

    return-object v0

    .line 1846
    :pswitch_f5
    const-string v0, "getAlwaysOnVpnPackageForUser"

    return-object v0

    .line 1842
    :pswitch_f6
    const-string v0, "getAlwaysOnVpnPackage"

    return-object v0

    .line 1838
    :pswitch_f7
    const-string/jumbo v0, "setAlwaysOnVpnPackage"

    return-object v0

    .line 1834
    :pswitch_f8
    const-string v0, "getCertInstallerPackage"

    return-object v0

    .line 1830
    :pswitch_f9
    const-string/jumbo v0, "setCertInstallerPackage"

    return-object v0

    .line 1826
    :pswitch_fa
    const-string v0, "getDelegatePackages"

    return-object v0

    .line 1822
    :pswitch_fb
    const-string v0, "getDelegatedScopes"

    return-object v0

    .line 1818
    :pswitch_fc
    const-string/jumbo v0, "setDelegatedScopes"

    return-object v0

    .line 1814
    :pswitch_fd
    const-string v0, "choosePrivateKeyAlias"

    return-object v0

    .line 1810
    :pswitch_fe
    const-string/jumbo v0, "setKeyPairCertificate"

    return-object v0

    .line 1806
    :pswitch_ff
    const-string v0, "generateKeyPair"

    return-object v0

    .line 1802
    :pswitch_100
    const-string v0, "hasKeyPair"

    return-object v0

    .line 1798
    :pswitch_101
    const-string/jumbo v0, "removeKeyPair"

    return-object v0

    .line 1794
    :pswitch_102
    const-string v0, "installKeyPair"

    return-object v0

    .line 1790
    :pswitch_103
    const-string v0, "isCaCertApproved"

    return-object v0

    .line 1786
    :pswitch_104
    const-string v0, "approveCaCert"

    return-object v0

    .line 1782
    :pswitch_105
    const-string v0, "enforceCanManageCaCerts"

    return-object v0

    .line 1778
    :pswitch_106
    const-string/jumbo v0, "uninstallCaCerts"

    return-object v0

    .line 1774
    :pswitch_107
    const-string v0, "installCaCert"

    return-object v0

    .line 1770
    :pswitch_108
    const-string v0, "listPolicyExemptApps"

    return-object v0

    .line 1766
    :pswitch_109
    const-string v0, "isPackageSuspended"

    return-object v0

    .line 1762
    :pswitch_10a
    const-string/jumbo v0, "setPackagesSuspended"

    return-object v0

    .line 1758
    :pswitch_10b
    const-string v0, "getDeviceOwnerLockScreenInfo"

    return-object v0

    .line 1754
    :pswitch_10c
    const-string/jumbo v0, "setDeviceOwnerLockScreenInfo"

    return-object v0

    .line 1750
    :pswitch_10d
    const-string v0, "checkDeviceIdentifierAccess"

    return-object v0

    .line 1746
    :pswitch_10e
    const-string v0, "isOrganizationOwnedDeviceWithManagedProfile"

    return-object v0

    .line 1742
    :pswitch_10f
    const-string v0, "hasUserSetupCompleted"

    return-object v0

    .line 1738
    :pswitch_110
    const-string v0, "clearProfileOwner"

    return-object v0

    .line 1734
    :pswitch_111
    const-string/jumbo v0, "setProfileName"

    return-object v0

    .line 1730
    :pswitch_112
    const-string/jumbo v0, "setProfileEnabled"

    return-object v0

    .line 1726
    :pswitch_113
    const-string v0, "getProfileOwnerName"

    return-object v0

    .line 1722
    :pswitch_114
    const-string v0, "isSupervisionComponent"

    return-object v0

    .line 1718
    :pswitch_115
    const-string v0, "getProfileOwnerOrDeviceOwnerSupervisionComponent"

    return-object v0

    .line 1714
    :pswitch_116
    const-string v0, "getProfileOwnerAsUser"

    return-object v0

    .line 1710
    :pswitch_117
    const-string/jumbo v0, "setProfileOwner"

    return-object v0

    .line 1706
    :pswitch_118
    const-string v0, "getDeviceOwnerUserId"

    return-object v0

    .line 1702
    :pswitch_119
    const-string v0, "clearDeviceOwner"

    return-object v0

    .line 1698
    :pswitch_11a
    const-string v0, "getDeviceOwnerName"

    return-object v0

    .line 1694
    :pswitch_11b
    const-string v0, "hasDeviceOwner"

    return-object v0

    .line 1690
    :pswitch_11c
    const-string v0, "getDeviceOwnerComponent"

    return-object v0

    .line 1686
    :pswitch_11d
    const-string/jumbo v0, "setDeviceOwner"

    return-object v0

    .line 1682
    :pswitch_11e
    const-string/jumbo v0, "reportKeyguardSecured"

    return-object v0

    .line 1678
    :pswitch_11f
    const-string/jumbo v0, "reportKeyguardDismissed"

    return-object v0

    .line 1674
    :pswitch_120
    const-string/jumbo v0, "reportSuccessfulBiometricAttempt"

    return-object v0

    .line 1670
    :pswitch_121
    const-string/jumbo v0, "reportFailedBiometricAttempt"

    return-object v0

    .line 1666
    :pswitch_122
    const-string/jumbo v0, "reportSuccessfulPasswordAttempt"

    return-object v0

    .line 1662
    :pswitch_123
    const-string/jumbo v0, "reportFailedPasswordAttempt"

    return-object v0

    .line 1658
    :pswitch_124
    const-string/jumbo v0, "reportPasswordChanged"

    return-object v0

    .line 1654
    :pswitch_125
    const-string v0, "hasGrantedPolicy"

    return-object v0

    .line 1650
    :pswitch_126
    const-string v0, "forceRemoveActiveAdmin"

    return-object v0

    .line 1646
    :pswitch_127
    const-string/jumbo v0, "removeActiveAdmin"

    return-object v0

    .line 1642
    :pswitch_128
    const-string v0, "getRemoveWarning"

    return-object v0

    .line 1638
    :pswitch_129
    const-string/jumbo v0, "packageHasActiveAdmins"

    return-object v0

    .line 1634
    :pswitch_12a
    const-string v0, "getActiveAdmins"

    return-object v0

    .line 1630
    :pswitch_12b
    const-string v0, "isAdminActive"

    return-object v0

    .line 1626
    :pswitch_12c
    const-string/jumbo v0, "setActiveAdmin"

    return-object v0

    .line 1622
    :pswitch_12d
    const-string v0, "getKeyguardDisabledFeatures"

    return-object v0

    .line 1618
    :pswitch_12e
    const-string/jumbo v0, "setKeyguardDisabledFeatures"

    return-object v0

    .line 1614
    :pswitch_12f
    const-string v0, "getNearbyAppStreamingPolicy"

    return-object v0

    .line 1610
    :pswitch_130
    const-string/jumbo v0, "setNearbyAppStreamingPolicy"

    return-object v0

    .line 1606
    :pswitch_131
    const-string v0, "getNearbyNotificationStreamingPolicy"

    return-object v0

    .line 1602
    :pswitch_132
    const-string/jumbo v0, "setNearbyNotificationStreamingPolicy"

    return-object v0

    .line 1598
    :pswitch_133
    const-string v0, "getScreenCaptureDisabled"

    return-object v0

    .line 1594
    :pswitch_134
    const-string/jumbo v0, "setScreenCaptureDisabled"

    return-object v0

    .line 1590
    :pswitch_135
    const-string v0, "getCameraDisabled"

    return-object v0

    .line 1586
    :pswitch_136
    const-string/jumbo v0, "setCameraDisabled"

    return-object v0

    .line 1582
    :pswitch_137
    const-string/jumbo v0, "requestBugreport"

    return-object v0

    .line 1578
    :pswitch_138
    const-string v0, "getStorageEncryptionStatus"

    return-object v0

    .line 1574
    :pswitch_139
    const-string v0, "getStorageEncryption"

    return-object v0

    .line 1570
    :pswitch_13a
    const-string/jumbo v0, "setStorageEncryption"

    return-object v0

    .line 1566
    :pswitch_13b
    const-string/jumbo v0, "setRecommendedGlobalProxy"

    return-object v0

    .line 1562
    :pswitch_13c
    const-string v0, "getGlobalProxyAdmin"

    return-object v0

    .line 1558
    :pswitch_13d
    const-string/jumbo v0, "setGlobalProxy"

    return-object v0

    .line 1554
    :pswitch_13e
    const-string/jumbo v0, "sendLostModeLocationUpdate"

    return-object v0

    .line 1550
    :pswitch_13f
    const-string v0, "isFactoryResetProtectionPolicySupported"

    return-object v0

    .line 1546
    :pswitch_140
    const-string v0, "getFactoryResetProtectionPolicy"

    return-object v0

    .line 1542
    :pswitch_141
    const-string/jumbo v0, "setFactoryResetProtectionPolicy"

    return-object v0

    .line 1538
    :pswitch_142
    const-string/jumbo v0, "wipeDataWithReason"

    return-object v0

    .line 1534
    :pswitch_143
    const-string v0, "lockNow"

    return-object v0

    .line 1530
    :pswitch_144
    const-string v0, "getRequiredStrongAuthTimeout"

    return-object v0

    .line 1526
    :pswitch_145
    const-string/jumbo v0, "setRequiredStrongAuthTimeout"

    return-object v0

    .line 1522
    :pswitch_146
    const-string v0, "getMaximumTimeToLock"

    return-object v0

    .line 1518
    :pswitch_147
    const-string/jumbo v0, "setMaximumTimeToLock"

    return-object v0

    .line 1514
    :pswitch_148
    const-string/jumbo v0, "resetPassword"

    return-object v0

    .line 1510
    :pswitch_149
    const-string v0, "getMaximumFailedPasswordsForWipe"

    return-object v0

    .line 1506
    :pswitch_14a
    const-string/jumbo v0, "setMaximumFailedPasswordsForWipe"

    return-object v0

    .line 1502
    :pswitch_14b
    const-string v0, "getProfileWithMinimumFailedPasswordsForWipe"

    return-object v0

    .line 1498
    :pswitch_14c
    const-string v0, "getCurrentFailedPasswordAttempts"

    return-object v0

    .line 1494
    :pswitch_14d
    const-string v0, "isUsingUnifiedPassword"

    return-object v0

    .line 1490
    :pswitch_14e
    const-string v0, "getAggregatedPasswordComplexityForUser"

    return-object v0

    .line 1486
    :pswitch_14f
    const-string v0, "getRequiredPasswordComplexity"

    return-object v0

    .line 1482
    :pswitch_150
    const-string/jumbo v0, "setRequiredPasswordComplexity"

    return-object v0

    .line 1478
    :pswitch_151
    const-string v0, "getPasswordComplexity"

    return-object v0

    .line 1474
    :pswitch_152
    const-string v0, "isPasswordSufficientAfterProfileUnification"

    return-object v0

    .line 1470
    :pswitch_153
    const-string v0, "isActivePasswordSufficientForDeviceRequirement"

    return-object v0

    .line 1466
    :pswitch_154
    const-string v0, "isActivePasswordSufficient"

    return-object v0

    .line 1462
    :pswitch_155
    const-string v0, "getPasswordExpiration"

    return-object v0

    .line 1458
    :pswitch_156
    const-string v0, "getPasswordExpirationTimeout"

    return-object v0

    .line 1454
    :pswitch_157
    const-string/jumbo v0, "setPasswordExpirationTimeout"

    return-object v0

    .line 1450
    :pswitch_158
    const-string v0, "getPasswordHistoryLength"

    return-object v0

    .line 1446
    :pswitch_159
    const-string/jumbo v0, "setPasswordHistoryLength"

    return-object v0

    .line 1442
    :pswitch_15a
    const-string v0, "getPasswordMinimumMetrics"

    return-object v0

    .line 1438
    :pswitch_15b
    const-string v0, "getPasswordMinimumNonLetter"

    return-object v0

    .line 1434
    :pswitch_15c
    const-string/jumbo v0, "setPasswordMinimumNonLetter"

    return-object v0

    .line 1430
    :pswitch_15d
    const-string v0, "getPasswordMinimumSymbols"

    return-object v0

    .line 1426
    :pswitch_15e
    const-string/jumbo v0, "setPasswordMinimumSymbols"

    return-object v0

    .line 1422
    :pswitch_15f
    const-string v0, "getPasswordMinimumNumeric"

    return-object v0

    .line 1418
    :pswitch_160
    const-string/jumbo v0, "setPasswordMinimumNumeric"

    return-object v0

    .line 1414
    :pswitch_161
    const-string v0, "getPasswordMinimumLetters"

    return-object v0

    .line 1410
    :pswitch_162
    const-string/jumbo v0, "setPasswordMinimumLetters"

    return-object v0

    .line 1406
    :pswitch_163
    const-string v0, "getPasswordMinimumLowerCase"

    return-object v0

    .line 1402
    :pswitch_164
    const-string/jumbo v0, "setPasswordMinimumLowerCase"

    return-object v0

    .line 1398
    :pswitch_165
    const-string v0, "getPasswordMinimumUpperCase"

    return-object v0

    .line 1394
    :pswitch_166
    const-string/jumbo v0, "setPasswordMinimumUpperCase"

    return-object v0

    .line 1390
    :pswitch_167
    const-string v0, "getPasswordMinimumLength"

    return-object v0

    .line 1386
    :pswitch_168
    const-string/jumbo v0, "setPasswordMinimumLength"

    return-object v0

    .line 1382
    :pswitch_169
    const-string v0, "getPasswordQuality"

    return-object v0

    .line 1378
    :pswitch_16a
    const-string/jumbo v0, "setPasswordQuality"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16a
        :pswitch_169
        :pswitch_168
        :pswitch_167
        :pswitch_166
        :pswitch_165
        :pswitch_164
        :pswitch_163
        :pswitch_162
        :pswitch_161
        :pswitch_160
        :pswitch_15f
        :pswitch_15e
        :pswitch_15d
        :pswitch_15c
        :pswitch_15b
        :pswitch_15a
        :pswitch_159
        :pswitch_158
        :pswitch_157
        :pswitch_156
        :pswitch_155
        :pswitch_154
        :pswitch_153
        :pswitch_152
        :pswitch_151
        :pswitch_150
        :pswitch_14f
        :pswitch_14e
        :pswitch_14d
        :pswitch_14c
        :pswitch_14b
        :pswitch_14a
        :pswitch_149
        :pswitch_148
        :pswitch_147
        :pswitch_146
        :pswitch_145
        :pswitch_144
        :pswitch_143
        :pswitch_142
        :pswitch_141
        :pswitch_140
        :pswitch_13f
        :pswitch_13e
        :pswitch_13d
        :pswitch_13c
        :pswitch_13b
        :pswitch_13a
        :pswitch_139
        :pswitch_138
        :pswitch_137
        :pswitch_136
        :pswitch_135
        :pswitch_134
        :pswitch_133
        :pswitch_132
        :pswitch_131
        :pswitch_130
        :pswitch_12f
        :pswitch_12e
        :pswitch_12d
        :pswitch_12c
        :pswitch_12b
        :pswitch_12a
        :pswitch_129
        :pswitch_128
        :pswitch_127
        :pswitch_126
        :pswitch_125
        :pswitch_124
        :pswitch_123
        :pswitch_122
        :pswitch_121
        :pswitch_120
        :pswitch_11f
        :pswitch_11e
        :pswitch_11d
        :pswitch_11c
        :pswitch_11b
        :pswitch_11a
        :pswitch_119
        :pswitch_118
        :pswitch_117
        :pswitch_116
        :pswitch_115
        :pswitch_114
        :pswitch_113
        :pswitch_112
        :pswitch_111
        :pswitch_110
        :pswitch_10f
        :pswitch_10e
        :pswitch_10d
        :pswitch_10c
        :pswitch_10b
        :pswitch_10a
        :pswitch_109
        :pswitch_108
        :pswitch_107
        :pswitch_106
        :pswitch_105
        :pswitch_104
        :pswitch_103
        :pswitch_102
        :pswitch_101
        :pswitch_100
        :pswitch_ff
        :pswitch_fe
        :pswitch_fd
        :pswitch_fc
        :pswitch_fb
        :pswitch_fa
        :pswitch_f9
        :pswitch_f8
        :pswitch_f7
        :pswitch_f6
        :pswitch_f5
        :pswitch_f4
        :pswitch_f3
        :pswitch_f2
        :pswitch_f1
        :pswitch_f0
        :pswitch_ef
        :pswitch_ee
        :pswitch_ed
        :pswitch_ec
        :pswitch_eb
        :pswitch_ea
        :pswitch_e9
        :pswitch_e8
        :pswitch_e7
        :pswitch_e6
        :pswitch_e5
        :pswitch_e4
        :pswitch_e3
        :pswitch_e2
        :pswitch_e1
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist onTransact$addCrossProfileIntentFilter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13377
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13379
    .local v0, "_arg0":Landroid/content/ComponentName;
    sget-object v1, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    .line 13381
    .local v1, "_arg1":Landroid/content/IntentFilter;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 13382
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13383
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V

    .line 13384
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13385
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$addPersistentPreferredActivity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13295
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13297
    .local v0, "_arg0":Landroid/content/ComponentName;
    sget-object v1, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    .line 13299
    .local v1, "_arg1":Landroid/content/IntentFilter;
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 13300
    .local v2, "_arg2":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13301
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V

    .line 13302
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13303
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$approveCaCert$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 13141
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 13143
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 13144
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13145
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->approveCaCert(Ljava/lang/String;IZ)Z

    move-result v3

    .line 13146
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13147
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13148
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$bindDeviceAdminServiceAsUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 16
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13896
    move-object/from16 v0, p1

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 13898
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v10

    .line 13900
    .local v10, "_arg1":Landroid/app/IApplicationThread;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 13902
    .local v11, "_arg2":Landroid/os/IBinder;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/content/Intent;

    .line 13904
    .local v12, "_arg3":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v13

    .line 13906
    .local v13, "_arg4":Landroid/app/IServiceConnection;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 13908
    .local v14, "_arg5":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 13909
    .local v15, "_arg6":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13910
    move-object/from16 v2, p0

    move-object v3, v1

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    move-object v7, v13

    move v8, v14

    move v9, v15

    invoke-virtual/range {v2 .. v9}, Landroid/app/admin/IDevicePolicyManager$Stub;->bindDeviceAdminServiceAsUser(Landroid/content/ComponentName;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/IServiceConnection;II)Z

    move-result v2

    .line 13911
    .local v2, "_result":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13912
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13913
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$checkDeviceIdentifierAccess$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13059
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 13061
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 13063
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 13064
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13065
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->checkDeviceIdentifierAccess(Ljava/lang/String;II)Z

    move-result v3

    .line 13066
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13067
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13068
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$choosePrivateKeyAlias$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13239
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 13241
    .local v0, "_arg0":I
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 13243
    .local v1, "_arg1":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 13245
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 13246
    .local v3, "_arg3":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13247
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->choosePrivateKeyAlias(ILandroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 13248
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13249
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$clearApplicationUserData$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13946
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13948
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 13950
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v2

    .line 13951
    .local v2, "_arg2":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13952
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearApplicationUserData(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 13953
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13954
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$createAndManageUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 11
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13485
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13487
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 13489
    .local v7, "_arg1":Ljava/lang/String;
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/content/ComponentName;

    .line 13491
    .local v8, "_arg2":Landroid/content/ComponentName;
    sget-object v1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/os/PersistableBundle;

    .line 13493
    .local v9, "_arg3":Landroid/os/PersistableBundle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 13494
    .local v10, "_arg4":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13495
    move-object v1, p0

    move-object v2, v0

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->createAndManageUser(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/PersistableBundle;I)Landroid/os/UserHandle;

    move-result-object v1

    .line 13496
    .local v1, "_result":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13497
    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 13498
    return v2
.end method

.method private blacklist onTransact$enableSystemApp$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13514
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13516
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 13518
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 13519
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13520
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 13521
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13522
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$enableSystemAppWithIntent$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13528
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13530
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 13532
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 13533
    .local v2, "_arg2":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13534
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->enableSystemAppWithIntent(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v3

    .line 13535
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13536
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13537
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$generateKeyPair$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 13
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13196
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13198
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 13200
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 13202
    .local v9, "_arg2":Ljava/lang/String;
    sget-object v1, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/security/keystore/ParcelableKeyGenParameterSpec;

    .line 13204
    .local v10, "_arg3":Landroid/security/keystore/ParcelableKeyGenParameterSpec;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 13206
    .local v11, "_arg4":I
    new-instance v1, Landroid/security/keymaster/KeymasterCertificateChain;

    invoke-direct {v1}, Landroid/security/keymaster/KeymasterCertificateChain;-><init>()V

    move-object v12, v1

    .line 13207
    .local v12, "_arg5":Landroid/security/keymaster/KeymasterCertificateChain;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13208
    move-object v1, p0

    move-object v2, v0

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move v6, v11

    move-object v7, v12

    invoke-virtual/range {v1 .. v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->generateKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/ParcelableKeyGenParameterSpec;ILandroid/security/keymaster/KeymasterCertificateChain;)Z

    move-result v1

    .line 13209
    .local v1, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13210
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13211
    const/4 v2, 0x1

    invoke-virtual {p2, v12, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 13212
    return v2
.end method

.method private blacklist onTransact$getApplicationRestrictions$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13340
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13342
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 13344
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 13345
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13346
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 13347
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13348
    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 13349
    return v4
.end method

.method private blacklist onTransact$getCameraDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12881
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 12883
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 12885
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 12886
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 12887
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCameraDisabled(Landroid/content/ComponentName;IZ)Z

    move-result v3

    .line 12888
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 12889
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 12890
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getDisallowedSystemApps$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13962
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13964
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 13966
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 13967
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13968
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDisallowedSystemApps(Landroid/content/ComponentName;ILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 13969
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13970
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 13971
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getDrawable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 14193
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 14195
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 14196
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14197
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableResource;

    move-result-object v3

    .line 14198
    .local v3, "_result":Landroid/app/admin/ParcelableResource;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14199
    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14200
    return v4
.end method

.method private blacklist onTransact$getKeyguardDisabledFeatures$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12943
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 12945
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 12947
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 12948
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 12949
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)I

    move-result v3

    .line 12950
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 12951
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12952
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getMaximumFailedPasswordsForWipe$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12753
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 12755
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 12757
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 12758
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 12759
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;IZ)I

    move-result v3

    .line 12760
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 12761
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12762
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getMaximumTimeToLock$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12783
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 12785
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 12787
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 12788
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 12789
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumTimeToLock(Landroid/content/ComponentName;IZ)J

    move-result-wide v3

    .line 12790
    .local v3, "_result":J
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 12791
    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 12792
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$getPasswordExpiration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12714
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 12716
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 12718
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 12719
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 12720
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpiration(Landroid/content/ComponentName;IZ)J

    move-result-wide v3

    .line 12721
    .local v3, "_result":J
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 12722
    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 12723
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$getPasswordExpirationTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12699
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 12701
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 12703
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 12704
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 12705
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpirationTimeout(Landroid/content/ComponentName;IZ)J

    move-result-wide v3

    .line 12706
    .local v3, "_result":J
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 12707
    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 12708
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$getPasswordHistoryLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12670
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 12672
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 12674
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 12675
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 12676
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordHistoryLength(Landroid/content/ComponentName;IZ)I

    move-result v3

    .line 12677
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 12678
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12679
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getPasswordMinimumNonLetter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12640
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 12642
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 12644
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 12645
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 12646
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)I

    move-result v3

    .line 12647
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 12648
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12649
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getPasswordMinimumNumeric$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12582
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 12584
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 12586
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 12587
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 12588
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)I

    move-result v3

    .line 12589
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 12590
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12591
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getPasswordMinimumSymbols$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12611
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 12613
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 12615
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 12616
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 12617
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)I

    move-result v3

    .line 12618
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 12619
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12620
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getPermissionGrantState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13781
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13783
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 13785
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 13787
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 13788
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13789
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 13790
    .local v4, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13791
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 13792
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$getRemoveWarning$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12975
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 12977
    .local v0, "_arg0":Landroid/content/ComponentName;
    sget-object v1, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallback;

    .line 12979
    .local v1, "_arg1":Landroid/os/RemoteCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 12980
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 12981
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V

    .line 12982
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 12983
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$getRequiredStrongAuthTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12812
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 12814
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 12816
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 12817
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 12818
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequiredStrongAuthTimeout(Landroid/content/ComponentName;IZ)J

    move-result-wide v3

    .line 12819
    .local v3, "_result":J
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 12820
    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 12821
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$getScreenCaptureDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12910
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 12912
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 12914
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 12915
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 12916
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getScreenCaptureDisabled(Landroid/content/ComponentName;IZ)Z

    move-result v3

    .line 12917
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 12918
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 12919
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getTrustAgentConfiguration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13708
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13710
    .local v0, "_arg0":Landroid/content/ComponentName;
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 13712
    .local v1, "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 13714
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 13715
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13716
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;IZ)Ljava/util/List;

    move-result-object v4

    .line 13717
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13718
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 13719
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$hasGrantedPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12991
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 12993
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 12995
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 12996
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 12997
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    move-result v3

    .line 12998
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 12999
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13000
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$installCaCert$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13109
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13111
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 13113
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 13114
    .local v2, "_arg2":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13115
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->installCaCert(Landroid/content/ComponentName;Ljava/lang/String;[B)Z

    move-result v3

    .line 13116
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13117
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13118
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$installExistingPackage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13543
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13545
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 13547
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 13548
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13549
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->installExistingPackage(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 13550
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13551
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13552
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$installKeyPair$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 18
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13155
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13157
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 13159
    .local v11, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v12

    .line 13161
    .local v12, "_arg2":[B
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    .line 13163
    .local v13, "_arg3":[B
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .line 13165
    .local v14, "_arg4":[B
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 13167
    .local v15, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 13169
    .local v16, "_arg6":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 13170
    .local v17, "_arg7":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13171
    move-object/from16 v2, p0

    move-object v3, v0

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    move-object v8, v15

    move/from16 v9, v16

    move/from16 v10, v17

    invoke-virtual/range {v2 .. v10}, Landroid/app/admin/IDevicePolicyManager$Stub;->installKeyPair(Landroid/content/ComponentName;Ljava/lang/String;[B[B[BLjava/lang/String;ZZ)Z

    move-result v2

    .line 13172
    .local v2, "_result":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13173
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13174
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$installUpdateFromFile$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14064
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14066
    .local v0, "_arg0":Landroid/content/ComponentName;
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 14068
    .local v1, "_arg1":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/admin/StartInstallingUpdateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/StartInstallingUpdateCallback;

    move-result-object v2

    .line 14069
    .local v2, "_arg2":Landroid/app/admin/StartInstallingUpdateCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14070
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->installUpdateFromFile(Landroid/content/ComponentName;Landroid/os/ParcelFileDescriptor;Landroid/app/admin/StartInstallingUpdateCallback;)V

    .line 14071
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14072
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$isAccessibilityServicePermittedByAdmin$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13395
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13397
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 13399
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 13400
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13401
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAccessibilityServicePermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v3

    .line 13402
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13403
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13404
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$isApplicationHidden$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13468
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13470
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 13472
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 13474
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 13475
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13476
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    .line 13477
    .local v4, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13478
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13479
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$isInputMethodPermittedByAdmin$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13427
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13429
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 13431
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 13433
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 13434
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13435
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isInputMethodPermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;IZ)Z

    move-result v4

    .line 13436
    .local v4, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13437
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13438
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$isMeteredDataDisabledPackageForUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14018
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14020
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 14022
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 14023
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14024
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isMeteredDataDisabledPackageForUser(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v3

    .line 14025
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14026
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14027
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$isPackageSuspended$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13093
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13095
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 13097
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 13098
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13099
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isPackageSuspended(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 13100
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13101
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13102
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$notifyLockTaskModeChanged$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13634
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 13636
    .local v0, "_arg0":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 13638
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 13639
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13640
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    .line 13641
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13642
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$removeKeyPair$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13180
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13182
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 13184
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 13185
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13186
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 13187
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13188
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13189
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$resetPasswordWithToken$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13927
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13929
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 13931
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 13933
    .local v2, "_arg2":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 13934
    .local v3, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13935
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetPasswordWithToken(Landroid/content/ComponentName;Ljava/lang/String;[BI)Z

    move-result v4

    .line 13936
    .local v4, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13937
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13938
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$retrieveNetworkLogs$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13881
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13883
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 13885
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 13886
    .local v2, "_arg2":J
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13887
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->retrieveNetworkLogs(Landroid/content/ComponentName;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v4

    .line 13888
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/NetworkEvent;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13889
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 13890
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$setAccountManagementDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13558
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13560
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 13562
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 13564
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 13565
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13566
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;ZZ)V

    .line 13567
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13568
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setActiveAdmin$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12958
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 12960
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 12962
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 12963
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 12964
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 12965
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 12966
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setAlwaysOnVpnPackage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13273
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13275
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 13277
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 13279
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 13280
    .local v3, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13281
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAlwaysOnVpnPackage(Landroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Z

    move-result v4

    .line 13282
    .local v4, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13283
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13284
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$setApplicationHidden$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 11
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13449
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13451
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 13453
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 13455
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 13457
    .local v9, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 13458
    .local v10, "_arg4":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13459
    move-object v1, p0

    move-object v2, v0

    move-object v3, v7

    move-object v4, v8

    move v5, v9

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v1

    .line 13460
    .local v1, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13461
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13462
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setApplicationRestrictions$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13324
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13326
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 13328
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 13330
    .local v2, "_arg2":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 13331
    .local v3, "_arg3":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13332
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 13333
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13334
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setCameraDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12867
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 12869
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 12871
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 12872
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 12873
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCameraDisabled(Landroid/content/ComponentName;ZZ)V

    .line 12874
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 12875
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setDefaultSmsApplication$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13310
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13312
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 13314
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 13315
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13316
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDefaultSmsApplication(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 13317
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13318
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setDelegatedScopes$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13255
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13257
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 13259
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 13260
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13261
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V

    .line 13262
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13263
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setDeviceOwner$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13013
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13015
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 13017
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 13019
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 13020
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13021
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;IZ)Z

    move-result v4

    .line 13022
    .local v4, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13023
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13024
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$setGlobalPrivateDns$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14033
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14035
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14037
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 14038
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14039
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalPrivateDns(Landroid/content/ComponentName;ILjava/lang/String;)I

    move-result v3

    .line 14040
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14041
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14042
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setGlobalProxy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12846
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 12848
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 12850
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 12851
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 12852
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 12853
    .local v3, "_result":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 12854
    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12855
    return v4
.end method

.method private blacklist onTransact$setGlobalSetting$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13585
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13587
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 13589
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 13590
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13591
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 13592
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13593
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setKeepUninstalledPackages$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13800
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13802
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 13804
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 13805
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13806
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V

    .line 13807
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13808
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setKeyGrantForApp$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 11
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14109
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14111
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 14113
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 14115
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 14117
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 14118
    .local v10, "_arg4":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14119
    move-object v1, p0

    move-object v2, v0

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyGrantForApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 14120
    .local v1, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14121
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14122
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setKeyGrantToWifiAuth$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 14131
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 14133
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14134
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14135
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyGrantToWifiAuth(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 14136
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14137
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14138
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setKeyPairCertificate$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 13
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13218
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13220
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 13222
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 13224
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 13226
    .local v10, "_arg3":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    .line 13228
    .local v11, "_arg4":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v12

    .line 13229
    .local v12, "_arg5":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13230
    move-object v1, p0

    move-object v2, v0

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    move v7, v12

    invoke-virtual/range {v1 .. v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyPairCertificate(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;[B[BZ)Z

    move-result v1

    .line 13231
    .local v1, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13232
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13233
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setKeyguardDisabledFeatures$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12929
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 12931
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 12933
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 12934
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 12935
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)V

    .line 12936
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 12937
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setMaximumFailedPasswordsForWipe$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12739
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 12741
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 12743
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 12744
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 12745
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;IZ)V

    .line 12746
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 12747
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setMaximumTimeToLock$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12769
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 12771
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 12773
    .local v1, "_arg1":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 12774
    .local v3, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 12775
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumTimeToLock(Landroid/content/ComponentName;JZ)V

    .line 12776
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 12777
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setNetworkLoggingEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13866
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13868
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 13870
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 13871
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13872
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setNetworkLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 13873
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13874
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setOrganizationIdForUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 14161
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 14163
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 14164
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14165
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOrganizationIdForUser(Ljava/lang/String;Ljava/lang/String;I)V

    .line 14166
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14167
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPackagesSuspended$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13076
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13078
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 13080
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 13082
    .local v2, "_arg2":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 13083
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13084
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPackagesSuspended(Landroid/content/ComponentName;Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v4

    .line 13085
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13086
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 13087
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$setPasswordExpirationTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12685
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 12687
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 12689
    .local v1, "_arg1":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 12690
    .local v3, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 12691
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordExpirationTimeout(Landroid/content/ComponentName;JZ)V

    .line 12692
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 12693
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setPasswordHistoryLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12656
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 12658
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 12660
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 12661
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 12662
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordHistoryLength(Landroid/content/ComponentName;IZ)V

    .line 12663
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 12664
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordMinimumNonLetter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12626
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 12628
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 12630
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 12631
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 12632
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)V

    .line 12633
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 12634
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordMinimumSymbols$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12597
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 12599
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 12601
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 12602
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 12603
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)V

    .line 12604
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 12605
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPermissionGrantState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 13
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13761
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13763
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 13765
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 13767
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 13769
    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 13771
    .local v11, "_arg4":I
    sget-object v1, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/os/RemoteCallback;

    .line 13772
    .local v12, "_arg5":Landroid/os/RemoteCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13773
    move-object v1, p0

    move-object v2, v0

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move v6, v11

    move-object v7, v12

    invoke-virtual/range {v1 .. v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 13774
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13775
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist onTransact$setPermissionPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13746
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13748
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 13750
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 13751
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13752
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermissionPolicy(Landroid/content/ComponentName;Ljava/lang/String;I)V

    .line 13753
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13754
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPermittedInputMethods$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13410
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13412
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 13414
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 13415
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13416
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;Z)Z

    move-result v3

    .line 13417
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13418
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13419
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setProfileOwner$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13035
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13037
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 13039
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 13040
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13041
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v3

    .line 13042
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13043
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13044
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setProfileOwnerOnOrganizationOwnedDevice$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14050
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14052
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14054
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14055
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14056
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileOwnerOnOrganizationOwnedDevice(Landroid/content/ComponentName;IZ)V

    .line 14057
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14058
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setRequiredStrongAuthTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12798
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 12800
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 12802
    .local v1, "_arg1":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 12803
    .local v3, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 12804
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequiredStrongAuthTimeout(Landroid/content/ComponentName;JZ)V

    .line 12805
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 12806
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setScreenCaptureDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12896
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 12898
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 12900
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 12901
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 12902
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setScreenCaptureDisabled(Landroid/content/ComponentName;ZZ)V

    .line 12903
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 12904
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setSecureSetting$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13613
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13615
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 13617
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 13618
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13619
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 13620
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13621
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setSecurityLoggingEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13839
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13841
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 13843
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 13844
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13845
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSecurityLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 13846
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13847
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setSystemSetting$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13599
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13601
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 13603
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 13604
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13605
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSystemSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 13606
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13607
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setTrustAgentConfiguration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13692
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13694
    .local v0, "_arg0":Landroid/content/ComponentName;
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 13696
    .local v1, "_arg1":Landroid/content/ComponentName;
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 13698
    .local v2, "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 13699
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13700
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;Z)V

    .line 13701
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13702
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setUninstallBlocked$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13648
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13650
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 13652
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 13654
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 13655
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13656
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 13657
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13658
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setUserRestriction$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13360
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13362
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 13364
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 13366
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 13367
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13368
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;ZZ)V

    .line 13369
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13370
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$startManagedQuickContact$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 16
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13671
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 13673
    .local v8, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 13675
    .local v9, "_arg1":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    .line 13677
    .local v11, "_arg2":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 13679
    .local v12, "_arg3":J
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v14, p1

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/Intent;

    .line 13680
    .local v15, "_arg4":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13681
    move-object/from16 v0, p0

    move-object v1, v8

    move-wide v2, v9

    move v4, v11

    move-wide v5, v12

    move-object v7, v15

    invoke-virtual/range {v0 .. v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->startManagedQuickContact(Ljava/lang/String;JZJLandroid/content/Intent;)V

    .line 13682
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13683
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$startViewCalendarEventInManagedProfile$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 19
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14088
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 14090
    .local v10, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 14092
    .local v11, "_arg1":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 14094
    .local v13, "_arg2":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 14096
    .local v15, "_arg3":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 14098
    .local v17, "_arg4":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 14099
    .local v18, "_arg5":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14100
    move-object/from16 v0, p0

    move-object v1, v10

    move-wide v2, v11

    move-wide v4, v13

    move-wide v6, v15

    move/from16 v8, v17

    move/from16 v9, v18

    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/IDevicePolicyManager$Stub;->startViewCalendarEventInManagedProfile(Ljava/lang/String;JJJZI)Z

    move-result v0

    .line 14101
    .local v0, "_result":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14102
    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14103
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$transferOwnership$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13977
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13979
    .local v0, "_arg0":Landroid/content/ComponentName;
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 13981
    .local v1, "_arg1":Landroid/content/ComponentName;
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 13982
    .local v2, "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13983
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->transferOwnership(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V

    .line 13984
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13985
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$uninstallCaCerts$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13124
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 13126
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 13128
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 13129
    .local v2, "_arg2":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13130
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->uninstallCaCerts(Landroid/content/ComponentName;Ljava/lang/String;[Ljava/lang/String;)V

    .line 13131
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 13132
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$updateOverrideApn$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13999
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14001
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14003
    .local v1, "_arg1":I
    sget-object v2, Landroid/telephony/data/ApnSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/data/ApnSetting;

    .line 14004
    .local v2, "_arg2":Landroid/telephony/data/ApnSetting;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14005
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->updateOverrideApn(Landroid/content/ComponentName;ILandroid/telephony/data/ApnSetting;)Z

    move-result v3

    .line 14006
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14007
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14008
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$wipeDataWithReason$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12828
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 12830
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 12832
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 12833
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 12834
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->wipeDataWithReason(ILjava/lang/String;Z)V

    .line 12835
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 12836
    const/4 v3, 0x1

    return v3
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1369
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 14212
    const/16 v0, 0x16a

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 2837
    invoke-static {p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2841
    const-string v0, "android.app.admin.IDevicePolicyManager"

    .line 2842
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 2843
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2845
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2853
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_1

    .line 6054
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 2849
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2850
    return v1

    .line 6045
    :pswitch_1
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 6046
    .local v2, "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6047
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPolicyManagedProfiles(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    .line 6048
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6049
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 6050
    goto/16 :goto_0

    .line 6037
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :pswitch_2
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->shouldAllowBypassingDevicePolicyManagementRoleQualification()Z

    move-result v2

    .line 6038
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6039
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6040
    goto/16 :goto_0

    .line 6028
    .end local v2    # "_result":Z
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6029
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6030
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getString(Ljava/lang/String;)Landroid/app/admin/ParcelableResource;

    move-result-object v3

    .line 6031
    .local v3, "_result":Landroid/app/admin/ParcelableResource;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6032
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6033
    goto/16 :goto_0

    .line 6019
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/app/admin/ParcelableResource;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 6020
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6021
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetStrings(Ljava/util/List;)V

    .line 6022
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6023
    goto/16 :goto_0

    .line 6010
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_5
    sget-object v2, Landroid/app/admin/DevicePolicyStringResource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6011
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/DevicePolicyStringResource;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6012
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStrings(Ljava/util/List;)V

    .line 6013
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6014
    goto/16 :goto_0

    .line 6001
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/DevicePolicyStringResource;>;"
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 6002
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6003
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDpcDownloaded(Z)V

    .line 6004
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6005
    goto/16 :goto_0

    .line 5993
    .end local v2    # "_arg0":Z
    :pswitch_7
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDpcDownloaded()Z

    move-result v2

    .line 5994
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5995
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5996
    goto/16 :goto_0

    .line 5989
    .end local v2    # "_result":Z
    :pswitch_8
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getDrawable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5981
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 5982
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5983
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetDrawables(Ljava/util/List;)V

    .line 5984
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5985
    goto/16 :goto_0

    .line 5972
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_a
    sget-object v2, Landroid/app/admin/DevicePolicyDrawableResource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5973
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/DevicePolicyDrawableResource;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5974
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDrawables(Ljava/util/List;)V

    .line 5975
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5976
    goto/16 :goto_0

    .line 5964
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/DevicePolicyDrawableResource;>;"
    :pswitch_b
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->listForegroundAffiliatedUsers()Ljava/util/List;

    move-result-object v2

    .line 5965
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5966
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 5967
    goto/16 :goto_0

    .line 5957
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :pswitch_c
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getWifiSsidPolicy()Landroid/app/admin/WifiSsidPolicy;

    move-result-object v2

    .line 5958
    .local v2, "_result":Landroid/app/admin/WifiSsidPolicy;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5959
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5960
    goto/16 :goto_0

    .line 5949
    .end local v2    # "_result":Landroid/app/admin/WifiSsidPolicy;
    :pswitch_d
    sget-object v2, Landroid/app/admin/WifiSsidPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/WifiSsidPolicy;

    .line 5950
    .local v2, "_arg0":Landroid/app/admin/WifiSsidPolicy;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5951
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setWifiSsidPolicy(Landroid/app/admin/WifiSsidPolicy;)V

    .line 5952
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5953
    goto/16 :goto_0

    .line 5941
    .end local v2    # "_arg0":Landroid/app/admin/WifiSsidPolicy;
    :pswitch_e
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMinimumRequiredWifiSecurityLevel()I

    move-result v2

    .line 5942
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5943
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5944
    goto/16 :goto_0

    .line 5933
    .end local v2    # "_result":I
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5934
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5935
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMinimumRequiredWifiSecurityLevel(I)V

    .line 5936
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5937
    goto/16 :goto_0

    .line 5925
    .end local v2    # "_arg0":I
    :pswitch_10
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->canUsbDataSignalingBeDisabled()Z

    move-result v2

    .line 5926
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5927
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5928
    goto/16 :goto_0

    .line 5916
    .end local v2    # "_result":Z
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5917
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5918
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUsbDataSignalingEnabledForUser(I)Z

    move-result v3

    .line 5919
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5920
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5921
    goto/16 :goto_0

    .line 5906
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5907
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5908
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUsbDataSignalingEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 5909
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5910
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5911
    goto/16 :goto_0

    .line 5895
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5897
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 5898
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5899
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUsbDataSignalingEnabled(Ljava/lang/String;Z)V

    .line 5900
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5901
    goto/16 :goto_0

    .line 5885
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5886
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5887
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->canAdminGrantSensorsPermissionsForUser(I)Z

    move-result v3

    .line 5888
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5889
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5890
    goto/16 :goto_0

    .line 5876
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5877
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5878
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetDefaultCrossProfileIntentFilters(I)V

    .line 5879
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5880
    goto/16 :goto_0

    .line 5866
    .end local v2    # "_arg0":I
    :pswitch_16
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5867
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5868
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerType(Landroid/content/ComponentName;)I

    move-result v3

    .line 5869
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5870
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5871
    goto/16 :goto_0

    .line 5855
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_17
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5857
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5858
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5859
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceOwnerType(Landroid/content/ComponentName;I)V

    .line 5860
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5861
    goto/16 :goto_0

    .line 5844
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    :pswitch_18
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 5846
    .local v2, "_arg0":Landroid/os/UserHandle;
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    .line 5847
    .local v3, "_arg1":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5848
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->finalizeWorkProfileProvisioning(Landroid/os/UserHandle;Landroid/accounts/Account;)V

    .line 5849
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5850
    goto/16 :goto_0

    .line 5833
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_arg1":Landroid/accounts/Account;
    :pswitch_19
    sget-object v2, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/FullyManagedDeviceProvisioningParams;

    .line 5835
    .local v2, "_arg0":Landroid/app/admin/FullyManagedDeviceProvisioningParams;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5836
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5837
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->provisionFullyManagedDevice(Landroid/app/admin/FullyManagedDeviceProvisioningParams;Ljava/lang/String;)V

    .line 5838
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5839
    goto/16 :goto_0

    .line 5821
    .end local v2    # "_arg0":Landroid/app/admin/FullyManagedDeviceProvisioningParams;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_1a
    sget-object v2, Landroid/app/admin/ManagedProfileProvisioningParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/ManagedProfileProvisioningParams;

    .line 5823
    .local v2, "_arg0":Landroid/app/admin/ManagedProfileProvisioningParams;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5824
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5825
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->createAndProvisionManagedProfile(Landroid/app/admin/ManagedProfileProvisioningParams;Ljava/lang/String;)Landroid/os/UserHandle;

    move-result-object v4

    .line 5826
    .local v4, "_result":Landroid/os/UserHandle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5827
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5828
    goto/16 :goto_0

    .line 5816
    .end local v2    # "_arg0":Landroid/app/admin/ManagedProfileProvisioningParams;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/UserHandle;
    :pswitch_1b
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setOrganizationIdForUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5807
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5808
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5809
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getEnrollmentSpecificId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5810
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5811
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5812
    goto/16 :goto_0

    .line 5797
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5798
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5799
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSafeOperation(I)Z

    move-result v3

    .line 5800
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5801
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5802
    goto/16 :goto_0

    .line 5786
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5788
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5789
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5790
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setNextOperationSafety(II)V

    .line 5791
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5792
    goto/16 :goto_0

    .line 5776
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5777
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5778
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->canProfileOwnerResetPasswordWhenLocked(I)Z

    move-result v3

    .line 5779
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5780
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5781
    goto/16 :goto_0

    .line 5768
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_20
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isComplianceAcknowledgementRequired()Z

    move-result v2

    .line 5769
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5770
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5771
    goto/16 :goto_0

    .line 5762
    .end local v2    # "_result":Z
    :pswitch_21
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->acknowledgeDeviceCompliant()V

    .line 5763
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5764
    goto/16 :goto_0

    .line 5752
    :pswitch_22
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5754
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 5755
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5756
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setManagedProfileMaximumTimeOff(Landroid/content/ComponentName;J)V

    .line 5757
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5758
    goto/16 :goto_0

    .line 5742
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":J
    :pswitch_23
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5743
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5744
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getManagedProfileMaximumTimeOff(Landroid/content/ComponentName;)J

    move-result-wide v3

    .line 5745
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5746
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 5747
    goto/16 :goto_0

    .line 5731
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":J
    :pswitch_24
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5733
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 5734
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5735
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPersonalAppsSuspended(Landroid/content/ComponentName;Z)V

    .line 5736
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5737
    goto/16 :goto_0

    .line 5721
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_25
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5722
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5723
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPersonalAppsSuspendedReasons(Landroid/content/ComponentName;)I

    move-result v3

    .line 5724
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5725
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5726
    goto/16 :goto_0

    .line 5711
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_26
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5712
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5713
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isCommonCriteriaModeEnabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 5714
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5715
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5716
    goto/16 :goto_0

    .line 5700
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_27
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5702
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 5703
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5704
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCommonCriteriaModeEnabled(Landroid/content/ComponentName;Z)V

    .line 5705
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5706
    goto/16 :goto_0

    .line 5690
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_28
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5691
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5692
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getUserControlDisabledPackages(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 5693
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5694
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5695
    goto/16 :goto_0

    .line 5679
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_29
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5681
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 5682
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5683
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserControlDisabledPackages(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 5684
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5685
    goto/16 :goto_0

    .line 5667
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5669
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5670
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5671
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isKeyPairGrantedToWifiAuth(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 5672
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5673
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5674
    goto/16 :goto_0

    .line 5662
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_2b
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setKeyGrantToWifiAuth$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5651
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5653
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5654
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5655
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getKeyPairGrants(Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableGranteeMap;

    move-result-object v4

    .line 5656
    .local v4, "_result":Landroid/app/admin/ParcelableGranteeMap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5657
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5658
    goto/16 :goto_0

    .line 5646
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/app/admin/ParcelableGranteeMap;
    :pswitch_2d
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setKeyGrantForApp$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5642
    :pswitch_2e
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$startViewCalendarEventInManagedProfile$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5635
    :pswitch_2f
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUnattendedManagedKiosk()Z

    move-result v2

    .line 5636
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5637
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5638
    goto/16 :goto_0

    .line 5628
    .end local v2    # "_result":Z
    :pswitch_30
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isManagedKiosk()Z

    move-result v2

    .line 5629
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5630
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5631
    goto/16 :goto_0

    .line 5621
    .end local v2    # "_result":Z
    :pswitch_31
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDefaultCrossProfilePackages()Ljava/util/List;

    move-result-object v2

    .line 5622
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5623
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5624
    goto/16 :goto_0

    .line 5614
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_32
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllCrossProfilePackages()Ljava/util/List;

    move-result-object v2

    .line 5615
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5616
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5617
    goto/16 :goto_0

    .line 5605
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_33
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5606
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5607
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfilePackages(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 5608
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5609
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5610
    goto/16 :goto_0

    .line 5594
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_34
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5596
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 5597
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5598
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCrossProfilePackages(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 5599
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5600
    goto/16 :goto_0

    .line 5584
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5585
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5586
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCalendarPackagesForUser(I)Ljava/util/List;

    move-result-object v3

    .line 5587
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5588
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5589
    goto/16 :goto_0

    .line 5572
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5574
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5575
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5576
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isPackageAllowedToAccessCalendarForUser(Ljava/lang/String;I)Z

    move-result v4

    .line 5577
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5578
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5579
    goto/16 :goto_0

    .line 5562
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_37
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5563
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5564
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCalendarPackages(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 5565
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5566
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5567
    goto/16 :goto_0

    .line 5551
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_38
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5553
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 5554
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5555
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCrossProfileCalendarPackages(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 5556
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5557
    goto/16 :goto_0

    .line 5546
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_39
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$installUpdateFromFile$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5542
    :pswitch_3a
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setProfileOwnerOnOrganizationOwnedDevice$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5533
    :pswitch_3b
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5534
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5535
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getGlobalPrivateDnsHost(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    .line 5536
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5537
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5538
    goto/16 :goto_0

    .line 5523
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_3c
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5524
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5525
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getGlobalPrivateDnsMode(Landroid/content/ComponentName;)I

    move-result v3

    .line 5526
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5527
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5528
    goto/16 :goto_0

    .line 5518
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_3d
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setGlobalPrivateDns$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5514
    :pswitch_3e
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$isMeteredDataDisabledPackageForUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5505
    :pswitch_3f
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5506
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5507
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isOverrideApnEnabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 5508
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5509
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5510
    goto/16 :goto_0

    .line 5494
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_40
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5496
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 5497
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5498
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOverrideApnsEnabled(Landroid/content/ComponentName;Z)V

    .line 5499
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5500
    goto/16 :goto_0

    .line 5484
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_41
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5485
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5486
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOverrideApns(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 5487
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/ApnSetting;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5488
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 5489
    goto/16 :goto_0

    .line 5472
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/ApnSetting;>;"
    :pswitch_42
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5474
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5475
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5476
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeOverrideApn(Landroid/content/ComponentName;I)Z

    move-result v4

    .line 5477
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5478
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5479
    goto/16 :goto_0

    .line 5467
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_43
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$updateOverrideApn$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5456
    :pswitch_44
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5458
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/telephony/data/ApnSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/data/ApnSetting;

    .line 5459
    .local v3, "_arg1":Landroid/telephony/data/ApnSetting;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5460
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->addOverrideApn(Landroid/content/ComponentName;Landroid/telephony/data/ApnSetting;)I

    move-result v4

    .line 5461
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5462
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5463
    goto/16 :goto_0

    .line 5446
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/telephony/data/ApnSetting;
    .end local v4    # "_result":I
    :pswitch_45
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5447
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5448
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMeteredDataDisabledPackages(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 5449
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5450
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5451
    goto/16 :goto_0

    .line 5434
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_46
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5436
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 5437
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5438
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMeteredDataDisabledPackages(Landroid/content/ComponentName;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 5439
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5440
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5441
    goto/16 :goto_0

    .line 5418
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_47
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 5419
    .local v3, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5420
    invoke-virtual {p0, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getEndUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 5421
    .local v4, "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5422
    if-eqz v4, :cond_1

    .line 5423
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5424
    invoke-static {v4, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 5427
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5429
    goto/16 :goto_0

    .line 5402
    .end local v3    # "_arg0":Landroid/content/ComponentName;
    .end local v4    # "_result":Ljava/lang/CharSequence;
    :pswitch_48
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 5403
    .restart local v3    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5404
    invoke-virtual {p0, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStartUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 5405
    .restart local v4    # "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5406
    if-eqz v4, :cond_2

    .line 5407
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5408
    invoke-static {v4, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 5411
    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5413
    goto/16 :goto_0

    .line 5391
    .end local v3    # "_arg0":Landroid/content/ComponentName;
    .end local v4    # "_result":Ljava/lang/CharSequence;
    :pswitch_49
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5393
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 5394
    .local v3, "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5395
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setEndUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 5396
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5397
    goto/16 :goto_0

    .line 5380
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/CharSequence;
    :pswitch_4a
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5382
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 5383
    .restart local v3    # "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5384
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStartUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 5385
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5386
    goto/16 :goto_0

    .line 5372
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/CharSequence;
    :pswitch_4b
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getTransferOwnershipBundle()Landroid/os/PersistableBundle;

    move-result-object v2

    .line 5373
    .local v2, "_result":Landroid/os/PersistableBundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5374
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5375
    goto/16 :goto_0

    .line 5368
    .end local v2    # "_result":Landroid/os/PersistableBundle;
    :pswitch_4c
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$transferOwnership$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5364
    :pswitch_4d
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getDisallowedSystemApps$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5357
    :pswitch_4e
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isLogoutEnabled()Z

    move-result v2

    .line 5358
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5359
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5360
    goto/16 :goto_0

    .line 5347
    .end local v2    # "_result":Z
    :pswitch_4f
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5349
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 5350
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5351
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLogoutEnabled(Landroid/content/ComponentName;Z)V

    .line 5352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5353
    goto/16 :goto_0

    .line 5342
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_50
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$clearApplicationUserData$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5333
    :pswitch_51
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 5334
    .local v2, "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5335
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOwnerInstalledCaCerts(Landroid/os/UserHandle;)Landroid/content/pm/StringParceledListSlice;

    move-result-object v3

    .line 5336
    .local v3, "_result":Landroid/content/pm/StringParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5337
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5338
    goto/16 :goto_0

    .line 5325
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_result":Landroid/content/pm/StringParceledListSlice;
    :pswitch_52
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isCurrentInputMethodSetByOwner()Z

    move-result v2

    .line 5326
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5327
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5328
    goto/16 :goto_0

    .line 5321
    .end local v2    # "_result":Z
    :pswitch_53
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$resetPasswordWithToken$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5312
    :pswitch_54
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5313
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5314
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isResetPasswordTokenActive(Landroid/content/ComponentName;)Z

    move-result v3

    .line 5315
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5316
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5317
    goto/16 :goto_0

    .line 5302
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_55
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5303
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5304
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearResetPasswordToken(Landroid/content/ComponentName;)Z

    move-result v3

    .line 5305
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5306
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5307
    goto/16 :goto_0

    .line 5290
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_56
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5292
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 5293
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5294
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setResetPasswordToken(Landroid/content/ComponentName;[B)Z

    move-result v4

    .line 5295
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5296
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5297
    goto/16 :goto_0

    .line 5282
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":[B
    .end local v4    # "_result":Z
    :pswitch_57
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLastNetworkLogRetrievalTime()J

    move-result-wide v2

    .line 5283
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5284
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 5285
    goto/16 :goto_0

    .line 5275
    .end local v2    # "_result":J
    :pswitch_58
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLastBugReportRequestTime()J

    move-result-wide v2

    .line 5276
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5277
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 5278
    goto/16 :goto_0

    .line 5268
    .end local v2    # "_result":J
    :pswitch_59
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLastSecurityLogRetrievalTime()J

    move-result-wide v2

    .line 5269
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5270
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 5271
    goto/16 :goto_0

    .line 5259
    .end local v2    # "_result":J
    :pswitch_5a
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5260
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5261
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isEphemeralUser(Landroid/content/ComponentName;)Z

    move-result v3

    .line 5262
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5263
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5264
    goto/16 :goto_0

    .line 5249
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_5b
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5250
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5251
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getBindDeviceAdminTargetUsers(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 5252
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5253
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 5254
    goto/16 :goto_0

    .line 5244
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :pswitch_5c
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$bindDeviceAdminServiceAsUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5240
    :pswitch_5d
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$retrieveNetworkLogs$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5229
    :pswitch_5e
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5231
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5232
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5233
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isNetworkLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v4

    .line 5234
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5235
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5236
    goto/16 :goto_0

    .line 5224
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_5f
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setNetworkLoggingEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5215
    :pswitch_60
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5216
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5217
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isBackupServiceEnabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 5218
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5219
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5220
    goto/16 :goto_0

    .line 5204
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_61
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5206
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 5207
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5208
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setBackupServiceEnabled(Landroid/content/ComponentName;Z)V

    .line 5209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5210
    goto/16 :goto_0

    .line 5195
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5196
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5197
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->forceUpdateUserSetupComplete(I)V

    .line 5198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5199
    goto/16 :goto_0

    .line 5188
    .end local v2    # "_arg0":I
    :pswitch_63
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceProvisioningConfigApplied()V

    .line 5189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5190
    goto/16 :goto_0

    .line 5181
    :pswitch_64
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDeviceProvisioningConfigApplied()Z

    move-result v2

    .line 5182
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5183
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5184
    goto/16 :goto_0

    .line 5174
    .end local v2    # "_result":Z
    :pswitch_65
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDeviceProvisioned()Z

    move-result v2

    .line 5175
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5176
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5177
    goto/16 :goto_0

    .line 5166
    .end local v2    # "_result":Z
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5167
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5168
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->uninstallPackageWithActiveAdmins(Ljava/lang/String;)V

    .line 5169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5170
    goto/16 :goto_0

    .line 5156
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5157
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5158
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUninstallInQueue(Ljava/lang/String;)Z

    move-result v3

    .line 5159
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5160
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5161
    goto/16 :goto_0

    .line 5148
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_68
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->forceSecurityLogs()J

    move-result-wide v2

    .line 5149
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5150
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 5151
    goto/16 :goto_0

    .line 5141
    .end local v2    # "_result":J
    :pswitch_69
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->forceNetworkLogs()J

    move-result-wide v2

    .line 5142
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5143
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 5144
    goto/16 :goto_0

    .line 5130
    .end local v2    # "_result":J
    :pswitch_6a
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5132
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5133
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5134
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->retrievePreRebootSecurityLogs(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 5135
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5136
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5137
    goto/16 :goto_0

    .line 5118
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_6b
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5120
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5121
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5122
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->retrieveSecurityLogs(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 5123
    .restart local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5124
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5125
    goto/16 :goto_0

    .line 5106
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_6c
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5108
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5109
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5110
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSecurityLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v4

    .line 5111
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5112
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5113
    goto/16 :goto_0

    .line 5101
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_6d
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setSecurityLoggingEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5092
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5093
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5094
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAffiliatedUser(I)Z

    move-result v3

    .line 5095
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5096
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5097
    goto/16 :goto_0

    .line 5084
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_6f
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isCallingUserAffiliated()Z

    move-result v2

    .line 5085
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5086
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5087
    goto/16 :goto_0

    .line 5075
    .end local v2    # "_result":Z
    :pswitch_70
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5076
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5077
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAffiliationIds(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 5078
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5079
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5080
    goto/16 :goto_0

    .line 5064
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_71
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5066
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 5067
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5068
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAffiliationIds(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 5069
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5070
    goto/16 :goto_0

    .line 5053
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5055
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5056
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5057
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserProvisioningState(II)V

    .line 5058
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5059
    goto/16 :goto_0

    .line 5045
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_73
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getUserProvisioningState()I

    move-result v2

    .line 5046
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5047
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5048
    goto/16 :goto_0

    .line 5030
    .end local v2    # "_result":I
    :pswitch_74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5031
    .local v3, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5032
    invoke-virtual {p0, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 5033
    .local v4, "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5034
    if-eqz v4, :cond_3

    .line 5035
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5036
    invoke-static {v4, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 5039
    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5041
    goto/16 :goto_0

    .line 5016
    .end local v3    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/CharSequence;
    :pswitch_75
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v3

    .line 5017
    .local v3, "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5018
    if-eqz v3, :cond_4

    .line 5019
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5020
    invoke-static {v3, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 5023
    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5025
    goto/16 :goto_0

    .line 5001
    .end local v3    # "_result":Ljava/lang/CharSequence;
    :pswitch_76
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 5002
    .local v3, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5003
    invoke-virtual {p0, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationName(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 5004
    .restart local v4    # "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5005
    if-eqz v4, :cond_5

    .line 5006
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5007
    invoke-static {v4, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 5010
    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5012
    goto/16 :goto_0

    .line 4990
    .end local v3    # "_arg0":Landroid/content/ComponentName;
    .end local v4    # "_result":Ljava/lang/CharSequence;
    :pswitch_77
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4992
    .local v2, "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 4993
    .local v3, "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4994
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOrganizationName(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 4995
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4996
    goto/16 :goto_0

    .line 4980
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/CharSequence;
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4981
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4982
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationColorForUser(I)I

    move-result v3

    .line 4983
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4984
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4985
    goto/16 :goto_0

    .line 4970
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_79
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4971
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4972
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationColor(Landroid/content/ComponentName;)I

    move-result v3

    .line 4973
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4974
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4975
    goto/16 :goto_0

    .line 4961
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4962
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4963
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearOrganizationIdForUser(I)V

    .line 4964
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4965
    goto/16 :goto_0

    .line 4950
    .end local v2    # "_arg0":I
    :pswitch_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4952
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4953
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4954
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOrganizationColorForUser(II)V

    .line 4955
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4956
    goto/16 :goto_0

    .line 4939
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_7c
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4941
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4942
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4943
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOrganizationColor(Landroid/content/ComponentName;I)V

    .line 4944
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4945
    goto/16 :goto_0

    .line 4921
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    :pswitch_7d
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 4923
    .local v3, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 4924
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4925
    invoke-virtual {p0, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLongSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 4926
    .local v5, "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4927
    if-eqz v5, :cond_6

    .line 4928
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4929
    invoke-static {v5, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 4932
    :cond_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4934
    goto/16 :goto_0

    .line 4903
    .end local v3    # "_arg0":Landroid/content/ComponentName;
    .end local v4    # "_arg1":I
    .end local v5    # "_result":Ljava/lang/CharSequence;
    :pswitch_7e
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 4905
    .restart local v3    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 4906
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4907
    invoke-virtual {p0, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getShortSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 4908
    .restart local v5    # "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4909
    if-eqz v5, :cond_7

    .line 4910
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4911
    invoke-static {v5, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 4914
    :cond_7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4916
    goto/16 :goto_0

    .line 4887
    .end local v3    # "_arg0":Landroid/content/ComponentName;
    .end local v4    # "_arg1":I
    .end local v5    # "_result":Ljava/lang/CharSequence;
    :pswitch_7f
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 4888
    .restart local v3    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4889
    invoke-virtual {p0, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLongSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 4890
    .local v4, "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4891
    if-eqz v4, :cond_8

    .line 4892
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4893
    invoke-static {v4, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 4896
    :cond_8
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4898
    goto/16 :goto_0

    .line 4876
    .end local v3    # "_arg0":Landroid/content/ComponentName;
    .end local v4    # "_result":Ljava/lang/CharSequence;
    :pswitch_80
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4878
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 4879
    .local v3, "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4880
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLongSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 4881
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4882
    goto/16 :goto_0

    .line 4860
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/CharSequence;
    :pswitch_81
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 4861
    .local v3, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4862
    invoke-virtual {p0, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getShortSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 4863
    .restart local v4    # "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4864
    if-eqz v4, :cond_9

    .line 4865
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4866
    invoke-static {v4, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 4869
    :cond_9
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4871
    goto/16 :goto_0

    .line 4849
    .end local v3    # "_arg0":Landroid/content/ComponentName;
    .end local v4    # "_result":Ljava/lang/CharSequence;
    :pswitch_82
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4851
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 4852
    .local v3, "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4853
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setShortSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 4854
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4855
    goto/16 :goto_0

    .line 4840
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/CharSequence;
    :pswitch_83
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4841
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4842
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->reboot(Landroid/content/ComponentName;)V

    .line 4843
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4844
    goto/16 :goto_0

    .line 4830
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    :pswitch_84
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4831
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4832
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getWifiMacAddress(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    .line 4833
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4834
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4835
    goto/16 :goto_0

    .line 4820
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_85
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4821
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4822
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isManagedProfile(Landroid/content/ComponentName;)Z

    move-result v3

    .line 4823
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4824
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4825
    goto/16 :goto_0

    .line 4808
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_86
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4810
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4811
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4812
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 4813
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4814
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4815
    goto/16 :goto_0

    .line 4803
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_87
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setKeepUninstalledPackages$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4792
    :pswitch_88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4794
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4795
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4796
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->checkProvisioningPrecondition(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 4797
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4798
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4799
    goto/16 :goto_0

    .line 4780
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4782
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4783
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4784
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isProvisioningAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 4785
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4786
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4787
    goto/16 :goto_0

    .line 4775
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_8a
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPermissionGrantState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4771
    :pswitch_8b
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPermissionGrantState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4762
    :pswitch_8c
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4763
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4764
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermissionPolicy(Landroid/content/ComponentName;)I

    move-result v3

    .line 4765
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4766
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4767
    goto/16 :goto_0

    .line 4757
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_8d
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPermissionPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4748
    :pswitch_8e
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4749
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4750
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPendingSystemUpdate(Landroid/content/ComponentName;)Landroid/app/admin/SystemUpdateInfo;

    move-result-object v3

    .line 4751
    .local v3, "_result":Landroid/app/admin/SystemUpdateInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4752
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4753
    goto/16 :goto_0

    .line 4739
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Landroid/app/admin/SystemUpdateInfo;
    :pswitch_8f
    sget-object v2, Landroid/app/admin/SystemUpdateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/SystemUpdateInfo;

    .line 4740
    .local v2, "_arg0":Landroid/app/admin/SystemUpdateInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4741
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->notifyPendingSystemUpdate(Landroid/app/admin/SystemUpdateInfo;)V

    .line 4742
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4743
    goto/16 :goto_0

    .line 4731
    .end local v2    # "_arg0":Landroid/app/admin/SystemUpdateInfo;
    :pswitch_90
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDoNotAskCredentialsOnBoot()Z

    move-result v2

    .line 4732
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4733
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4734
    goto/16 :goto_0

    .line 4720
    .end local v2    # "_result":Z
    :pswitch_91
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4722
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4723
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4724
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStatusBarDisabled(Landroid/content/ComponentName;Z)Z

    move-result v4

    .line 4725
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4726
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4727
    goto/16 :goto_0

    .line 4708
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_92
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4710
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4711
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4712
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyguardDisabled(Landroid/content/ComponentName;Z)Z

    move-result v4

    .line 4713
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4714
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4715
    goto/16 :goto_0

    .line 4701
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_93
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearSystemUpdatePolicyFreezePeriodRecord()V

    .line 4702
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4703
    goto/16 :goto_0

    .line 4694
    :pswitch_94
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v2

    .line 4695
    .local v2, "_result":Landroid/app/admin/SystemUpdatePolicy;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4696
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4697
    goto/16 :goto_0

    .line 4684
    .end local v2    # "_result":Landroid/app/admin/SystemUpdatePolicy;
    :pswitch_95
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4686
    .local v2, "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/app/admin/SystemUpdatePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/SystemUpdatePolicy;

    .line 4687
    .local v3, "_arg1":Landroid/app/admin/SystemUpdatePolicy;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4688
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSystemUpdatePolicy(Landroid/content/ComponentName;Landroid/app/admin/SystemUpdatePolicy;)V

    .line 4689
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4690
    goto/16 :goto_0

    .line 4673
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/app/admin/SystemUpdatePolicy;
    :pswitch_96
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4675
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 4676
    .local v3, "_arg1":Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4677
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V

    .line 4678
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4679
    goto/16 :goto_0

    .line 4661
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/graphics/Bitmap;
    :pswitch_97
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4663
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4664
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4665
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isRemovingAdmin(Landroid/content/ComponentName;I)Z

    move-result v4

    .line 4666
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4667
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4668
    goto/16 :goto_0

    .line 4651
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_98
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4652
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4653
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getForceEphemeralUsers(Landroid/content/ComponentName;)Z

    move-result v3

    .line 4654
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4655
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4656
    goto/16 :goto_0

    .line 4640
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_99
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4642
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4643
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4644
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setForceEphemeralUsers(Landroid/content/ComponentName;Z)V

    .line 4645
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4646
    goto/16 :goto_0

    .line 4630
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_9a
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4631
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4632
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAutoTimeZoneEnabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 4633
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4634
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4635
    goto/16 :goto_0

    .line 4619
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_9b
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4621
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4622
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4623
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAutoTimeZoneEnabled(Landroid/content/ComponentName;Z)V

    .line 4624
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4625
    goto/16 :goto_0

    .line 4609
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_9c
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4610
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4611
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAutoTimeEnabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 4612
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4613
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4614
    goto/16 :goto_0

    .line 4598
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_9d
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4600
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4601
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4602
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAutoTimeEnabled(Landroid/content/ComponentName;Z)V

    .line 4603
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4604
    goto/16 :goto_0

    .line 4590
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_9e
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAutoTimeRequired()Z

    move-result v2

    .line 4591
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4592
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4593
    goto/16 :goto_0

    .line 4580
    .end local v2    # "_result":Z
    :pswitch_9f
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4582
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4583
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4584
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAutoTimeRequired(Landroid/content/ComponentName;Z)V

    .line 4585
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4586
    goto/16 :goto_0

    .line 4570
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_a0
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4571
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4572
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 4573
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4574
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4575
    goto/16 :goto_0

    .line 4558
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_a1
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4560
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4561
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4562
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v4

    .line 4563
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4564
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4565
    goto/16 :goto_0

    .line 4546
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_a2
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4548
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4549
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4550
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v4

    .line 4551
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4552
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4553
    goto/16 :goto_0

    .line 4541
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_a3
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getTrustAgentConfiguration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4537
    :pswitch_a4
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setTrustAgentConfiguration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4528
    :pswitch_a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4529
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4530
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getBluetoothContactSharingDisabledForUser(I)Z

    move-result v3

    .line 4531
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4532
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4533
    goto/16 :goto_0

    .line 4518
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_a6
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4519
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4520
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getBluetoothContactSharingDisabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 4521
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4522
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4523
    goto/16 :goto_0

    .line 4507
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_a7
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4509
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4510
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4511
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setBluetoothContactSharingDisabled(Landroid/content/ComponentName;Z)V

    .line 4512
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4513
    goto/16 :goto_0

    .line 4502
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_a8
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$startManagedQuickContact$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4493
    :pswitch_a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4494
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4495
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileContactsSearchDisabledForUser(I)Z

    move-result v3

    .line 4496
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4497
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4498
    goto/16 :goto_0

    .line 4483
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_aa
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4484
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4485
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 4486
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4487
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4488
    goto/16 :goto_0

    .line 4472
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_ab
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4474
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4475
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4476
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;Z)V

    .line 4477
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4478
    goto/16 :goto_0

    .line 4462
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4463
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4464
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCallerIdDisabledForUser(I)Z

    move-result v3

    .line 4465
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4466
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4467
    goto/16 :goto_0

    .line 4452
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_ad
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4453
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4454
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 4455
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4456
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4457
    goto/16 :goto_0

    .line 4441
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_ae
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4443
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4444
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4445
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V

    .line 4446
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4447
    goto/16 :goto_0

    .line 4429
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_af
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4431
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4432
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4433
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v4

    .line 4434
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4435
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4436
    goto/16 :goto_0

    .line 4424
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_b0
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setUninstallBlocked$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4420
    :pswitch_b1
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$notifyLockTaskModeChanged$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4411
    :pswitch_b2
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4412
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4413
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isMasterVolumeMuted(Landroid/content/ComponentName;)Z

    move-result v3

    .line 4414
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4415
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4416
    goto/16 :goto_0

    .line 4400
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_b3
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4402
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4403
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4404
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMasterVolumeMuted(Landroid/content/ComponentName;Z)V

    .line 4405
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4406
    goto/16 :goto_0

    .line 4388
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_b4
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4390
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4391
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4392
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setTimeZone(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v4

    .line 4393
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4394
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4395
    goto/16 :goto_0

    .line 4376
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_b5
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4378
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 4379
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4380
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setTime(Landroid/content/ComponentName;J)Z

    move-result v5

    .line 4381
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4382
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4383
    goto/16 :goto_0

    .line 4365
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":J
    .end local v5    # "_result":Z
    :pswitch_b6
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4367
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4368
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4369
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLocationEnabled(Landroid/content/ComponentName;Z)V

    .line 4370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4371
    goto/16 :goto_0

    .line 4355
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_b7
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4356
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4357
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasLockdownAdminConfiguredNetworks(Landroid/content/ComponentName;)Z

    move-result v3

    .line 4358
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4359
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4360
    goto/16 :goto_0

    .line 4344
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_b8
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4346
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4347
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4348
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setConfiguredNetworksLockdownState(Landroid/content/ComponentName;Z)V

    .line 4349
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4350
    goto/16 :goto_0

    .line 4339
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_b9
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setSecureSetting$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4335
    :pswitch_ba
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setSystemSetting$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4331
    :pswitch_bb
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setGlobalSetting$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4322
    :pswitch_bc
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4323
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4324
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLockTaskFeatures(Landroid/content/ComponentName;)I

    move-result v3

    .line 4325
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4326
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4327
    goto/16 :goto_0

    .line 4311
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_bd
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4313
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4314
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4315
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLockTaskFeatures(Landroid/content/ComponentName;I)V

    .line 4316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4317
    goto/16 :goto_0

    .line 4301
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    :pswitch_be
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4302
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4303
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result v3

    .line 4304
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4305
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4306
    goto/16 :goto_0

    .line 4291
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_bf
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4292
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4293
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLockTaskPackages(Landroid/content/ComponentName;)[Ljava/lang/String;

    move-result-object v3

    .line 4294
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4295
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4296
    goto/16 :goto_0

    .line 4280
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":[Ljava/lang/String;
    :pswitch_c0
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4282
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 4283
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4284
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V

    .line 4285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4286
    goto/16 :goto_0

    .line 4272
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":[Ljava/lang/String;
    :pswitch_c1
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPreferentialNetworkServiceConfigs()Ljava/util/List;

    move-result-object v2

    .line 4273
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/PreferentialNetworkServiceConfig;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4274
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 4275
    goto/16 :goto_0

    .line 4264
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/PreferentialNetworkServiceConfig;>;"
    :pswitch_c2
    sget-object v2, Landroid/app/admin/PreferentialNetworkServiceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4265
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/PreferentialNetworkServiceConfig;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4266
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPreferentialNetworkServiceConfigs(Ljava/util/List;)V

    .line 4267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4268
    goto/16 :goto_0

    .line 4254
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/PreferentialNetworkServiceConfig;>;"
    :pswitch_c3
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 4255
    .local v2, "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4256
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSecondaryLockscreenEnabled(Landroid/os/UserHandle;)Z

    move-result v3

    .line 4257
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4258
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4259
    goto/16 :goto_0

    .line 4243
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_result":Z
    :pswitch_c4
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4245
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4246
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4247
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSecondaryLockscreenEnabled(Landroid/content/ComponentName;Z)V

    .line 4248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4249
    goto/16 :goto_0

    .line 4231
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4233
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4234
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4235
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAccountTypesWithManagementDisabledAsUser(IZ)[Ljava/lang/String;

    move-result-object v4

    .line 4236
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4237
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4238
    goto/16 :goto_0

    .line 4223
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":[Ljava/lang/String;
    :pswitch_c6
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAccountTypesWithManagementDisabled()[Ljava/lang/String;

    move-result-object v2

    .line 4224
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4225
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4226
    goto/16 :goto_0

    .line 4219
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_c7
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setAccountManagementDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4215
    :pswitch_c8
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$installExistingPackage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4211
    :pswitch_c9
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$enableSystemAppWithIntent$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4207
    :pswitch_ca
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$enableSystemApp$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4198
    :pswitch_cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4199
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4200
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isNewUserDisclaimerAcknowledged(I)Z

    move-result v3

    .line 4201
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4202
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4203
    goto/16 :goto_0

    .line 4189
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4190
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4191
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->acknowledgeNewUserDisclaimer(I)V

    .line 4192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4193
    goto/16 :goto_0

    .line 4179
    .end local v2    # "_arg0":I
    :pswitch_cd
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4180
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4181
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSecondaryUsers(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 4182
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4183
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 4184
    goto/16 :goto_0

    .line 4171
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :pswitch_ce
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLogoutUserId()I

    move-result v2

    .line 4172
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4173
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4174
    goto/16 :goto_0

    .line 4164
    .end local v2    # "_result":I
    :pswitch_cf
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->logoutUserInternal()I

    move-result v2

    .line 4165
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4166
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4167
    goto/16 :goto_0

    .line 4155
    .end local v2    # "_result":I
    :pswitch_d0
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4156
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4157
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->logoutUser(Landroid/content/ComponentName;)I

    move-result v3

    .line 4158
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4159
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4160
    goto/16 :goto_0

    .line 4143
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_d1
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4145
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 4146
    .local v3, "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4147
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->stopUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)I

    move-result v4

    .line 4148
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4149
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4150
    goto/16 :goto_0

    .line 4131
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    .end local v4    # "_result":I
    :pswitch_d2
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4133
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 4134
    .restart local v3    # "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4135
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->startUserInBackground(Landroid/content/ComponentName;Landroid/os/UserHandle;)I

    move-result v4

    .line 4136
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4137
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4138
    goto/16 :goto_0

    .line 4119
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    .end local v4    # "_result":I
    :pswitch_d3
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4121
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 4122
    .restart local v3    # "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4123
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v4

    .line 4124
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4125
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4126
    goto/16 :goto_0

    .line 4107
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    .end local v4    # "_result":Z
    :pswitch_d4
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4109
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 4110
    .restart local v3    # "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4111
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v4

    .line 4112
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4113
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4114
    goto/16 :goto_0

    .line 4102
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    .end local v4    # "_result":Z
    :pswitch_d5
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$createAndManageUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4098
    :pswitch_d6
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$isApplicationHidden$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4094
    :pswitch_d7
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setApplicationHidden$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4083
    :pswitch_d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4085
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4086
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4087
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getEnforcingAdminAndUserDetails(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 4088
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4089
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4090
    goto/16 :goto_0

    .line 4073
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4074
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4075
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->createAdminSupportIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 4076
    .local v3, "_result":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4077
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4078
    goto/16 :goto_0

    .line 4061
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/content/Intent;
    :pswitch_da
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4063
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4064
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4065
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isNotificationListenerServicePermitted(Ljava/lang/String;I)Z

    move-result v4

    .line 4066
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4067
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4068
    goto/16 :goto_0

    .line 4051
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_db
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4052
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4053
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 4054
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4055
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4056
    goto/16 :goto_0

    .line 4039
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_dc
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4041
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 4042
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4043
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v4

    .line 4044
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4045
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4046
    goto/16 :goto_0

    .line 4034
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_result":Z
    :pswitch_dd
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$isInputMethodPermittedByAdmin$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4025
    :pswitch_de
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4026
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4027
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedInputMethodsAsUser(I)Ljava/util/List;

    move-result-object v3

    .line 4028
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4029
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4030
    goto/16 :goto_0

    .line 4013
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_df
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4015
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4016
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4017
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedInputMethods(Landroid/content/ComponentName;Z)Ljava/util/List;

    move-result-object v4

    .line 4018
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4019
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4020
    goto/16 :goto_0

    .line 4008
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_e0
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPermittedInputMethods$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4004
    :pswitch_e1
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$isAccessibilityServicePermittedByAdmin$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3995
    :pswitch_e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3996
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3997
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedAccessibilityServicesForUser(I)Ljava/util/List;

    move-result-object v3

    .line 3998
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3999
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4000
    goto/16 :goto_0

    .line 3985
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_e3
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3986
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3987
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 3988
    .restart local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3989
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3990
    goto/16 :goto_0

    .line 3973
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_e4
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3975
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 3976
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3977
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v4

    .line 3978
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3979
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3980
    goto/16 :goto_0

    .line 3964
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_result":Z
    :pswitch_e5
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3965
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3966
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V

    .line 3967
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3968
    goto/16 :goto_0

    .line 3959
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    :pswitch_e6
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$addCrossProfileIntentFilter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3948
    :pswitch_e7
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3950
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3951
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3952
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getUserRestrictions(Landroid/content/ComponentName;Z)Landroid/os/Bundle;

    move-result-object v4

    .line 3953
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3954
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3955
    goto/16 :goto_0

    .line 3943
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_e8
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setUserRestriction$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3934
    :pswitch_e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3935
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3936
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRestrictionsProvider(I)Landroid/content/ComponentName;

    move-result-object v3

    .line 3937
    .local v3, "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3938
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3939
    goto/16 :goto_0

    .line 3923
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/content/ComponentName;
    :pswitch_ea
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3925
    .local v2, "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 3926
    .local v3, "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3927
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 3928
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3929
    goto/16 :goto_0

    .line 3913
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    :pswitch_eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3914
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3915
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isCallerApplicationRestrictionsManagingPackage(Ljava/lang/String;)Z

    move-result v3

    .line 3916
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3917
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3918
    goto/16 :goto_0

    .line 3903
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_ec
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3904
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3905
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    .line 3906
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3907
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3908
    goto/16 :goto_0

    .line 3891
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_ed
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3893
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3894
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3895
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v4

    .line 3896
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3897
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3898
    goto/16 :goto_0

    .line 3886
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_ee
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getApplicationRestrictions$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3882
    :pswitch_ef
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setApplicationRestrictions$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3878
    :pswitch_f0
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setDefaultSmsApplication$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3868
    :pswitch_f1
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3870
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3871
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3872
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 3873
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3874
    goto/16 :goto_0

    .line 3863
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_f2
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$addPersistentPreferredActivity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3854
    :pswitch_f3
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3855
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3856
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAlwaysOnVpnLockdownAllowlist(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 3857
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3858
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3859
    goto/16 :goto_0

    .line 3844
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_f4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3845
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3846
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAlwaysOnVpnLockdownEnabledForUser(I)Z

    move-result v3

    .line 3847
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3848
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3849
    goto/16 :goto_0

    .line 3834
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_f5
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3835
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3836
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAlwaysOnVpnLockdownEnabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 3837
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3838
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3839
    goto/16 :goto_0

    .line 3824
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_f6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3825
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3826
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;

    move-result-object v3

    .line 3827
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3828
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3829
    goto/16 :goto_0

    .line 3814
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_f7
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3815
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3816
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAlwaysOnVpnPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    .line 3817
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3818
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3819
    goto/16 :goto_0

    .line 3809
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_f8
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setAlwaysOnVpnPackage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3800
    :pswitch_f9
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3801
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3802
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCertInstallerPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    .line 3803
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3804
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3805
    goto/16 :goto_0

    .line 3789
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_fa
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3791
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3792
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3793
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCertInstallerPackage(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 3794
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3795
    goto/16 :goto_0

    .line 3777
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_fb
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3779
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3780
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3781
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDelegatePackages(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 3782
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3783
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3784
    goto/16 :goto_0

    .line 3765
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_fc
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3767
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3768
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3769
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 3770
    .restart local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3771
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3772
    goto/16 :goto_0

    .line 3760
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_fd
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setDelegatedScopes$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3756
    :pswitch_fe
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$choosePrivateKeyAlias$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3752
    :pswitch_ff
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setKeyPairCertificate$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3748
    :pswitch_100
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$generateKeyPair$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3737
    :pswitch_101
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3739
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3740
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3741
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasKeyPair(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 3742
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3743
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3744
    goto/16 :goto_0

    .line 3732
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_102
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$removeKeyPair$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3728
    :pswitch_103
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$installKeyPair$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3717
    :pswitch_104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3719
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3720
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3721
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isCaCertApproved(Ljava/lang/String;I)Z

    move-result v4

    .line 3722
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3723
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3724
    goto/16 :goto_0

    .line 3712
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_105
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$approveCaCert$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3702
    :pswitch_106
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3704
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3705
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3706
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->enforceCanManageCaCerts(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 3707
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3708
    goto/16 :goto_0

    .line 3697
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_107
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$uninstallCaCerts$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3693
    :pswitch_108
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$installCaCert$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3686
    :pswitch_109
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->listPolicyExemptApps()Ljava/util/List;

    move-result-object v2

    .line 3687
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3688
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3689
    goto/16 :goto_0

    .line 3682
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_10a
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$isPackageSuspended$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3678
    :pswitch_10b
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPackagesSuspended$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3665
    :pswitch_10c
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerLockScreenInfo()Ljava/lang/CharSequence;

    move-result-object v3

    .line 3666
    .local v3, "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3667
    if-eqz v3, :cond_a

    .line 3668
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3669
    invoke-static {v3, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 3672
    :cond_a
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3674
    goto/16 :goto_0

    .line 3655
    .end local v3    # "_result":Ljava/lang/CharSequence;
    :pswitch_10d
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3657
    .local v2, "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 3658
    .local v3, "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3659
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceOwnerLockScreenInfo(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 3660
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3661
    goto/16 :goto_0

    .line 3650
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/CharSequence;
    :pswitch_10e
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$checkDeviceIdentifierAccess$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3643
    :pswitch_10f
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v2

    .line 3644
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3645
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3646
    goto/16 :goto_0

    .line 3636
    .end local v2    # "_result":Z
    :pswitch_110
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasUserSetupCompleted()Z

    move-result v2

    .line 3637
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3638
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3639
    goto/16 :goto_0

    .line 3628
    .end local v2    # "_result":Z
    :pswitch_111
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3629
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3630
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearProfileOwner(Landroid/content/ComponentName;)V

    .line 3631
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3632
    goto/16 :goto_0

    .line 3617
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    :pswitch_112
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3619
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3620
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3621
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 3622
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3623
    goto/16 :goto_0

    .line 3608
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_113
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3609
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3610
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileEnabled(Landroid/content/ComponentName;)V

    .line 3611
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3612
    goto/16 :goto_0

    .line 3598
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    :pswitch_114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3599
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3600
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileOwnerName(I)Ljava/lang/String;

    move-result-object v3

    .line 3601
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3602
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3603
    goto/16 :goto_0

    .line 3588
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_115
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3589
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3590
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSupervisionComponent(Landroid/content/ComponentName;)Z

    move-result v3

    .line 3591
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3592
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3593
    goto/16 :goto_0

    .line 3578
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_116
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 3579
    .local v2, "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3580
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v3

    .line 3581
    .local v3, "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3582
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3583
    goto/16 :goto_0

    .line 3568
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_result":Landroid/content/ComponentName;
    :pswitch_117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3569
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3570
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v3

    .line 3571
    .restart local v3    # "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3572
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3573
    goto/16 :goto_0

    .line 3563
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/content/ComponentName;
    :pswitch_118
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setProfileOwner$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3556
    :pswitch_119
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerUserId()I

    move-result v2

    .line 3557
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3558
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3559
    goto/16 :goto_0

    .line 3548
    .end local v2    # "_result":I
    :pswitch_11a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3549
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3550
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearDeviceOwner(Ljava/lang/String;)V

    .line 3551
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3552
    goto/16 :goto_0

    .line 3540
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_11b
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v2

    .line 3541
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3542
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3543
    goto/16 :goto_0

    .line 3533
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_11c
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasDeviceOwner()Z

    move-result v2

    .line 3534
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3535
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3536
    goto/16 :goto_0

    .line 3524
    .end local v2    # "_result":Z
    :pswitch_11d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3525
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3526
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    move-result-object v3

    .line 3527
    .restart local v3    # "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3528
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3529
    goto/16 :goto_0

    .line 3519
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Landroid/content/ComponentName;
    :pswitch_11e
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setDeviceOwner$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3511
    :pswitch_11f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3512
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3513
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportKeyguardSecured(I)V

    .line 3514
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3515
    goto/16 :goto_0

    .line 3502
    .end local v2    # "_arg0":I
    :pswitch_120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3503
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3504
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportKeyguardDismissed(I)V

    .line 3505
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3506
    goto/16 :goto_0

    .line 3493
    .end local v2    # "_arg0":I
    :pswitch_121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3494
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3495
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulBiometricAttempt(I)V

    .line 3496
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3497
    goto/16 :goto_0

    .line 3484
    .end local v2    # "_arg0":I
    :pswitch_122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3485
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3486
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportFailedBiometricAttempt(I)V

    .line 3487
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3488
    goto/16 :goto_0

    .line 3475
    .end local v2    # "_arg0":I
    :pswitch_123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3476
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3477
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulPasswordAttempt(I)V

    .line 3478
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3479
    goto/16 :goto_0

    .line 3466
    .end local v2    # "_arg0":I
    :pswitch_124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3467
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3468
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportFailedPasswordAttempt(I)V

    .line 3469
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3470
    goto/16 :goto_0

    .line 3455
    .end local v2    # "_arg0":I
    :pswitch_125
    sget-object v2, Landroid/app/admin/PasswordMetrics;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/PasswordMetrics;

    .line 3457
    .local v2, "_arg0":Landroid/app/admin/PasswordMetrics;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3458
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3459
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportPasswordChanged(Landroid/app/admin/PasswordMetrics;I)V

    .line 3460
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3461
    goto/16 :goto_0

    .line 3450
    .end local v2    # "_arg0":Landroid/app/admin/PasswordMetrics;
    .end local v3    # "_arg1":I
    :pswitch_126
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$hasGrantedPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3440
    :pswitch_127
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3442
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3443
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3444
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->forceRemoveActiveAdmin(Landroid/content/ComponentName;I)V

    .line 3445
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3446
    goto/16 :goto_0

    .line 3429
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    :pswitch_128
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3431
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3432
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3433
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 3434
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3435
    goto/16 :goto_0

    .line 3424
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    :pswitch_129
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getRemoveWarning$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3413
    :pswitch_12a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3415
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3416
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3417
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    move-result v4

    .line 3418
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3419
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3420
    goto/16 :goto_0

    .line 3403
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_12b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3404
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3405
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v3

    .line 3406
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3407
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3408
    goto/16 :goto_0

    .line 3391
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :pswitch_12c
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3393
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3394
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3395
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v4

    .line 3396
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3397
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3398
    goto/16 :goto_0

    .line 3386
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_12d
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setActiveAdmin$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3382
    :pswitch_12e
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getKeyguardDisabledFeatures$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3378
    :pswitch_12f
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setKeyguardDisabledFeatures$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3369
    :pswitch_130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3370
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3371
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getNearbyAppStreamingPolicy(I)I

    move-result v3

    .line 3372
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3373
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3374
    goto/16 :goto_0

    .line 3360
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3361
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3362
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setNearbyAppStreamingPolicy(I)V

    .line 3363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3364
    goto/16 :goto_0

    .line 3350
    .end local v2    # "_arg0":I
    :pswitch_132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3351
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3352
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getNearbyNotificationStreamingPolicy(I)I

    move-result v3

    .line 3353
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3354
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3355
    goto/16 :goto_0

    .line 3341
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3342
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3343
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setNearbyNotificationStreamingPolicy(I)V

    .line 3344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3345
    goto/16 :goto_0

    .line 3336
    .end local v2    # "_arg0":I
    :pswitch_134
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getScreenCaptureDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3332
    :pswitch_135
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setScreenCaptureDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3328
    :pswitch_136
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getCameraDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3324
    :pswitch_137
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setCameraDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3315
    :pswitch_138
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3316
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3317
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->requestBugreport(Landroid/content/ComponentName;)Z

    move-result v3

    .line 3318
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3319
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3320
    goto/16 :goto_0

    .line 3303
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_139
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3305
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3306
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3307
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryptionStatus(Ljava/lang/String;I)I

    move-result v4

    .line 3308
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3309
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3310
    goto/16 :goto_0

    .line 3291
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_13a
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3293
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3294
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3295
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryption(Landroid/content/ComponentName;I)Z

    move-result v4

    .line 3296
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3297
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3298
    goto/16 :goto_0

    .line 3279
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_13b
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3281
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3282
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3283
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStorageEncryption(Landroid/content/ComponentName;Z)I

    move-result v4

    .line 3284
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3285
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3286
    goto/16 :goto_0

    .line 3268
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":I
    :pswitch_13c
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3270
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ProxyInfo;

    .line 3271
    .local v3, "_arg1":Landroid/net/ProxyInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3272
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V

    .line 3273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3274
    goto/16 :goto_0

    .line 3258
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/net/ProxyInfo;
    :pswitch_13d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3259
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3260
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getGlobalProxyAdmin(I)Landroid/content/ComponentName;

    move-result-object v3

    .line 3261
    .local v3, "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3262
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3263
    goto/16 :goto_0

    .line 3253
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/content/ComponentName;
    :pswitch_13e
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setGlobalProxy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3245
    :pswitch_13f
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 3246
    .local v2, "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3247
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->sendLostModeLocationUpdate(Lcom/android/internal/infra/AndroidFuture;)V

    .line 3248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3249
    goto/16 :goto_0

    .line 3237
    .end local v2    # "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    :pswitch_140
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isFactoryResetProtectionPolicySupported()Z

    move-result v2

    .line 3238
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3239
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3240
    goto/16 :goto_0

    .line 3228
    .end local v2    # "_result":Z
    :pswitch_141
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3229
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3230
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getFactoryResetProtectionPolicy(Landroid/content/ComponentName;)Landroid/app/admin/FactoryResetProtectionPolicy;

    move-result-object v3

    .line 3231
    .local v3, "_result":Landroid/app/admin/FactoryResetProtectionPolicy;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3232
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3233
    goto/16 :goto_0

    .line 3217
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Landroid/app/admin/FactoryResetProtectionPolicy;
    :pswitch_142
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3219
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/app/admin/FactoryResetProtectionPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/FactoryResetProtectionPolicy;

    .line 3220
    .local v3, "_arg1":Landroid/app/admin/FactoryResetProtectionPolicy;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3221
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setFactoryResetProtectionPolicy(Landroid/content/ComponentName;Landroid/app/admin/FactoryResetProtectionPolicy;)V

    .line 3222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3223
    goto/16 :goto_0

    .line 3212
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/app/admin/FactoryResetProtectionPolicy;
    :pswitch_143
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$wipeDataWithReason$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3202
    :pswitch_144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3204
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3205
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3206
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->lockNow(IZ)V

    .line 3207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3208
    goto/16 :goto_0

    .line 3197
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_145
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getRequiredStrongAuthTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3193
    :pswitch_146
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setRequiredStrongAuthTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3189
    :pswitch_147
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getMaximumTimeToLock$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3185
    :pswitch_148
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setMaximumTimeToLock$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3174
    :pswitch_149
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3176
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3177
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3178
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetPassword(Ljava/lang/String;I)Z

    move-result v4

    .line 3179
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3180
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3181
    goto/16 :goto_0

    .line 3169
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_14a
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getMaximumFailedPasswordsForWipe$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3165
    :pswitch_14b
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setMaximumFailedPasswordsForWipe$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3154
    :pswitch_14c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3156
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3157
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3158
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileWithMinimumFailedPasswordsForWipe(IZ)I

    move-result v4

    .line 3159
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3160
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3161
    goto/16 :goto_0

    .line 3142
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":I
    :pswitch_14d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3144
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3145
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3146
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCurrentFailedPasswordAttempts(IZ)I

    move-result v4

    .line 3147
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3148
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3149
    goto/16 :goto_0

    .line 3132
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":I
    :pswitch_14e
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3133
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3134
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUsingUnifiedPassword(Landroid/content/ComponentName;)Z

    move-result v3

    .line 3135
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3136
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3137
    goto/16 :goto_0

    .line 3120
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_14f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3122
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3123
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3124
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAggregatedPasswordComplexityForUser(IZ)I

    move-result v4

    .line 3125
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3126
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3127
    goto/16 :goto_0

    .line 3110
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":I
    :pswitch_150
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3111
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3112
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequiredPasswordComplexity(Z)I

    move-result v3

    .line 3113
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3114
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3115
    goto/16 :goto_0

    .line 3099
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":I
    :pswitch_151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3101
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3102
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3103
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequiredPasswordComplexity(IZ)V

    .line 3104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3105
    goto/16 :goto_0

    .line 3089
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_152
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3090
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3091
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordComplexity(Z)I

    move-result v3

    .line 3092
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3093
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3094
    goto/16 :goto_0

    .line 3077
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":I
    :pswitch_153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3079
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3080
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3081
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isPasswordSufficientAfterProfileUnification(II)Z

    move-result v4

    .line 3082
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3083
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3084
    goto/16 :goto_0

    .line 3069
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_154
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isActivePasswordSufficientForDeviceRequirement()Z

    move-result v2

    .line 3070
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3071
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3072
    goto/16 :goto_0

    .line 3058
    .end local v2    # "_result":Z
    :pswitch_155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3060
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3061
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3062
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isActivePasswordSufficient(IZ)Z

    move-result v4

    .line 3063
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3064
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3065
    goto/16 :goto_0

    .line 3053
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_156
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordExpiration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3049
    :pswitch_157
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordExpirationTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3045
    :pswitch_158
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordExpirationTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3041
    :pswitch_159
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordHistoryLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3037
    :pswitch_15a
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordHistoryLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3026
    :pswitch_15b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3028
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3029
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3030
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumMetrics(IZ)Landroid/app/admin/PasswordMetrics;

    move-result-object v4

    .line 3031
    .local v4, "_result":Landroid/app/admin/PasswordMetrics;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3032
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3033
    goto/16 :goto_0

    .line 3021
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Landroid/app/admin/PasswordMetrics;
    :pswitch_15c
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordMinimumNonLetter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3017
    :pswitch_15d
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumNonLetter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3013
    :pswitch_15e
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordMinimumSymbols$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3009
    :pswitch_15f
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumSymbols$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3005
    :pswitch_160
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordMinimumNumeric$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 2993
    :pswitch_161
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2995
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2997
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 2998
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2999
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)V

    .line 3000
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3001
    goto/16 :goto_0

    .line 2979
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :pswitch_162
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2981
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2983
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 2984
    .restart local v4    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2985
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLetters(Landroid/content/ComponentName;IZ)I

    move-result v5

    .line 2986
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2987
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2988
    goto/16 :goto_0

    .line 2966
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    .end local v5    # "_result":I
    :pswitch_163
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2968
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2970
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 2971
    .restart local v4    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2972
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLetters(Landroid/content/ComponentName;IZ)V

    .line 2973
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2974
    goto/16 :goto_0

    .line 2952
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :pswitch_164
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2954
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2956
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 2957
    .restart local v4    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2958
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)I

    move-result v5

    .line 2959
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2960
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2961
    goto/16 :goto_0

    .line 2939
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    .end local v5    # "_result":I
    :pswitch_165
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2941
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2943
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 2944
    .restart local v4    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2945
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)V

    .line 2946
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2947
    goto/16 :goto_0

    .line 2925
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :pswitch_166
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2927
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2929
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 2930
    .restart local v4    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2931
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)I

    move-result v5

    .line 2932
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2933
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2934
    goto/16 :goto_0

    .line 2912
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    .end local v5    # "_result":I
    :pswitch_167
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2914
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2916
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 2917
    .restart local v4    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2918
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)V

    .line 2919
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2920
    goto :goto_0

    .line 2898
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :pswitch_168
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2900
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2902
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 2903
    .restart local v4    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2904
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLength(Landroid/content/ComponentName;IZ)I

    move-result v5

    .line 2905
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2906
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2907
    goto :goto_0

    .line 2885
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    .end local v5    # "_result":I
    :pswitch_169
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2887
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2889
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 2890
    .restart local v4    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2891
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLength(Landroid/content/ComponentName;IZ)V

    .line 2892
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2893
    goto :goto_0

    .line 2871
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :pswitch_16a
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2873
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2875
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 2876
    .restart local v4    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2877
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordQuality(Landroid/content/ComponentName;IZ)I

    move-result v5

    .line 2878
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2879
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2880
    goto :goto_0

    .line 2858
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    .end local v5    # "_result":I
    :pswitch_16b
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2860
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2862
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 2863
    .restart local v4    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2864
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordQuality(Landroid/content/ComponentName;IZ)V

    .line 2865
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2866
    nop

    .line 6057
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_16b
        :pswitch_16a
        :pswitch_169
        :pswitch_168
        :pswitch_167
        :pswitch_166
        :pswitch_165
        :pswitch_164
        :pswitch_163
        :pswitch_162
        :pswitch_161
        :pswitch_160
        :pswitch_15f
        :pswitch_15e
        :pswitch_15d
        :pswitch_15c
        :pswitch_15b
        :pswitch_15a
        :pswitch_159
        :pswitch_158
        :pswitch_157
        :pswitch_156
        :pswitch_155
        :pswitch_154
        :pswitch_153
        :pswitch_152
        :pswitch_151
        :pswitch_150
        :pswitch_14f
        :pswitch_14e
        :pswitch_14d
        :pswitch_14c
        :pswitch_14b
        :pswitch_14a
        :pswitch_149
        :pswitch_148
        :pswitch_147
        :pswitch_146
        :pswitch_145
        :pswitch_144
        :pswitch_143
        :pswitch_142
        :pswitch_141
        :pswitch_140
        :pswitch_13f
        :pswitch_13e
        :pswitch_13d
        :pswitch_13c
        :pswitch_13b
        :pswitch_13a
        :pswitch_139
        :pswitch_138
        :pswitch_137
        :pswitch_136
        :pswitch_135
        :pswitch_134
        :pswitch_133
        :pswitch_132
        :pswitch_131
        :pswitch_130
        :pswitch_12f
        :pswitch_12e
        :pswitch_12d
        :pswitch_12c
        :pswitch_12b
        :pswitch_12a
        :pswitch_129
        :pswitch_128
        :pswitch_127
        :pswitch_126
        :pswitch_125
        :pswitch_124
        :pswitch_123
        :pswitch_122
        :pswitch_121
        :pswitch_120
        :pswitch_11f
        :pswitch_11e
        :pswitch_11d
        :pswitch_11c
        :pswitch_11b
        :pswitch_11a
        :pswitch_119
        :pswitch_118
        :pswitch_117
        :pswitch_116
        :pswitch_115
        :pswitch_114
        :pswitch_113
        :pswitch_112
        :pswitch_111
        :pswitch_110
        :pswitch_10f
        :pswitch_10e
        :pswitch_10d
        :pswitch_10c
        :pswitch_10b
        :pswitch_10a
        :pswitch_109
        :pswitch_108
        :pswitch_107
        :pswitch_106
        :pswitch_105
        :pswitch_104
        :pswitch_103
        :pswitch_102
        :pswitch_101
        :pswitch_100
        :pswitch_ff
        :pswitch_fe
        :pswitch_fd
        :pswitch_fc
        :pswitch_fb
        :pswitch_fa
        :pswitch_f9
        :pswitch_f8
        :pswitch_f7
        :pswitch_f6
        :pswitch_f5
        :pswitch_f4
        :pswitch_f3
        :pswitch_f2
        :pswitch_f1
        :pswitch_f0
        :pswitch_ef
        :pswitch_ee
        :pswitch_ed
        :pswitch_ec
        :pswitch_eb
        :pswitch_ea
        :pswitch_e9
        :pswitch_e8
        :pswitch_e7
        :pswitch_e6
        :pswitch_e5
        :pswitch_e4
        :pswitch_e3
        :pswitch_e2
        :pswitch_e1
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
