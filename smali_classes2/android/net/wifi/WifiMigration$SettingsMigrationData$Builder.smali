.class public final Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;
.super Ljava/lang/Object;
.source "WifiMigration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiMigration$SettingsMigrationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mP2pDeviceName:Ljava/lang/String;

.field private blacklist mP2pFactoryResetPending:Z

.field private blacklist mScanAlwaysAvailable:Z

.field private blacklist mScanThrottleEnabled:Z

.field private blacklist mSoftApTimeoutEnabled:Z

.field private blacklist mVerboseLoggingEnabled:Z

.field private blacklist mWakeupEnabled:Z


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/wifi/WifiMigration$SettingsMigrationData;
    .locals 10

    .line 502
    new-instance v9, Landroid/net/wifi/WifiMigration$SettingsMigrationData;

    iget-boolean v1, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->mScanAlwaysAvailable:Z

    iget-boolean v2, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->mP2pFactoryResetPending:Z

    iget-object v3, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->mP2pDeviceName:Ljava/lang/String;

    iget-boolean v4, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->mSoftApTimeoutEnabled:Z

    iget-boolean v5, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->mWakeupEnabled:Z

    iget-boolean v6, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->mScanThrottleEnabled:Z

    iget-boolean v7, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->mVerboseLoggingEnabled:Z

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/net/wifi/WifiMigration$SettingsMigrationData;-><init>(ZZLjava/lang/String;ZZZZLandroid/net/wifi/WifiMigration$SettingsMigrationData-IA;)V

    return-object v9
.end method

.method public whitelist setP2pDeviceName(Ljava/lang/String;)Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 448
    iput-object p1, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->mP2pDeviceName:Ljava/lang/String;

    .line 449
    return-object p0
.end method

.method public whitelist setP2pFactoryResetPending(Z)Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;
    .locals 0
    .param p1, "pending"    # Z

    .line 437
    iput-boolean p1, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->mP2pFactoryResetPending:Z

    .line 438
    return-object p0
.end method

.method public whitelist setScanAlwaysAvailable(Z)Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;
    .locals 0
    .param p1, "available"    # Z

    .line 426
    iput-boolean p1, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->mScanAlwaysAvailable:Z

    .line 427
    return-object p0
.end method

.method public whitelist setScanThrottleEnabled(Z)Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;
    .locals 0
    .param p1, "enabled"    # Z

    .line 481
    iput-boolean p1, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->mScanThrottleEnabled:Z

    .line 482
    return-object p0
.end method

.method public whitelist setSoftApTimeoutEnabled(Z)Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;
    .locals 0
    .param p1, "enabled"    # Z

    .line 459
    iput-boolean p1, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->mSoftApTimeoutEnabled:Z

    .line 460
    return-object p0
.end method

.method public whitelist setVerboseLoggingEnabled(Z)Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;
    .locals 0
    .param p1, "enabled"    # Z

    .line 492
    iput-boolean p1, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->mVerboseLoggingEnabled:Z

    .line 493
    return-object p0
.end method

.method public whitelist setWakeUpEnabled(Z)Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;
    .locals 0
    .param p1, "enabled"    # Z

    .line 470
    iput-boolean p1, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->mWakeupEnabled:Z

    .line 471
    return-object p0
.end method
