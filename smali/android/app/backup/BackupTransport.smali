.class public Landroid/app/backup/BackupTransport;
.super Ljava/lang/Object;
.source "BackupTransport.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/BackupTransport$TransportImpl;
    }
.end annotation


# static fields
.field public static final whitelist AGENT_ERROR:I = -0x3eb

.field public static final whitelist AGENT_UNKNOWN:I = -0x3ec

.field public static final whitelist EXTRA_TRANSPORT_REGISTRATION:Ljava/lang/String; = "android.app.backup.extra.TRANSPORT_REGISTRATION"

.field public static final whitelist FLAG_DATA_NOT_CHANGED:I = 0x8

.field public static final whitelist FLAG_INCREMENTAL:I = 0x2

.field public static final whitelist FLAG_NON_INCREMENTAL:I = 0x4

.field public static final whitelist FLAG_USER_INITIATED:I = 0x1

.field public static final whitelist NO_MORE_DATA:I = -0x1

.field public static final whitelist TRANSPORT_ERROR:I = -0x3e8

.field public static final whitelist TRANSPORT_NON_INCREMENTAL_BACKUP_REQUIRED:I = -0x3ee

.field public static final whitelist TRANSPORT_NOT_INITIALIZED:I = -0x3e9

.field public static final whitelist TRANSPORT_OK:I = 0x0

.field public static final whitelist TRANSPORT_PACKAGE_REJECTED:I = -0x3ea

.field public static final whitelist TRANSPORT_QUOTA_EXCEEDED:I = -0x3ed


# instance fields
.field greylist-max-o mBinderImpl:Lcom/android/internal/backup/IBackupTransport;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Landroid/app/backup/BackupTransport$TransportImpl;

    invoke-direct {v0, p0}, Landroid/app/backup/BackupTransport$TransportImpl;-><init>(Landroid/app/backup/BackupTransport;)V

    iput-object v0, p0, Landroid/app/backup/BackupTransport;->mBinderImpl:Lcom/android/internal/backup/IBackupTransport;

    return-void
.end method


# virtual methods
.method public whitelist abortFullRestore()I
    .locals 1

    .line 646
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist cancelFullBackup()V
    .locals 2

    .line 565
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Transport cancelFullBackup() not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist checkFullBackupSize(J)I
    .locals 1
    .param p1, "size"    # J

    .line 531
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist clearBackupData(Landroid/content/pm/PackageInfo;)I
    .locals 1
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 262
    const/16 v0, -0x3e8

    return v0
.end method

.method public whitelist configurationIntent()Landroid/content/Intent;
    .locals 1

    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist currentDestinationString()Ljava/lang/String;
    .locals 2

    .line 153
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Transport currentDestinationString() not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist dataManagementIntent()Landroid/content/Intent;
    .locals 1

    .line 178
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist dataManagementIntentLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 208
    invoke-virtual {p0}, Landroid/app/backup/BackupTransport;->dataManagementLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist dataManagementLabel()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Transport dataManagementLabel() not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist finishBackup()I
    .locals 1

    .line 274
    const/16 v0, -0x3e8

    return v0
.end method

.method public whitelist finishRestore()V
    .locals 2

    .line 433
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Transport finishRestore() not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;
    .locals 1

    .line 352
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getBackupQuota(Ljava/lang/String;Z)J
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isFullBackup"    # Z

    .line 590
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public whitelist getBinder()Landroid/os/IBinder;
    .locals 1

    .line 111
    iget-object v0, p0, Landroid/app/backup/BackupTransport;->mBinderImpl:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCurrentRestoreSet()J
    .locals 2

    .line 364
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I
    .locals 1
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;

    .line 629
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getRestoreData(Landroid/os/ParcelFileDescriptor;)I
    .locals 1
    .param p1, "outFd"    # Landroid/os/ParcelFileDescriptor;

    .line 425
    const/16 v0, -0x3e8

    return v0
.end method

.method public whitelist getTransportFlags()I
    .locals 1

    .line 655
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist initializeDevice()I
    .locals 1

    .line 250
    const/16 v0, -0x3e8

    return v0
.end method

.method public whitelist isAppEligibleForBackup(Landroid/content/pm/PackageInfo;Z)Z
    .locals 1
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "isFullBackup"    # Z

    .line 578
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist name()Ljava/lang/String;
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Transport name() not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist nextRestorePackage()Landroid/app/backup/RestoreDescription;
    .locals 1

    .line 412
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I
    .locals 1
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "inFd"    # Landroid/os/ParcelFileDescriptor;

    .line 339
    const/16 v0, -0x3e8

    return v0
.end method

.method public whitelist performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I
    .locals 1
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "inFd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "flags"    # I

    .line 331
    invoke-virtual {p0, p1, p2}, Landroid/app/backup/BackupTransport;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I

    move-result v0

    return v0
.end method

.method public whitelist performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I
    .locals 1
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "socket"    # Landroid/os/ParcelFileDescriptor;

    .line 504
    const/16 v0, -0x3ea

    return v0
.end method

.method public whitelist performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I
    .locals 1
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "socket"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "flags"    # I

    .line 496
    invoke-virtual {p0, p1, p2}, Landroid/app/backup/BackupTransport;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I

    move-result v0

    return v0
.end method

.method public whitelist requestBackupTime()J
    .locals 2

    .line 292
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist requestFullBackupTime()J
    .locals 2

    .line 454
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist sendBackupData(I)I
    .locals 1
    .param p1, "numBytes"    # I

    .line 547
    const/16 v0, -0x3e8

    return v0
.end method

.method public whitelist startRestore(J[Landroid/content/pm/PackageInfo;)I
    .locals 1
    .param p1, "token"    # J
    .param p3, "packages"    # [Landroid/content/pm/PackageInfo;

    .line 381
    const/16 v0, -0x3e8

    return v0
.end method

.method public whitelist transportDirName()Ljava/lang/String;
    .locals 2

    .line 224
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Transport transportDirName() not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
