.class public Landroid/os/PowerWhitelistManager;
.super Ljava/lang/Object;
.source "PowerWhitelistManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerWhitelistManager$ReasonCode;,
        Landroid/os/PowerWhitelistManager$TempAllowListType;,
        Landroid/os/PowerWhitelistManager$WhitelistEvent;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist EVENT_MMS:I = 0x2

.field public static final whitelist EVENT_SMS:I = 0x1

.field public static final whitelist EVENT_UNSPECIFIED:I = 0x0

.field public static final whitelist REASON_ACTIVITY_RECOGNITION:I = 0x67

.field public static final blacklist REASON_ACTIVITY_STARTER:I = 0x34

.field public static final blacklist REASON_ALARM_MANAGER_ALARM_CLOCK:I = 0x12d

.field public static final blacklist REASON_ALARM_MANAGER_WHILE_IDLE:I = 0x12e

.field public static final blacklist REASON_ALLOWLISTED_PACKAGE:I = 0x41

.field public static final blacklist REASON_APPOP:I = 0x42

.field public static final blacklist REASON_BACKGROUND_ACTIVITY_PERMISSION:I = 0x3a

.field public static final blacklist REASON_BACKGROUND_FGS_PERMISSION:I = 0x3b

.field public static final blacklist REASON_BOOT_COMPLETED:I = 0xc8

.field public static final blacklist REASON_COMPANION_DEVICE_MANAGER:I = 0x39

.field public static final blacklist REASON_DENIED:I = -0x1

.field public static final blacklist REASON_DEVICE_DEMO_MODE:I = 0x3f

.field public static final blacklist REASON_DEVICE_OWNER:I = 0x37

.field public static final blacklist REASON_DOMAIN_VERIFICATION_V1:I = 0x133

.field public static final blacklist REASON_DOMAIN_VERIFICATION_V2:I = 0x134

.field public static final blacklist REASON_EVENT_MMS:I = 0x13b

.field public static final blacklist REASON_EVENT_SMS:I = 0x13a

.field public static final blacklist REASON_FGS_BINDING:I = 0x36

.field public static final whitelist REASON_GEOFENCING:I = 0x64

.field public static final blacklist REASON_INSTR_BACKGROUND_ACTIVITY_PERMISSION:I = 0x3c

.field public static final blacklist REASON_INSTR_BACKGROUND_FGS_PERMISSION:I = 0x3d

.field public static final blacklist REASON_KEY_CHAIN:I = 0x130

.field public static final whitelist REASON_LOCATION_PROVIDER:I = 0x138
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist REASON_LOCKED_BOOT_COMPLETED:I = 0xca

.field public static final blacklist REASON_MEDIA_BUTTON:I = 0x139

.field public static final blacklist REASON_NOTIFICATION_SERVICE:I = 0x136

.field public static final whitelist REASON_OTHER:I = 0x1

.field public static final blacklist REASON_PACKAGE_REPLACED:I = 0x137

.field public static final blacklist REASON_PACKAGE_VERIFIER:I = 0x131

.field public static final blacklist REASON_PRE_BOOT_COMPLETED:I = 0xc9

.field public static final blacklist REASON_PROC_STATE_BFGS:I = 0xf

.field public static final blacklist REASON_PROC_STATE_BTOP:I = 0xd

.field public static final blacklist REASON_PROC_STATE_FGS:I = 0xe

.field public static final blacklist REASON_PROC_STATE_PERSISTENT:I = 0xa

.field public static final blacklist REASON_PROC_STATE_PERSISTENT_UI:I = 0xb

.field public static final blacklist REASON_PROC_STATE_TOP:I = 0xc

.field public static final blacklist REASON_PROFILE_OWNER:I = 0x38

.field public static final whitelist REASON_PUSH_MESSAGING:I = 0x65

.field public static final whitelist REASON_PUSH_MESSAGING_OVER_QUOTA:I = 0x66

.field public static final blacklist REASON_SERVICE_LAUNCH:I = 0x12f

.field public static final blacklist REASON_SHELL:I = 0x13c

.field public static final blacklist REASON_START_ACTIVITY_FLAG:I = 0x35

.field public static final blacklist REASON_SYNC_MANAGER:I = 0x132

.field public static final blacklist REASON_SYSTEM_ALERT_WINDOW_PERMISSION:I = 0x3e

.field public static final blacklist REASON_SYSTEM_ALLOW_LISTED:I = 0x12c

.field public static final blacklist REASON_SYSTEM_UID:I = 0x33

.field public static final blacklist REASON_UID_VISIBLE:I = 0x32

