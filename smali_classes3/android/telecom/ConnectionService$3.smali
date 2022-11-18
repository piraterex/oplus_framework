.class Landroid/telecom/ConnectionService$3;
.super Landroid/telecom/Conference$Listener;
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

    .line 1544
    iput-object p1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-direct {p0}, Landroid/telecom/Conference$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAddressChanged(Landroid/telecom/Conference;Landroid/net/Uri;I)V
    .locals 2
    .param p1, "c"    # Landroid/telecom/Conference;
    .param p2, "newAddress"    # Landroid/net/Uri;
    .param p3, "presentation"    # I

    .line 1679
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1680
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1681
    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0, p2, p3}, Landroid/telecom/ConnectionServiceAdapter;->setAddress(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 1683
    :cond_0
    return-void
.end method

.method public blacklist onCallDirectionChanged(Landroid/telecom/Conference;I)V
    .locals 2
    .param p1, "c"    # Landroid/telecom/Conference;
    .param p2, "direction"    # I

    .line 1671
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1672
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1673
    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setCallDirection(Ljava/lang/String;I)V

    .line 1675
    :cond_0
    return-void
.end method

.method public blacklist onCallerDisplayNameChanged(Landroid/telecom/Conference;Ljava/lang/String;I)V
    .locals 2
    .param p1, "c"    # Landroid/telecom/Conference;
    .param p2, "callerDisplayName"    # Ljava/lang/String;
    .param p3, "presentation"    # I

    .line 1688
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1689
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1690
    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0, p2, p3}, Landroid/telecom/ConnectionServiceAdapter;->setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1692
    :cond_0
    return-void
.end method

.method public blacklist onConferenceStateChanged(Landroid/telecom/Conference;Z)V
    .locals 2
    .param p1, "c"    # Landroid/telecom/Conference;
    .param p2, "isConference"    # Z

    .line 1663
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1664
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1665
    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setConferenceState(Ljava/lang/String;Z)V

    .line 1667
    :cond_0
    return-void
.end method

.method public blacklist onConferenceableConnectionsChanged(Landroid/telecom/Conference;Ljava/util/List;)V
    .locals 3
    .param p1, "conference"    # Landroid/telecom/Conference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Conference;",
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;)V"
        }
    .end annotation

    .line 1584
    .local p2, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    .line 1585
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    .line 1586
    invoke-static {v2, p2}, Landroid/telecom/ConnectionService;->-$$Nest$mcreateConnectionIdList(Landroid/telecom/ConnectionService;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 1584
    invoke-virtual {v0, v1, v2}, Landroid/telecom/ConnectionServiceAdapter;->setConferenceableConnections(Ljava/lang/String;Ljava/util/List;)V

    .line 1587
    return-void
.end method

.method public blacklist onConferenceablesChanged(Landroid/telecom/Conference;Ljava/util/List;)V
    .locals 3
    .param p1, "conference"    # Landroid/telecom/Conference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Conference;",
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;)V"
        }
    .end annotation

    .line 1592
    .local p2, "conferenceables":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Conferenceable;>;"
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    .line 1593
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    .line 1594
    invoke-virtual {v2, p2}, Landroid/telecom/ConnectionService;->createIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 1592
    invoke-virtual {v0, v1, v2}, Landroid/telecom/ConnectionService;->setConferenceableConnections(Ljava/lang/String;Ljava/util/List;)V

    .line 1595
    return-void
.end method

