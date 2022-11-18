.class public Landroid/app/backup/RestoreSession;
.super Ljava/lang/Object;
.source "RestoreSession.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;,
        Landroid/app/backup/RestoreSession$RestoreObserverWrapper;
    }
.end annotation


# static fields
.field static final greylist-max-o TAG:Ljava/lang/String; = "RestoreSession"


# instance fields
.field greylist-max-o mBinder:Landroid/app/backup/IRestoreSession;

.field final greylist-max-o mContext:Landroid/content/Context;

.field greylist-max-o mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;


# direct methods
.method constructor greylist-max-o <init>(Landroid/content/Context;Landroid/app/backup/IRestoreSession;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "binder"    # Landroid/app/backup/IRestoreSession;

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    .line 334
    iput-object p1, p0, Landroid/app/backup/RestoreSession;->mContext:Landroid/content/Context;

    .line 335
    iput-object p2, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    .line 336
    return-void
.end method


# virtual methods
.method public whitelist endRestoreSession()V
    .locals 4

    .line 321
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    invoke-interface {v1}, Landroid/app/backup/IRestoreSession;->endRestoreSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    nop

    :goto_0
    iput-object v0, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    .line 326
    goto :goto_1

    .line 325
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 322
    :catch_0
    move-exception v1

    .line 323
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "RestoreSession"

    const-string v3, "Can\'t contact server to get available sets"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 327
    :goto_1
    return-void

    .line 325
    :goto_2
    iput-object v0, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    .line 326
    throw v1
.end method

.method public whitelist getAvailableRestoreSets(Landroid/app/backup/RestoreObserver;)I
    .locals 1
    .param p1, "observer"    # Landroid/app/backup/RestoreObserver;

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/backup/RestoreSession;->getAvailableRestoreSets(Landroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;)I

    move-result v0

    return v0
.end method

.method public whitelist getAvailableRestoreSets(Landroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;)I
    .locals 6
    .param p1, "observer"    # Landroid/app/backup/RestoreObserver;
    .param p2, "monitor"    # Landroid/app/backup/BackupManagerMonitor;

    .line 57
    const/4 v0, -0x1

    .line 58
    .local v0, "err":I
    new-instance v1, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    iget-object v2, p0, Landroid/app/backup/RestoreSession;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p1}, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/content/Context;Landroid/app/backup/RestoreObserver;)V

    .line 59
    .local v1, "obsWrapper":Landroid/app/backup/RestoreSession$RestoreObserverWrapper;
    if-nez p2, :cond_0

    .line 60
    const/4 v2, 0x0

    goto :goto_0

    .line 61
    :cond_0
    new-instance v2, Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;

    invoke-direct {v2, p0, p2}, Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/app/backup/BackupManagerMonitor;)V

    :goto_0
    nop

    .line 63
    .local v2, "monitorWrapper":Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;
    :try_start_0
    iget-object v3, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    invoke-interface {v3, v1, v2}, Landroid/app/backup/IRestoreSession;->getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 66
    goto :goto_1

    .line 64
    :catch_0
    move-exception v3

    .line 65
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "RestoreSession"

    const-string v5, "Can\'t contact server to get available sets"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    return v0
.end method

.method public whitelist restoreAll(JLandroid/app/backup/RestoreObserver;)I
    .locals 1
    .param p1, "token"    # J
    .param p3, "observer"    # Landroid/app/backup/RestoreObserver;

    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/backup/RestoreSession;->restoreAll(JLandroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;)I

    move-result v0

    return v0
.end method