.field public static final whitelist REASON_UNKNOWN:I = 0x0

.field public static final blacklist REASON_VPN:I = 0x135

.field public static final whitelist TEMPORARY_ALLOWLIST_TYPE_FOREGROUND_SERVICE_ALLOWED:I = 0x0

.field public static final whitelist TEMPORARY_ALLOWLIST_TYPE_FOREGROUND_SERVICE_NOT_ALLOWED:I = 0x1


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mPowerExemptionManager:Landroid/os/PowerExemptionManager;

.field private final blacklist mService:Landroid/os/IDeviceIdleController;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    iput-object p1, p0, Landroid/os/PowerWhitelistManager;->mContext:Landroid/content/Context;

    .line 379
    const-class v0, Landroid/os/DeviceIdleManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DeviceIdleManager;

    invoke-virtual {v0}, Landroid/os/DeviceIdleManager;->getService()Landroid/os/IDeviceIdleController;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PowerWhitelistManager;->mService:Landroid/os/IDeviceIdleController;

    .line 380
    const-class v0, Landroid/os/PowerExemptionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerExemptionManager;

    iput-object v0, p0, Landroid/os/PowerWhitelistManager;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    .line 381
    return-void
.end method

.method public static blacklist getReasonCodeFromProcState(I)I
    .locals 1
    .param p0, "procState"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 530
    invoke-static {p0}, Landroid/os/PowerExemptionManager;->getReasonCodeFromProcState(I)I

    move-result v0

    return v0
.end method

.method public static blacklist reasonCodeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "reasonCode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 542
    invoke-static {p0}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist addToWhitelist(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 391
    iget-object v0, p0, Landroid/os/PowerWhitelistManager;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    invoke-virtual {v0, p1}, Landroid/os/PowerExemptionManager;->addToPermanentAllowList(Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method public whitelist addToWhitelist(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 402
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/os/PowerWhitelistManager;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    invoke-virtual {v0, p1}, Landroid/os/PowerExemptionManager;->addToPermanentAllowList(Ljava/util/List;)V

    .line 403
    return-void
.end method

.method public blacklist getWhitelistedAppIds(Z)[I
    .locals 1
    .param p1, "includingIdle"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 417
    iget-object v0, p0, Landroid/os/PowerWhitelistManager;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    invoke-virtual {v0, p1}, Landroid/os/PowerExemptionManager;->getAllowListedAppIds(Z)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist isWhitelisted(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "includingIdle"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 431
    iget-object v0, p0, Landroid/os/PowerWhitelistManager;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerExemptionManager;->isAllowListed(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist removeFromWhitelist(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 445
    iget-object v0, p0, Landroid/os/PowerWhitelistManager;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    invoke-virtual {v0, p1}, Landroid/os/PowerExemptionManager;->removeFromPermanentAllowList(Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method public whitelist whitelistAppTemporarily(Ljava/lang/String;J)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "durationMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 476
    iget-object v0, p0, Landroid/os/PowerWhitelistManager;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    const/4 v2, 0x0

    move-object v1, p1

    move-object v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/os/PowerExemptionManager;->addToTemporaryAllowList(Ljava/lang/String;ILjava/lang/String;J)V

    .line 478
    return-void
.end method

.method public whitelist whitelistAppTemporarily(Ljava/lang/String;JILjava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "durationMs"    # J
    .param p4, "reasonCode"    # I
    .param p5, "reason"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 462
    iget-object v0, p0, Landroid/os/PowerWhitelistManager;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    move-object v1, p1

    move v2, p4

    move-object v3, p5

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/os/PowerExemptionManager;->addToTemporaryAllowList(Ljava/lang/String;ILjava/lang/String;J)V

    .line 463
    return-void
.end method

.method public whitelist whitelistAppTemporarilyForEvent(Ljava/lang/String;IILjava/lang/String;)J
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "event"    # I
    .param p3, "reasonCode"    # I
    .param p4, "reason"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 519
    iget-object v0, p0, Landroid/os/PowerWhitelistManager;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    invoke-virtual {v0, p1, p3, p4, p2}, Landroid/os/PowerExemptionManager;->addToTemporaryAllowListForEvent(Ljava/lang/String;ILjava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist whitelistAppTemporarilyForEvent(Ljava/lang/String;ILjava/lang/String;)J
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "event"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 497
    iget-object v0, p0, Landroid/os/PowerWhitelistManager;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3, p2}, Landroid/os/PowerExemptionManager;->addToTemporaryAllowListForEvent(Ljava/lang/String;ILjava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method
