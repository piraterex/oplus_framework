.class public abstract Landroid/telecom/RemoteConference$Callback;
.super Ljava/lang/Object;
.source "RemoteConference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onConferenceableConnectionsChanged(Landroid/telecom/RemoteConference;Ljava/util/List;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/RemoteConference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/RemoteConference;",
            "Ljava/util/List<",
            "Landroid/telecom/RemoteConnection;",
            ">;)V"
        }
    .end annotation

    .line 115
    .local p2, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    return-void
.end method

.method public whitelist onConnectionAdded(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConnection;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/RemoteConference;
    .param p2, "connection"    # Landroid/telecom/RemoteConnection;

    .line 73
    return-void
.end method

.method public whitelist onConnectionCapabilitiesChanged(Landroid/telecom/RemoteConference;I)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/RemoteConference;
    .param p2, "connectionCapabilities"    # I

    .line 92
    return-void
.end method

.method public whitelist onConnectionPropertiesChanged(Landroid/telecom/RemoteConference;I)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/RemoteConference;
    .param p2, "connectionProperties"    # I

    .line 103
    return-void
.end method

.method public whitelist onConnectionRemoved(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConnection;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/RemoteConference;
    .param p2, "connection"    # Landroid/telecom/RemoteConnection;

    .line 81
    return-void
.end method

.method public whitelist onDestroyed(Landroid/telecom/RemoteConference;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/RemoteConference;

    .line 123
    return-void
.end method

.method public whitelist onDisconnected(Landroid/telecom/RemoteConference;Landroid/telecom/DisconnectCause;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/RemoteConference;
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .line 65
    return-void
.end method

.method public whitelist onExtrasChanged(Landroid/telecom/RemoteConference;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/RemoteConference;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 131
    return-void
.end method

.method public whitelist onStateChanged(Landroid/telecom/RemoteConference;II)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/RemoteConference;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .line 56
    return-void
.end method
