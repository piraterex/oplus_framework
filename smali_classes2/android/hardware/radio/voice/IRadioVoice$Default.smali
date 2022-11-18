.class public Landroid/hardware/radio/voice/IRadioVoice$Default;
.super Ljava/lang/Object;
.source "IRadioVoice.java"

# interfaces
.implements Landroid/hardware/radio/voice/IRadioVoice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/voice/IRadioVoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist acceptCall(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 145
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist cancelPendingUssd(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist conference(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist dial(ILandroid/hardware/radio/voice/Dial;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "dialInfo"    # Landroid/hardware/radio/voice/Dial;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist emergencyDial(ILandroid/hardware/radio/voice/Dial;I[Ljava/lang/String;IZZ)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "dialInfo"    # Landroid/hardware/radio/voice/Dial;
    .param p3, "categories"    # I
    .param p4, "urns"    # [Ljava/lang/String;
    .param p5, "routing"    # I
    .param p6, "hasKnownUserIntentEmergency"    # Z
    .param p7, "isTesting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist exitEmergencyCallbackMode(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist explicitCallTransfer(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public blacklist getCallForwardStatus(ILandroid/hardware/radio/voice/CallForwardInfo;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "callInfo"    # Landroid/hardware/radio/voice/CallForwardInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public blacklist getCallWaiting(II)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public blacklist getClip(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public blacklist getClir(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public blacklist getCurrentCalls(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 141
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .locals 1

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getLastCallFailCause(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public blacklist getMute(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public blacklist getPreferredVoicePrivacy(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    return-void
.end method

.method public blacklist getTtyMode(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    return-void
.end method

.method public blacklist handleStkCallSetupRequestFromSim(IZ)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "accept"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    return-void
.end method

.method public blacklist hangup(II)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "gsmIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    return-void
.end method

.method public blacklist hangupForegroundResumeBackground(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    return-void
.end method

.method public blacklist hangupWaitingOrBackground(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    return-void
.end method

.method public blacklist isVoNrEnabled(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    return-void
.end method

.method public blacklist rejectCall(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    return-void
.end method

.method public blacklist responseAcknowledgement()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    return-void
.end method

.method public blacklist sendBurstDtmf(ILjava/lang/String;II)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "dtmf"    # Ljava/lang/String;
    .param p3, "on"    # I
    .param p4, "off"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    return-void
.end method

.method public blacklist sendCdmaFeatureCode(ILjava/lang/String;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "featureCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    return-void
.end method

.method public blacklist sendDtmf(ILjava/lang/String;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    return-void
.end method

.method public blacklist sendUssd(ILjava/lang/String;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "ussd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    return-void
.end method

.method public blacklist separateConnection(II)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "gsmIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    return-void
.end method

.method public blacklist setCallForward(ILandroid/hardware/radio/voice/CallForwardInfo;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "callInfo"    # Landroid/hardware/radio/voice/CallForwardInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    return-void
.end method

.method public blacklist setCallWaiting(IZI)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "enable"    # Z
    .param p3, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    return-void
.end method

.method public blacklist setClir(II)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    return-void
.end method

.method public blacklist setMute(IZ)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    return-void
.end method

.method public blacklist setPreferredVoicePrivacy(IZ)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    return-void
.end method

.method public blacklist setResponseFunctions(Landroid/hardware/radio/voice/IRadioVoiceResponse;Landroid/hardware/radio/voice/IRadioVoiceIndication;)V
    .locals 0
    .param p1, "radioVoiceResponse"    # Landroid/hardware/radio/voice/IRadioVoiceResponse;
    .param p2, "radioVoiceIndication"    # Landroid/hardware/radio/voice/IRadioVoiceIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    return-void
.end method

.method public blacklist setTtyMode(II)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    return-void
.end method

.method public blacklist setVoNrEnabled(IZ)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    return-void
.end method

.method public blacklist startDtmf(ILjava/lang/String;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    return-void
.end method

.method public blacklist stopDtmf(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    return-void
.end method

.method public blacklist switchWaitingOrHoldingAndActive(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    return-void
.end method
