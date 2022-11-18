.class public Lcom/android/internal/app/IAppOpsService$Default;
.super Ljava/lang/Object;
.source "IAppOpsService.java"

# interfaces
.implements Lcom/android/internal/app/IAppOpsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IAppOpsService;
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
.method public blacklist addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V
    .locals 0
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist checkAudioOperation(IIILjava/lang/String;)I
    .locals 1
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkOperation(IILjava/lang/String;)I
    .locals 1
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkOperationRaw(IILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkPackage(ILjava/lang/String;)I
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist clearHistory()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    return-void
.end method

.method public blacklist collectNoteOpCallsForValidation(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 0
    .param p1, "stackTrace"    # Ljava/lang/String;
    .param p2, "op"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "version"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    return-void
.end method

.method public blacklist collectRuntimeAppOpAccessMessage()Landroid/app/RuntimeAppOpAccessMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist extractAsyncOps(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/AsyncNotedAppOp;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 172
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist finishProxyOperation(ILandroid/content/AttributionSource;Z)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "skipProxyOperation"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    return-void
.end method

.method public blacklist getHistoricalOps(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJILandroid/os/RemoteCallback;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p5, "historyFlags"    # I
    .param p6, "filter"    # I
    .param p7, "beginTimeMillis"    # J
    .param p9, "endTimeMillis"    # J
    .param p11, "flags"    # I
    .param p12, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIJJI",
            "Landroid/os/RemoteCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    .local p4, "ops":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist getHistoricalOpsFromDiskRaw(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJILandroid/os/RemoteCallback;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p5, "historyFlags"    # I
    .param p6, "filter"    # I
    .param p7, "beginTimeMillis"    # J
    .param p9, "endTimeMillis"    # J
    .param p11, "flags"    # I
    .param p12, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIJJI",
            "Landroid/os/RemoteCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    .local p4, "ops":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPackagesForOps([I)Ljava/util/List;
    .locals 1
    .param p1, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUidOps(I[I)Ljava/util/List;
    .locals 1
    .param p1, "uid"    # I
    .param p2, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isOperationActive(IILjava/lang/String;)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isProxying(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 1
    .param p1, "op"    # I
    .param p2, "proxyPackageName"    # Ljava/lang/String;
    .param p3, "proxyAttributionTag"    # Ljava/lang/String;
    .param p4, "proxiedUid"    # I
    .param p5, "proxiedPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;
    .locals 1
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "shouldCollectAsyncNotedOp"    # Z
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "shouldCollectMessage"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;
    .locals 1
    .param p1, "code"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "shouldCollectAsyncNotedOp"    # Z
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "shouldCollectMessage"    # Z
    .param p6, "skipProxyOperation"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist offsetHistory(J)V
    .locals 0
    .param p1, "duration"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    return-void
.end method

.method public blacklist permissionToOpCode(Ljava/lang/String;)I
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist rebootHistory(J)V
    .locals 0
    .param p1, "offlineDurationMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    return-void
.end method

.method public blacklist reloadNonHistoricalState()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    return-void
.end method

.method public blacklist removeUser(I)V
    .locals 0
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    return-void
.end method

.method public blacklist reportRuntimeAppOpAccessMessageAndGetConfig(Ljava/lang/String;Landroid/app/SyncNotedAppOp;Ljava/lang/String;)Lcom/android/internal/app/MessageSamplingConfig;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appOp"    # Landroid/app/SyncNotedAppOp;
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist resetAllModes(ILjava/lang/String;)V
    .locals 0
    .param p1, "reqUserId"    # I
    .param p2, "reqPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    return-void
.end method

.method public blacklist resetHistoryParameters()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    return-void
.end method

.method public blacklist resetPackageOpsNoHistory(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    return-void
.end method

.method public blacklist setAudioRestriction(IIII[Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "mode"    # I
    .param p5, "exceptionPackages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    return-void
.end method

.method public blacklist setCameraAudioRestriction(I)V
    .locals 0
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method

.method public blacklist setHistoryParameters(IJI)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "baseSnapshotInterval"    # J
    .param p4, "compressionStep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    return-void
.end method

.method public blacklist setMode(IILjava/lang/String;I)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    return-void
.end method

.method public blacklist setUidMode(III)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    return-void
.end method

.method public blacklist setUserRestriction(IZLandroid/os/IBinder;ILandroid/os/PackageTagsList;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "userHandle"    # I
    .param p5, "excludedPackageTags"    # Landroid/os/PackageTagsList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    return-void
.end method

.method public blacklist setUserRestrictions(Landroid/os/Bundle;Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    return-void
.end method

.method public blacklist shouldCollectNotes(I)Z
    .locals 1
    .param p1, "opCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .locals 1
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "startIfModeDefault"    # Z
    .param p7, "shouldCollectAsyncNotedOp"    # Z
    .param p8, "message"    # Ljava/lang/String;
    .param p9, "shouldCollectMessage"    # Z
    .param p10, "attributionFlags"    # I
    .param p11, "attributionChainId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist startProxyOperation(ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;
    .locals 1
    .param p1, "code"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "startIfModeDefault"    # Z
    .param p4, "shouldCollectAsyncNotedOp"    # Z
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "shouldCollectMessage"    # Z
    .param p7, "skipProxyOperation"    # Z
    .param p8, "proxyAttributionFlags"    # I
    .param p9, "proxiedAttributionFlags"    # I
    .param p10, "attributionChainId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist startWatchingActive([ILcom/android/internal/app/IAppOpsActiveCallback;)V
    .locals 0
    .param p1, "ops"    # [I
    .param p2, "callback"    # Lcom/android/internal/app/IAppOpsActiveCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    return-void
.end method

.method public blacklist startWatchingAsyncNoted(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/app/IAppOpsAsyncNotedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    return-void
.end method

.method public blacklist startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 0
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/app/IAppOpsCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    .locals 0
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/android/internal/app/IAppOpsCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    return-void
.end method

.method public blacklist startWatchingNoted([ILcom/android/internal/app/IAppOpsNotedCallback;)V
    .locals 0
    .param p1, "ops"    # [I
    .param p2, "callback"    # Lcom/android/internal/app/IAppOpsNotedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    return-void
.end method

.method public blacklist startWatchingStarted([ILcom/android/internal/app/IAppOpsStartedCallback;)V
    .locals 0
    .param p1, "ops"    # [I
    .param p2, "callback"    # Lcom/android/internal/app/IAppOpsStartedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    return-void
.end method

.method public blacklist stopWatchingActive(Lcom/android/internal/app/IAppOpsActiveCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/internal/app/IAppOpsActiveCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    return-void
.end method

.method public blacklist stopWatchingAsyncNoted(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/app/IAppOpsAsyncNotedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    return-void
.end method

.method public blacklist stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/internal/app/IAppOpsCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist stopWatchingNoted(Lcom/android/internal/app/IAppOpsNotedCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/internal/app/IAppOpsNotedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    return-void
.end method

.method public blacklist stopWatchingStarted(Lcom/android/internal/app/IAppOpsStartedCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/internal/app/IAppOpsStartedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    return-void
.end method
