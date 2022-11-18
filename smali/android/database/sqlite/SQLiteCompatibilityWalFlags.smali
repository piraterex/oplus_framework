.class public Landroid/database/sqlite/SQLiteCompatibilityWalFlags;
.super Ljava/lang/Object;
.source "SQLiteCompatibilityWalFlags.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "SQLiteCompatibilityWalFlags"

.field private static volatile greylist-max-o sCallingGlobalSettings:Z

.field private static volatile greylist-max-o sInitialized:Z

.field private static volatile blacklist sLegacyCompatibilityWalEnabled:Z

.field private static volatile blacklist sTruncateSize:J

.field private static volatile greylist-max-o sWALSyncMode:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 45
    const-wide/16 v0, -0x1

    sput-wide v0, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sTruncateSize:J

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static blacklist getTruncateSize()J
    .locals 2

    .line 87
    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->initIfNeeded()V

    .line 88
    sget-wide v0, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sTruncateSize:J

    return-wide v0
.end method

.method public static greylist-max-o getWALSyncMode()Ljava/lang/String;
    .locals 2

    .line 66
    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->initIfNeeded()V

    .line 71
    sget-boolean v0, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sLegacyCompatibilityWalEnabled:Z

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sWALSyncMode:Ljava/lang/String;

    return-object v0

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "isLegacyCompatibilityWalEnabled() == false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o init(Ljava/lang/String;)V
    .locals 6
    .param p0, "flags"    # Ljava/lang/String;

    .line 120
    const-string v0, "SQLiteCompatibilityWalFlags"

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 121
    sput-boolean v2, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sInitialized:Z

    .line 122
    return-void

    .line 124
    :cond_0
    new-instance v1, Landroid/util/KeyValueListParser;

    const/16 v3, 0x2c

    invoke-direct {v1, v3}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 126
    .local v1, "parser":Landroid/util/KeyValueListParser;
    :try_start_0
    invoke-virtual {v1, p0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    nop

    .line 132
    const/4 v3, 0x0

    const-string v4, "legacy_compatibility_wal_enabled"

    invoke-virtual {v1, v4, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sLegacyCompatibilityWalEnabled:Z

    .line 134
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getWALSyncMode()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "wal_syncmode"

    invoke-virtual {v1, v4, v3}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sWALSyncMode:Ljava/lang/String;

    .line 135
    const/4 v3, -0x1

    const-string/jumbo v4, "truncate_size"

    invoke-virtual {v1, v4, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sTruncateSize:J

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read compatibility WAL flags: legacy_compatibility_wal_enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sLegacyCompatibilityWalEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", wal_syncmode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sWALSyncMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    sput-boolean v2, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sInitialized:Z

    .line 139
    return-void

    .line 127
    :catch_0
    move-exception v3

    .line 128
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting has invalid format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    sput-boolean v2, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sInitialized:Z

    .line 130
    return-void
.end method

.method private static greylist-max-o initIfNeeded()V
    .locals 6

    .line 92
    sget-boolean v0, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sInitialized:Z

    if-nez v0, :cond_3

    sget-boolean v0, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sCallingGlobalSettings:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 95
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 96
    .local v0, "activityThread":Landroid/app/ActivityThread;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 97
    .local v1, "app":Landroid/app/Application;
    :goto_0
    const/4 v2, 0x0

    .line 98
    .local v2, "flags":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 99
    const-string v3, "SQLiteCompatibilityWalFlags"

    const-string v4, "Cannot read global setting sqlite_compatibility_wal_flags - Application state not available"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 104
    :cond_2
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    sput-boolean v3, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sCallingGlobalSettings:Z

    .line 105
    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "sqlite_compatibility_wal_flags"

    invoke-static {v3, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 108
    sput-boolean v4, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sCallingGlobalSettings:Z

    .line 109
    nop

    .line 112
    :goto_1
    invoke-static {v2}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->init(Ljava/lang/String;)V

    .line 113
    return-void

    .line 108
    :catchall_0
    move-exception v3

    sput-boolean v4, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sCallingGlobalSettings:Z

    .line 109
    throw v3

    .line 93
    .end local v0    # "activityThread":Landroid/app/ActivityThread;
    .end local v1    # "app":Landroid/app/Application;
    .end local v2    # "flags":Ljava/lang/String;
    :cond_3
    :goto_2
    return-void
.end method

.method public static blacklist isLegacyCompatibilityWalEnabled()Z
    .locals 1

    .line 57
    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->initIfNeeded()V

    .line 58
    sget-boolean v0, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sLegacyCompatibilityWalEnabled:Z

    return v0
.end method

.method public static greylist-max-o reset()V
    .locals 1

    .line 147
    const/4 v0, 0x0

    sput-boolean v0, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sInitialized:Z

    .line 148
    sput-boolean v0, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sLegacyCompatibilityWalEnabled:Z

    .line 149
    const/4 v0, 0x0

    sput-object v0, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sWALSyncMode:Ljava/lang/String;

    .line 150
    return-void
.end method
