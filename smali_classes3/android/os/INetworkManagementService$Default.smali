.class public Landroid/os/INetworkManagementService$Default;
.super Ljava/lang/Object;
.source "INetworkManagementService.java"

# interfaces
.implements Landroid/os/INetworkManagementService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/INetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 258
    .local p2, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    return-void
.end method

.method public blacklist addRoute(ILandroid/net/RouteInfo;)V
    .locals 0
    .param p1, "netId"    # I
    .param p2, "route"    # Landroid/net/RouteInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    return-void
.end method

.method public blacklist allowProtect(I)V
    .locals 0
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 251
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 272
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist clearInterfaceAddresses(Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist denyProtect(I)V
    .locals 0
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    return-void
.end method

.method public blacklist disableIpv6(Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public blacklist disableNat(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "internalInterface"    # Ljava/lang/String;
    .param p2, "externalInterface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    return-void
.end method

.method public blacklist enableIpv6(Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    return-void
.end method

.method public blacklist enableNat(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "internalInterface"    # Ljava/lang/String;
    .param p2, "externalInterface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    return-void
.end method

.method public blacklist getDnsForwarders()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getIpForwardingEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getNetworkStatsTethering(I)Landroid/net/NetworkStats;
    .locals 1
    .param p1, "how"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 188
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isBandwidthControlEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isFirewallEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isNetworkRestricted(I)Z
    .locals 1
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isTetheringStarted()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist listInterfaces()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist listTetheredInterfaces()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    .locals 0
    .param p1, "obs"    # Landroid/net/INetworkManagementEventObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    return-void
.end method

.method public blacklist registerTetheringStatsProvider(Landroid/net/ITetheringStatsProvider;Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Landroid/net/ITetheringStatsProvider;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    return-void
.end method

.method public blacklist removeInterfaceAlert(Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    return-void
.end method

.method public blacklist removeInterfaceFromLocalNetwork(Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    return-void
.end method

.method public blacklist removeInterfaceQuota(Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    return-void
.end method

.method public blacklist removeRoute(ILandroid/net/RouteInfo;)V
    .locals 0
    .param p1, "netId"    # I
    .param p2, "route"    # Landroid/net/RouteInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    return-void
.end method

.method public blacklist removeRoutesFromLocalNetwork(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 264
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setDataSaverModeEnabled(Z)Z
    .locals 1
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setFirewallChainEnabled(IZ)V
    .locals 0
    .param p1, "chain"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 247
    return-void
.end method

.method public blacklist setFirewallEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 231
    return-void
.end method

.method public blacklist setFirewallInterfaceRule(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 238
    return-void
.end method

.method public blacklist setFirewallUidRule(III)V
    .locals 0
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 241
    return-void
.end method

.method public blacklist setFirewallUidRules(I[I[I)V
    .locals 0
    .param p1, "chain"    # I
    .param p2, "uids"    # [I
    .param p3, "rules"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 244
    return-void
.end method

.method public blacklist setGlobalAlert(J)V
    .locals 0
    .param p1, "alertBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    return-void
.end method

.method public blacklist setIPv6AddrGenMode(Ljava/lang/String;I)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    return-void
.end method

.method public blacklist setInterfaceAlert(Ljava/lang/String;J)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "alertBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    return-void
.end method

.method public blacklist setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "cfg"    # Landroid/net/InterfaceConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist setInterfaceDown(Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public blacklist setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public blacklist setInterfaceQuota(Ljava/lang/String;J)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    return-void
.end method

.method public blacklist setInterfaceUp(Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    return-void
.end method

.method public blacklist setIpForwardingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    return-void
.end method

.method public blacklist setUidCleartextNetworkPolicy(II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "policy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 223
    return-void
.end method

.method public blacklist setUidOnMeteredNetworkAllowlist(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 216
    return-void
.end method

.method public blacklist setUidOnMeteredNetworkDenylist(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    return-void
.end method

.method public blacklist shutdown()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    return-void
.end method

.method public blacklist startInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "fromIface"    # Ljava/lang/String;
    .param p2, "toIface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    return-void
.end method

.method public blacklist startTethering([Ljava/lang/String;)V
    .locals 0
    .param p1, "dhcpRanges"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    return-void
.end method

.method public blacklist startTetheringWithConfiguration(Z[Ljava/lang/String;)V
    .locals 0
    .param p1, "usingLegacyDnsProxy"    # Z
    .param p2, "dhcpRanges"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    return-void
.end method

.method public blacklist stopInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "fromIface"    # Ljava/lang/String;
    .param p2, "toIface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    return-void
.end method

.method public blacklist stopTethering()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    return-void
.end method

.method public blacklist tetherInterface(Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    return-void
.end method

.method public blacklist tetherLimitReached(Landroid/net/ITetheringStatsProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/net/ITetheringStatsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    return-void
.end method

.method public blacklist unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V
    .locals 0
    .param p1, "obs"    # Landroid/net/INetworkManagementEventObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public blacklist unregisterTetheringStatsProvider(Landroid/net/ITetheringStatsProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/net/ITetheringStatsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    return-void
.end method

.method public blacklist untetherInterface(Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    return-void
.end method
