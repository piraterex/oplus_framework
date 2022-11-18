.class public Landroid/apex/IApexService$Default;
.super Ljava/lang/Object;
.source "IApexService.java"

# interfaces
.implements Landroid/apex/IApexService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/apex/IApexService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist abortStagedSession(I)V
    .locals 0
    .param p1, "session_id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 169
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist calculateSizeForCompressedApex(Landroid/apex/CompressedApexInfoList;)J
    .locals 2
    .param p1, "compressed_apex_info_list"    # Landroid/apex/CompressedApexInfoList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist destroyCeSnapshots(II)V
    .locals 0
    .param p1, "user_id"    # I
    .param p2, "rollback_id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    return-void
.end method

.method public blacklist destroyCeSnapshotsNotSpecified(I[I)V
    .locals 0
    .param p1, "user_id"    # I
    .param p2, "retain_rollback_ids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    return-void
.end method

.method public blacklist destroyDeSnapshots(I)V
    .locals 0
    .param p1, "rollback_id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    return-void
.end method

.method public blacklist getActivePackage(Ljava/lang/String;)Landroid/apex/ApexInfo;
    .locals 1
    .param p1, "package_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getActivePackages()[Landroid/apex/ApexInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAllPackages()[Landroid/apex/ApexInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSessions()[Landroid/apex/ApexSessionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getStagedApexInfos(Landroid/apex/ApexSessionParams;)[Landroid/apex/ApexInfo;
    .locals 1
    .param p1, "params"    # Landroid/apex/ApexSessionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;
    .locals 1
    .param p1, "session_id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist installAndActivatePackage(Ljava/lang/String;)Landroid/apex/ApexInfo;
    .locals 1
    .param p1, "packagePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist markBootCompleted()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    return-void
.end method

.method public blacklist markStagedSessionReady(I)V
    .locals 0
    .param p1, "session_id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    return-void
.end method

.method public blacklist markStagedSessionSuccessful(I)V
    .locals 0
    .param p1, "session_id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist recollectDataApex(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "decompression_dir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    return-void
.end method

.method public blacklist recollectPreinstalledData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    .local p1, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist remountPackages()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    return-void
.end method

.method public blacklist reserveSpaceForCompressedApex(Landroid/apex/CompressedApexInfoList;)V
    .locals 0
    .param p1, "compressed_apex_info_list"    # Landroid/apex/CompressedApexInfoList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    return-void
.end method

.method public blacklist restoreCeData(IILjava/lang/String;)V
    .locals 0
    .param p1, "user_id"    # I
    .param p2, "rollback_id"    # I
    .param p3, "apex_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    return-void
.end method

.method public blacklist resumeRevertIfNeeded()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    return-void
.end method

.method public blacklist revertActiveSessions()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public blacklist snapshotCeData(IILjava/lang/String;)V
    .locals 0
    .param p1, "user_id"    # I
    .param p2, "rollback_id"    # I
    .param p3, "apex_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    return-void
.end method

.method public blacklist stagePackages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    .local p1, "package_tmp_paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist submitStagedSession(Landroid/apex/ApexSessionParams;Landroid/apex/ApexInfoList;)V
    .locals 0
    .param p1, "params"    # Landroid/apex/ApexSessionParams;
    .param p2, "packages"    # Landroid/apex/ApexInfoList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method

.method public blacklist unstagePackages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    .local p1, "active_package_paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method
