.class public Landroid/net/INetworkScoreService$Default;
.super Ljava/lang/Object;
.source "INetworkScoreService.java"

# interfaces
.implements Landroid/net/INetworkScoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkScoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist clearScores()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist disableScoring()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method

.method public blacklist getActiveScorer()Landroid/net/NetworkScorerAppData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getActiveScorerPackage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAllValidScorers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/NetworkScorerAppData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isCallerActiveScorer(I)Z
    .locals 1
    .param p1, "callingUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V
    .locals 0
    .param p1, "networkType"    # I
    .param p2, "scoreCache"    # Landroid/net/INetworkScoreCache;
    .param p3, "filterType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    return-void
.end method

.method public blacklist requestScores([Landroid/net/NetworkKey;)Z
    .locals 1
    .param p1, "networks"    # [Landroid/net/NetworkKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setActiveScorer(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V
    .locals 0
    .param p1, "networkType"    # I
    .param p2, "scoreCache"    # Landroid/net/INetworkScoreCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    return-void
.end method

.method public blacklist updateScores([Landroid/net/ScoredNetwork;)Z
    .locals 1
    .param p1, "networks"    # [Landroid/net/ScoredNetwork;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    return v0
.end method
