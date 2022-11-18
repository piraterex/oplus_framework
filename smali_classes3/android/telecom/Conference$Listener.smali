.class public abstract Landroid/telecom/Conference$Listener;
.super Ljava/lang/Object;
.source "Conference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Conference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAddressChanged(Landroid/telecom/Conference;Landroid/net/Uri;I)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Conference;
    .param p2, "newAddress"    # Landroid/net/Uri;
    .param p3, "presentation"    # I

    .line 79
    return-void
.end method

.method public blacklist onCallDirectionChanged(Landroid/telecom/Conference;I)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Conference;
    .param p2, "callDirection"    # I

    .line 83
    return-void
.end method

.method public blacklist onCallerDisplayNameChanged(Landroid/telecom/Conference;Ljava/lang/String;I)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Conference;
    .param p2, "callerDisplayName"    # Ljava/lang/String;
    .param p3, "presentation"    # I

    .line 82
    return-void
.end method

.method public blacklist onConferenceStateChanged(Landroid/telecom/Conference;Z)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Conference;
    .param p2, "isConference"    # Z

    .line 78
    return-void
.end method

.method public greylist-max-o onConferenceableConnectionsChanged(Landroid/telecom/Conference;Ljava/util/List;)V
    .locals 0
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

    .line 65
    .local p2, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    return-void
.end method

.method public blacklist onConferenceablesChanged(Landroid/telecom/Conference;Ljava/util/List;)V
    .locals 0
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

    .line 67
    .local p2, "conferenceables":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Conferenceable;>;"
    return-void
.end method

.method public greylist-max-o onConnectionAdded(Landroid/telecom/Conference;Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/Conference;
    .param p2, "connection"    # Landroid/telecom/Connection;

    .line 62
    return-void
.end method

.method public greylist-max-o onConnectionCapabilitiesChanged(Landroid/telecom/Conference;I)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/Conference;
    .param p2, "connectionCapabilities"    # I

    .line 70
    return-void
.end method

.method public blacklist onConnectionEvent(Landroid/telecom/Conference;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Conference;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 80
    return-void
.end method

.method public greylist-max-o onConnectionPropertiesChanged(Landroid/telecom/Conference;I)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/Conference;
    .param p2, "connectionProperties"    # I

    .line 72
    return-void
.end method

.method public greylist-max-o onConnectionRemoved(Landroid/telecom/Conference;Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/Conference;
    .param p2, "connection"    # Landroid/telecom/Connection;

    .line 63
    return-void
.end method

.method public greylist-max-o onDestroyed(Landroid/telecom/Conference;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/Conference;

    .line 68
    return-void
.end method

.method public greylist-max-o onDisconnected(Landroid/telecom/Conference;Landroid/telecom/DisconnectCause;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/Conference;
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .line 61
    return-void
.end method

.method public greylist-max-o onExtrasChanged(Landroid/telecom/Conference;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Conference;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 76
    return-void
.end method

.method public greylist-max-o onExtrasRemoved(Landroid/telecom/Conference;Ljava/util/List;)V
    .locals 0
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

    .line 77
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist onRingbackRequested(Landroid/telecom/Conference;Z)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Conference;
    .param p2, "ringback"    # Z

    .line 84
    return-void
.end method

.method public greylist-max-o onStateChanged(Landroid/telecom/Conference;II)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/Conference;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .line 60
    return-void
.end method

.method public greylist-max-o onStatusHintsChanged(Landroid/telecom/Conference;Landroid/telecom/StatusHints;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/Conference;
    .param p2, "statusHints"    # Landroid/telecom/StatusHints;

    .line 75
    return-void
.end method

.method public greylist-max-o onVideoProviderChanged(Landroid/telecom/Conference;Landroid/telecom/Connection$VideoProvider;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Conference;
    .param p2, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    .line 74
    return-void
.end method

.method public greylist-max-o onVideoStateChanged(Landroid/telecom/Conference;I)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Conference;
    .param p2, "videoState"    # I

    .line 73
    return-void
.end method
