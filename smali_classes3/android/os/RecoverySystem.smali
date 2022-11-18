.class public Landroid/os/RecoverySystem;
.super Ljava/lang/Object;
.source "RecoverySystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/RecoverySystem$ProgressListener;,
        Landroid/os/RecoverySystem$ResumeOnRebootRebootErrorCode;
    }
.end annotation


# static fields
.field private static final greylist-max-o ACTION_EUICC_FACTORY_RESET:Ljava/lang/String; = "com.android.internal.action.EUICC_FACTORY_RESET"

.field private static final blacklist ACTION_EUICC_REMOVE_INVISIBLE_SUBSCRIPTIONS:Ljava/lang/String; = "com.android.internal.action.EUICC_REMOVE_INVISIBLE_SUBSCRIPTIONS"

.field public static final greylist-max-o BLOCK_MAP_FILE:Ljava/io/File;

.field private static final greylist-max-o DEFAULT_EUICC_FACTORY_RESET_TIMEOUT_MILLIS:J = 0x7530L

.field private static final blacklist DEFAULT_EUICC_REMOVING_INVISIBLE_PROFILES_TIMEOUT_MILLIS:J = 0xafc8L

.field private static final greylist-max-o DEFAULT_KEYSTORE:Ljava/io/File;

.field private static final blacklist LAST_INSTALL_PATH:Ljava/lang/String; = "last_install"

.field private static final greylist-max-o LAST_PREFIX:Ljava/lang/String; = "last_"

.field private static final greylist-max-o LOG_FILE:Ljava/io/File;

.field private static final greylist-max-o LOG_FILE_MAX_LENGTH:I = 0x10000

.field private static final greylist-max-o MAX_EUICC_FACTORY_RESET_TIMEOUT_MILLIS:J = 0xea60L

.field private static final blacklist MAX_EUICC_REMOVING_INVISIBLE_PROFILES_TIMEOUT_MILLIS:J = 0x15f90L

.field private static final greylist-max-o MIN_EUICC_FACTORY_RESET_TIMEOUT_MILLIS:J = 0x1388L

.field private static final blacklist MIN_EUICC_REMOVING_INVISIBLE_PROFILES_TIMEOUT_MILLIS:J = 0x3a98L

.field private static final blacklist PACKAGE_NAME_EUICC_DATA_MANAGEMENT_CALLBACK:Ljava/lang/String; = "android"

.field private static final greylist-max-o PUBLISH_PROGRESS_INTERVAL_MS:J = 0x1f4L

.field private static final greylist-max-o RECOVERY_DIR:Ljava/io/File;

.field public static final whitelist RESUME_ON_REBOOT_REBOOT_ERROR_INVALID_PACKAGE_NAME:I = 0x7d0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESUME_ON_REBOOT_REBOOT_ERROR_LSKF_NOT_CAPTURED:I = 0xbb8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist RESUME_ON_REBOOT_REBOOT_ERROR_NONE:I = 0x0

.field public static final whitelist RESUME_ON_REBOOT_REBOOT_ERROR_PROVIDER_PREPARATION_FAILURE:I = 0x1388
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESUME_ON_REBOOT_REBOOT_ERROR_SLOT_MISMATCH:I = 0xfa0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESUME_ON_REBOOT_REBOOT_ERROR_UNSPECIFIED:I = 0x3e8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "RecoverySystem"

.field public static final greylist-max-o UNCRYPT_PACKAGE_FILE:Ljava/io/File;

.field public static final greylist-max-o UNCRYPT_STATUS_FILE:Ljava/io/File;

.field private static final greylist-max-o sRequestLock:Ljava/lang/Object;


# instance fields
.field private final greylist-max-o mService:Landroid/os/IRecoverySystem;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 100
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/security/otacerts.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    .line 116
    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/recovery"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    .line 117
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "log"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    .line 138
    new-instance v1, Ljava/io/File;

    const-string v2, "block.map"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    .line 146
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "uncrypt_file"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    .line 154
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "uncrypt_status"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Landroid/os/RecoverySystem;->UNCRYPT_STATUS_FILE:Ljava/io/File;

    .line 160
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/RecoverySystem;->sRequestLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 1

    .line 1550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1551
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    .line 1552
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/IRecoverySystem;)V
    .locals 0
    .param p1, "service"    # Landroid/os/IRecoverySystem;

    .line 1557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1558
    iput-object p1, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    .line 1559
    return-void
.end method

