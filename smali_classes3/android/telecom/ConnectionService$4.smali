.class Landroid/telecom/ConnectionService$4;
.super Landroid/telecom/Connection$Listener;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/ConnectionService;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/ConnectionService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/ConnectionService;

    .line 1711
    iput-object p1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-direct {p0}, Landroid/telecom/Connection$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAddressChanged(Landroid/telecom/Connection;Landroid/net/Uri;I)V
    .locals 2
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "address"    # Landroid/net/Uri;
    .param p3, "presentation"    # I

    .line 1757
    iget-object v0, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1758
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0, p2, p3}, Landroid/telecom/ConnectionServiceAdapter;->setAddress(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 1759
    return-void
.end method

.method public blacklist onAudioModeIsVoipChanged(Landroid/telecom/Connection;Z)V
    .locals 2
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "isVoip"    # Z

    .line 1820
    iget-object v0, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1821
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setIsVoipAudioMode(Ljava/lang/String;Z)V

    .line 1822
    return-void
.end method

.method public blacklist onAudioRouteChanged(Landroid/telecom/Connection;ILjava/lang/String;)V
    .locals 2
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "audioRoute"    # I
    .param p3, "bluetoothAddress"    # Ljava/lang/String;

    .line 1884
    iget-object v0, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1885
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1886
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0, p2, p3}, Landroid/telecom/ConnectionServiceAdapter;->setAudioRoute(Ljava/lang/String;ILjava/lang/String;)V

    .line 1888
    :cond_0
    return-void
.end method

.method public blacklist onCallerDisplayNameChanged(Landroid/telecom/Connection;Ljava/lang/String;I)V
    .locals 2
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "callerDisplayName"    # Ljava/lang/String;
    .param p3, "presentation"    # I

    .line 1764
    iget-object v0, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1765
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0, p2, p3}, Landroid/telecom/ConnectionServiceAdapter;->setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1766
    return-void
.end method

.method public blacklist onConferenceChanged(Landroid/telecom/Connection;Landroid/telecom/Conference;)V
    .locals 3
    .param p1, "connection"    # Landroid/telecom/Connection;
    .param p2, "conference"    # Landroid/telecom/Conference;

    .line 1840
    iget-object v0, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1841
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1842
    const/4 v1, 0x0

    .line 1843
    .local v1, "conferenceId":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1844
    iget-object v2, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v2, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    .line 1846
    :cond_0
    iget-object v2, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v2, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v2, v0, v1}, Landroid/telecom/ConnectionServiceAdapter;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    .end local v1    # "conferenceId":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public blacklist onConferenceMergeFailed(Landroid/telecom/Connection;)V
    .locals 2
    .param p1, "connection"    # Landroid/telecom/Connection;

    .line 1852
    iget-object v0, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1853
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1854
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->onConferenceMergeFailed(Ljava/lang/String;)V

    .line 1856
    :cond_0
    return-void
.end method

.method public blacklist onConferenceablesChanged(Landroid/telecom/Connection;Ljava/util/List;)V
    .locals 3
    .param p1, "connection"    # Landroid/telecom/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Connection;",
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;)V"
        }
    .end annotation

    .line 1833
    .local p2, "conferenceables":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Conferenceable;>;"
    iget-object v0, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    .line 1834
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    .line 1835
    invoke-virtual {v2, p2}, Landroid/telecom/ConnectionService;->createIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 1833
    invoke-virtual {v0, v1, v2}, Landroid/telecom/ConnectionServiceAdapter;->setConferenceableConnections(Ljava/lang/String;Ljava/util/List;)V

    .line 1836
    return-void
.end method

.method public blacklist onConnectionCapabilitiesChanged(Landroid/telecom/Connection;I)V
    .locals 4
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "capabilities"    # I

    .line 1796
    iget-object v0, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1797
    .local v0, "id":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 1798
    invoke-static {p2}, Landroid/telecom/Connection;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1797
    const-string v2, "capabilities: parcelableconnection: %s"

    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1799
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setConnectionCapabilities(Ljava/lang/String;I)V

    .line 1800
    return-void
.end method

.method public blacklist onConnectionEvent(Landroid/telecom/Connection;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "connection"    # Landroid/telecom/Connection;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 1876
    iget-object v0, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1877
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1878
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0, p2, p3}, Landroid/telecom/ConnectionServiceAdapter;->onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1880
    :cond_0
    return-void
.end method

.method public blacklist onConnectionPropertiesChanged(Landroid/telecom/Connection;I)V
    .locals 4
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "properties"    # I

    .line 1804
    iget-object v0, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1805
    .local v0, "id":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 1806
    invoke-static {p2}, Landroid/telecom/Connection;->propertiesToString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1805
    const-string/jumbo v2, "properties: parcelableconnection: %s"

    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1807
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setConnectionProperties(Ljava/lang/String;I)V

    .line 1808
    return-void
.end method

.method public blacklist onConnectionTimeReset(Landroid/telecom/Connection;)V
    .locals 2
    .param p1, "c"    # Landroid/telecom/Connection;

    .line 1931
    iget-object v0, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1932
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1933
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->resetConnectionTime(Ljava/lang/String;)V

    .line 1935
    :cond_0
    return-void
.end method

.method public blacklist onDestroyed(Landroid/telecom/Connection;)V
    .locals 1
    .param p1, "c"    # Landroid/telecom/Connection;

    .line 1770
    iget-object v0, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-virtual {v0, p1}, Landroid/telecom/ConnectionService;->removeConnection(Landroid/telecom/Connection;)V

    .line 1771
    return-void
.end method

