.class public Landroid/hardware/biometrics/ParentalControlsUtilsInternal;
.super Ljava/lang/Object;
.source "ParentalControlsUtilsInternal.java"


# static fields
.field private static final blacklist TEST_ALWAYS_REQUIRE_CONSENT_CLASS:Ljava/lang/String; = "android.hardware.biometrics.ParentalControlsUtilsInternal.require_consent_class"

.field private static final blacklist TEST_ALWAYS_REQUIRE_CONSENT_PACKAGE:Ljava/lang/String; = "android.hardware.biometrics.ParentalControlsUtilsInternal.require_consent_package"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist containsFlag(II)Z
    .locals 1
    .param p0, "haystack"    # I
    .param p1, "needle"    # I

    .line 107
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist getSupervisionComponentName(Landroid/app/admin/DevicePolicyManager;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 103
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getTestComponentName(Landroid/content/Context;I)Landroid/content/ComponentName;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 48
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    return-object v1

    .line 49
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android.hardware.biometrics.ParentalControlsUtilsInternal.require_consent_package"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "pkg":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android.hardware.biometrics.ParentalControlsUtilsInternal.require_consent_class"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "cls":Ljava/lang/String;
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v1
.end method

.method public static blacklist parentConsentRequired(Landroid/app/admin/DevicePolicyManager;ILandroid/os/UserHandle;)Z
    .locals 6
    .param p0, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .param p1, "modality"    # I
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 73
    invoke-static {p0, p2}, Landroid/hardware/biometrics/ParentalControlsUtilsInternal;->getSupervisionComponentName(Landroid/app/admin/DevicePolicyManager;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    .line 74
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 75
    const/4 v1, 0x0

    return v1

    .line 78
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v1

    .line 79
    .local v1, "keyguardDisabledFeatures":I
    const/16 v2, 0x20

    invoke-static {v1, v2}, Landroid/hardware/biometrics/ParentalControlsUtilsInternal;->containsFlag(II)Z

    move-result v2

    .line 81
    .local v2, "dpmFpDisabled":Z
    const/16 v3, 0x80

    invoke-static {v1, v3}, Landroid/hardware/biometrics/ParentalControlsUtilsInternal;->containsFlag(II)Z

    move-result v3

    .line 83
    .local v3, "dpmFaceDisabled":Z
    const/16 v4, 0x100

    invoke-static {v1, v4}, Landroid/hardware/biometrics/ParentalControlsUtilsInternal;->containsFlag(II)Z

    move-result v4

    .line 87
    .local v4, "dpmIrisDisabled":Z
    const/4 v5, 0x2

    invoke-static {p1, v5}, Landroid/hardware/biometrics/ParentalControlsUtilsInternal;->containsFlag(II)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    .line 88
    const/4 v5, 0x1

    .local v5, "consentRequired":Z
    goto :goto_0

    .line 89
    .end local v5    # "consentRequired":Z
    :cond_1
    const/16 v5, 0x8

    invoke-static {p1, v5}, Landroid/hardware/biometrics/ParentalControlsUtilsInternal;->containsFlag(II)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v3, :cond_2

    .line 90
    const/4 v5, 0x1

    .restart local v5    # "consentRequired":Z
    goto :goto_0

    .line 91
    .end local v5    # "consentRequired":Z
    :cond_2
    const/4 v5, 0x4

    invoke-static {p1, v5}, Landroid/hardware/biometrics/ParentalControlsUtilsInternal;->containsFlag(II)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    .line 92
    const/4 v5, 0x1

    .restart local v5    # "consentRequired":Z
    goto :goto_0

    .line 94
    .end local v5    # "consentRequired":Z
    :cond_3
    const/4 v5, 0x0

    .line 97
    .restart local v5    # "consentRequired":Z
    :goto_0
    return v5
.end method

.method public static blacklist parentConsentRequired(Landroid/content/Context;Landroid/app/admin/DevicePolicyManager;ILandroid/os/UserHandle;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .param p2, "modality"    # I
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .line 61
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {p0, v0}, Landroid/hardware/biometrics/ParentalControlsUtilsInternal;->getTestComponentName(Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x1

    return v0

    .line 65
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/hardware/biometrics/ParentalControlsUtilsInternal;->parentConsentRequired(Landroid/app/admin/DevicePolicyManager;ILandroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method
