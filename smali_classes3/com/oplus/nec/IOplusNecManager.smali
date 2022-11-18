.class public interface abstract Lcom/oplus/nec/IOplusNecManager;
.super Ljava/lang/Object;
.source "IOplusNecManager.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final whitelist DEFAULT:Lcom/oplus/nec/IOplusNecManager;

.field public static final whitelist NAME:Ljava/lang/String; = "IOplusNecManager"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/oplus/nec/IOplusNecManager$1;

    invoke-direct {v0}, Lcom/oplus/nec/IOplusNecManager$1;-><init>()V

    sput-object v0, Lcom/oplus/nec/IOplusNecManager;->DEFAULT:Lcom/oplus/nec/IOplusNecManager;

    return-void
.end method


# virtual methods
.method public whitelist broadcastCallError(IIIILjava/lang/String;ZZ)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "event"    # I
    .param p3, "cause"    # I
    .param p4, "preciseCause"    # I
    .param p5, "desc"    # Ljava/lang/String;
    .param p6, "isImsCall"    # Z
    .param p7, "isIncoming"    # Z

    .line 134
    return-void
.end method

.method public whitelist broadcastCdmaResetActiveTimer(II)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "networkType"    # I

    .line 121
    return-void
.end method

.method public whitelist broadcastDataCallInternetProtocolType(II)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "protocol"    # I

    .line 73
    return-void
.end method

.method public whitelist broadcastDataConnect(ILjava/lang/String;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "type"    # Ljava/lang/String;

    .line 53
    return-void
.end method

.method public whitelist broadcastDataConnectResult(ILjava/lang/String;Z)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "success"    # Z

    .line 57
    return-void
.end method

.method public whitelist broadcastDataDisconnect(ILjava/lang/String;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "type"    # Ljava/lang/String;

    .line 65
    return-void
.end method

.method public whitelist broadcastDataDisconnectComplete(ILjava/lang/String;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "type"    # Ljava/lang/String;

    .line 69
    return-void
.end method

.method public whitelist broadcastDataEnabledChanged(IZ)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "enabled"    # Z

    .line 109
    return-void
.end method

.method public whitelist broadcastGameLargeDelayError(IILjava/lang/String;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "errorcode"    # I
    .param p3, "gameError"    # Ljava/lang/String;

    .line 97
    return-void
.end method

.method public whitelist broadcastHangUpDelayTimer(IJI)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "millis"    # J
    .param p4, "csOrIms"    # I

    .line 117
    return-void
.end method

.method public whitelist broadcastImsNetworkStateChanged(IILjava/lang/String;II)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;
    .param p4, "regState"    # I
    .param p5, "imsRat"    # I

    .line 149
    return-void
.end method

.method public whitelist broadcastImsRegisterState(IZ)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "imsRegisterState"    # Z

    .line 142
    return-void
.end method

.method public whitelist broadcastLimitState(IZ)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "limitState"    # Z

    .line 101
    return-void
.end method

.method public whitelist broadcastLostConnectionReason(III)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "errorcode"    # I
    .param p3, "lostReason"    # I

    .line 113
    return-void
.end method

.method public whitelist broadcastNecEvent(IILandroid/os/Bundle;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "eventId"    # I
    .param p3, "data"    # Landroid/os/Bundle;

    .line 45
    return-void
.end method

.method public whitelist broadcastNoDataFlowError(IILjava/lang/String;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "errorcode"    # I
    .param p3, "mNoDataFlowReason"    # Ljava/lang/String;

    .line 81
    return-void
.end method

.method public whitelist broadcastNoDataFlowRecoveryError(IILjava/lang/String;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "errorcode"    # I
    .param p3, "recovery"    # Ljava/lang/String;

    .line 85
    return-void
.end method

.method public whitelist broadcastNoDataIconError(IIILjava/lang/String;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "errorcode"    # I
    .param p3, "protocol"    # I
    .param p4, "cause"    # Ljava/lang/String;

    .line 77
    return-void
.end method

.method public whitelist broadcastOnlineMeeting(IILjava/lang/String;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "errorcode"    # I
    .param p3, "record"    # Ljava/lang/String;

    .line 152
    return-void
.end method

.method public whitelist broadcastPreciseCallStateChanged(IIIIIII)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "ring"    # I
    .param p3, "foreground"    # I
    .param p4, "background"    # I
    .param p5, "cause"    # I
    .param p6, "preciseCause"    # I
    .param p7, "disconnectState"    # I

    .line 126
    return-void
.end method

.method public whitelist broadcastPreferredNetworkMode(II)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "preferredMode"    # I

    .line 105
    return-void
.end method

.method public whitelist broadcastRegInfoChanged(IIIII)V
    .locals 0
    .param p1, "voiceRegState"    # I
    .param p2, "voiceNetworkType"    # I
    .param p3, "dataRegState"    # I
    .param p4, "dataNetworkType"    # I
    .param p5, "slotId"    # I

    .line 146
    return-void
.end method

.method public whitelist broadcastServiceStateChanged(ZI)V
    .locals 0
    .param p1, "oos"    # Z
    .param p2, "slotId"    # I

    .line 49
    return-void
.end method

.method public whitelist broadcastSlowDataFlowError(IILjava/lang/String;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "errorcode"    # I
    .param p3, "score"    # Ljava/lang/String;

    .line 89
    return-void
.end method

.method public whitelist broadcastSlowDataFlowRecovery(IILjava/lang/String;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "errorcode"    # I
    .param p3, "score"    # Ljava/lang/String;

    .line 93
    return-void
.end method

.method public whitelist broadcastSrvccStateChanged(II)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "srvccState"    # I

    .line 130
    return-void
.end method

.method public whitelist broadcastVolteCallKeylog(IILjava/lang/String;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "event"    # I
    .param p3, "desc"    # Ljava/lang/String;

    .line 138
    return-void
.end method

.method public whitelist broadcastVolteVopsOrSettingChanged(IIZ)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "event"    # I
    .param p3, "isVolteEnabled"    # Z

    .line 61
    return-void
.end method

.method public whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 37
    sget-object v0, Lcom/oplus/nec/IOplusNecManager;->DEFAULT:Lcom/oplus/nec/IOplusNecManager;

    return-object v0
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 32
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IOplusNecManager:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method

.method public whitelist notifyNwDiagnoseInitComplete()V
    .locals 0

    .line 41
    return-void
.end method