.method public whitelist restoreAll(JLandroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;)I
    .locals 5
    .param p1, "token"    # J
    .param p3, "observer"    # Landroid/app/backup/RestoreObserver;
    .param p4, "monitor"    # Landroid/app/backup/BackupManagerMonitor;

    .line 100
    const/4 v0, -0x1

    .line 101
    .local v0, "err":I
    iget-object v1, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    const-string v2, "RestoreSession"

    if-eqz v1, :cond_0

    .line 102
    const-string/jumbo v1, "restoreAll() called during active restore"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v1, -0x1

    return v1

    .line 105
    :cond_0
    new-instance v1, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    iget-object v3, p0, Landroid/app/backup/RestoreSession;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v3, p3}, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/content/Context;Landroid/app/backup/RestoreObserver;)V

    iput-object v1, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    .line 106
    if-nez p4, :cond_1

    .line 107
    const/4 v1, 0x0

    goto :goto_0

    .line 108
    :cond_1
    new-instance v1, Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;

    invoke-direct {v1, p0, p4}, Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/app/backup/BackupManagerMonitor;)V

    :goto_0
    nop

    .line 110
    .local v1, "monitorWrapper":Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;
    :try_start_0
    iget-object v3, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    iget-object v4, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    invoke-interface {v3, p1, p2, v4, v1}, Landroid/app/backup/IRestoreSession;->restoreAll(JLandroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 113
    goto :goto_1

    .line 111
    :catch_0
    move-exception v3

    .line 112
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Can\'t contact server to restore"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    return v0
.end method

.method public whitelist restorePackage(Ljava/lang/String;Landroid/app/backup/RestoreObserver;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/RestoreObserver;

    .line 309
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/backup/RestoreSession;->restorePackage(Ljava/lang/String;Landroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;)I

    move-result v0

    return v0
.end method

.method public whitelist restorePackage(Ljava/lang/String;Landroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/RestoreObserver;
    .param p3, "monitor"    # Landroid/app/backup/BackupManagerMonitor;

    .line 275
    const/4 v0, -0x1

    .line 276
    .local v0, "err":I
    iget-object v1, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    const-string v2, "RestoreSession"

    if-eqz v1, :cond_0

    .line 277
    const-string/jumbo v1, "restorePackage() called during active restore"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/4 v1, -0x1

    return v1

    .line 280
    :cond_0
    new-instance v1, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    iget-object v3, p0, Landroid/app/backup/RestoreSession;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v3, p2}, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/content/Context;Landroid/app/backup/RestoreObserver;)V

    iput-object v1, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    .line 281
    if-nez p3, :cond_1

    .line 282
    const/4 v1, 0x0

    goto :goto_0

    .line 283
    :cond_1
    new-instance v1, Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;

    invoke-direct {v1, p0, p3}, Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/app/backup/BackupManagerMonitor;)V

    :goto_0
    nop

    .line 285
    .local v1, "monitorWrapper":Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;
    :try_start_0
    iget-object v3, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    iget-object v4, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    invoke-interface {v3, p1, v4, v1}, Landroid/app/backup/IRestoreSession;->restorePackage(Ljava/lang/String;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 288
    goto :goto_1

    .line 286
    :catch_0
    move-exception v3

    .line 287
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Can\'t contact server to restore package"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    return v0
.end method

.method public whitelist restorePackages(JLandroid/app/backup/RestoreObserver;Ljava/util/Set;)I
    .locals 6
    .param p1, "token"    # J
    .param p3, "observer"    # Landroid/app/backup/RestoreObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/app/backup/RestoreObserver;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 193
    .local p4, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/backup/RestoreSession;->restorePackages(JLandroid/app/backup/RestoreObserver;Ljava/util/Set;Landroid/app/backup/BackupManagerMonitor;)I

    move-result v0

    return v0
.end method

.method public whitelist restorePackages(JLandroid/app/backup/RestoreObserver;Ljava/util/Set;Landroid/app/backup/BackupManagerMonitor;)I
    .locals 9
    .param p1, "token"    # J
    .param p3, "observer"    # Landroid/app/backup/RestoreObserver;
    .param p5, "monitor"    # Landroid/app/backup/BackupManagerMonitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/app/backup/RestoreObserver;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/backup/BackupManagerMonitor;",
            ")I"
        }
    .end annotation

    .line 156
    .local p4, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, -0x1

    .line 157
    .local v0, "err":I
    iget-object v1, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    const-string v2, "RestoreSession"

    if-eqz v1, :cond_0

    .line 158
    const-string/jumbo v1, "restoreAll() called during active restore"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v1, -0x1

    return v1

    .line 161
    :cond_0
    new-instance v1, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    iget-object v3, p0, Landroid/app/backup/RestoreSession;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v3, p3}, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/content/Context;Landroid/app/backup/RestoreObserver;)V

    iput-object v1, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    .line 162
    if-nez p5, :cond_1

    .line 163
    const/4 v1, 0x0

    move-object v8, v1

    goto :goto_0

    .line 164
    :cond_1
    new-instance v1, Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;

    invoke-direct {v1, p0, p5}, Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/app/backup/BackupManagerMonitor;)V

    move-object v8, v1

    :goto_0
    nop

    .line 166
    .local v8, "monitorWrapper":Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;
    :try_start_0
    iget-object v3, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    iget-object v6, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p4, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [Ljava/lang/String;

    move-wide v4, p1

    invoke-interface/range {v3 .. v8}, Landroid/app/backup/IRestoreSession;->restorePackages(JLandroid/app/backup/IRestoreObserver;[Ljava/lang/String;Landroid/app/backup/IBackupManagerMonitor;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 170
    goto :goto_1

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Can\'t contact server to restore packages"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    return v0
.end method

.method public greylist restoreSome(JLandroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;[Ljava/lang/String;)I
    .locals 6
    .param p1, "token"    # J
    .param p3, "observer"    # Landroid/app/backup/RestoreObserver;
    .param p4, "monitor"    # Landroid/app/backup/BackupManagerMonitor;
    .param p5, "packages"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 222
    new-instance v4, Ljava/util/HashSet;

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/backup/RestoreSession;->restorePackages(JLandroid/app/backup/RestoreObserver;Ljava/util/Set;Landroid/app/backup/BackupManagerMonitor;)I

    move-result v0

    return v0
.end method

.method public greylist restoreSome(JLandroid/app/backup/RestoreObserver;[Ljava/lang/String;)I
    .locals 6
    .param p1, "token"    # J
    .param p3, "observer"    # Landroid/app/backup/RestoreObserver;
    .param p4, "packages"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 248
    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/backup/RestoreSession;->restoreSome(JLandroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
