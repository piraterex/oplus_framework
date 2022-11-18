.class public Lcom/android/server/backup/AccountSyncSettingsBackupHelper;
.super Ljava/lang/Object;
.source "AccountSyncSettingsBackupHelper.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist JSON_FORMAT_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final blacklist JSON_FORMAT_HEADER_KEY:Ljava/lang/String; = "account_data"

.field private static final blacklist JSON_FORMAT_VERSION:I = 0x1

.field private static final blacklist KEY_ACCOUNTS:Ljava/lang/String; = "accounts"

.field private static final blacklist KEY_ACCOUNT_AUTHORITIES:Ljava/lang/String; = "authorities"

.field private static final blacklist KEY_ACCOUNT_NAME:Ljava/lang/String; = "name"

.field private static final blacklist KEY_ACCOUNT_TYPE:Ljava/lang/String; = "type"

.field private static final blacklist KEY_AUTHORITY_NAME:Ljava/lang/String; = "name"

.field private static final blacklist KEY_AUTHORITY_SYNC_ENABLED:Ljava/lang/String; = "syncEnabled"

.field private static final blacklist KEY_AUTHORITY_SYNC_STATE:Ljava/lang/String; = "syncState"

.field private static final blacklist KEY_MASTER_SYNC_ENABLED:Ljava/lang/String; = "masterSyncEnabled"

.field private static final blacklist KEY_VERSION:Ljava/lang/String; = "version"

.field private static final blacklist MD5_BYTE_SIZE:I = 0x10

.field private static final blacklist STASH_FILE:Ljava/lang/String; = "/backup/unadded_account_syncsettings.json"

.field private static final blacklist STATE_VERSION:I = 0x1

.field private static final blacklist SYNC_REQUEST_LATCH_TIMEOUT_SECONDS:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "AccountSyncSettingsBackupHelper"


# instance fields
.field private blacklist mAccountManager:Landroid/accounts/AccountManager;

.field private blacklist mContext:Landroid/content/Context;

.field private final blacklist mUserId:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mContext:Landroid/content/Context;

    .line 89
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mAccountManager:Landroid/accounts/AccountManager;

    .line 91
    iput p2, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mUserId:I

    .line 92
    return-void
.end method

