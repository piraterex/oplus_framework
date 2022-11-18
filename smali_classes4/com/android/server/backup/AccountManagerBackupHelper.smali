.class public Lcom/android/server/backup/AccountManagerBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "AccountManagerBackupHelper.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist KEY_ACCOUNT_ACCESS_GRANTS:Ljava/lang/String; = "account_access_grants"

.field private static final blacklist STATE_VERSION:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "AccountsBackup"


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    .line 39
    const-string v0, "account_access_grants"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected blacklist applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "payload"    # [B

    .line 67
    const-string v0, "AccountsBackup"

    const-class v1, Landroid/accounts/AccountManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountManagerInternal;

    .line 72
    .local v1, "am":Landroid/accounts/AccountManagerInternal;
    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    :cond_0
    goto :goto_0

    :pswitch_0
    const-string v3, "account_access_grants"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v4

    :goto_0
    packed-switch v2, :pswitch_data_1

    .line 78
    goto :goto_1

    .line 74
    :pswitch_1
    invoke-virtual {v1, p2, v4}, Landroid/accounts/AccountManagerInternal;->restoreAccountAccessPermissions([BI)V

    .line 75
    goto :goto_2

    .line 78
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected restore key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_2
    goto :goto_3

    .line 81
    :catch_0
    move-exception v2

    .line 82
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to restore key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x5c091b80
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method protected blacklist getBackupPayload(Ljava/lang/String;)[B
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .line 44
    const-string v0, "AccountsBackup"

    const-class v1, Landroid/accounts/AccountManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountManagerInternal;

    .line 49
    .local v1, "am":Landroid/accounts/AccountManagerInternal;
    const/4 v2, -0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    goto :goto_0

    :pswitch_0
    const-string v4, "account_access_grants"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :goto_0
    packed-switch v2, :pswitch_data_1

    .line 55
    goto :goto_1

    .line 51
    :pswitch_1
    invoke-virtual {v1, v3}, Landroid/accounts/AccountManagerInternal;->backupAccountAccessPermissions(I)[B

    move-result-object v0

    return-object v0

    .line 55
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected backup key "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_2

    .line 58
    :catch_0
    move-exception v2

    .line 59
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to store payload "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    new-array v0, v3, [B

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x5c091b80
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