.method public blacklist onDisconnected(Landroid/telecom/Connection;Landroid/telecom/DisconnectCause;)V
    .locals 3
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .line 1743
    iget-object v0, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1744
    .local v0, "id":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string v2, "Adapter set disconnected %s"

    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1745
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V

    .line 1746
    return-void
.end method

.method public blacklist onExtrasChanged(Landroid/telecom/Connection;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1860
    iget-object v0, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1861
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1862
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1864
    :cond_0
    return-void
.end method

.method public blacklist onExtrasRemoved(Landroid/telecom/Connection;Ljava/util/List;)V
    .locals 2
    .param p1, "c"    # Landroid/telecom/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Connection;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1868
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1869
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1870
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->removeExtras(Ljava/lang/String;Ljava/util/List;)V

    .line 1872
    :cond_0
    return-void
.end method

.method public blacklist onPhoneAccountChanged(Landroid/telecom/Connection;Landroid/telecom/PhoneAccountHandle;)V
    .locals 2
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "pHandle"    # Landroid/telecom/PhoneAccountHandle;

    .line 1924
    iget-object v0, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1925
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1926
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->onPhoneAccountChanged(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)V

    .line 1928
    :cond_0
    return-void
.end method

.method public blacklist onPostDialChar(Landroid/telecom/Connection;C)V
    .locals 4
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "nextChar"    # C

    .line 1782
    iget-object v0, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1783
    .local v0, "id":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Adapter onPostDialChar %s, %s"

    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1784
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->onPostDialChar(Ljava/lang/String;C)V

    .line 1785
    return-void
.end method

.method public blacklist onPostDialWait(Landroid/telecom/Connection;Ljava/lang/String;)V
    .locals 3
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "remaining"    # Ljava/lang/String;

    .line 1775
    iget-object v0, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1776
    .local v0, "id":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "Adapter onPostDialWait %s, %s"

    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1777
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->onPostDialWait(Ljava/lang/String;Ljava/lang/String;)V

    .line 1778
    return-void
.end method

.method public blacklist onRemoteRttRequest(Landroid/telecom/Connection;)V
    .locals 2
    .param p1, "c"    # Landroid/telecom/Connection;

    .line 1916
    iget-object v0, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1917
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1918
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->onRemoteRttRequest(Ljava/lang/String;)V

    .line 1920
    :cond_0
    return-void
.end method

.method public blacklist onRingbackRequested(Landroid/telecom/Connection;Z)V
    .locals 4
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "ringback"    # Z

    .line 1789
    iget-object v0, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1790
    .local v0, "id":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Adapter onRingback %b"

    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1791
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setRingbackRequested(Ljava/lang/String;Z)V

    .line 1792
    return-void
.end method

.method public blacklist onRttInitiationFailure(Landroid/telecom/Connection;I)V
    .locals 2
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "reason"    # I

    .line 1900
    iget-object v0, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1901
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1902
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->onRttInitiationFailure(Ljava/lang/String;I)V

    .line 1904
    :cond_0
    return-void
.end method

.method public blacklist onRttInitiationSuccess(Landroid/telecom/Connection;)V
    .locals 2
    .param p1, "c"    # Landroid/telecom/Connection;

    .line 1892
    iget-object v0, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1893
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1894
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->onRttInitiationSuccess(Ljava/lang/String;)V

    .line 1896
    :cond_0
    return-void
.end method

.method public blacklist onRttSessionRemotelyTerminated(Landroid/telecom/Connection;)V
    .locals 2
    .param p1, "c"    # Landroid/telecom/Connection;

    .line 1908
    iget-object v0, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1909
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1910
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->onRttSessionRemotelyTerminated(Ljava/lang/String;)V

    .line 1912
    :cond_0
    return-void
.end method

.method public blacklist onStateChanged(Landroid/telecom/Connection;I)V
    .locals 4
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "state"    # I

    .line 1714
    iget-object v0, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1715
    .local v0, "id":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p2}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Adapter set state %s %s"

    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1716
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 1724
    :pswitch_0
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->setPulling(Ljava/lang/String;)V

    .line 1725
    goto :goto_0

    .line 1728
    :pswitch_1
    goto :goto_0

    .line 1730
    :pswitch_2
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->setOnHold(Ljava/lang/String;)V

    .line 1731
    goto :goto_0

    .line 1718
    :pswitch_3
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->setActive(Ljava/lang/String;)V

    .line 1719
    goto :goto_0

    .line 1721
    :pswitch_4
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->setDialing(Ljava/lang/String;)V

    .line 1722
    goto :goto_0

    .line 1736
    :pswitch_5
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->setRinging(Ljava/lang/String;)V

    goto :goto_0

    .line 1734
    :pswitch_6
    nop

    .line 1739
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist onStatusHintsChanged(Landroid/telecom/Connection;Landroid/telecom/StatusHints;)V
    .locals 2
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "statusHints"    # Landroid/telecom/StatusHints;

    .line 1826
    iget-object v0, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1827
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;)V

    .line 1828
    return-void
.end method

.method public blacklist onVideoProviderChanged(Landroid/telecom/Connection;Landroid/telecom/Connection$VideoProvider;)V
    .locals 3
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    .line 1812
    iget-object v0, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1813
    .local v0, "id":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string/jumbo v2, "onVideoProviderChanged: Connection: %s, VideoProvider: %s"

    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1815
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setVideoProvider(Ljava/lang/String;Landroid/telecom/Connection$VideoProvider;)V

    .line 1816
    return-void
.end method

.method public blacklist onVideoStateChanged(Landroid/telecom/Connection;I)V
    .locals 4
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "videoState"    # I

    .line 1750
    iget-object v0, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1751
    .local v0, "id":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Adapter set video state %d"

    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1752
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setVideoState(Ljava/lang/String;I)V

    .line 1753
    return-void
.end method