.method public static blacklist accountAdded(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 355
    new-instance v0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;

    invoke-direct {v0, p0, p1}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;-><init>(Landroid/content/Context;I)V

    .line 357
    .local v0, "helper":Lcom/android/server/backup/AccountSyncSettingsBackupHelper;
    invoke-direct {v0, p1}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->accountAddedInternal(I)V

    .line 358
    return-void
.end method

.method private blacklist accountAddedInternal(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 330
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-static {p1}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->getStashFile(I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 331
    .local v0, "fIn":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 332
    .local v1, "in":Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    .end local v1    # "in":Ljava/io/DataInputStream;
    .local v2, "jsonString":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 340
    .end local v0    # "fIn":Ljava/io/FileInputStream;
    nop

    .line 343
    :try_start_3
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 344
    .local v0, "unaddedAccountsJSONArray":Lorg/json/JSONArray;
    invoke-direct {p0, v0, p1}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->restoreFromJsonArray(Lorg/json/JSONArray;I)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 348
    .end local v0    # "unaddedAccountsJSONArray":Lorg/json/JSONArray;
    goto :goto_0

    .line 345
    :catch_0
    move-exception v0

    .line 347
    .local v0, "jse":Lorg/json/JSONException;
    const-string v1, "AccountSyncSettingsBackupHelper"

    const-string/jumbo v3, "there was an error with the stashed sync settings"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    .end local v0    # "jse":Lorg/json/JSONException;
    :goto_0
    return-void

    .line 330
    .end local v2    # "jsonString":Ljava/lang/String;
    .local v0, "fIn":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_5
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/backup/AccountSyncSettingsBackupHelper;
    .end local p1    # "userId":I
    :goto_1
    throw v1
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 337
    .end local v0    # "fIn":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/backup/AccountSyncSettingsBackupHelper;
    .restart local p1    # "userId":I
    :catch_1
    move-exception v0

    .line 339
    .local v0, "ioe":Ljava/io/IOException;
    return-void

    .line 333
    .end local v0    # "ioe":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 336
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    return-void
.end method

.method private blacklist generateMd5Checksum([B)[B
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 238
    if-nez p1, :cond_0

    .line 239
    const/4 v0, 0x0

    return-object v0

    .line 242
    :cond_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 243
    .local v0, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    return-object v1
.end method

.method private blacklist getAccounts(I)Ljava/util/Set;
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v0

    .line 367
    .local v0, "accounts":[Landroid/accounts/Account;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 368
    .local v1, "accountHashSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/accounts/Account;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 369
    .local v4, "account":Landroid/accounts/Account;
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 368
    .end local v4    # "account":Landroid/accounts/Account;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 371
    :cond_0
    return-object v1
.end method

.method private static blacklist getStashFile(I)Ljava/io/File;
    .locals 3
    .param p0, "userId"    # I

    .line 437
    if-nez p0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 438
    :cond_0
    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v0

    :goto_0
    nop

    .line 439
    .local v0, "baseDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "/backup/unadded_account_syncsettings.json"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private blacklist readOldMd5Checksum(Landroid/os/ParcelFileDescriptor;)[B
    .locals 7
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    .line 198
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 200
    .local v0, "dataInput":Ljava/io/DataInputStream;
    const/16 v1, 0x10

    new-array v2, v1, [B

    .line 202
    .local v2, "oldMd5Checksum":[B
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 203
    .local v3, "stateVersion":I
    const/4 v4, 0x1

    if-gt v3, v4, :cond_1

    .line 207
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 208
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    aput-byte v5, v2, v4

    .line 207
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v4    # "i":I
    :cond_0
    goto :goto_1

    .line 211
    :cond_1
    const-string v1, "AccountSyncSettingsBackupHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Backup state version is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (support only up to version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v3    # "stateVersion":I
    :goto_1
    goto :goto_2

    .line 214
    :catch_0
    move-exception v1

    .line 218
    :goto_2
    return-object v2
.end method

.method private blacklist restoreExistingAccountSyncSettingsFromJSON(Lorg/json/JSONObject;I)V
    .locals 11
    .param p1, "accountJSON"    # Lorg/json/JSONObject;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 406
    const-string v0, "authorities"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 407
    .local v0, "authorities":Lorg/json/JSONArray;
    const-string/jumbo v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 408
    .local v2, "accountName":Ljava/lang/String;
    const-string/jumbo v3, "type"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 410
    .local v3, "accountType":Ljava/lang/String;
    new-instance v4, Landroid/accounts/Account;

    invoke-direct {v4, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    .local v4, "account":Landroid/accounts/Account;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 412
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    .line 413
    .local v6, "authority":Lorg/json/JSONObject;
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 414
    .local v7, "authorityName":Ljava/lang/String;
    const-string/jumbo v8, "syncEnabled"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 415
    .local v8, "wasSyncEnabled":Z
    const-string/jumbo v9, "syncState"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 417
    .local v9, "wasSyncable":I
    invoke-static {v4, v7, v8, p2}, Landroid/content/ContentResolver;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 420
    if-nez v8, :cond_1

    .line 421
    nop

    .line 424
    if-nez v9, :cond_0

    .line 425
    const/4 v10, 0x0

    goto :goto_1

    :cond_0
    const/4 v10, 0x2

    .line 421
    :goto_1
    invoke-static {v4, v7, v10, p2}, Landroid/content/ContentResolver;->setIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;II)V

    .line 411
    .end local v6    # "authority":Lorg/json/JSONObject;
    .end local v7    # "authorityName":Ljava/lang/String;
    .end local v8    # "wasSyncEnabled":Z
    .end local v9    # "wasSyncable":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 429
    .end local v5    # "i":I
    :cond_2
    return-void
.end method

.method private blacklist restoreFromJsonArray(Lorg/json/JSONArray;I)V
    .locals 8
    .param p1, "accountJSONArray"    # Lorg/json/JSONArray;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 283
    invoke-direct {p0, p2}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->getAccounts(I)Ljava/util/Set;

    move-result-object v0

    .line 284
    .local v0, "currentAccounts":Ljava/util/Set;, "Ljava/util/Set<Landroid/accounts/Account;>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 285
    .local v1, "unaddedAccountsJSONArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 286
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 287
    .local v3, "accountJSON":Lorg/json/JSONObject;
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 288
    .local v4, "accountName":Ljava/lang/String;
    const-string/jumbo v5, "type"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 290
    .local v5, "accountType":Ljava/lang/String;
    const/4 v6, 0x0

    .line 292
    .local v6, "account":Landroid/accounts/Account;
    :try_start_0
    new-instance v7, Landroid/accounts/Account;

    invoke-direct {v7, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v7

    .line 295
    nop

    .line 299
    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 301
    invoke-direct {p0, v3, p2}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->restoreExistingAccountSyncSettingsFromJSON(Lorg/json/JSONObject;I)V

    goto :goto_1

    .line 303
    :cond_0
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 293
    :catch_0
    move-exception v7

    .line 294
    .local v7, "iae":Ljava/lang/IllegalArgumentException;
    nop

    .line 285
    .end local v3    # "accountJSON":Lorg/json/JSONObject;
    .end local v4    # "accountName":Ljava/lang/String;
    .end local v5    # "accountType":Ljava/lang/String;
    .end local v6    # "account":Landroid/accounts/Account;
    .end local v7    # "iae":Ljava/lang/IllegalArgumentException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 307
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 308
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-static {p2}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->getStashFile(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 309
    .local v2, "fOutput":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    .line 310
    .local v3, "jsonString":Ljava/lang/String;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 311
    .local v4, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v4, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 312
    .end local v3    # "jsonString":Ljava/lang/String;
    .end local v4    # "out":Ljava/io/DataOutputStream;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 308
    :catchall_0
    move-exception v3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v4

    :try_start_5
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "currentAccounts":Ljava/util/Set;, "Ljava/util/Set<Landroid/accounts/Account;>;"
    .end local v1    # "unaddedAccountsJSONArray":Lorg/json/JSONArray;
    .end local p0    # "this":Lcom/android/server/backup/AccountSyncSettingsBackupHelper;
    .end local p1    # "accountJSONArray":Lorg/json/JSONArray;
    .end local p2    # "userId":I
    :goto_2
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 312
    .end local v2    # "fOutput":Ljava/io/FileOutputStream;
    .restart local v0    # "currentAccounts":Ljava/util/Set;, "Ljava/util/Set<Landroid/accounts/Account;>;"
    .restart local v1    # "unaddedAccountsJSONArray":Lorg/json/JSONArray;
    .restart local p0    # "this":Lcom/android/server/backup/AccountSyncSettingsBackupHelper;
    .restart local p1    # "accountJSONArray":Lorg/json/JSONArray;
    .restart local p2    # "userId":I
    :catch_1
    move-exception v2

    .line 314
    .local v2, "ioe":Ljava/io/IOException;
    const-string v3, "AccountSyncSettingsBackupHelper"

    const-string/jumbo v4, "unable to write the sync settings to the stash file"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    .end local v2    # "ioe":Ljava/io/IOException;
    :goto_3
    goto :goto_4

    .line 317
    :cond_2
    invoke-static {p2}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->getStashFile(I)Ljava/io/File;

    move-result-object v2

    .line 318
    .local v2, "stashFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 319
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 322
    .end local v2    # "stashFile":Ljava/io/File;
    :cond_3
    :goto_4
    return-void
.end method

.method private blacklist serializeAccountSyncSettingsToJSON(I)Lorg/json/JSONObject;
    .locals 19
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 131
    move/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v2, v0}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v2

    .line 132
    .local v2, "accounts":[Landroid/accounts/Account;
    invoke-static/range {p1 .. p1}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v3

    .line 136
    .local v3, "syncAdapters":[Landroid/content/SyncAdapterType;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 138
    .local v4, "accountTypeToAuthorities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    array-length v5, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_2

    aget-object v8, v3, v7

    .line 140
    .local v8, "syncAdapter":Landroid/content/SyncAdapterType;
    invoke-virtual {v8}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v9

    if-nez v9, :cond_0

    .line 141
    goto :goto_1

    .line 143
    :cond_0
    iget-object v9, v8, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 144
    iget-object v9, v8, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_1
    iget-object v9, v8, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    iget-object v10, v8, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v8    # "syncAdapter":Landroid/content/SyncAdapterType;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 150
    :cond_2
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 151
    .local v5, "backupJSON":Lorg/json/JSONObject;
    const-string/jumbo v7, "version"

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 152
    invoke-static/range {p1 .. p1}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v7

    const-string/jumbo v8, "masterSyncEnabled"

    invoke-virtual {v5, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 155
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 156
    .local v7, "accountJSONArray":Lorg/json/JSONArray;
    array-length v8, v2

    :goto_2
    if-ge v6, v8, :cond_6

    aget-object v9, v2, v6

    .line 157
    .local v9, "account":Landroid/accounts/Account;
    iget-object v10, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 161
    .local v10, "authorities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v10, :cond_5

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 162
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    goto :goto_4

    .line 165
    :cond_3
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 166
    .local v11, "accountJSON":Lorg/json/JSONObject;
    iget-object v12, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string/jumbo v13, "name"

    invoke-virtual {v11, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    iget-object v12, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string/jumbo v14, "type"

    invoke-virtual {v11, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 171
    .local v12, "authoritiesJSONArray":Lorg/json/JSONArray;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 172
    .local v15, "authority":Ljava/lang/String;
    invoke-static {v9, v15, v0}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v1

    .line 173
    .local v1, "syncState":I
    move-object/from16 v16, v2

    .end local v2    # "accounts":[Landroid/accounts/Account;
    .local v16, "accounts":[Landroid/accounts/Account;
    invoke-static {v9, v15, v0}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v2

    .line 176
    .local v2, "syncEnabled":Z
    new-instance v17, Lorg/json/JSONObject;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v18, v17

    .line 177
    .local v18, "authorityJSON":Lorg/json/JSONObject;
    move-object/from16 v0, v18

    .end local v18    # "authorityJSON":Lorg/json/JSONObject;
    .local v0, "authorityJSON":Lorg/json/JSONObject;
    invoke-virtual {v0, v13, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    move-object/from16 v17, v3

    .end local v3    # "syncAdapters":[Landroid/content/SyncAdapterType;
    .local v17, "syncAdapters":[Landroid/content/SyncAdapterType;
    const-string/jumbo v3, "syncState"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 179
    const-string/jumbo v3, "syncEnabled"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 180
    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 181
    .end local v0    # "authorityJSON":Lorg/json/JSONObject;
    .end local v1    # "syncState":I
    .end local v2    # "syncEnabled":Z
    .end local v15    # "authority":Ljava/lang/String;
    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    goto :goto_3

    .line 182
    .end local v16    # "accounts":[Landroid/accounts/Account;
    .end local v17    # "syncAdapters":[Landroid/content/SyncAdapterType;
    .local v2, "accounts":[Landroid/accounts/Account;
    .restart local v3    # "syncAdapters":[Landroid/content/SyncAdapterType;
    :cond_4
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .end local v2    # "accounts":[Landroid/accounts/Account;
    .end local v3    # "syncAdapters":[Landroid/content/SyncAdapterType;
    .restart local v16    # "accounts":[Landroid/accounts/Account;
    .restart local v17    # "syncAdapters":[Landroid/content/SyncAdapterType;
    const-string v0, "authorities"

    invoke-virtual {v11, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    .line 161
    .end local v11    # "accountJSON":Lorg/json/JSONObject;
    .end local v12    # "authoritiesJSONArray":Lorg/json/JSONArray;
    .end local v16    # "accounts":[Landroid/accounts/Account;
    .end local v17    # "syncAdapters":[Landroid/content/SyncAdapterType;
    .restart local v2    # "accounts":[Landroid/accounts/Account;
    .restart local v3    # "syncAdapters":[Landroid/content/SyncAdapterType;
    :cond_5
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .line 156
    .end local v2    # "accounts":[Landroid/accounts/Account;
    .end local v3    # "syncAdapters":[Landroid/content/SyncAdapterType;
    .end local v9    # "account":Landroid/accounts/Account;
    .end local v10    # "authorities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "accounts":[Landroid/accounts/Account;
    .restart local v17    # "syncAdapters":[Landroid/content/SyncAdapterType;
    :goto_4
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    goto/16 :goto_2

    .line 186
    .end local v16    # "accounts":[Landroid/accounts/Account;
    .end local v17    # "syncAdapters":[Landroid/content/SyncAdapterType;
    .restart local v2    # "accounts":[Landroid/accounts/Account;
    .restart local v3    # "syncAdapters":[Landroid/content/SyncAdapterType;
    :cond_6
    const-string v0, "accounts"

    invoke-virtual {v5, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    return-object v5
.end method

.method private blacklist writeNewMd5Checksum(Landroid/os/ParcelFileDescriptor;[B)V
    .locals 4
    .param p1, "newState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "md5Checksum"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    .line 227
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 229
    .local v0, "dataOutput":Ljava/io/DataOutputStream;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 230
    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->write([B)V

    .line 235
    return-void
.end method


# virtual methods
.method public whitelist performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 7
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "output"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;

    .line 101
    const-string v0, "AccountSyncSettingsBackupHelper"

    :try_start_0
    iget v1, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mUserId:I

    invoke-direct {p0, v1}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->serializeAccountSyncSettingsToJSON(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 108
    .local v1, "dataJSON":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 109
    .local v2, "dataBytes":[B
    invoke-direct {p0, p1}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->readOldMd5Checksum(Landroid/os/ParcelFileDescriptor;)[B

    move-result-object v3

    .line 110
    .local v3, "oldMd5Checksum":[B
    invoke-direct {p0, v2}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->generateMd5Checksum([B)[B

    move-result-object v4

    .line 111
    .local v4, "newMd5Checksum":[B
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_0

    .line 112
    array-length v5, v2

    .line 113
    .local v5, "dataSize":I
    const-string v6, "account_data"

    invoke-virtual {p2, v6, v5}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 114
    invoke-virtual {p2, v2, v5}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 116
    const-string v6, "Backup successful."

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    nop

    .end local v5    # "dataSize":I
    goto :goto_0

    .line 118
    :cond_0
    const-string v5, "Old and new MD5 checksums match. Skipping backup."

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_0
    invoke-direct {p0, p3, v4}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->writeNewMd5Checksum(Landroid/os/ParcelFileDescriptor;[B)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v1    # "dataJSON":Lorg/json/JSONObject;
    .end local v2    # "dataBytes":[B
    .end local v3    # "oldMd5Checksum":[B
    .end local v4    # "newMd5Checksum":[B
    goto :goto_1

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t backup account sync settings\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public whitelist restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .locals 9
    .param p1, "data"    # Landroid/app/backup/BackupDataInputStream;

    .line 251
    const-string v0, "AccountSyncSettingsBackupHelper"

    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->size()I

    move-result v1

    new-array v1, v1, [B

    .line 254
    .local v1, "dataBytes":[B
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/app/backup/BackupDataInputStream;->read([B)I

    .line 255
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 258
    .local v2, "dataString":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 259
    .local v3, "dataJSON":Lorg/json/JSONObject;
    const-string/jumbo v4, "masterSyncEnabled"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 260
    .local v4, "masterSyncEnabled":Z
    const-string v5, "accounts"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 262
    .local v5, "accountJSONArray":Lorg/json/JSONArray;
    iget v6, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mUserId:I

    invoke-static {v6}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v6

    .line 264
    .local v6, "currentMasterSyncEnabled":Z
    if-eqz v6, :cond_0

    .line 266
    const/4 v7, 0x0

    iget v8, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mUserId:I

    invoke-static {v7, v8}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :cond_0
    :try_start_1
    iget v7, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mUserId:I

    invoke-direct {p0, v5, v7}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->restoreFromJsonArray(Lorg/json/JSONArray;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    :try_start_2
    iget v7, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mUserId:I

    invoke-static {v4, v7}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 274
    nop

    .line 275
    const-string v7, "Restore successful."

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    nop

    .end local v2    # "dataString":Ljava/lang/String;
    .end local v3    # "dataJSON":Lorg/json/JSONObject;
    .end local v4    # "masterSyncEnabled":Z
    .end local v5    # "accountJSONArray":Lorg/json/JSONArray;
    .end local v6    # "currentMasterSyncEnabled":Z
    goto :goto_0

    .line 273
    .restart local v2    # "dataString":Ljava/lang/String;
    .restart local v3    # "dataJSON":Lorg/json/JSONObject;
    .restart local v4    # "masterSyncEnabled":Z
    .restart local v5    # "accountJSONArray":Lorg/json/JSONArray;
    .restart local v6    # "currentMasterSyncEnabled":Z
    :catchall_0
    move-exception v7

    iget v8, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mUserId:I

    invoke-static {v4, v8}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 274
    nop

    .end local v1    # "dataBytes":[B
    .end local p0    # "this":Lcom/android/server/backup/AccountSyncSettingsBackupHelper;
    .end local p1    # "data":Landroid/app/backup/BackupDataInputStream;
    throw v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 276
    .end local v2    # "dataString":Ljava/lang/String;
    .end local v3    # "dataJSON":Lorg/json/JSONObject;
    .end local v4    # "masterSyncEnabled":Z
    .end local v5    # "accountJSONArray":Lorg/json/JSONArray;
    .end local v6    # "currentMasterSyncEnabled":Z
    .restart local v1    # "dataBytes":[B
    .restart local p0    # "this":Lcom/android/server/backup/AccountSyncSettingsBackupHelper;
    .restart local p1    # "data":Landroid/app/backup/BackupDataInputStream;
    :catch_0
    move-exception v2

    .line 277
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t restore account sync settings\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "newState"    # Landroid/os/ParcelFileDescriptor;

    .line 434
    return-void
.end method
