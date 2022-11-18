.class public Landroid/app/backup/BackupManager;
.super Ljava/lang/Object;
.source "BackupManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/BackupManager$BackupManagerMonitorWrapper;,
        Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;,
        Landroid/app/backup/BackupManager$BackupObserverWrapper;,
        Landroid/app/backup/BackupManager$OperationType;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_AGENT_FAILURE:I = -0x3eb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_BACKUP_CANCELLED:I = -0x7d3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_BACKUP_NOT_ALLOWED:I = -0x7d1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_PACKAGE_NOT_FOUND:I = -0x7d2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_TRANSPORT_ABORTED:I = -0x3e8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_TRANSPORT_INVALID:I = -0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_TRANSPORT_PACKAGE_REJECTED:I = -0x3ea
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_TRANSPORT_QUOTA_EXCEEDED:I = -0x3ed
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_TRANSPORT_UNAVAILABLE:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_BACKUP_SERVICES_AVAILABLE:Ljava/lang/String; = "backup_services_available"

.field public static final whitelist FLAG_NON_INCREMENTAL_BACKUP:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist IS_BACKUP_SERVICE_ACTIVE_ENFORCE_PERMISSION_IN_SERVICE:J = 0x9723ef2L

.field public static final whitelist PACKAGE_MANAGER_SENTINEL:Ljava/lang/String; = "@pm@"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "BackupManager"

.field private static greylist sService:Landroid/app/backup/IBackupManager;


# instance fields
.field private greylist-max-o mContext:Landroid/content/Context;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object p1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    .line 242
    return-void
.end method

.method private static greylist checkServiceBinder()V
    .locals 1

    .line 226
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-nez v0, :cond_0

    .line 227
    nop

    .line 228
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 227
    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    sput-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    .line 230
    :cond_0
    return-void
.end method