.method private blacklist allocateSpaceForUpdate(Ljava/io/File;)Z
    .locals 2
    .param p1, "packageFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1440
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/IRecoverySystem;->allocateSpaceForUpdate(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static varargs blacklist bootCommand(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1318
    sget-object v0, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1321
    .local v0, "command":Ljava/lang/StringBuilder;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 1322
    .local v3, "arg":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1323
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1324
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1321
    .end local v3    # "arg":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1331
    :cond_1
    const-string/jumbo v1, "recovery"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RecoverySystem;

    .line 1332
    .local v1, "rs":Landroid/os/RecoverySystem;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RecoverySystem;->rebootRecoveryWithCommand(Ljava/lang/String;)V

    .line 1334
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Reboot failed (no permissions?)"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static whitelist cancelScheduledUpdate(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 921
    const-string/jumbo v0, "recovery"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RecoverySystem;

    .line 922
    .local v0, "rs":Landroid/os/RecoverySystem;
    invoke-direct {v0}, Landroid/os/RecoverySystem;->clearBcb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 925
    return-void

    .line 923
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "cancel scheduled update failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o clearBcb()Z
    .locals 1

    .line 1448
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0}, Landroid/os/IRecoverySystem;->clearBcb()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1449
    :catch_0
    move-exception v0

    .line 1451
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist clearLskf(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1488
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1}, Landroid/os/IRecoverySystem;->clearLskf(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1489
    :catch_0
    move-exception v0

    .line 1490
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "could not clear LSKF"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static whitelist clearPrepareForUnattendedUpdate(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 795
    const-string/jumbo v0, "recovery"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RecoverySystem;

    .line 796
    .local v0, "rs":Landroid/os/RecoverySystem;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RecoverySystem;->clearLskf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 799
    return-void

    .line 797
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "could not reset unattended update state"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o getTrustedCerts(Ljava/io/File;)Ljava/util/HashSet;
    .locals 7
    .param p0, "keystore"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 242
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 243
    .local v0, "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    if-nez p0, :cond_0

    .line 244
    sget-object p0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    .line 246
    :cond_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 248
    .local v1, "zip":Ljava/util/zip/ZipFile;
    :try_start_0
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 249
    .local v2, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 250
    .local v3, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 251
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 252
    .local v4, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v1, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 254
    .local v5, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v2, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 257
    nop

    .line 258
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 256
    .restart local v4    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 257
    nop

    .end local v0    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .end local v1    # "zip":Ljava/util/zip/ZipFile;
    .end local p0    # "keystore":Ljava/io/File;
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 260
    .end local v2    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v3    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v0    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .restart local v1    # "zip":Ljava/util/zip/ZipFile;
    .restart local p0    # "keystore":Ljava/io/File;
    :cond_1
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 261
    nop

    .line 262
    return-object v0

    .line 260
    :catchall_1
    move-exception v2

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 261
    throw v2
.end method

.method public static greylist-max-o handleAftermath(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 1345
    const-string v0, "RecoverySystem"

    const/4 v1, 0x0

    .line 1347
    .local v1, "log":Ljava/lang/String;
    :try_start_0
    sget-object v2, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    const/high16 v3, -0x10000

    const-string v4, "...\n"

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 1352
    :goto_0
    goto :goto_1

    .line 1350
    :catch_0
    move-exception v2

    .line 1351
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Error reading recovery log"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1348
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 1349
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v3, "No recovery log file"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 1356
    :goto_1
    sget-object v2, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    .line 1357
    .local v2, "reservePackage":Z
    if-nez v2, :cond_1

    sget-object v3, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1358
    const/4 v4, 0x0

    .line 1360
    .local v4, "filename":Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_1
    invoke-static {v3, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v3

    .line 1363
    goto :goto_2

    .line 1361
    :catch_2
    move-exception v3

    .line 1362
    .local v3, "e":Ljava/io/IOException;
    const-string v5, "Error reading uncrypt file"

    invoke-static {v0, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1367
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2
    if-eqz v4, :cond_1

    const-string v3, "/data"

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1368
    sget-object v3, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleted: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1371
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t delete: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    .end local v4    # "filename":Ljava/lang/String;
    :cond_1
    :goto_3
    sget-object v0, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 1383
    .local v0, "names":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-eqz v0, :cond_6

    array-length v4, v0

    if-ge v3, v4, :cond_6

    .line 1385
    aget-object v4, v0, v3

    const-string/jumbo v5, "last_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    aget-object v4, v0, v3

    const-string/jumbo v5, "last_install"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_5

    .line 1386
    :cond_2
    if-eqz v2, :cond_3

    aget-object v4, v0, v3

    sget-object v5, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_5

    .line 1387
    :cond_3
    if-eqz v2, :cond_4

    aget-object v4, v0, v3

    sget-object v5, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_5

    .line 1389
    :cond_4
    new-instance v4, Ljava/io/File;

    sget-object v5, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    aget-object v6, v0, v3

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Landroid/os/RecoverySystem;->recursiveDelete(Ljava/io/File;)V

    .line 1383
    :cond_5
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1392
    .end local v3    # "i":I
    :cond_6
    return-object v1
.end method

.method public static whitelist installPackage(Landroid/content/Context;Ljava/io/File;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 605
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/RecoverySystem;->installPackage(Landroid/content/Context;Ljava/io/File;Z)V

    .line 606
    return-void
.end method

.method public static whitelist installPackage(Landroid/content/Context;Ljava/io/File;Z)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "processed"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 627
    sget-object v0, Landroid/os/RecoverySystem;->sRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 628
    :try_start_0
    sget-object v1, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 630
    sget-object v1, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 632
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 633
    .local v1, "filename":Ljava/lang/String;
    const-string v2, "RecoverySystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!! REBOOTING TO INSTALL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " !!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const-string v2, "_s.zip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    .line 672
    .local v2, "securityUpdate":Z
    const-string v3, "/cache/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 673
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 674
    .local v3, "pkgName":Ljava/lang/String;
    const-string v5, "RecoverySystem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!!! REBOOTING TO INSTALL "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " !!!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    const-string v7, "/data/ota_package/"

    invoke-direct {v6, v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    invoke-virtual {v6}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/nio/file/CopyOption;

    sget-object v8, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v8, v7, v4

    .line 676
    invoke-static {v5, v6, v7}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    move-result-object v5

    .line 678
    invoke-interface {v5}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v5

    .line 679
    .local v5, "dstFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v6

    .line 682
    .end local v5    # "dstFile":Ljava/io/File;
    goto :goto_0

    .line 680
    :catch_0
    move-exception v5

    .line 681
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "RecoverySystem"

    const-string v7, "Error move ota_package"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 686
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--update_package="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 687
    .local v3, "filenameArg":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--locale="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 688
    .local v5, "localeArg":Ljava/lang/String;
    const-string v6, "--security\n"

    .line 690
    .local v6, "securityArg":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 691
    .local v7, "command":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 692
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "--security\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 695
    :cond_1
    const-string/jumbo v8, "recovery"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/RecoverySystem;

    .line 697
    .local v8, "rs":Landroid/os/RecoverySystem;
    invoke-direct {v8, v7}, Landroid/os/RecoverySystem;->setupBcb(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 715
    const-string/jumbo v9, "power"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    .line 716
    .local v9, "pm":Landroid/os/PowerManager;
    const-string/jumbo v10, "recovery-update"

    .line 719
    .local v10, "reason":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "android.software.leanback"

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 720
    const-class v11, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/display/DisplayManager;

    .line 721
    .local v11, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v11, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getState()I

    move-result v4

    const/4 v12, 0x2

    if-eq v4, v12, :cond_2

    .line 722
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, ",quiescent"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    .line 725
    .end local v11    # "dm":Landroid/hardware/display/DisplayManager;
    :cond_2
    invoke-virtual {v9, v10}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 727
    new-instance v4, Ljava/io/IOException;

    const-string v11, "Reboot failed (no permissions?)"

    invoke-direct {v4, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "packageFile":Ljava/io/File;
    .end local p2    # "processed":Z
    throw v4

    .line 698
    .end local v9    # "pm":Landroid/os/PowerManager;
    .end local v10    # "reason":Ljava/lang/String;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "packageFile":Ljava/io/File;
    .restart local p2    # "processed":Z
    :cond_3
    new-instance v4, Ljava/io/IOException;

    const-string v9, "Setup BCB failed"

    invoke-direct {v4, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "packageFile":Ljava/io/File;
    .end local p2    # "processed":Z
    throw v4

    .line 728
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "securityUpdate":Z
    .end local v3    # "filenameArg":Ljava/lang/String;
    .end local v5    # "localeArg":Ljava/lang/String;
    .end local v6    # "securityArg":Ljava/lang/String;
    .end local v7    # "command":Ljava/lang/String;
    .end local v8    # "rs":Landroid/os/RecoverySystem;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "packageFile":Ljava/io/File;
    .restart local p2    # "processed":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private blacklist isLskfCaptured(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1503
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1}, Landroid/os/IRecoverySystem;->isLskfCaptured(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1504
    :catch_0
    move-exception v0

    .line 1505
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "could not get LSKF capture state"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static whitelist isPreparedForUnattendedUpdate(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 843
    const-class v0, Landroid/os/RecoverySystem;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RecoverySystem;

    .line 844
    .local v0, "rs":Landroid/os/RecoverySystem;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RecoverySystem;->isLskfCaptured(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static whitelist prepareForUnattendedUpdate(Landroid/content/Context;Ljava/lang/String;Landroid/content/IntentSender;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateToken"    # Ljava/lang/String;
    .param p2, "intentSender"    # Landroid/content/IntentSender;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 763
    if-eqz p1, :cond_2

    .line 767
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 768
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 773
    const-string/jumbo v1, "recovery"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RecoverySystem;

    .line 774
    .local v1, "rs":Landroid/os/RecoverySystem;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/os/RecoverySystem;->requestLskf(Ljava/lang/String;Landroid/content/IntentSender;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 777
    return-void

    .line 775
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "preparation for update failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 769
    .end local v1    # "rs":Landroid/os/RecoverySystem;
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to request LSKF because the device doesn\'t have a lock screen. "

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 764
    .end local v0    # "keyguardManager":Landroid/app/KeyguardManager;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "updateToken == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "listener"    # Landroid/os/RecoverySystem$ProgressListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 585
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/os/RecoverySystem;->processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Landroid/os/Handler;)V

    .line 586
    return-void
.end method

.method public static whitelist processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Landroid/os/Handler;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "listener"    # Landroid/os/RecoverySystem$ProgressListener;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 525
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, "filename":Ljava/lang/String;
    const-string v1, "/data/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 527
    return-void

    .line 530
    :cond_0
    const-string/jumbo v1, "recovery"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RecoverySystem;

    .line 531
    .local v1, "rs":Landroid/os/RecoverySystem;
    const/4 v2, 0x0

    .line 532
    .local v2, "progressListener":Landroid/os/IRecoverySystemProgressListener;
    if-eqz p2, :cond_2

    .line 534
    if-eqz p3, :cond_1

    .line 535
    move-object v3, p3

    .local v3, "progressHandler":Landroid/os/Handler;
    goto :goto_0

    .line 537
    .end local v3    # "progressHandler":Landroid/os/Handler;
    :cond_1
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 539
    .restart local v3    # "progressHandler":Landroid/os/Handler;
    :goto_0
    new-instance v4, Landroid/os/RecoverySystem$2;

    invoke-direct {v4, v3, p2}, Landroid/os/RecoverySystem$2;-><init>(Landroid/os/Handler;Landroid/os/RecoverySystem$ProgressListener;)V

    move-object v2, v4

    .line 561
    .end local v3    # "progressHandler":Landroid/os/Handler;
    :cond_2
    invoke-direct {v1, v0, v2}, Landroid/os/RecoverySystem;->uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 564
    return-void

    .line 562
    :cond_3
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "process package failed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static greylist-max-o readAndVerifyPackageCompatibilityEntry(Ljava/io/File;)Z
    .locals 4
    .param p0, "packageFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 476
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 477
    .local v0, "zip":Ljava/util/zip/ZipFile;
    :try_start_0
    const-string v1, "compatibility.zip"

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    if-nez v1, :cond_0

    .line 479
    const/4 v2, 0x1

    .line 483
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 479
    return v2

    .line 481
    :cond_0
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 482
    .local v2, "inputStream":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/os/RecoverySystem;->verifyPackageCompatibility(Ljava/io/InputStream;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 483
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 482
    return v3

    .line 476
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public static whitelist rebootAndApply(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "slotSwitch"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 866
    const-class v0, Landroid/os/RecoverySystem;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RecoverySystem;

    .line 867
    .local v0, "rs":Landroid/os/RecoverySystem;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Landroid/os/RecoverySystem;->rebootWithLskf(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v1

    return v1
.end method

.method public static whitelist rebootAndApply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateToken"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 820
    if-eqz p1, :cond_1

    .line 823
    const-string/jumbo v0, "recovery"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RecoverySystem;

    .line 825
    .local v0, "rs":Landroid/os/RecoverySystem;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/os/RecoverySystem;->rebootWithLskfAssumeSlotSwitch(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 829
    return-void

    .line 827
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "system not prepared to apply update"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 821
    .end local v0    # "rs":Landroid/os/RecoverySystem;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "updateToken == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o rebootPromptAndWipeUserData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1227
    const-string/jumbo v0, "rescueparty"

    const-string v1, "RecoverySystem"

    const/4 v2, 0x0

    .line 1228
    .local v2, "checkpointing":Z
    const/4 v3, 0x0

    .line 1229
    .local v3, "needReboot":Z
    const/4 v4, 0x0

    .line 1231
    .local v4, "vold":Landroid/os/IVold;
    :try_start_0
    const-string/jumbo v5, "vold"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IVold$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVold;

    move-result-object v5

    move-object v4, v5

    .line 1232
    if-eqz v4, :cond_0

    .line 1233
    invoke-interface {v4}, Landroid/os/IVold;->needsCheckpoint()Z

    move-result v5

    move v2, v5

    goto :goto_0

    .line 1235
    :cond_0
    const-string v5, "Failed to get vold"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1239
    :goto_0
    goto :goto_1

    .line 1237
    :catch_0
    move-exception v5

    .line 1238
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "Failed to check for checkpointing"

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 1245
    :try_start_1
    invoke-interface {v4, v0, v5}, Landroid/os/IVold;->abortChanges(Ljava/lang/String;Z)V

    .line 1246
    const-string v5, "Rescue Party requested wipe. Aborting update"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1251
    goto :goto_2

    .line 1247
    :catch_1
    move-exception v5

    .line 1248
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string v6, "Rescue Party requested wipe. Rebooting instead."

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1250
    .local v1, "pm":Landroid/os/PowerManager;
    invoke-virtual {v1, v0}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 1252
    .end local v1    # "pm":Landroid/os/PowerManager;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 1255
    :cond_1
    const/4 v0, 0x0

    .line 1256
    .local v0, "reasonArg":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--reason="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1260
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--locale="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1261
    .local v1, "localeArg":Ljava/lang/String;
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v7, v6, v5

    const/4 v5, 0x1

    const-string v7, "--prompt_and_wipe_data"

    aput-object v7, v6, v5

    const/4 v5, 0x2

    aput-object v0, v6, v5

    const/4 v5, 0x3

    aput-object v1, v6, v5

    invoke-static {p0, v6}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 1262
    return-void
.end method

.method private greylist-max-o rebootRecoveryWithCommand(Ljava/lang/String;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    .line 1460
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1}, Landroid/os/IRecoverySystem;->rebootRecoveryWithCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1462
    goto :goto_0

    .line 1461
    :catch_0
    move-exception v0

    .line 1463
    :goto_0
    return-void
.end method

.method public static whitelist rebootWipeAb(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "reason"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1301
    const/4 v0, 0x0

    .line 1302
    .local v0, "reasonArg":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1306
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 1307
    .local v1, "filename":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--wipe_package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1308
    .local v2, "filenameArg":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--locale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1309
    .local v3, "localeArg":Ljava/lang/String;
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "--wipe_ab"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    const/4 v5, 0x3

    aput-object v3, v4, v5

    invoke-static {p0, v4}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 1310
    return-void
.end method

.method public static whitelist rebootWipeCache(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1269
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->rebootWipeCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 1270
    return-void
.end method

.method public static greylist-max-o rebootWipeCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1274
    const/4 v0, 0x0

    .line 1275
    .local v0, "reasonArg":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1279
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1280
    .local v1, "localeArg":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "--wipe_cache"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-static {p0, v2}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 1281
    return-void
.end method

.method public static whitelist rebootWipeUserData(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 941
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, v1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    .line 943
    return-void
.end method

.method public static greylist-max-o rebootWipeUserData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 947
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0, v0}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    .line 949
    return-void
.end method

.method public static greylist-max-o rebootWipeUserData(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shutdown"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 954
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    .line 956
    return-void
.end method

.method public static greylist-max-o rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shutdown"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 961
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    .line 962
    return-void
.end method

.method public static greylist-max-o rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shutdown"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "force"    # Z
    .param p4, "wipeEuicc"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 988
    move-object v9, p0

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/os/UserManager;

    .line 989
    .local v10, "um":Landroid/os/UserManager;
    if-nez p3, :cond_1

    const-string/jumbo v0, "no_factory_reset"

    invoke-virtual {v10, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 990
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Wiping data is not allowed for this user."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 992
    :cond_1
    :goto_0
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    move-object v11, v0

    .line 994
    .local v11, "condition":Landroid/os/ConditionVariable;
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v12, v0

    .line 995
    .local v12, "intent":Landroid/content/Intent;
    const/high16 v0, 0x11000000

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 997
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    new-instance v4, Landroid/os/RecoverySystem$3;

    invoke-direct {v4, v11}, Landroid/os/RecoverySystem$3;-><init>(Landroid/os/ConditionVariable;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v3, "android.permission.MASTER_CLEAR"

    move-object v0, p0

    move-object v1, v12

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1007
    invoke-virtual {v11}, Landroid/os/ConditionVariable;->block()V

    .line 1009
    const-class v0, Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/euicc/EuiccManager;

    .line 1010
    .local v0, "euiccManager":Landroid/telephony/euicc/EuiccManager;
    if-eqz p4, :cond_2

    .line 1011
    const-string v1, "android"

    invoke-static {p0, v1}, Landroid/os/RecoverySystem;->wipeEuiccData(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_1

    .line 1013
    :cond_2
    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->removeEuiccInvisibleSubs(Landroid/content/Context;Landroid/telephony/euicc/EuiccManager;)V

    .line 1016
    :goto_1
    const/4 v1, 0x0

    .line 1017
    .local v1, "shutdownArg":Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 1018
    const-string v1, "--shutdown_after"

    .line 1021
    :cond_3
    const/4 v2, 0x0

    .line 1022
    .local v2, "reasonArg":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1023
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string/jumbo v5, "yyyy-MM-ddTHH:mm:ssZ"

    invoke-static {v5, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1024
    .local v3, "timeStamp":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1022
    .end local v3    # "timeStamp":Ljava/lang/String;
    :cond_4
    move-object v6, p2

    .line 1027
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--locale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1028
    .local v3, "localeArg":Ljava/lang/String;
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    const-string v7, "--wipe_data"

    aput-object v7, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const/4 v5, 0x3

    aput-object v3, v4, v5

    invoke-static {p0, v4}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 1029
    return-void
.end method

.method private blacklist rebootWithLskf(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "slotSwitch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1516
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IRecoverySystem;->rebootWithLskf(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1517
    :catch_0
    move-exception v0

    .line 1518
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "could not reboot for update"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist rebootWithLskfAssumeSlotSwitch(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1530
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1, p2}, Landroid/os/IRecoverySystem;->rebootWithLskfAssumeSlotSwitch(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1531
    :catch_0
    move-exception v0

    .line 1532
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "could not reboot for update"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static greylist-max-o recursiveDelete(Ljava/io/File;)V
    .locals 4
    .param p0, "name"    # Ljava/io/File;

    .line 1399
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1400
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 1401
    .local v0, "files":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eqz v0, :cond_0

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1402
    new-instance v2, Ljava/io/File;

    aget-object v3, v0, v1

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1403
    .local v2, "f":Ljava/io/File;
    invoke-static {v2}, Landroid/os/RecoverySystem;->recursiveDelete(Ljava/io/File;)V

    .line 1401
    .end local v2    # "f":Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1407
    .end local v0    # "files":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    const-string v1, "RecoverySystem"

    if-nez v0, :cond_1

    .line 1408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t delete: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1410
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleted: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    :goto_1
    return-void
.end method

.method private static blacklist removeEuiccInvisibleSubs(Landroid/content/Context;Landroid/telephony/euicc/EuiccManager;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "euiccManager"    # Landroid/telephony/euicc/EuiccManager;

    .line 1118
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1119
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "euicc_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "RecoverySystem"

    if-nez v1, :cond_0

    .line 1122
    const-string v1, "Skip removing eUICC invisible profiles as it is not provisioned."

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    return-void

    .line 1124
    :cond_0
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 1128
    :cond_1
    const-class v1, Landroid/telephony/SubscriptionManager;

    .line 1129
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    .line 1130
    .local v1, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    nop

    .line 1131
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getAvailableSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 1132
    .local v3, "availableSubs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 1136
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1137
    .local v2, "invisibleSubs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 1138
    .local v5, "sub":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1139
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1141
    .end local v5    # "sub":Landroid/telephony/SubscriptionInfo;
    :cond_3
    goto :goto_0

    .line 1142
    :cond_4
    invoke-static {p0, v2, p1}, Landroid/os/RecoverySystem;->removeEuiccInvisibleSubs(Landroid/content/Context;Ljava/util/List;Landroid/telephony/euicc/EuiccManager;)Z

    .line 1143
    return-void

    .line 1133
    .end local v2    # "invisibleSubs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_5
    :goto_1
    const-string v4, "Skip removing eUICC invisible profiles as no available profiles found."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    return-void

    .line 1125
    .end local v1    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    .end local v3    # "availableSubs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_6
    :goto_2
    const-string v1, "Skip removing eUICC invisible profiles as eUICC manager is not available."

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    return-void
.end method

.method private static blacklist removeEuiccInvisibleSubs(Landroid/content/Context;Ljava/util/List;Landroid/telephony/euicc/EuiccManager;)Z
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "euiccManager"    # Landroid/telephony/euicc/EuiccManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;",
            "Landroid/telephony/euicc/EuiccManager;",
            ")Z"
        }
    .end annotation

    .line 1147
    .local p1, "subscriptionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const-string v1, "RecoverySystem"

    if-eqz p1, :cond_6

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v10, p0

    move-object/from16 v15, p2

    goto/16 :goto_4

    .line 1151
    :cond_0
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1152
    .local v2, "removeSubsLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1154
    .local v3, "removedSubsCount":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v5, Landroid/os/RecoverySystem$5;

    invoke-direct {v5, v3, v2}, Landroid/os/RecoverySystem$5;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V

    .line 1172
    .local v5, "removeEuiccSubsReceiver":Landroid/content/BroadcastReceiver;
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.internal.action.EUICC_REMOVE_INVISIBLE_SUBSCRIPTIONS"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1173
    .local v6, "intent":Landroid/content/Intent;
    const-string v8, "android"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1174
    const/high16 v8, 0xc000000

    sget-object v9, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    move-object/from16 v10, p0

    invoke-static {v10, v4, v6, v8, v9}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 1180
    .local v8, "callbackIntent":Landroid/app/PendingIntent;
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 1181
    .local v9, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {v9, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1182
    new-instance v7, Landroid/os/HandlerThread;

    const-string v11, "euiccRemovingSubsReceiverThread"

    invoke-direct {v7, v11}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1184
    .local v7, "euiccHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 1185
    new-instance v11, Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1186
    .local v11, "euiccHandler":Landroid/os/Handler;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    .line 1187
    invoke-virtual {v12, v5, v9, v13, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1189
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/SubscriptionInfo;

    .line 1190
    .local v13, "subscriptionInfo":Landroid/telephony/SubscriptionInfo;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Remove invisible subscription "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1192
    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " from card "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1193
    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getCardId()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1190
    invoke-static {v1, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getCardId()I

    move-result v14

    move-object/from16 v15, p2

    invoke-virtual {v15, v14}, Landroid/telephony/euicc/EuiccManager;->createForCardId(I)Landroid/telephony/euicc/EuiccManager;

    move-result-object v14

    .line 1195
    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-virtual {v14, v0, v8}, Landroid/telephony/euicc/EuiccManager;->deleteSubscription(ILandroid/app/PendingIntent;)V

    .line 1196
    .end local v13    # "subscriptionInfo":Landroid/telephony/SubscriptionInfo;
    goto :goto_0

    .line 1198
    :cond_1
    move-object/from16 v15, p2

    .line 1199
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v12, "euicc_removing_invisible_profiles_timeout_millis"

    const-wide/32 v13, 0xafc8

    .line 1198
    invoke-static {v0, v12, v13, v14}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v12

    .line 1202
    .local v12, "waitingTimeMillis":J
    const-wide/16 v16, 0x3a98

    cmp-long v0, v12, v16

    if-gez v0, :cond_2

    .line 1203
    const-wide/16 v12, 0x3a98

    goto :goto_1

    .line 1204
    :cond_2
    const-wide/32 v16, 0x15f90

    cmp-long v0, v12, v16

    if-lez v0, :cond_3

    .line 1205
    const-wide/32 v12, 0x15f90

    .line 1207
    :cond_3
    :goto_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v12, v13, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1208
    const-string v0, "Timeout removing invisible euicc profiles."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1209
    nop

    .line 1216
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1217
    nop

    .line 1218
    invoke-virtual {v7}, Landroid/os/HandlerThread;->quit()Z

    .line 1209
    return v4

    .line 1216
    .end local v12    # "waitingTimeMillis":J
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1217
    nop

    .line 1218
    invoke-virtual {v7}, Landroid/os/HandlerThread;->quit()Z

    .line 1221
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    move v0, v4

    :goto_2
    return v0

    .line 1216
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 1211
    :catch_0
    move-exception v0

    .line 1212
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->interrupt()V

    .line 1213
    const-string v12, "Removing invisible euicc profiles interrupted"

    invoke-static {v1, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1214
    nop

    .line 1216
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1217
    nop

    .line 1218
    invoke-virtual {v7}, Landroid/os/HandlerThread;->quit()Z

    .line 1214
    return v4

    .line 1216
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1217
    nop

    .line 1218
    invoke-virtual {v7}, Landroid/os/HandlerThread;->quit()Z

    .line 1220
    throw v0

    .line 1147
    .end local v2    # "removeSubsLatch":Ljava/util/concurrent/CountDownLatch;
    .end local v3    # "removedSubsCount":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v5    # "removeEuiccSubsReceiver":Landroid/content/BroadcastReceiver;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "euiccHandlerThread":Landroid/os/HandlerThread;
    .end local v8    # "callbackIntent":Landroid/app/PendingIntent;
    .end local v9    # "intentFilter":Landroid/content/IntentFilter;
    .end local v11    # "euiccHandler":Landroid/os/Handler;
    :cond_6
    move-object/from16 v10, p0

    move-object/from16 v15, p2

    .line 1148
    :goto_4
    const-string v0, "There are no eUICC invisible profiles needed to be removed."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist requestLskf(Ljava/lang/String;Landroid/content/IntentSender;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "sender"    # Landroid/content/IntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1474
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1, p2}, Landroid/os/IRecoverySystem;->requestLskf(Ljava/lang/String;Landroid/content/IntentSender;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1475
    :catch_0
    move-exception v0

    .line 1476
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "could not request LSKF capture"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static greylist-max-o sanitizeArg(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "arg"    # Ljava/lang/String;

    .line 1541
    const/4 v0, 0x0

    const/16 v1, 0x3f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1542
    const/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1543
    return-object p0
.end method

.method public static whitelist scheduleUpdateOnBoot(Landroid/content/Context;Ljava/io/File;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 883
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 884
    .local v0, "filename":Ljava/lang/String;
    const-string v1, "_s.zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    .line 888
    .local v1, "securityUpdate":Z
    const-string v2, "/data/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 889
    const-string v0, "@/cache/recovery/block.map"

    .line 892
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--update_package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 893
    .local v2, "filenameArg":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--locale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 894
    .local v3, "localeArg":Ljava/lang/String;
    const-string v4, "--security\n"

    .line 896
    .local v4, "securityArg":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 897
    .local v5, "command":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 898
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "--security\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 901
    :cond_1
    const-string/jumbo v6, "recovery"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/RecoverySystem;

    .line 902
    .local v6, "rs":Landroid/os/RecoverySystem;
    invoke-direct {v6, v5}, Landroid/os/RecoverySystem;->setupBcb(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 905
    return-void

    .line 903
    :cond_2
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "schedule update on boot failed"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private greylist-max-o setupBcb(Ljava/lang/String;)Z
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    .line 1430
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1}, Landroid/os/IRecoverySystem;->setupBcb(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1431
    :catch_0
    move-exception v0

    .line 1433
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z
    .locals 1
    .param p1, "packageFile"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/os/IRecoverySystemProgressListener;

    .line 1419
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1, p2}, Landroid/os/IRecoverySystem;->uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1420
    :catch_0
    move-exception v0

    .line 1422
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist verifyPackage(Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Ljava/io/File;)V
    .locals 25
    .param p0, "packageFile"    # Ljava/io/File;
    .param p1, "listener"    # Landroid/os/RecoverySystem$ProgressListener;
    .param p2, "deviceCertsZipFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 296
    move-object/from16 v9, p1

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 298
    .local v10, "fileLen":J
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    move-object/from16 v12, p0

    invoke-direct {v0, v12, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v13, v0

    .line 300
    .local v13, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 301
    .local v5, "startTimeMillis":J
    const/4 v0, 0x0

    if-eqz v9, :cond_0

    .line 302
    invoke-interface {v9, v0}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    .line 305
    :cond_0
    const-wide/16 v1, 0x6

    sub-long v1, v10, v1

    invoke-virtual {v13, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 306
    const/4 v1, 0x6

    new-array v2, v1, [B

    move-object v14, v2

    .line 307
    .local v14, "footer":[B
    invoke-virtual {v13, v14}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 309
    const/4 v2, 0x2

    aget-byte v3, v14, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_e

    const/4 v3, 0x3

    aget-byte v7, v14, v3

    if-ne v7, v4, :cond_e

    .line 313
    const/4 v4, 0x4

    aget-byte v4, v14, v4

    and-int/lit16 v4, v4, 0xff

    const/4 v7, 0x5

    aget-byte v8, v14, v7

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int v15, v4, v8

    .line 314
    .local v15, "commentSize":I
    aget-byte v4, v14, v0

    and-int/lit16 v4, v4, 0xff

    const/4 v8, 0x1

    aget-byte v1, v14, v8

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v4, v1

    .line 316
    .local v4, "signatureStart":I
    add-int/lit8 v1, v15, 0x16

    new-array v1, v1, [B

    .line 317
    .local v1, "eocd":[B
    add-int/lit8 v3, v15, 0x16

    int-to-long v2, v3

    sub-long v2, v10, v2

    invoke-virtual {v13, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 318
    invoke-virtual {v13, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 322
    aget-byte v2, v1, v0

    const/16 v3, 0x50

    if-ne v2, v3, :cond_d

    aget-byte v2, v1, v8

    const/16 v8, 0x4b

    if-ne v2, v8, :cond_d

    const/4 v2, 0x2

    aget-byte v2, v1, v2

    if-ne v2, v7, :cond_d

    const/4 v2, 0x3

    aget-byte v0, v1, v2

    const/4 v2, 0x6

    if-ne v0, v2, :cond_d

    .line 327
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    const/16 v17, 0x3

    add-int/lit8 v2, v2, -0x3

    if-ge v0, v2, :cond_3

    .line 328
    aget-byte v2, v1, v0

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, v1, v2

    if-ne v2, v8, :cond_2

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, v1, v2

    if-ne v2, v7, :cond_2

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, v1, v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 330
    :cond_1
    new-instance v2, Ljava/security/SignatureException;

    const-string v3, "EOCD marker found after start of EOCD"

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v10    # "fileLen":J
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .end local p0    # "packageFile":Ljava/io/File;
    .end local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    throw v2

    .line 328
    .restart local v10    # "fileLen":J
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    .restart local p0    # "packageFile":Ljava/io/File;
    .restart local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_2
    const/4 v3, 0x6

    .line 327
    :goto_1
    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x50

    goto :goto_0

    .line 335
    .end local v0    # "i":I
    :cond_3
    new-instance v0, Lsun/security/pkcs/PKCS7;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    add-int/lit8 v3, v15, 0x16

    sub-int/2addr v3, v4

    invoke-direct {v2, v1, v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v0, v2}, Lsun/security/pkcs/PKCS7;-><init>(Ljava/io/InputStream;)V

    .line 340
    .local v0, "block":Lsun/security/pkcs/PKCS7;
    invoke-virtual {v0}, Lsun/security/pkcs/PKCS7;->getCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v2

    move-object v7, v2

    .line 341
    .local v7, "certificates":[Ljava/security/cert/X509Certificate;
    if-eqz v7, :cond_c

    array-length v2, v7

    if-eqz v2, :cond_c

    .line 344
    const/4 v2, 0x0

    aget-object v3, v7, v2

    move-object/from16 v16, v3

    .line 345
    .local v16, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    .line 347
    .local v2, "signatureKey":Ljava/security/PublicKey;
    invoke-virtual {v0}, Lsun/security/pkcs/PKCS7;->getSignerInfos()[Lsun/security/pkcs/SignerInfo;

    move-result-object v3

    .line 348
    .local v3, "signerInfos":[Lsun/security/pkcs/SignerInfo;
    if-eqz v3, :cond_b

    array-length v8, v3

    if-eqz v8, :cond_b

    .line 351
    const/4 v8, 0x0

    aget-object v8, v3, v8

    .line 355
    .local v8, "signerInfo":Lsun/security/pkcs/SignerInfo;
    const/16 v17, 0x0

    .line 357
    .local v17, "verified":Z
    if-nez p2, :cond_4

    sget-object v18, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    goto :goto_2

    :cond_4
    move-object/from16 v18, p2

    .line 356
    :goto_2
    invoke-static/range {v18 .. v18}, Landroid/os/RecoverySystem;->getTrustedCerts(Ljava/io/File;)Ljava/util/HashSet;

    move-result-object v18

    .line 358
    .local v18, "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/security/cert/X509Certificate;

    .line 359
    .local v20, "c":Ljava/security/cert/X509Certificate;
    move-object/from16 v21, v1

    .end local v1    # "eocd":[B
    .local v21, "eocd":[B
    invoke-virtual/range {v20 .. v20}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 360
    const/16 v17, 0x1

    .line 361
    goto :goto_4

    .line 363
    .end local v20    # "c":Ljava/security/cert/X509Certificate;
    :cond_5
    move-object/from16 v1, v21

    goto :goto_3

    .line 358
    .end local v21    # "eocd":[B
    .restart local v1    # "eocd":[B
    :cond_6
    move-object/from16 v21, v1

    .line 364
    .end local v1    # "eocd":[B
    .restart local v21    # "eocd":[B
    :goto_4
    if-eqz v17, :cond_a

    .line 370
    move-object/from16 v19, v2

    .end local v2    # "signatureKey":Ljava/security/PublicKey;
    .local v19, "signatureKey":Ljava/security/PublicKey;
    const-wide/16 v1, 0x0

    invoke-virtual {v13, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 371
    move-object v2, v8

    .end local v8    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .local v2, "signerInfo":Lsun/security/pkcs/SignerInfo;
    move-object/from16 v8, p1

    .line 372
    .local v8, "listenerForInner":Landroid/os/RecoverySystem$ProgressListener;
    new-instance v1, Landroid/os/RecoverySystem$1;

    move-object/from16 v20, v21

    move-object/from16 v21, v1

    .end local v21    # "eocd":[B
    .local v20, "eocd":[B
    move-object v12, v2

    move-object/from16 v22, v3

    .end local v2    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .end local v3    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .local v12, "signerInfo":Lsun/security/pkcs/SignerInfo;
    .local v22, "signerInfos":[Lsun/security/pkcs/SignerInfo;
    move-wide v2, v10

    move/from16 v23, v4

    .end local v4    # "signatureStart":I
    .local v23, "signatureStart":I
    move v4, v15

    move-object/from16 v24, v7

    .end local v7    # "certificates":[Ljava/security/cert/X509Certificate;
    .local v24, "certificates":[Ljava/security/cert/X509Certificate;
    move-object v7, v13

    invoke-direct/range {v1 .. v8}, Landroid/os/RecoverySystem$1;-><init>(JIJLjava/io/RandomAccessFile;Landroid/os/RecoverySystem$ProgressListener;)V

    move-object/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Lsun/security/pkcs/PKCS7;->verify(Lsun/security/pkcs/SignerInfo;Ljava/io/InputStream;)Lsun/security/pkcs/SignerInfo;

    move-result-object v1

    .line 417
    .local v1, "verifyResult":Lsun/security/pkcs/SignerInfo;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    .line 418
    .local v2, "interrupted":Z
    if-eqz v9, :cond_7

    .line 419
    const/16 v3, 0x64

    invoke-interface {v9, v3}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    :cond_7
    if-nez v2, :cond_9

    .line 426
    if-eqz v1, :cond_8

    .line 430
    .end local v0    # "block":Lsun/security/pkcs/PKCS7;
    .end local v1    # "verifyResult":Lsun/security/pkcs/SignerInfo;
    .end local v2    # "interrupted":Z
    .end local v5    # "startTimeMillis":J
    .end local v8    # "listenerForInner":Landroid/os/RecoverySystem$ProgressListener;
    .end local v12    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .end local v14    # "footer":[B
    .end local v15    # "commentSize":I
    .end local v16    # "cert":Ljava/security/cert/X509Certificate;
    .end local v17    # "verified":Z
    .end local v18    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .end local v19    # "signatureKey":Ljava/security/PublicKey;
    .end local v20    # "eocd":[B
    .end local v22    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .end local v23    # "signatureStart":I
    .end local v24    # "certificates":[Ljava/security/cert/X509Certificate;
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V

    .line 431
    nop

    .line 440
    return-void

    .line 427
    .restart local v0    # "block":Lsun/security/pkcs/PKCS7;
    .restart local v1    # "verifyResult":Lsun/security/pkcs/SignerInfo;
    .restart local v2    # "interrupted":Z
    .restart local v5    # "startTimeMillis":J
    .restart local v8    # "listenerForInner":Landroid/os/RecoverySystem$ProgressListener;
    .restart local v12    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .restart local v14    # "footer":[B
    .restart local v15    # "commentSize":I
    .restart local v16    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v17    # "verified":Z
    .restart local v18    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .restart local v19    # "signatureKey":Ljava/security/PublicKey;
    .restart local v20    # "eocd":[B
    .restart local v22    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .restart local v23    # "signatureStart":I
    .restart local v24    # "certificates":[Ljava/security/cert/X509Certificate;
    :cond_8
    :try_start_1
    new-instance v3, Ljava/security/SignatureException;

    const-string/jumbo v4, "signature digest verification failed"

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v10    # "fileLen":J
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .end local p0    # "packageFile":Ljava/io/File;
    .end local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    throw v3

    .line 423
    .restart local v10    # "fileLen":J
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    .restart local p0    # "packageFile":Ljava/io/File;
    .restart local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_9
    new-instance v3, Ljava/security/SignatureException;

    const-string/jumbo v4, "verification was interrupted"

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v10    # "fileLen":J
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .end local p0    # "packageFile":Ljava/io/File;
    .end local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    throw v3

    .line 365
    .end local v1    # "verifyResult":Lsun/security/pkcs/SignerInfo;
    .end local v12    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .end local v19    # "signatureKey":Ljava/security/PublicKey;
    .end local v20    # "eocd":[B
    .end local v22    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .end local v23    # "signatureStart":I
    .end local v24    # "certificates":[Ljava/security/cert/X509Certificate;
    .local v2, "signatureKey":Ljava/security/PublicKey;
    .restart local v3    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .restart local v4    # "signatureStart":I
    .restart local v7    # "certificates":[Ljava/security/cert/X509Certificate;
    .local v8, "signerInfo":Lsun/security/pkcs/SignerInfo;
    .restart local v10    # "fileLen":J
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    .restart local v21    # "eocd":[B
    .restart local p0    # "packageFile":Ljava/io/File;
    .restart local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_a
    move-object/from16 v19, v2

    move-object/from16 v22, v3

    move/from16 v23, v4

    move-object/from16 v24, v7

    move-object v12, v8

    move-object/from16 v20, v21

    .end local v2    # "signatureKey":Ljava/security/PublicKey;
    .end local v3    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .end local v4    # "signatureStart":I
    .end local v7    # "certificates":[Ljava/security/cert/X509Certificate;
    .end local v8    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .end local v21    # "eocd":[B
    .restart local v12    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .restart local v19    # "signatureKey":Ljava/security/PublicKey;
    .restart local v20    # "eocd":[B
    .restart local v22    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .restart local v23    # "signatureStart":I
    .restart local v24    # "certificates":[Ljava/security/cert/X509Certificate;
    new-instance v1, Ljava/security/SignatureException;

    const-string/jumbo v2, "signature doesn\'t match any trusted key"

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v10    # "fileLen":J
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .end local p0    # "packageFile":Ljava/io/File;
    .end local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    throw v1

    .line 348
    .end local v12    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .end local v17    # "verified":Z
    .end local v18    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .end local v19    # "signatureKey":Ljava/security/PublicKey;
    .end local v20    # "eocd":[B
    .end local v22    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .end local v23    # "signatureStart":I
    .end local v24    # "certificates":[Ljava/security/cert/X509Certificate;
    .local v1, "eocd":[B
    .restart local v2    # "signatureKey":Ljava/security/PublicKey;
    .restart local v3    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .restart local v4    # "signatureStart":I
    .restart local v7    # "certificates":[Ljava/security/cert/X509Certificate;
    .restart local v10    # "fileLen":J
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    .restart local p0    # "packageFile":Ljava/io/File;
    .restart local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_b
    move-object/from16 v20, v1

    move-object/from16 v19, v2

    move-object/from16 v22, v3

    move/from16 v23, v4

    move-object/from16 v24, v7

    .line 349
    .end local v1    # "eocd":[B
    .end local v2    # "signatureKey":Ljava/security/PublicKey;
    .end local v3    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .end local v4    # "signatureStart":I
    .end local v7    # "certificates":[Ljava/security/cert/X509Certificate;
    .restart local v19    # "signatureKey":Ljava/security/PublicKey;
    .restart local v20    # "eocd":[B
    .restart local v22    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .restart local v23    # "signatureStart":I
    .restart local v24    # "certificates":[Ljava/security/cert/X509Certificate;
    new-instance v1, Ljava/security/SignatureException;

    const-string/jumbo v2, "signature contains no signedData"

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v10    # "fileLen":J
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .end local p0    # "packageFile":Ljava/io/File;
    .end local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    throw v1

    .line 341
    .end local v16    # "cert":Ljava/security/cert/X509Certificate;
    .end local v19    # "signatureKey":Ljava/security/PublicKey;
    .end local v20    # "eocd":[B
    .end local v22    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .end local v23    # "signatureStart":I
    .end local v24    # "certificates":[Ljava/security/cert/X509Certificate;
    .restart local v1    # "eocd":[B
    .restart local v4    # "signatureStart":I
    .restart local v7    # "certificates":[Ljava/security/cert/X509Certificate;
    .restart local v10    # "fileLen":J
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    .restart local p0    # "packageFile":Ljava/io/File;
    .restart local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_c
    move-object/from16 v20, v1

    move/from16 v23, v4

    move-object/from16 v24, v7

    .line 342
    .end local v1    # "eocd":[B
    .end local v4    # "signatureStart":I
    .end local v7    # "certificates":[Ljava/security/cert/X509Certificate;
    .restart local v20    # "eocd":[B
    .restart local v23    # "signatureStart":I
    .restart local v24    # "certificates":[Ljava/security/cert/X509Certificate;
    new-instance v1, Ljava/security/SignatureException;

    const-string/jumbo v2, "signature contains no certificates"

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v10    # "fileLen":J
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .end local p0    # "packageFile":Ljava/io/File;
    .end local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    throw v1

    .line 322
    .end local v0    # "block":Lsun/security/pkcs/PKCS7;
    .end local v20    # "eocd":[B
    .end local v23    # "signatureStart":I
    .end local v24    # "certificates":[Ljava/security/cert/X509Certificate;
    .restart local v1    # "eocd":[B
    .restart local v4    # "signatureStart":I
    .restart local v10    # "fileLen":J
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    .restart local p0    # "packageFile":Ljava/io/File;
    .restart local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_d
    move-object/from16 v20, v1

    move/from16 v23, v4

    .line 324
    .end local v1    # "eocd":[B
    .end local v4    # "signatureStart":I
    .restart local v20    # "eocd":[B
    .restart local v23    # "signatureStart":I
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "no signature in file (bad footer)"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v10    # "fileLen":J
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .end local p0    # "packageFile":Ljava/io/File;
    .end local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    throw v0

    .line 310
    .end local v15    # "commentSize":I
    .end local v20    # "eocd":[B
    .end local v23    # "signatureStart":I
    .restart local v10    # "fileLen":J
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    .restart local p0    # "packageFile":Ljava/io/File;
    .restart local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_e
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "no signature in file (no footer)"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v10    # "fileLen":J
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .end local p0    # "packageFile":Ljava/io/File;
    .end local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    .end local v5    # "startTimeMillis":J
    .end local v14    # "footer":[B
    .restart local v10    # "fileLen":J
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    .restart local p0    # "packageFile":Ljava/io/File;
    .restart local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :catchall_0
    move-exception v0

    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V

    .line 431
    throw v0
.end method

.method public static whitelist verifyPackageCompatibility(Ljava/io/File;)Z
    .locals 3
    .param p0, "compatibilityFile"    # Ljava/io/File;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 498
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 499
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0}, Landroid/os/RecoverySystem;->verifyPackageCompatibility(Ljava/io/InputStream;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 499
    return v1

    .line 498
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method private static greylist verifyPackageCompatibility(Ljava/io/InputStream;)Z
    .locals 8
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 452
    .local v1, "zis":Ljava/util/zip/ZipInputStream;
    :goto_0
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    move-object v3, v2

    .local v3, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_1

    .line 453
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    .line 454
    .local v4, "entrySize":J
    const-wide/32 v6, 0x7fffffff

    cmp-long v2, v4, v6

    if-gtz v2, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-ltz v2, :cond_0

    .line 458
    long-to-int v2, v4

    new-array v2, v2, [B

    .line 459
    .local v2, "bytes":[B
    invoke-static {v1, v2}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[B)V

    .line 460
    new-instance v6, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v2, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    .end local v2    # "bytes":[B
    .end local v4    # "entrySize":J
    goto :goto_0

    .line 455
    .restart local v4    # "entrySize":J
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "invalid entry size ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") in the compatibility file"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 462
    .end local v4    # "entrySize":J
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 465
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Landroid/os/VintfObject;->verify([Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 463
    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v4, "no entries found in the compatibility file"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static greylist-max-o wipeEuiccData(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1050
    move-object/from16 v1, p0

    const-string v2, "RecoverySystem"

    const-string v0, "euicc"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/telephony/euicc/EuiccManager;

    .line 1052
    .local v3, "euiccManager":Landroid/telephony/euicc/EuiccManager;
    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1053
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v0, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v5, v0

    .line 1054
    .local v5, "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object v6, v0

    .line 1056
    .local v6, "wipingSucceeded":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v0, Landroid/os/RecoverySystem$4;

    invoke-direct {v0, v6, v5}, Landroid/os/RecoverySystem$4;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V

    move-object v7, v0

    .line 1074
    .local v7, "euiccWipeFinishReceiver":Landroid/content/BroadcastReceiver;
    new-instance v0, Landroid/content/Intent;

    const-string v8, "com.android.internal.action.EUICC_FACTORY_RESET"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    .line 1075
    .local v9, "intent":Landroid/content/Intent;
    move-object/from16 v10, p1

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1076
    const/high16 v0, 0xc000000

    sget-object v11, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-static {v1, v4, v9, v0, v11}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v11

    .line 1082
    .local v11, "callbackIntent":Landroid/app/PendingIntent;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v12, v0

    .line 1083
    .local v12, "filterConsent":Landroid/content/IntentFilter;
    invoke-virtual {v12, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1084
    new-instance v0, Landroid/os/HandlerThread;

    const-string v8, "euiccWipeFinishReceiverThread"

    invoke-direct {v0, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    .line 1085
    .local v8, "euiccHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    .line 1086
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-direct {v0, v13}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v13, v0

    .line 1087
    .local v13, "euiccHandler":Landroid/os/Handler;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v14, 0x0

    .line 1088
    invoke-virtual {v0, v7, v12, v14, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1089
    invoke-virtual {v3, v11}, Landroid/telephony/euicc/EuiccManager;->eraseSubscriptions(Landroid/app/PendingIntent;)V

    .line 1091
    nop

    .line 1092
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v14, "euicc_factory_reset_timeout_millis"
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v15, v5

    .end local v5    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .local v15, "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    const-wide/16 v4, 0x7530

    .line 1091
    :try_start_1
    invoke-static {v0, v14, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1095
    .local v4, "waitingTimeMillis":J
    const-wide/16 v16, 0x1388

    cmp-long v0, v4, v16

    if-gez v0, :cond_0

    .line 1096
    const-wide/16 v4, 0x1388

    goto :goto_0

    .line 1097
    :cond_0
    const-wide/32 v16, 0xea60

    cmp-long v0, v4, v16

    if-lez v0, :cond_1

    .line 1098
    const-wide/32 v4, 0xea60

    .line 1100
    :cond_1
    :goto_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v14, v15

    .end local v15    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .local v14, "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :try_start_2
    invoke-virtual {v14, v4, v5, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1101
    const-string v0, "Timeout wiping eUICC data."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1102
    nop

    .line 1109
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1102
    const/4 v2, 0x0

    return v2

    .line 1109
    .end local v4    # "waitingTimeMillis":J
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1110
    nop

    .line 1111
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0

    .line 1104
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1109
    .end local v14    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v15    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :catchall_0
    move-exception v0

    move-object v14, v15

    .end local v15    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v14    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    goto :goto_2

    .line 1104
    .end local v14    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v15    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :catch_1
    move-exception v0

    move-object v14, v15

    .end local v15    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v14    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    goto :goto_1

    .line 1109
    .end local v14    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v5    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :catchall_1
    move-exception v0

    move-object v14, v5

    .end local v5    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v14    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    goto :goto_2

    .line 1104
    .end local v14    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v5    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :catch_2
    move-exception v0

    move-object v14, v5

    .line 1105
    .end local v5    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .local v0, "e":Ljava/lang/InterruptedException;
    .restart local v14    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :goto_1
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 1106
    const-string v4, "Wiping eUICC data interrupted"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1107
    nop

    .line 1109
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1107
    const/4 v2, 0x0

    return v2

    .line 1109
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_2
    move-exception v0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1110
    throw v0

    .line 1052
    .end local v6    # "wipingSucceeded":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v7    # "euiccWipeFinishReceiver":Landroid/content/BroadcastReceiver;
    .end local v8    # "euiccHandlerThread":Landroid/os/HandlerThread;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v11    # "callbackIntent":Landroid/app/PendingIntent;
    .end local v12    # "filterConsent":Landroid/content/IntentFilter;
    .end local v13    # "euiccHandler":Landroid/os/Handler;
    .end local v14    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :cond_3
    move-object/from16 v10, p1

    .line 1113
    const/4 v2, 0x0

    return v2
.end method
