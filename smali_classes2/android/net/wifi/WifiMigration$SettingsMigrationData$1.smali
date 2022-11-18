.class Landroid/net/wifi/WifiMigration$SettingsMigrationData$1;
.super Ljava/lang/Object;
.source "WifiMigration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiMigration$SettingsMigrationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiMigration$SettingsMigrationData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiMigration$SettingsMigrationData;
    .locals 17
    .param p1, "in"    # Landroid/os/Parcel;

    .line 319
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 320
    .local v9, "scanAlwaysAvailable":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 321
    .local v10, "p2pFactoryResetPending":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 322
    .local v11, "p2pDeviceName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v12

    .line 323
    .local v12, "softApTimeoutEnabled":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v13

    .line 324
    .local v13, "wakeupEnabled":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v14

    .line 325
    .local v14, "scanThrottleEnabled":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 326
    .local v15, "verboseLoggingEnabled":Z
    new-instance v16, Landroid/net/wifi/WifiMigration$SettingsMigrationData;

    const/4 v8, 0x0

    move-object/from16 v0, v16

    move v1, v9

    move v2, v10

    move-object v3, v11

    move v4, v12

    move v5, v13

    move v6, v14

    move v7, v15

    invoke-direct/range {v0 .. v8}, Landroid/net/wifi/WifiMigration$SettingsMigrationData;-><init>(ZZLjava/lang/String;ZZZZLandroid/net/wifi/WifiMigration$SettingsMigrationData-IA;)V

    return-object v16
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 316
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiMigration$SettingsMigrationData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiMigration$SettingsMigrationData;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/WifiMigration$SettingsMigrationData;
    .locals 1
    .param p1, "size"    # I

    .line 334
    new-array v0, p1, [Landroid/net/wifi/WifiMigration$SettingsMigrationData;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 316
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiMigration$SettingsMigrationData$1;->newArray(I)[Landroid/net/wifi/WifiMigration$SettingsMigrationData;

    move-result-object p1

    return-object p1
.end method
