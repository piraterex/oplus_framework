.class public final Landroid/net/wifi/WifiMigration;
.super Ljava/lang/Object;
.source "WifiMigration.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiMigration$SettingsMigrationData;,
        Landroid/net/wifi/WifiMigration$UserStoreFileId;,
        Landroid/net/wifi/WifiMigration$SharedStoreFileId;
    }
.end annotation


# static fields
.field private static final blacklist LEGACY_WIFI_STORE_DIRECTORY_NAME:Ljava/lang/String; = "wifi"

.field public static final whitelist STORE_FILE_SHARED_GENERAL:I = 0x0

.field public static final whitelist STORE_FILE_SHARED_SOFTAP:I = 0x1

.field public static final whitelist STORE_FILE_USER_GENERAL:I = 0x2

.field public static final whitelist STORE_FILE_USER_NETWORK_SUGGESTIONS:I = 0x3

.field private static final blacklist STORE_ID_TO_FILE_NAME:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 95
    new-instance v0, Landroid/net/wifi/WifiMigration$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiMigration$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiMigration;->STORE_ID_TO_FILE_NAME:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist convertAndRetrieveSharedConfigStoreFile(I)Ljava/io/InputStream;
    .locals 2
    .param p0, "storeFileId"    # I

    .line 175
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid shared store file id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {p0}, Landroid/net/wifi/WifiMigration;->getSharedAtomicFile(I)Landroid/util/AtomicFile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 181
    :catch_0
    move-exception v1

    .line 186
    .local v1, "e":Ljava/io/FileNotFoundException;
    if-ne p0, v0, :cond_2

    .line 187
    invoke-static {}, Landroid/net/wifi/SoftApConfToXmlMigrationUtil;->convert()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 189
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist convertAndRetrieveUserConfigStoreFile(ILandroid/os/UserHandle;)Ljava/io/InputStream;
    .locals 2
    .param p0, "storeFileId"    # I
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 257
    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid user store file id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :try_start_0
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {p0, v0}, Landroid/net/wifi/WifiMigration;->getUserAtomicFile(II)Landroid/util/AtomicFile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist getLegacyWifiSharedDirectory()Ljava/io/File;
    .locals 3

    .line 107
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataMiscDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "wifi"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static blacklist getLegacyWifiUserDirectory(I)Ljava/io/File;
    .locals 3
    .param p0, "userId"    # I

    .line 114
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataMiscCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "wifi"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static blacklist getSharedAtomicFile(I)Landroid/util/AtomicFile;
    .locals 4
    .param p0, "storeFileId"    # I

    .line 122
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 123
    invoke-static {}, Landroid/net/wifi/WifiMigration;->getLegacyWifiSharedDirectory()Ljava/io/File;

    move-result-object v2

    sget-object v3, Landroid/net/wifi/WifiMigration;->STORE_ID_TO_FILE_NAME:Landroid/util/SparseArray;

    .line 124
    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 122
    return-object v0
.end method

.method private static blacklist getUserAtomicFile(II)Landroid/util/AtomicFile;
    .locals 4
    .param p0, "storeFileId"    # I
    .param p1, "userId"    # I

    .line 132
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 133
    invoke-static {p1}, Landroid/net/wifi/WifiMigration;->getLegacyWifiUserDirectory(I)Ljava/io/File;

    move-result-object v2

    sget-object v3, Landroid/net/wifi/WifiMigration;->STORE_ID_TO_FILE_NAME:Landroid/util/SparseArray;

    .line 134
    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 132
    return-object v0
.end method

.method public static whitelist loadFromSettings(Landroid/content/Context;)Landroid/net/wifi/WifiMigration$SettingsMigrationData;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 525
    nop

    .line 526
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 525
    const-string/jumbo v1, "wifi_migration_completed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 528
    const/4 v0, 0x0

    return-object v0

    .line 530
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;

    invoke-direct {v0}, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;-><init>()V

    .line 532
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_scan_always_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    .line 531
    :goto_0
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->setScanAlwaysAvailable(Z)Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;

    move-result-object v0

    .line 535
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_p2p_pending_factory_reset"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    .line 534
    :goto_1
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->setP2pFactoryResetPending(Z)Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;

    move-result-object v0

    .line 538
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_p2p_device_name"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 537
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->setP2pDeviceName(Ljava/lang/String;)Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;

    move-result-object v0

    .line 541
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "soft_ap_timeout_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_3

    move v4, v3

    goto :goto_2

    :cond_3
    move v4, v2

    .line 540
    :goto_2
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->setSoftApTimeoutEnabled(Z)Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;

    move-result-object v0

    .line 544
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_wakeup_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_4

    move v4, v3

    goto :goto_3

    :cond_4
    move v4, v2

    .line 543
    :goto_3
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->setWakeUpEnabled(Z)Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;

    move-result-object v0

    .line 547
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_scan_throttle_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_5

    move v4, v3

    goto :goto_4

    :cond_5
    move v4, v2

    .line 546
    :goto_4
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->setScanThrottleEnabled(Z)Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;

    move-result-object v0

    .line 550
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_verbose_logging_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_6

    move v2, v3

    .line 549
    :cond_6
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->setVerboseLoggingEnabled(Z)Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;

    move-result-object v0

    .line 552
    invoke-virtual {v0}, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->build()Landroid/net/wifi/WifiMigration$SettingsMigrationData;

    move-result-object v0

    .line 553
    .local v0, "data":Landroid/net/wifi/WifiMigration$SettingsMigrationData;
    nop

    .line 554
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 553
    invoke-static {v2, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 555
    return-object v0
.end method

.method public static whitelist removeSharedConfigStoreFile(I)V
    .locals 3
    .param p0, "storeFileId"    # I

    .line 201
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid shared store file id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_1
    :goto_0
    invoke-static {p0}, Landroid/net/wifi/WifiMigration;->getSharedAtomicFile(I)Landroid/util/AtomicFile;

    move-result-object v1

    .line 205
    .local v1, "file":Landroid/util/AtomicFile;
    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 206
    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    .line 207
    return-void

    .line 213
    :cond_2
    if-ne p0, v0, :cond_3

    .line 214
    invoke-static {}, Landroid/net/wifi/SoftApConfToXmlMigrationUtil;->remove()V

    .line 216
    :cond_3
    return-void
.end method

.method public static whitelist removeUserConfigStoreFile(ILandroid/os/UserHandle;)V
    .locals 2
    .param p0, "storeFileId"    # I
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 280
    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid user store file id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {p0, v0}, Landroid/net/wifi/WifiMigration;->getUserAtomicFile(II)Landroid/util/AtomicFile;

    move-result-object v0

    .line 286
    .local v0, "file":Landroid/util/AtomicFile;
    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 287
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 289
    :cond_2
    return-void
.end method