.method public static whitelist dataChanged(Ljava/lang/String;)V
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .line 273
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 274
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    .line 276
    :try_start_0
    invoke-interface {v0, p0}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "dataChanged(pkg) couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static blacklist dataChangedForUser(ILjava/lang/String;)V
    .locals 3
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .line 299
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 300
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    .line 302
    :try_start_0
    invoke-interface {v0, p0, p1}, Landroid/app/backup/IBackupManager;->dataChangedForUser(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "dataChanged(userId,pkg) couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist backupNow()V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 725
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 726
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    .line 728
    :try_start_0
    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->backupNow()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    goto :goto_0

    .line 729
    :catch_0
    move-exception v0

    .line 730
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "backupNow() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist beginRestoreSession()Landroid/app/backup/RestoreSession;
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 384
    const/4 v0, 0x0

    .line 385
    .local v0, "session":Landroid/app/backup/RestoreSession;
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 386
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_1

    .line 389
    :try_start_0
    iget-object v2, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    .line 390
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v3}, Landroid/app/backup/IBackupManager;->beginRestoreSessionForUser(ILjava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v1

    .line 391
    .local v1, "binder":Landroid/app/backup/IRestoreSession;
    if-eqz v1, :cond_0

    .line 392
    new-instance v2, Landroid/app/backup/RestoreSession;

    iget-object v3, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/app/backup/RestoreSession;-><init>(Landroid/content/Context;Landroid/app/backup/IRestoreSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 396
    .end local v1    # "binder":Landroid/app/backup/IRestoreSession;
    :cond_0
    goto :goto_0

    .line 394
    :catch_0
    move-exception v1

    .line 395
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BackupManager"

    const-string v3, "beginRestoreSession() couldn\'t connect"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-object v0
.end method

.method public whitelist cancelBackups()V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 852
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 853
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    .line 855
    :try_start_0
    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->cancelBackups()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 858
    goto :goto_0

    .line 856
    :catch_0
    move-exception v0

    .line 857
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "cancelBackups() couldn\'t connect."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist dataChanged()V
    .locals 3

    .line 251
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 252
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    .line 254
    :try_start_0
    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "dataChanged() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist excludeKeysFromRestore(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1023
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 1024
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    .line 1026
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/backup/IBackupManager;->excludeKeysFromRestore(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1029
    goto :goto_0

    .line 1027
    :catch_0
    move-exception v0

    .line 1028
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "excludeKeysFromRestore() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist getAvailableRestoreToken(Ljava/lang/String;)J
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 749
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 750
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    .line 752
    :try_start_0
    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/app/backup/IBackupManager;->getAvailableRestoreTokenForUser(ILjava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 753
    :catch_0
    move-exception v0

    .line 754
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "getAvailableRestoreToken() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "transportName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 915
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 916
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    .line 918
    :try_start_0
    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/app/backup/IBackupManager;->getConfigurationIntentForUser(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 919
    :catch_0
    move-exception v0

    .line 920
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "getConfigurationIntent() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCurrentTransport()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 510
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 511
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    .line 513
    :try_start_0
    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "getCurrentTransport() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCurrentTransportComponent()Landroid/content/ComponentName;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 531
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 532
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    .line 534
    :try_start_0
    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->getCurrentTransportComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 535
    :catch_0
    move-exception v0

    .line 536
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "getCurrentTransportComponent() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "transportName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 957
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 958
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    .line 960
    :try_start_0
    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/app/backup/IBackupManager;->getDataManagementIntentForUser(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 961
    :catch_0
    move-exception v0

    .line 962
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "getDataManagementIntent() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDataManagementIntentLabel(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "transportName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 999
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 1000
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    .line 1002
    :try_start_0
    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/app/backup/IBackupManager;->getDataManagementLabelForUser(ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1003
    :catch_0
    move-exception v0

    .line 1004
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "getDataManagementIntentLabel() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "transportName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 983
    invoke-virtual {p0, p1}, Landroid/app/backup/BackupManager;->getDataManagementIntentLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 984
    .local v0, "label":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public whitelist getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "transportName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 936
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 937
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    .line 939
    :try_start_0
    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/app/backup/IBackupManager;->getDestinationStringForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 940
    :catch_0
    move-exception v0

    .line 941
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "getDestinationString() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getUserForAncestralSerialNumber(J)Landroid/os/UserHandle;
    .locals 3
    .param p1, "ancestralSerialNumber"    # J

    .line 874
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 875
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    .line 877
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/backup/IBackupManager;->getUserForAncestralSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 878
    :catch_0
    move-exception v0

    .line 879
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "getUserForAncestralSerialNumber() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist isAppEligibleForBackup(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 771
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 772
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    .line 774
    :try_start_0
    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/app/backup/IBackupManager;->isAppEligibleForBackupForUser(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 775
    :catch_0
    move-exception v0

    .line 776
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "isAppEligibleForBackup(pkg) couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isBackupEnabled()Z
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 431
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 432
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    .line 434
    :try_start_0
    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "isBackupEnabled() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isBackupServiceActive(Landroid/os/UserHandle;)Z
    .locals 3
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 463
    const-wide/32 v0, 0x9723ef2

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    iget-object v0, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "isBackupServiceActive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :cond_0
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 469
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_1

    .line 471
    :try_start_0
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "isBackupEnabled() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist listAllTransports()[Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 550
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 551
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    .line 553
    :try_start_0
    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->listAllTransports()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "listAllTransports() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist requestBackup([Ljava/lang/String;Landroid/app/backup/BackupObserver;)I
    .locals 2
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/BackupObserver;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 801
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/app/backup/BackupManager;->requestBackup([Ljava/lang/String;Landroid/app/backup/BackupObserver;Landroid/app/backup/BackupManagerMonitor;I)I

    move-result v0

    return v0
.end method

.method public whitelist requestBackup([Ljava/lang/String;Landroid/app/backup/BackupObserver;Landroid/app/backup/BackupManagerMonitor;I)I
    .locals 3
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/BackupObserver;
    .param p3, "monitor"    # Landroid/app/backup/BackupManagerMonitor;
    .param p4, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 826
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 827
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_2

    .line 829
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 830
    move-object v1, v0

    goto :goto_0

    .line 831
    :cond_0
    :try_start_0
    new-instance v1, Landroid/app/backup/BackupManager$BackupObserverWrapper;

    iget-object v2, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p2}, Landroid/app/backup/BackupManager$BackupObserverWrapper;-><init>(Landroid/app/backup/BackupManager;Landroid/content/Context;Landroid/app/backup/BackupObserver;)V

    :goto_0
    nop

    .line 832
    .local v1, "observerWrapper":Landroid/app/backup/BackupManager$BackupObserverWrapper;
    if-nez p3, :cond_1

    .line 833
    goto :goto_1

    .line 834
    :cond_1
    new-instance v0, Landroid/app/backup/BackupManager$BackupManagerMonitorWrapper;

    invoke-direct {v0, p0, p3}, Landroid/app/backup/BackupManager$BackupManagerMonitorWrapper;-><init>(Landroid/app/backup/BackupManager;Landroid/app/backup/BackupManagerMonitor;)V

    :goto_1
    nop

    .line 835
    .local v0, "monitorWrapper":Landroid/app/backup/BackupManager$BackupManagerMonitorWrapper;
    sget-object v2, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, p1, v1, v0, p4}, Landroid/app/backup/IBackupManager;->requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 836
    .end local v0    # "monitorWrapper":Landroid/app/backup/BackupManager$BackupManagerMonitorWrapper;
    .end local v1    # "observerWrapper":Landroid/app/backup/BackupManager$BackupObserverWrapper;
    :catch_0
    move-exception v0

    .line 837
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string/jumbo v2, "requestBackup() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist requestRestore(Landroid/app/backup/RestoreObserver;)I
    .locals 1
    .param p1, "observer"    # Landroid/app/backup/RestoreObserver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 338
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/backup/BackupManager;->requestRestore(Landroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;)I

    move-result v0

    return v0
.end method

.method public whitelist requestRestore(Landroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;)I
    .locals 2
    .param p1, "observer"    # Landroid/app/backup/RestoreObserver;
    .param p2, "monitor"    # Landroid/app/backup/BackupManagerMonitor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 371
    const-string v0, "BackupManager"

    const-string/jumbo v1, "requestRestore(): Since Android P app can no longer request restoring of its backup."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "transport"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 673
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 674
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    .line 676
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 677
    :catch_0
    move-exception v0

    .line 678
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string/jumbo v2, "selectBackupTransport() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist selectBackupTransport(Landroid/content/ComponentName;Landroid/app/backup/SelectBackupTransportCallback;)V
    .locals 3
    .param p1, "transport"    # Landroid/content/ComponentName;
    .param p2, "listener"    # Landroid/app/backup/SelectBackupTransportCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 699
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 700
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_1

    .line 702
    if-nez p2, :cond_0

    .line 703
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;

    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p2}, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;-><init>(Landroid/app/backup/BackupManager;Landroid/content/Context;Landroid/app/backup/SelectBackupTransportCallback;)V

    .line 704
    .local v0, "wrapper":Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;
    :goto_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v2, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    .line 705
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 704
    invoke-interface {v1, v2, p1, v0}, Landroid/app/backup/IBackupManager;->selectBackupTransportAsyncForUser(ILandroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    .end local v0    # "wrapper":Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;
    goto :goto_1

    .line 706
    :catch_0
    move-exception v0

    .line 707
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string/jumbo v2, "selectBackupTransportAsync() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-void
.end method

.method public whitelist setAncestralSerialNumber(J)V
    .locals 3
    .param p1, "ancestralSerialNumber"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 895
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 896
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    .line 898
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/backup/IBackupManager;->setAncestralSerialNumber(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 901
    goto :goto_0

    .line 899
    :catch_0
    move-exception v0

    .line 900
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string/jumbo v2, "setAncestralSerialNumber() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setAutoRestore(Z)V
    .locals 3
    .param p1, "isEnabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 490
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 491
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    .line 493
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    goto :goto_0

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string/jumbo v2, "setAutoRestore() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setBackupEnabled(Z)V
    .locals 3
    .param p1, "isEnabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 413
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 414
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    .line 416
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    goto :goto_0

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string/jumbo v2, "setBackupEnabled() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .locals 8
    .param p1, "transportComponent"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "configurationIntent"    # Landroid/content/Intent;
    .param p4, "currentDestinationString"    # Ljava/lang/String;
    .param p5, "dataManagementIntent"    # Landroid/content/Intent;
    .param p6, "dataManagementLabel"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 640
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 641
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    .line 643
    :try_start_0
    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    .line 644
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 643
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Landroid/app/backup/IBackupManager;->updateTransportAttributesForUser(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    goto :goto_0

    .line 651
    :catch_0
    move-exception v0

    .line 652
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "describeTransport() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "transportComponent"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "configurationIntent"    # Landroid/content/Intent;
    .param p4, "currentDestinationString"    # Ljava/lang/String;
    .param p5, "dataManagementIntent"    # Landroid/content/Intent;
    .param p6, "dataManagementLabel"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 598
    invoke-virtual/range {p0 .. p6}, Landroid/app/backup/BackupManager;->updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    .line 605
    return-void
.end method