.method public blacklist onConnectionAdded(Landroid/telecom/Conference;Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/Conference;
    .param p2, "connection"    # Landroid/telecom/Connection;

    .line 1575
    return-void
.end method

.method public blacklist onConnectionCapabilitiesChanged(Landroid/telecom/Conference;I)V
    .locals 4
    .param p1, "conference"    # Landroid/telecom/Conference;
    .param p2, "connectionCapabilities"    # I

    .line 1606
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1607
    .local v0, "id":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 1608
    invoke-static {p2}, Landroid/telecom/Connection;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1607
    const-string v2, "call capabilities: conference: %s"

    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1609
    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setConnectionCapabilities(Ljava/lang/String;I)V

    .line 1610
    return-void
.end method

.method public blacklist onConnectionEvent(Landroid/telecom/Conference;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "c"    # Landroid/telecom/Conference;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 1696
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1697
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1698
    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0, p2, p3}, Landroid/telecom/ConnectionServiceAdapter;->onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1700
    :cond_0
    return-void
.end method

.method public blacklist onConnectionPropertiesChanged(Landroid/telecom/Conference;I)V
    .locals 4
    .param p1, "conference"    # Landroid/telecom/Conference;
    .param p2, "connectionProperties"    # I

    .line 1616
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1617
    .local v0, "id":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 1618
    invoke-static {p2}, Landroid/telecom/Connection;->propertiesToString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1617
    const-string v2, "call capabilities: conference: %s"

    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1619
    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setConnectionProperties(Ljava/lang/String;I)V

    .line 1620
    return-void
.end method

.method public blacklist onConnectionRemoved(Landroid/telecom/Conference;Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/Conference;
    .param p2, "connection"    # Landroid/telecom/Connection;

    .line 1579
    return-void
.end method

.method public blacklist onDestroyed(Landroid/telecom/Conference;)V
    .locals 1
    .param p1, "conference"    # Landroid/telecom/Conference;

    .line 1599
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0, p1}, Landroid/telecom/ConnectionService;->-$$Nest$mremoveConference(Landroid/telecom/ConnectionService;Landroid/telecom/Conference;)V

    .line 1600
    return-void
.end method

.method public blacklist onDisconnected(Landroid/telecom/Conference;Landroid/telecom/DisconnectCause;)V
    .locals 2
    .param p1, "conference"    # Landroid/telecom/Conference;
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .line 1569
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1570
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V

    .line 1571
    return-void
.end method

.method public blacklist onExtrasChanged(Landroid/telecom/Conference;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "c"    # Landroid/telecom/Conference;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1647
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1648
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1649
    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1651
    :cond_0
    return-void
.end method

.method public blacklist onExtrasRemoved(Landroid/telecom/Conference;Ljava/util/List;)V
    .locals 2
    .param p1, "c"    # Landroid/telecom/Conference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Conference;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1655
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1656
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1657
    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->removeExtras(Ljava/lang/String;Ljava/util/List;)V

    .line 1659
    :cond_0
    return-void
.end method

.method public blacklist onRingbackRequested(Landroid/telecom/Conference;Z)V
    .locals 4
    .param p1, "c"    # Landroid/telecom/Conference;
    .param p2, "ringback"    # Z

    .line 1704
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1705
    .local v0, "id":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Adapter conference onRingback %b"

    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1706
    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setRingbackRequested(Ljava/lang/String;Z)V

    .line 1707
    return-void
.end method

.method public blacklist onStateChanged(Landroid/telecom/Conference;II)V
    .locals 2
    .param p1, "conference"    # Landroid/telecom/Conference;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .line 1547
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1548
    .local v0, "id":Ljava/lang/String;
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 1559
    :pswitch_0
    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->setOnHold(Ljava/lang/String;)V

    .line 1560
    goto :goto_0

    .line 1556
    :pswitch_1
    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->setActive(Ljava/lang/String;)V

    .line 1557
    goto :goto_0

    .line 1553
    :pswitch_2
    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->setDialing(Ljava/lang/String;)V

    .line 1554
    goto :goto_0

    .line 1550
    :pswitch_3
    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->setRinging(Ljava/lang/String;)V

    .line 1551
    nop

    .line 1565
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist onStatusHintsChanged(Landroid/telecom/Conference;Landroid/telecom/StatusHints;)V
    .locals 2
    .param p1, "conference"    # Landroid/telecom/Conference;
    .param p2, "statusHints"    # Landroid/telecom/StatusHints;

    .line 1639
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1640
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1641
    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;)V

    .line 1643
    :cond_0
    return-void
.end method

.method public blacklist onVideoProviderChanged(Landroid/telecom/Conference;Landroid/telecom/Connection$VideoProvider;)V
    .locals 3
    .param p1, "c"    # Landroid/telecom/Conference;
    .param p2, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    .line 1631
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1632
    .local v0, "id":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string/jumbo v2, "onVideoProviderChanged: Connection: %s, VideoProvider: %s"

    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1634
    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setVideoProvider(Ljava/lang/String;Landroid/telecom/Connection$VideoProvider;)V

    .line 1635
    return-void
.end method

.method public blacklist onVideoStateChanged(Landroid/telecom/Conference;I)V
    .locals 4
    .param p1, "c"    # Landroid/telecom/Conference;
    .param p2, "videoState"    # I

    .line 1624
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1625
    .local v0, "id":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "onVideoStateChanged set video state %d"

    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1626
    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setVideoState(Ljava/lang/String;I)V

    .line 1627
    return-void
.end method
